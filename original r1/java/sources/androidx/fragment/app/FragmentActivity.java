package androidx.fragment.app;

import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.OnBackPressedDispatcherOwner;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.ActivityResultRegistryOwner;
import androidx.core.app.ActivityCompat;
import androidx.core.app.MultiWindowModeChangedInfo;
import androidx.core.app.OnMultiWindowModeChangedProvider;
import androidx.core.app.OnPictureInPictureModeChangedProvider;
import androidx.core.app.PictureInPictureModeChangedInfo;
import androidx.core.app.SharedElementCallback;
import androidx.core.content.OnConfigurationChangedProvider;
import androidx.core.content.OnTrimMemoryProvider;
import androidx.core.util.Consumer;
import androidx.core.view.MenuHost;
import androidx.core.view.MenuProvider;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.loader.app.LoaderManager;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes2.dex */
public class FragmentActivity extends ComponentActivity implements ActivityCompat.OnRequestPermissionsResultCallback, ActivityCompat.RequestPermissionsRequestCodeValidator {
    static final String LIFECYCLE_TAG = "android:support:lifecycle";
    boolean mCreated;
    final LifecycleRegistry mFragmentLifecycleRegistry;
    final FragmentController mFragments;
    boolean mResumed;
    boolean mStopped;

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // androidx.core.app.ActivityCompat.RequestPermissionsRequestCodeValidator
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public FragmentActivity() {
        this.mFragments = FragmentController.createController(new HostCallbacks());
        this.mFragmentLifecycleRegistry = new LifecycleRegistry(this);
        this.mStopped = true;
        init();
    }

