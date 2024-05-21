package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.SpecialEffectsController;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelStoreOwner;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FragmentStateManager {
    static final String ARGUMENTS_KEY = "arguments";
    static final String CHILD_FRAGMENT_MANAGER_KEY = "childFragmentManager";
    static final String FRAGMENT_STATE_KEY = "state";
    static final String REGISTRY_STATE_KEY = "registryState";
    static final String SAVED_INSTANCE_STATE_KEY = "savedInstanceState";
    private static final String TAG = "FragmentManager";
    static final String VIEW_REGISTRY_STATE_KEY = "viewRegistryState";
    static final String VIEW_STATE_KEY = "viewState";
    private final FragmentLifecycleCallbacksDispatcher mDispatcher;
    private final Fragment mFragment;
    private final FragmentStore mFragmentStore;
    private boolean mMovingToState = false;
    private int mFragmentManagerState = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment getFragment() {
        return this.mFragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFragmentManagerState(int i) {
        this.mFragmentManagerState = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, ClassLoader classLoader, FragmentFactory fragmentFactory, Bundle bundle) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        Fragment instantiate = ((FragmentState) bundle.getParcelable("state")).instantiate(fragmentFactory, classLoader);
        this.mFragment = instantiate;
        instantiate.mSavedFragmentState = bundle;
        Bundle bundle2 = bundle.getBundle(ARGUMENTS_KEY);
        if (bundle2 != null) {
            bundle2.setClassLoader(classLoader);
        }
        instantiate.setArguments(bundle2);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + instantiate);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FragmentStateManager(FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher, FragmentStore fragmentStore, Fragment fragment, Bundle bundle) {
        this.mDispatcher = fragmentLifecycleCallbacksDispatcher;
        this.mFragmentStore = fragmentStore;
        this.mFragment = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        fragment.mTargetWho = fragment.mTarget != null ? fragment.mTarget.mWho : null;
        fragment.mTarget = null;
        fragment.mSavedFragmentState = bundle;
        fragment.mArguments = bundle.getBundle(ARGUMENTS_KEY);
    }

    int computeExpectedState() {
        if (this.mFragment.mFragmentManager == null) {
            return this.mFragment.mState;
        }
        int i = this.mFragmentManagerState;
        int i2 = AnonymousClass2.$SwitchMap$androidx$lifecycle$Lifecycle$State[this.mFragment.mMaxState.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                i = Math.min(i, 5);
            } else if (i2 == 3) {
                i = Math.min(i, 1);
            } else if (i2 == 4) {
                i = Math.min(i, 0);
            } else {
                i = Math.min(i, -1);
            }
        }
        if (this.mFragment.mFromLayout) {
            if (this.mFragment.mInLayout) {
                i = Math.max(this.mFragmentManagerState, 2);
                if (this.mFragment.mView != null && this.mFragment.mView.getParent() == null) {
                    i = Math.min(i, 2);
                }
            } else {
                i = this.mFragmentManagerState < 4 ? Math.min(i, this.mFragment.mState) : Math.min(i, 1);
            }
        }
        if (!this.mFragment.mAdded) {
            i = Math.min(i, 1);
        }
        SpecialEffectsController.Operation.LifecycleImpact awaitingCompletionLifecycleImpact = this.mFragment.mContainer != null ? SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).getAwaitingCompletionLifecycleImpact(this) : null;
        if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.ADDING) {
            i = Math.min(i, 6);
        } else if (awaitingCompletionLifecycleImpact == SpecialEffectsController.Operation.LifecycleImpact.REMOVING) {
            i = Math.max(i, 3);
        } else if (this.mFragment.mRemoving) {
            if (this.mFragment.isInBackStack()) {
                i = Math.min(i, 1);
            } else {
                i = Math.min(i, -1);
            }
        }
        if (this.mFragment.mDeferStart && this.mFragment.mState < 5) {
            i = Math.min(i, 4);
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i + " for " + this.mFragment);
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.fragment.app.FragmentStateManager$2, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$androidx$lifecycle$Lifecycle$State;

        static {
            int[] iArr = new int[Lifecycle.State.values().length];
            $SwitchMap$androidx$lifecycle$Lifecycle$State = iArr;
            try {
                iArr[Lifecycle.State.RESUMED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.STARTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.CREATED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$lifecycle$Lifecycle$State[Lifecycle.State.INITIALIZED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void moveToExpectedState() {
        if (this.mMovingToState) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + getFragment());
                return;
            }
            return;
        }
        try {
            this.mMovingToState = true;
            boolean z = false;
            while (true) {
                int computeExpectedState = computeExpectedState();
                if (computeExpectedState != this.mFragment.mState) {
                    if (computeExpectedState > this.mFragment.mState) {
                        switch (this.mFragment.mState + 1) {
                            case 0:
                                attach();
                                break;
                            case 1:
                                create();
                                break;
                            case 2:
                                ensureInflatedView();
                                createView();
                                break;
                            case 3:
                                activityCreated();
                                break;
                            case 4:
                                if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                    SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).enqueueAdd(SpecialEffectsController.Operation.State.from(this.mFragment.mView.getVisibility()), this);
                                }
                                this.mFragment.mState = 4;
                                break;
                            case 5:
                                start();
                                break;
                            case 6:
                                this.mFragment.mState = 6;
                                break;
                            case 7:
                                resume();
                                break;
                        }
                    } else {
                        switch (this.mFragment.mState - 1) {
                            case -1:
                                detach();
                                break;
                            case 0:
                                if (this.mFragment.mBeingSaved && this.mFragmentStore.getSavedState(this.mFragment.mWho) == null) {
                                    this.mFragmentStore.setSavedState(this.mFragment.mWho, saveState());
                                }
                                destroy();
                                break;
                            case 1:
                                destroyFragmentView();
                                this.mFragment.mState = 1;
                                break;
                            case 2:
                                this.mFragment.mInLayout = false;
                                this.mFragment.mState = 2;
                                break;
                            case 3:
                                if (FragmentManager.isLoggingEnabled(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.mFragment);
                                }
                                if (this.mFragment.mBeingSaved) {
                                    this.mFragmentStore.setSavedState(this.mFragment.mWho, saveState());
                                } else if (this.mFragment.mView != null && this.mFragment.mSavedViewState == null) {
                                    saveViewState();
                                }
                                if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                                    SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager()).enqueueRemove(this);
                                }
                                this.mFragment.mState = 3;
                                break;
                            case 4:
                                stop();
                                break;
                            case 5:
                                this.mFragment.mState = 5;
                                break;
                            case 6:
                                pause();
                                break;
                        }
                    }
                    z = true;
                } else {
                    if (!z && this.mFragment.mState == -1 && this.mFragment.mRemoving && !this.mFragment.isInBackStack() && !this.mFragment.mBeingSaved) {
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "Cleaning up state of never attached fragment: " + this.mFragment);
                        }
                        this.mFragmentStore.getNonConfig().clearNonConfigState(this.mFragment);
                        this.mFragmentStore.makeInactive(this);
                        if (FragmentManager.isLoggingEnabled(3)) {
                            Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
                        }
                        this.mFragment.initState();
                    }
                    if (this.mFragment.mHiddenChanged) {
                        if (this.mFragment.mView != null && this.mFragment.mContainer != null) {
                            SpecialEffectsController orCreateController = SpecialEffectsController.getOrCreateController(this.mFragment.mContainer, this.mFragment.getParentFragmentManager());
                            if (this.mFragment.mHidden) {
                                orCreateController.enqueueHide(this);
                            } else {
                                orCreateController.enqueueShow(this);
                            }
                        }
                        if (this.mFragment.mFragmentManager != null) {
                            this.mFragment.mFragmentManager.invalidateMenuForFragment(this.mFragment);
                        }
                        this.mFragment.mHiddenChanged = false;
                        Fragment fragment = this.mFragment;
                        fragment.onHiddenChanged(fragment.mHidden);
                        this.mFragment.mChildFragmentManager.dispatchOnHiddenChanged();
                    }
                    return;
                }
            }
        } finally {
            this.mMovingToState = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void ensureInflatedView() {
        if (this.mFragment.mFromLayout && this.mFragment.mInLayout && !this.mFragment.mPerformedCreateView) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
            }
            Bundle bundle = this.mFragment.mSavedFragmentState != null ? this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY) : null;
            Fragment fragment = this.mFragment;
            fragment.performCreateView(fragment.performGetLayoutInflater(bundle), null, bundle);
            if (this.mFragment.mView != null) {
                this.mFragment.mView.setSaveFromParentEnabled(false);
                this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
                if (this.mFragment.mHidden) {
                    this.mFragment.mView.setVisibility(8);
                }
                this.mFragment.performViewCreated();
                FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
                Fragment fragment2 = this.mFragment;
                fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment2, fragment2.mView, bundle, false);
                this.mFragment.mState = 2;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void restoreState(ClassLoader classLoader) {
        if (this.mFragment.mSavedFragmentState == null) {
            return;
        }
        this.mFragment.mSavedFragmentState.setClassLoader(classLoader);
        if (this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY) == null) {
            this.mFragment.mSavedFragmentState.putBundle(SAVED_INSTANCE_STATE_KEY, new Bundle());
        }
        Fragment fragment = this.mFragment;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray(VIEW_STATE_KEY);
        Fragment fragment2 = this.mFragment;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle(VIEW_REGISTRY_STATE_KEY);
        FragmentState fragmentState = (FragmentState) this.mFragment.mSavedFragmentState.getParcelable("state");
        if (fragmentState != null) {
            this.mFragment.mTargetWho = fragmentState.mTargetWho;
            this.mFragment.mTargetRequestCode = fragmentState.mTargetRequestCode;
            if (this.mFragment.mSavedUserVisibleHint != null) {
                Fragment fragment3 = this.mFragment;
                fragment3.mUserVisibleHint = fragment3.mSavedUserVisibleHint.booleanValue();
                this.mFragment.mSavedUserVisibleHint = null;
            } else {
                this.mFragment.mUserVisibleHint = fragmentState.mUserVisibleHint;
            }
        }
        if (this.mFragment.mUserVisibleHint) {
            return;
        }
        this.mFragment.mDeferStart = true;
    }

    void attach() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ATTACHED: " + this.mFragment);
        }
        FragmentStateManager fragmentStateManager = null;
        if (this.mFragment.mTarget != null) {
            FragmentStateManager fragmentStateManager2 = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTarget.mWho);
            if (fragmentStateManager2 == null) {
                throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTarget + " that does not belong to this FragmentManager!");
            }
            Fragment fragment = this.mFragment;
            fragment.mTargetWho = fragment.mTarget.mWho;
            this.mFragment.mTarget = null;
            fragmentStateManager = fragmentStateManager2;
        } else if (this.mFragment.mTargetWho != null && (fragmentStateManager = this.mFragmentStore.getFragmentStateManager(this.mFragment.mTargetWho)) == null) {
            throw new IllegalStateException("Fragment " + this.mFragment + " declared target fragment " + this.mFragment.mTargetWho + " that does not belong to this FragmentManager!");
        }
        if (fragmentStateManager != null) {
            fragmentStateManager.moveToExpectedState();
        }
        Fragment fragment2 = this.mFragment;
        fragment2.mHost = fragment2.mFragmentManager.getHost();
        Fragment fragment3 = this.mFragment;
        fragment3.mParentFragment = fragment3.mFragmentManager.getParent();
        this.mDispatcher.dispatchOnFragmentPreAttached(this.mFragment, false);
        this.mFragment.performAttach();
        this.mDispatcher.dispatchOnFragmentAttached(this.mFragment, false);
    }

    void create() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATED: " + this.mFragment);
        }
        Bundle bundle = this.mFragment.mSavedFragmentState != null ? this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY) : null;
        if (!this.mFragment.mIsCreated) {
            this.mDispatcher.dispatchOnFragmentPreCreated(this.mFragment, bundle, false);
            this.mFragment.performCreate(bundle);
            this.mDispatcher.dispatchOnFragmentCreated(this.mFragment, bundle, false);
        } else {
            this.mFragment.mState = 1;
            this.mFragment.restoreChildFragmentState();
        }
    }

    void createView() {
        String str;
        if (this.mFragment.mFromLayout) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + this.mFragment);
        }
        ViewGroup viewGroup = null;
        Bundle bundle = this.mFragment.mSavedFragmentState != null ? this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY) : null;
        LayoutInflater performGetLayoutInflater = this.mFragment.performGetLayoutInflater(bundle);
        if (this.mFragment.mContainer != null) {
            viewGroup = this.mFragment.mContainer;
        } else if (this.mFragment.mContainerId != 0) {
            if (this.mFragment.mContainerId == -1) {
                throw new IllegalArgumentException("Cannot create fragment " + this.mFragment + " for a container view with no id");
            }
            viewGroup = (ViewGroup) this.mFragment.mFragmentManager.getContainer().onFindViewById(this.mFragment.mContainerId);
            if (viewGroup == null) {
                if (!this.mFragment.mRestored) {
                    try {
                        str = this.mFragment.getResources().getResourceName(this.mFragment.mContainerId);
                    } catch (Resources.NotFoundException unused) {
                        str = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(this.mFragment.mContainerId) + " (" + str + ") for fragment " + this.mFragment);
                }
            } else if (!(viewGroup instanceof FragmentContainerView)) {
                FragmentStrictMode.onWrongFragmentContainer(this.mFragment, viewGroup);
            }
        }
        this.mFragment.mContainer = viewGroup;
        this.mFragment.performCreateView(performGetLayoutInflater, viewGroup, bundle);
        if (this.mFragment.mView != null) {
            if (FragmentManager.isLoggingEnabled(3)) {
                Log.d("FragmentManager", "moveto VIEW_CREATED: " + this.mFragment);
            }
            this.mFragment.mView.setSaveFromParentEnabled(false);
            this.mFragment.mView.setTag(R.id.fragment_container_view_tag, this.mFragment);
            if (viewGroup != null) {
                addViewToContainer();
            }
            if (this.mFragment.mHidden) {
                this.mFragment.mView.setVisibility(8);
            }
            if (ViewCompat.isAttachedToWindow(this.mFragment.mView)) {
                ViewCompat.requestApplyInsets(this.mFragment.mView);
            } else {
                final View view = this.mFragment.mView;
                view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.fragment.app.FragmentStateManager.1
                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewDetachedFromWindow(View view2) {
                    }

                    @Override // android.view.View.OnAttachStateChangeListener
                    public void onViewAttachedToWindow(View view2) {
                        view.removeOnAttachStateChangeListener(this);
                        ViewCompat.requestApplyInsets(view);
                    }
                });
            }
            this.mFragment.performViewCreated();
            FragmentLifecycleCallbacksDispatcher fragmentLifecycleCallbacksDispatcher = this.mDispatcher;
            Fragment fragment = this.mFragment;
            fragmentLifecycleCallbacksDispatcher.dispatchOnFragmentViewCreated(fragment, fragment.mView, bundle, false);
            int visibility = this.mFragment.mView.getVisibility();
            this.mFragment.setPostOnViewCreatedAlpha(this.mFragment.mView.getAlpha());
            if (this.mFragment.mContainer != null && visibility == 0) {
                View findFocus = this.mFragment.mView.findFocus();
                if (findFocus != null) {
                    this.mFragment.setFocusedView(findFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + this.mFragment);
                    }
                }
                this.mFragment.mView.setAlpha(0.0f);
            }
        }
        this.mFragment.mState = 2;
    }

    void activityCreated() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + this.mFragment);
        }
        Bundle bundle = this.mFragment.mSavedFragmentState != null ? this.mFragment.mSavedFragmentState.getBundle(SAVED_INSTANCE_STATE_KEY) : null;
        this.mFragment.performActivityCreated(bundle);
        this.mDispatcher.dispatchOnFragmentActivityCreated(this.mFragment, bundle, false);
    }

    void start() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto STARTED: " + this.mFragment);
        }
        this.mFragment.performStart();
        this.mDispatcher.dispatchOnFragmentStarted(this.mFragment, false);
    }

    void resume() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "moveto RESUMED: " + this.mFragment);
        }
        View focusedView = this.mFragment.getFocusedView();
        if (focusedView != null && isFragmentViewChild(focusedView)) {
            boolean requestFocus = focusedView.requestFocus();
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v("FragmentManager", "requestFocus: Restoring focused view " + focusedView + " " + (requestFocus ? "succeeded" : "failed") + " on Fragment " + this.mFragment + " resulting in focused view " + this.mFragment.mView.findFocus());
            }
        }
        this.mFragment.setFocusedView(null);
        this.mFragment.performResume();
        this.mDispatcher.dispatchOnFragmentResumed(this.mFragment, false);
        this.mFragment.mSavedFragmentState = null;
        this.mFragment.mSavedViewState = null;
        this.mFragment.mSavedViewRegistryState = null;
    }

    private boolean isFragmentViewChild(View view) {
        if (view == this.mFragment.mView) {
            return true;
        }
        for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
            if (parent == this.mFragment.mView) {
                return true;
            }
        }
        return false;
    }

    void pause() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom RESUMED: " + this.mFragment);
        }
        this.mFragment.performPause();
        this.mDispatcher.dispatchOnFragmentPaused(this.mFragment, false);
    }

    void stop() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom STARTED: " + this.mFragment);
        }
        this.mFragment.performStop();
        this.mDispatcher.dispatchOnFragmentStopped(this.mFragment, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle saveState() {
        Bundle bundle = new Bundle();
        if (this.mFragment.mState == -1 && this.mFragment.mSavedFragmentState != null) {
            bundle.putAll(this.mFragment.mSavedFragmentState);
        }
        bundle.putParcelable("state", new FragmentState(this.mFragment));
        if (this.mFragment.mState > -1) {
            Bundle bundle2 = new Bundle();
            this.mFragment.performSaveInstanceState(bundle2);
            if (!bundle2.isEmpty()) {
                bundle.putBundle(SAVED_INSTANCE_STATE_KEY, bundle2);
            }
            this.mDispatcher.dispatchOnFragmentSaveInstanceState(this.mFragment, bundle2, false);
            Bundle bundle3 = new Bundle();
            this.mFragment.mSavedStateRegistryController.performSave(bundle3);
            if (!bundle3.isEmpty()) {
                bundle.putBundle(REGISTRY_STATE_KEY, bundle3);
            }
            Bundle m5170lambda$attachController$4$androidxfragmentappFragmentManager = this.mFragment.mChildFragmentManager.m5170lambda$attachController$4$androidxfragmentappFragmentManager();
            if (!m5170lambda$attachController$4$androidxfragmentappFragmentManager.isEmpty()) {
                bundle.putBundle(CHILD_FRAGMENT_MANAGER_KEY, m5170lambda$attachController$4$androidxfragmentappFragmentManager);
            }
            if (this.mFragment.mView != null) {
                saveViewState();
            }
            if (this.mFragment.mSavedViewState != null) {
                bundle.putSparseParcelableArray(VIEW_STATE_KEY, this.mFragment.mSavedViewState);
            }
            if (this.mFragment.mSavedViewRegistryState != null) {
                bundle.putBundle(VIEW_REGISTRY_STATE_KEY, this.mFragment.mSavedViewRegistryState);
            }
        }
        if (this.mFragment.mArguments != null) {
            bundle.putBundle(ARGUMENTS_KEY, this.mFragment.mArguments);
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment.SavedState saveInstanceState() {
        if (this.mFragment.mState > -1) {
            return new Fragment.SavedState(saveState());
        }
        return null;
    }

    void saveViewState() {
        if (this.mFragment.mView == null) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v("FragmentManager", "Saving view state for fragment " + this.mFragment + " with view " + this.mFragment.mView);
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        this.mFragment.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.mFragment.mSavedViewState = sparseArray;
        }
        Bundle bundle = new Bundle();
        this.mFragment.mViewLifecycleOwner.performSave(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.mFragment.mSavedViewRegistryState = bundle;
    }

    void destroyFragmentView() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + this.mFragment);
        }
        if (this.mFragment.mContainer != null && this.mFragment.mView != null) {
            this.mFragment.mContainer.removeView(this.mFragment.mView);
        }
        this.mFragment.performDestroyView();
        this.mDispatcher.dispatchOnFragmentViewDestroyed(this.mFragment, false);
        this.mFragment.mContainer = null;
        this.mFragment.mView = null;
        this.mFragment.mViewLifecycleOwner = null;
        this.mFragment.mViewLifecycleOwnerLiveData.setValue(null);
        this.mFragment.mInLayout = false;
    }

    void destroy() {
        Fragment findActiveFragment;
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom CREATED: " + this.mFragment);
        }
        boolean z = true;
        boolean z2 = this.mFragment.mRemoving && !this.mFragment.isInBackStack();
        if (z2 && !this.mFragment.mBeingSaved) {
            this.mFragmentStore.setSavedState(this.mFragment.mWho, null);
        }
        if (z2 || this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment)) {
            FragmentHostCallback<?> fragmentHostCallback = this.mFragment.mHost;
            if (fragmentHostCallback instanceof ViewModelStoreOwner) {
                z = this.mFragmentStore.getNonConfig().isCleared();
            } else if (fragmentHostCallback.getContext() instanceof Activity) {
                z = true ^ ((Activity) fragmentHostCallback.getContext()).isChangingConfigurations();
            }
            if ((z2 && !this.mFragment.mBeingSaved) || z) {
                this.mFragmentStore.getNonConfig().clearNonConfigState(this.mFragment);
            }
            this.mFragment.performDestroy();
            this.mDispatcher.dispatchOnFragmentDestroyed(this.mFragment, false);
            for (FragmentStateManager fragmentStateManager : this.mFragmentStore.getActiveFragmentStateManagers()) {
                if (fragmentStateManager != null) {
                    Fragment fragment = fragmentStateManager.getFragment();
                    if (this.mFragment.mWho.equals(fragment.mTargetWho)) {
                        fragment.mTarget = this.mFragment;
                        fragment.mTargetWho = null;
                    }
                }
            }
            if (this.mFragment.mTargetWho != null) {
                Fragment fragment2 = this.mFragment;
                fragment2.mTarget = this.mFragmentStore.findActiveFragment(fragment2.mTargetWho);
            }
            this.mFragmentStore.makeInactive(this);
            return;
        }
        if (this.mFragment.mTargetWho != null && (findActiveFragment = this.mFragmentStore.findActiveFragment(this.mFragment.mTargetWho)) != null && findActiveFragment.mRetainInstance) {
            this.mFragment.mTarget = findActiveFragment;
        }
        this.mFragment.mState = 0;
    }

    void detach() {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + this.mFragment);
        }
        this.mFragment.performDetach();
        this.mDispatcher.dispatchOnFragmentDetached(this.mFragment, false);
        this.mFragment.mState = -1;
        this.mFragment.mHost = null;
        this.mFragment.mParentFragment = null;
        this.mFragment.mFragmentManager = null;
        if ((!this.mFragment.mRemoving || this.mFragment.isInBackStack()) && !this.mFragmentStore.getNonConfig().shouldDestroy(this.mFragment)) {
            return;
        }
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "initState called for fragment: " + this.mFragment);
        }
        this.mFragment.initState();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addViewToContainer() {
        Fragment findViewFragment = FragmentManager.findViewFragment(this.mFragment.mContainer);
        Fragment parentFragment = this.mFragment.getParentFragment();
        if (findViewFragment != null && !findViewFragment.equals(parentFragment)) {
            Fragment fragment = this.mFragment;
            FragmentStrictMode.onWrongNestedHierarchy(fragment, findViewFragment, fragment.mContainerId);
        }
        this.mFragment.mContainer.addView(this.mFragment.mView, this.mFragmentStore.findFragmentIndexInContainer(this.mFragment));
    }
}