    public FragmentActivity(int i) {
        super(i);
        this.mFragments = FragmentController.createController(new HostCallbacks());
        this.mFragmentLifecycleRegistry = new LifecycleRegistry(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().registerSavedStateProvider(LIFECYCLE_TAG, new SavedStateRegistry.SavedStateProvider() { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda0
            @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
            public final Bundle saveState() {
                return FragmentActivity.this.m5166lambda$init$0$androidxfragmentappFragmentActivity();
            }
        });
        addOnConfigurationChangedListener(new Consumer() { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda1
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                FragmentActivity.this.m5167lambda$init$1$androidxfragmentappFragmentActivity((Configuration) obj);
            }
        });
        addOnNewIntentListener(new Consumer() { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda2
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                FragmentActivity.this.m5168lambda$init$2$androidxfragmentappFragmentActivity((Intent) obj);
            }
        });
        addOnContextAvailableListener(new OnContextAvailableListener() { // from class: androidx.fragment.app.FragmentActivity$$ExternalSyntheticLambda3
            @Override // androidx.activity.contextaware.OnContextAvailableListener
            public final void onContextAvailable(Context context) {
                FragmentActivity.this.m5169lambda$init$3$androidxfragmentappFragmentActivity(context);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$0$androidx-fragment-app-FragmentActivity, reason: not valid java name */
    public /* synthetic */ Bundle m5166lambda$init$0$androidxfragmentappFragmentActivity() {
        markFragmentsCreated();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
        return new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$1$androidx-fragment-app-FragmentActivity, reason: not valid java name */
    public /* synthetic */ void m5167lambda$init$1$androidxfragmentappFragmentActivity(Configuration configuration) {
        this.mFragments.noteStateNotSaved();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$2$androidx-fragment-app-FragmentActivity, reason: not valid java name */
    public /* synthetic */ void m5168lambda$init$2$androidxfragmentappFragmentActivity(Intent intent) {
        this.mFragments.noteStateNotSaved();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$init$3$androidx-fragment-app-FragmentActivity, reason: not valid java name */
    public /* synthetic */ void m5169lambda$init$3$androidxfragmentappFragmentActivity(Context context) {
        this.mFragments.attachHost(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.noteStateNotSaved();
        super.onActivityResult(i, i2, intent);
    }

    public void supportFinishAfterTransition() {
        ActivityCompat.finishAfterTransition(this);
    }

    public void setEnterSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setEnterSharedElementCallback(this, sharedElementCallback);
    }

    public void setExitSharedElementCallback(SharedElementCallback sharedElementCallback) {
        ActivityCompat.setExitSharedElementCallback(this, sharedElementCallback);
    }

    public void supportPostponeEnterTransition() {
        ActivityCompat.postponeEnterTransition(this);
    }

    public void supportStartPostponedEnterTransition() {
        ActivityCompat.startPostponedEnterTransition(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        this.mFragments.dispatchCreate();
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View dispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return dispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : dispatchFragmentsOnCreateView;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.onCreateView(view, str, context, attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.dispatchDestroy();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_DESTROY);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 6) {
            return this.mFragments.dispatchContextItemSelected(menuItem);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.dispatchPause();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.noteStateNotSaved();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onResume() {
        this.mFragments.noteStateNotSaved();
        super.onResume();
        this.mResumed = true;
        this.mFragments.execPendingActions();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
        this.mFragments.dispatchResume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStart() {
        this.mFragments.noteStateNotSaved();
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.dispatchActivityCreated();
        }
        this.mFragments.execPendingActions();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
        this.mFragments.dispatchStart();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.dispatchStop();
        this.mFragmentLifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateMenu();
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        if (shouldDumpInternalState(strArr)) {
            printWriter.print(str);
            printWriter.print("Local FragmentActivity ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(" State:");
            String str2 = str + "  ";
            printWriter.print(str2);
            printWriter.print("mCreated=");
            printWriter.print(this.mCreated);
            printWriter.print(" mResumed=");
            printWriter.print(this.mResumed);
            printWriter.print(" mStopped=");
            printWriter.print(this.mStopped);
            if (getApplication() != null) {
                LoaderManager.getInstance(this).dump(str2, fileDescriptor, printWriter, strArr);
            }
            this.mFragments.getSupportFragmentManager().dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    public FragmentManager getSupportFragmentManager() {
        return this.mFragments.getSupportFragmentManager();
    }

    @Deprecated
    public LoaderManager getSupportLoaderManager() {
        return LoaderManager.getInstance(this);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.noteStateNotSaved();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    public void startActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            ActivityCompat.startActivityForResult(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i, bundle);
        }
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            ActivityCompat.startIntentSenderForResult(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    /* loaded from: classes2.dex */
    class HostCallbacks extends FragmentHostCallback<FragmentActivity> implements OnConfigurationChangedProvider, OnTrimMemoryProvider, OnMultiWindowModeChangedProvider, OnPictureInPictureModeChangedProvider, ViewModelStoreOwner, OnBackPressedDispatcherOwner, ActivityResultRegistryOwner, SavedStateRegistryOwner, FragmentOnAttachListener, MenuHost {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // androidx.fragment.app.FragmentHostCallback
        public FragmentActivity onGetHost() {
            return FragmentActivity.this;
        }

        public HostCallbacks() {
            super(FragmentActivity.this);
        }

        @Override // androidx.lifecycle.LifecycleOwner
        public Lifecycle getLifecycle() {
            return FragmentActivity.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.lifecycle.ViewModelStoreOwner
        public ViewModelStore getViewModelStore() {
            return FragmentActivity.this.getViewModelStore();
        }

        @Override // androidx.activity.OnBackPressedDispatcherOwner
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return FragmentActivity.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            FragmentActivity.this.dump(str, fileDescriptor, printWriter, strArr);
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public boolean onShouldSaveFragmentState(Fragment fragment) {
            return !FragmentActivity.this.isFinishing();
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public LayoutInflater onGetLayoutInflater() {
            return FragmentActivity.this.getLayoutInflater().cloneInContext(FragmentActivity.this);
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public void onSupportInvalidateOptionsMenu() {
            invalidateMenu();
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public boolean onShouldShowRequestPermissionRationale(String str) {
            return ActivityCompat.shouldShowRequestPermissionRationale(FragmentActivity.this, str);
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public boolean onHasWindowAnimations() {
            return FragmentActivity.this.getWindow() != null;
        }

        @Override // androidx.fragment.app.FragmentHostCallback
        public int onGetWindowAnimations() {
            Window window = FragmentActivity.this.getWindow();
            if (window == null) {
                return 0;
            }
            return window.getAttributes().windowAnimations;
        }

        @Override // androidx.fragment.app.FragmentOnAttachListener
        public void onAttachFragment(FragmentManager fragmentManager, Fragment fragment) {
            FragmentActivity.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.FragmentHostCallback, androidx.fragment.app.FragmentContainer
        public View onFindViewById(int i) {
            return FragmentActivity.this.findViewById(i);
        }

        @Override // androidx.fragment.app.FragmentHostCallback, androidx.fragment.app.FragmentContainer
        public boolean onHasView() {
            Window window = FragmentActivity.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.ActivityResultRegistryOwner
        public ActivityResultRegistry getActivityResultRegistry() {
            return FragmentActivity.this.getActivityResultRegistry();
        }

        @Override // androidx.savedstate.SavedStateRegistryOwner
        public SavedStateRegistry getSavedStateRegistry() {
            return FragmentActivity.this.getSavedStateRegistry();
        }

        @Override // androidx.core.content.OnConfigurationChangedProvider
        public void addOnConfigurationChangedListener(Consumer<Configuration> consumer) {
            FragmentActivity.this.addOnConfigurationChangedListener(consumer);
        }

        @Override // androidx.core.content.OnConfigurationChangedProvider
        public void removeOnConfigurationChangedListener(Consumer<Configuration> consumer) {
            FragmentActivity.this.removeOnConfigurationChangedListener(consumer);
        }

        @Override // androidx.core.content.OnTrimMemoryProvider
        public void addOnTrimMemoryListener(Consumer<Integer> consumer) {
            FragmentActivity.this.addOnTrimMemoryListener(consumer);
        }

        @Override // androidx.core.content.OnTrimMemoryProvider
        public void removeOnTrimMemoryListener(Consumer<Integer> consumer) {
            FragmentActivity.this.removeOnTrimMemoryListener(consumer);
        }

        @Override // androidx.core.app.OnMultiWindowModeChangedProvider
        public void addOnMultiWindowModeChangedListener(Consumer<MultiWindowModeChangedInfo> consumer) {
            FragmentActivity.this.addOnMultiWindowModeChangedListener(consumer);
        }

        @Override // androidx.core.app.OnMultiWindowModeChangedProvider
        public void removeOnMultiWindowModeChangedListener(Consumer<MultiWindowModeChangedInfo> consumer) {
            FragmentActivity.this.removeOnMultiWindowModeChangedListener(consumer);
        }

        @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
        public void addOnPictureInPictureModeChangedListener(Consumer<PictureInPictureModeChangedInfo> consumer) {
            FragmentActivity.this.addOnPictureInPictureModeChangedListener(consumer);
        }

        @Override // androidx.core.app.OnPictureInPictureModeChangedProvider
        public void removeOnPictureInPictureModeChangedListener(Consumer<PictureInPictureModeChangedInfo> consumer) {
            FragmentActivity.this.removeOnPictureInPictureModeChangedListener(consumer);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.addMenuProvider(menuProvider);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider, LifecycleOwner lifecycleOwner) {
            FragmentActivity.this.addMenuProvider(menuProvider, lifecycleOwner);
        }

        @Override // androidx.core.view.MenuHost
        public void addMenuProvider(MenuProvider menuProvider, LifecycleOwner lifecycleOwner, Lifecycle.State state) {
            FragmentActivity.this.addMenuProvider(menuProvider, lifecycleOwner, state);
        }

        @Override // androidx.core.view.MenuHost
        public void removeMenuProvider(MenuProvider menuProvider) {
            FragmentActivity.this.removeMenuProvider(menuProvider);
        }

        @Override // androidx.core.view.MenuHost
        public void invalidateMenu() {
            FragmentActivity.this.invalidateMenu();
        }
    }

    void markFragmentsCreated() {
        do {
        } while (markState(getSupportFragmentManager(), Lifecycle.State.CREATED));
    }

    private static boolean markState(FragmentManager fragmentManager, Lifecycle.State state) {
        boolean z = false;
        for (Fragment fragment : fragmentManager.getFragments()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    z |= markState(fragment.getChildFragmentManager(), state);
                }
                if (fragment.mViewLifecycleOwner != null && fragment.mViewLifecycleOwner.getLifecycle().getState().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mViewLifecycleOwner.setCurrentState(state);
                    z = true;
                }
                if (fragment.mLifecycleRegistry.getState().isAtLeast(Lifecycle.State.STARTED)) {
                    fragment.mLifecycleRegistry.setCurrentState(state);
                    z = true;
                }
            }
        }
        return z;
    }
}
