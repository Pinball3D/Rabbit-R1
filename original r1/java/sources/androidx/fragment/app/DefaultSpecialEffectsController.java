package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.DefaultSpecialEffectsController;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DefaultSpecialEffectsController.kt */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0003*+,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J(\u0010\t\u001a\u00020\u00062\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f0\u000bj\b\u0012\u0004\u0012\u00020\f`\r2\u0006\u0010\u000e\u001a\u00020\fH\u0002J\u001e\u0010\u000f\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J$\u0010\u0014\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0\u00162\u0006\u0010\u000e\u001a\u00020\fH\u0002J@\u0010\u0018\u001a\u00020\u00062\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u001d\u001a\u00020\u00132\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001fH\u0002JL\u0010 \u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00130\u001f2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u00112\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\b0\u001c2\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010#\u001a\u0004\u0018\u00010\b2\b\u0010$\u001a\u0004\u0018\u00010\bH\u0002J\u0016\u0010%\u001a\u00020\u00062\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0002J&\u0010&\u001a\u00020\u0006*\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\f0'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00170)H\u0002¨\u0006-"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController;", "Landroidx/fragment/app/SpecialEffectsController;", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "applyContainerChanges", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "captureTransitioningViews", "transitioningViews", "Ljava/util/ArrayList;", "Landroid/view/View;", "Lkotlin/collections/ArrayList;", "view", "executeOperations", "operations", "", "isPop", "", "findNamedViews", "namedViews", "", "", "startAnimations", "animationInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "awaitingContainerChanges", "", "startedAnyTransition", "startedTransitions", "", "startTransitions", "transitionInfos", "Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "firstOut", "lastIn", "syncAnimations", "retainMatchingViews", "Landroidx/collection/ArrayMap;", "names", "", "AnimationInfo", "SpecialEffectsInfo", "TransitionInfo", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DefaultSpecialEffectsController extends SpecialEffectsController {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DefaultSpecialEffectsController(ViewGroup container) {
        super(container);
        Intrinsics.checkNotNullParameter(container, "container");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    @Override // androidx.fragment.app.SpecialEffectsController
    public void executeOperations(List<? extends SpecialEffectsController.Operation> operations, boolean isPop) {
        SpecialEffectsController.Operation operation;
        SpecialEffectsController.Operation operation2;
        Intrinsics.checkNotNullParameter(operations, "operations");
        Iterator it = operations.iterator();
        while (true) {
            operation = null;
            if (!it.hasNext()) {
                operation2 = 0;
                break;
            }
            operation2 = it.next();
            SpecialEffectsController.Operation operation3 = (SpecialEffectsController.Operation) operation2;
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = operation3.getFragment().mView;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            if (companion.asOperationState(view) == SpecialEffectsController.Operation.State.VISIBLE && operation3.getFinalState() != SpecialEffectsController.Operation.State.VISIBLE) {
                break;
            }
        }
        SpecialEffectsController.Operation operation4 = operation2;
        ListIterator<? extends SpecialEffectsController.Operation> listIterator = operations.listIterator(operations.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            SpecialEffectsController.Operation previous = listIterator.previous();
            SpecialEffectsController.Operation operation5 = previous;
            SpecialEffectsController.Operation.State.Companion companion2 = SpecialEffectsController.Operation.State.INSTANCE;
            View view2 = operation5.getFragment().mView;
            Intrinsics.checkNotNullExpressionValue(view2, "operation.fragment.mView");
            if (companion2.asOperationState(view2) != SpecialEffectsController.Operation.State.VISIBLE && operation5.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                operation = previous;
                break;
            }
        }
        SpecialEffectsController.Operation operation6 = operation;
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Executing operations from " + operation4 + " to " + operation6);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final List<SpecialEffectsController.Operation> mutableList = CollectionsKt.toMutableList((Collection) operations);
        syncAnimations(operations);
        Iterator<? extends SpecialEffectsController.Operation> it2 = operations.iterator();
        while (true) {
            boolean z = true;
            if (!it2.hasNext()) {
                break;
            }
            final SpecialEffectsController.Operation next = it2.next();
            CancellationSignal cancellationSignal = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal);
            arrayList.add(new AnimationInfo(next, cancellationSignal, isPop));
            CancellationSignal cancellationSignal2 = new CancellationSignal();
            next.markStartedSpecialEffect(cancellationSignal2);
            if (isPop) {
                if (next == operation4) {
                    arrayList2.add(new TransitionInfo(next, cancellationSignal2, isPop, z));
                    next.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.executeOperations$lambda$2(mutableList, next, this);
                        }
                    });
                }
                z = false;
                arrayList2.add(new TransitionInfo(next, cancellationSignal2, isPop, z));
                next.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultSpecialEffectsController.executeOperations$lambda$2(mutableList, next, this);
                    }
                });
            } else {
                if (next == operation6) {
                    arrayList2.add(new TransitionInfo(next, cancellationSignal2, isPop, z));
                    next.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.executeOperations$lambda$2(mutableList, next, this);
                        }
                    });
                }
                z = false;
                arrayList2.add(new TransitionInfo(next, cancellationSignal2, isPop, z));
                next.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultSpecialEffectsController.executeOperations$lambda$2(mutableList, next, this);
                    }
                });
            }
        }
        Map<SpecialEffectsController.Operation, Boolean> startTransitions = startTransitions(arrayList2, mutableList, isPop, operation4, operation6);
        startAnimations(arrayList, mutableList, startTransitions.containsValue(true), startTransitions);
        Iterator<SpecialEffectsController.Operation> it3 = mutableList.iterator();
        while (it3.hasNext()) {
            applyContainerChanges(it3.next());
        }
        mutableList.clear();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Completed executing operations from " + operation4 + " to " + operation6);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void executeOperations$lambda$2(List awaitingContainerChanges, SpecialEffectsController.Operation operation, DefaultSpecialEffectsController this$0) {
        Intrinsics.checkNotNullParameter(awaitingContainerChanges, "$awaitingContainerChanges");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (awaitingContainerChanges.contains(operation)) {
            awaitingContainerChanges.remove(operation);
            this$0.applyContainerChanges(operation);
        }
    }

    private final void syncAnimations(List<? extends SpecialEffectsController.Operation> operations) {
        Fragment fragment = ((SpecialEffectsController.Operation) CollectionsKt.last((List) operations)).getFragment();
        for (SpecialEffectsController.Operation operation : operations) {
            operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    private final void startAnimations(List<AnimationInfo> animationInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, boolean startedAnyTransition, Map<SpecialEffectsController.Operation, Boolean> startedTransitions) {
        Context context = getContainer().getContext();
        ArrayList<AnimationInfo> arrayList = new ArrayList();
        boolean z = false;
        for (final AnimationInfo animationInfo : animationInfos) {
            if (animationInfo.isVisibilityUnchanged()) {
                animationInfo.completeSpecialEffect();
            } else {
                Intrinsics.checkNotNullExpressionValue(context, "context");
                FragmentAnim.AnimationOrAnimator animation = animationInfo.getAnimation(context);
                if (animation == null) {
                    animationInfo.completeSpecialEffect();
                } else {
                    final Animator animator = animation.animator;
                    if (animator == null) {
                        arrayList.add(animationInfo);
                    } else {
                        final SpecialEffectsController.Operation operation = animationInfo.getOperation();
                        Fragment fragment = operation.getFragment();
                        if (Intrinsics.areEqual((Object) startedTransitions.get(operation), (Object) true)) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                            }
                            animationInfo.completeSpecialEffect();
                        } else {
                            final boolean z2 = operation.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                            if (z2) {
                                awaitingContainerChanges.remove(operation);
                            }
                            final View view = fragment.mView;
                            getContainer().startViewTransition(view);
                            animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$startAnimations$1
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public void onAnimationEnd(Animator anim) {
                                    Intrinsics.checkNotNullParameter(anim, "anim");
                                    DefaultSpecialEffectsController.this.getContainer().endViewTransition(view);
                                    if (z2) {
                                        SpecialEffectsController.Operation.State finalState = operation.getFinalState();
                                        View viewToAnimate = view;
                                        Intrinsics.checkNotNullExpressionValue(viewToAnimate, "viewToAnimate");
                                        finalState.applyState(viewToAnimate);
                                    }
                                    animationInfo.completeSpecialEffect();
                                    if (FragmentManager.isLoggingEnabled(2)) {
                                        Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has ended.");
                                    }
                                }
                            });
                            animator.setTarget(view);
                            animator.start();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has started.");
                            }
                            animationInfo.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda5
                                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                                public final void onCancel() {
                                    DefaultSpecialEffectsController.startAnimations$lambda$3(animator, operation);
                                }
                            });
                            z = true;
                        }
                    }
                }
            }
        }
        for (final AnimationInfo animationInfo2 : arrayList) {
            final SpecialEffectsController.Operation operation2 = animationInfo2.getOperation();
            Fragment fragment2 = operation2.getFragment();
            if (startedAnyTransition) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Transitions.");
                }
                animationInfo2.completeSpecialEffect();
            } else if (z) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Ignoring Animation set on " + fragment2 + " as Animations cannot run alongside Animators.");
                }
                animationInfo2.completeSpecialEffect();
            } else {
                final View view2 = fragment2.mView;
                Intrinsics.checkNotNullExpressionValue(context, "context");
                FragmentAnim.AnimationOrAnimator animation2 = animationInfo2.getAnimation(context);
                if (animation2 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                Animation animation3 = animation2.animation;
                if (animation3 == null) {
                    throw new IllegalStateException("Required value was null.".toString());
                }
                if (operation2.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view2.startAnimation(animation3);
                    animationInfo2.completeSpecialEffect();
                } else {
                    getContainer().startViewTransition(view2);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation3, getContainer(), view2);
                    endViewTransitionAnimation.setAnimationListener(new DefaultSpecialEffectsController$startAnimations$3(operation2, this, view2, animationInfo2));
                    view2.startAnimation(endViewTransitionAnimation);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Animation from operation " + operation2 + " has started.");
                    }
                }
                animationInfo2.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda6
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public final void onCancel() {
                        DefaultSpecialEffectsController.startAnimations$lambda$4(view2, this, animationInfo2, operation2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAnimations$lambda$3(Animator animator, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(operation, "$operation");
        animator.end();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has been canceled.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startAnimations$lambda$4(View view, DefaultSpecialEffectsController this$0, AnimationInfo animationInfo, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(animationInfo, "$animationInfo");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        view.clearAnimation();
        this$0.getContainer().endViewTransition(view);
        animationInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Animation from operation " + operation + " has been cancelled.");
        }
    }

    private final Map<SpecialEffectsController.Operation, Boolean> startTransitions(List<TransitionInfo> transitionInfos, List<SpecialEffectsController.Operation> awaitingContainerChanges, boolean isPop, final SpecialEffectsController.Operation firstOut, final SpecialEffectsController.Operation lastIn) {
        Object obj;
        ArrayList<View> arrayList;
        View view;
        Object obj2;
        Object obj3;
        Object obj4;
        ArrayList arrayList2;
        View view2;
        final ArrayList<View> arrayList3;
        LinkedHashMap linkedHashMap;
        SpecialEffectsController.Operation operation;
        Object obj5;
        View view3;
        ArrayList arrayList4;
        List<TransitionInfo> list;
        View view4;
        ArrayMap arrayMap;
        ArrayList<View> arrayList5;
        final FragmentTransitionImpl fragmentTransitionImpl;
        LinkedHashMap linkedHashMap2;
        LinkedHashMap linkedHashMap3;
        Rect rect;
        View view5;
        Pair pair;
        FragmentTransitionImpl fragmentTransitionImpl2;
        ArrayList<String> arrayList6;
        ArrayList<String> arrayList7;
        Object obj6;
        final Rect rect2;
        View view6;
        final View view7;
        DefaultSpecialEffectsController defaultSpecialEffectsController = this;
        final boolean z = isPop;
        LinkedHashMap linkedHashMap4 = new LinkedHashMap();
        List<TransitionInfo> list2 = transitionInfos;
        ArrayList arrayList8 = new ArrayList();
        for (Object obj7 : list2) {
            if (!((TransitionInfo) obj7).isVisibilityUnchanged()) {
                arrayList8.add(obj7);
            }
        }
        ArrayList<TransitionInfo> arrayList9 = new ArrayList();
        for (Object obj8 : arrayList8) {
            if (((TransitionInfo) obj8).getHandlingImpl() != null) {
                arrayList9.add(obj8);
            }
        }
        FragmentTransitionImpl fragmentTransitionImpl3 = null;
        for (TransitionInfo transitionInfo : arrayList9) {
            FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
            if (fragmentTransitionImpl3 != null && handlingImpl != fragmentTransitionImpl3) {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + transitionInfo.getOperation().getFragment() + " returned Transition " + transitionInfo.getTransition() + " which uses a different Transition type than other Fragments.").toString());
            }
            fragmentTransitionImpl3 = handlingImpl;
        }
        if (fragmentTransitionImpl3 == null) {
            for (TransitionInfo transitionInfo2 : transitionInfos) {
                linkedHashMap4.put(transitionInfo2.getOperation(), false);
                transitionInfo2.completeSpecialEffect();
            }
            return linkedHashMap4;
        }
        View view8 = new View(getContainer().getContext());
        Rect rect3 = new Rect();
        ArrayList<View> arrayList10 = new ArrayList<>();
        ArrayList<View> arrayList11 = new ArrayList<>();
        ArrayMap arrayMap2 = new ArrayMap();
        boolean z2 = false;
        View view9 = null;
        loop4: while (true) {
            obj = null;
            for (TransitionInfo transitionInfo3 : transitionInfos) {
                if (!transitionInfo3.hasSharedElementTransition() || firstOut == null || lastIn == null) {
                    list = list2;
                    view4 = view9;
                    arrayMap = arrayMap2;
                    arrayList5 = arrayList10;
                    fragmentTransitionImpl = fragmentTransitionImpl3;
                    linkedHashMap2 = linkedHashMap4;
                    rect3 = rect3;
                    view8 = view8;
                    arrayList11 = arrayList11;
                } else {
                    Object wrapTransitionInSet = fragmentTransitionImpl3.wrapTransitionInSet(fragmentTransitionImpl3.cloneTransition(transitionInfo3.getSharedElementTransition()));
                    ArrayList<String> sharedElementSourceNames = lastIn.getFragment().getSharedElementSourceNames();
                    view4 = view9;
                    Intrinsics.checkNotNullExpressionValue(sharedElementSourceNames, "lastIn.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementSourceNames2 = firstOut.getFragment().getSharedElementSourceNames();
                    list = list2;
                    Intrinsics.checkNotNullExpressionValue(sharedElementSourceNames2, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementTargetNames = firstOut.getFragment().getSharedElementTargetNames();
                    linkedHashMap3 = linkedHashMap4;
                    Intrinsics.checkNotNullExpressionValue(sharedElementTargetNames, "firstOut.fragment.sharedElementTargetNames");
                    int size = sharedElementTargetNames.size();
                    rect = rect3;
                    view5 = view8;
                    int i = 0;
                    while (i < size) {
                        int i2 = size;
                        int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                        if (indexOf != -1) {
                            sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i));
                        }
                        i++;
                        size = i2;
                    }
                    ArrayList<String> sharedElementTargetNames2 = lastIn.getFragment().getSharedElementTargetNames();
                    Intrinsics.checkNotNullExpressionValue(sharedElementTargetNames2, "lastIn.fragment.sharedElementTargetNames");
                    if (!z) {
                        pair = TuplesKt.to(firstOut.getFragment().getExitTransitionCallback(), lastIn.getFragment().getEnterTransitionCallback());
                    } else {
                        pair = TuplesKt.to(firstOut.getFragment().getEnterTransitionCallback(), lastIn.getFragment().getExitTransitionCallback());
                    }
                    SharedElementCallback sharedElementCallback = (SharedElementCallback) pair.component1();
                    SharedElementCallback sharedElementCallback2 = (SharedElementCallback) pair.component2();
                    int size2 = sharedElementSourceNames.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        arrayMap2.put(sharedElementSourceNames.get(i3), sharedElementTargetNames2.get(i3));
                        i3++;
                        fragmentTransitionImpl3 = fragmentTransitionImpl3;
                        size2 = size2;
                        wrapTransitionInSet = wrapTransitionInSet;
                    }
                    Object obj9 = wrapTransitionInSet;
                    fragmentTransitionImpl2 = fragmentTransitionImpl3;
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, ">>> entering view names <<<");
                        Iterator<String> it = sharedElementTargetNames2.iterator();
                        while (it.hasNext()) {
                            Log.v(FragmentManager.TAG, "Name: " + it.next());
                        }
                        Log.v(FragmentManager.TAG, ">>> exiting view names <<<");
                        Iterator<String> it2 = sharedElementSourceNames.iterator();
                        while (it2.hasNext()) {
                            Log.v(FragmentManager.TAG, "Name: " + it2.next());
                        }
                    }
                    ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                    ArrayMap<String, View> arrayMap4 = arrayMap3;
                    View view10 = firstOut.getFragment().mView;
                    Intrinsics.checkNotNullExpressionValue(view10, "firstOut.fragment.mView");
                    defaultSpecialEffectsController.findNamedViews(arrayMap4, view10);
                    ArrayList<String> arrayList12 = sharedElementSourceNames;
                    arrayMap3.retainAll(arrayList12);
                    if (sharedElementCallback != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            arrayList6 = arrayList12;
                            Log.v(FragmentManager.TAG, "Executing exit callback for operation " + firstOut);
                        } else {
                            arrayList6 = arrayList12;
                        }
                        sharedElementCallback.onMapSharedElements(sharedElementSourceNames, arrayMap4);
                        int size3 = sharedElementSourceNames.size() - 1;
                        if (size3 >= 0) {
                            while (true) {
                                int i4 = size3 - 1;
                                String str = sharedElementSourceNames.get(size3);
                                View view11 = arrayMap3.get(str);
                                if (view11 == null) {
                                    arrayMap2.remove(str);
                                } else if (!Intrinsics.areEqual(str, ViewCompat.getTransitionName(view11))) {
                                    arrayMap2.put(ViewCompat.getTransitionName(view11), (String) arrayMap2.remove(str));
                                }
                                if (i4 < 0) {
                                    break;
                                }
                                size3 = i4;
                            }
                        }
                    } else {
                        arrayList6 = arrayList12;
                        arrayMap2.retainAll(arrayMap3.keySet());
                    }
                    final ArrayMap<String, View> arrayMap5 = new ArrayMap<>();
                    ArrayMap<String, View> arrayMap6 = arrayMap5;
                    View view12 = lastIn.getFragment().mView;
                    Intrinsics.checkNotNullExpressionValue(view12, "lastIn.fragment.mView");
                    defaultSpecialEffectsController.findNamedViews(arrayMap6, view12);
                    ArrayList<String> arrayList13 = sharedElementTargetNames2;
                    arrayMap5.retainAll(arrayList13);
                    arrayMap5.retainAll(arrayMap2.values());
                    if (sharedElementCallback2 != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            arrayList7 = arrayList13;
                            Log.v(FragmentManager.TAG, "Executing enter callback for operation " + lastIn);
                        } else {
                            arrayList7 = arrayList13;
                        }
                        sharedElementCallback2.onMapSharedElements(sharedElementTargetNames2, arrayMap6);
                        int size4 = sharedElementTargetNames2.size() - 1;
                        if (size4 >= 0) {
                            while (true) {
                                int i5 = size4 - 1;
                                String name = sharedElementTargetNames2.get(size4);
                                View view13 = arrayMap5.get(name);
                                if (view13 == null) {
                                    Intrinsics.checkNotNullExpressionValue(name, "name");
                                    String findKeyForValue = FragmentTransition.findKeyForValue(arrayMap2, name);
                                    if (findKeyForValue != null) {
                                        arrayMap2.remove(findKeyForValue);
                                    }
                                } else if (!Intrinsics.areEqual(name, ViewCompat.getTransitionName(view13))) {
                                    Intrinsics.checkNotNullExpressionValue(name, "name");
                                    String findKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap2, name);
                                    if (findKeyForValue2 != null) {
                                        arrayMap2.put(findKeyForValue2, ViewCompat.getTransitionName(view13));
                                    }
                                }
                                if (i5 < 0) {
                                    break;
                                }
                                size4 = i5;
                            }
                        }
                    } else {
                        arrayList7 = arrayList13;
                        FragmentTransition.retainValues(arrayMap2, arrayMap5);
                    }
                    Set keySet = arrayMap2.keySet();
                    Intrinsics.checkNotNullExpressionValue(keySet, "sharedElementNameMapping.keys");
                    defaultSpecialEffectsController.retainMatchingViews(arrayMap3, keySet);
                    Collection<String> values = arrayMap2.values();
                    Intrinsics.checkNotNullExpressionValue(values, "sharedElementNameMapping.values");
                    defaultSpecialEffectsController.retainMatchingViews(arrayMap5, values);
                    if (arrayMap2.isEmpty()) {
                        break;
                    }
                    FragmentTransition.callSharedElementStartEnd(lastIn.getFragment(), firstOut.getFragment(), z, arrayMap3, true);
                    OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda1
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.startTransitions$lambda$9(SpecialEffectsController.Operation.this, firstOut, z, arrayMap5);
                        }
                    });
                    arrayList10.addAll(arrayMap3.values());
                    if (!arrayList6.isEmpty()) {
                        View view14 = arrayMap3.get(sharedElementSourceNames.get(0));
                        fragmentTransitionImpl = fragmentTransitionImpl2;
                        obj6 = obj9;
                        fragmentTransitionImpl.setEpicenter(obj6, view14);
                        view4 = view14;
                    } else {
                        fragmentTransitionImpl = fragmentTransitionImpl2;
                        obj6 = obj9;
                    }
                    arrayList11.addAll(arrayMap5.values());
                    if (!(!arrayList7.isEmpty()) || (view7 = arrayMap5.get(sharedElementTargetNames2.get(0))) == null) {
                        rect2 = rect;
                        view6 = view5;
                    } else {
                        rect2 = rect;
                        OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                DefaultSpecialEffectsController.startTransitions$lambda$10(FragmentTransitionImpl.this, view7, rect2);
                            }
                        });
                        view6 = view5;
                        z2 = true;
                    }
                    fragmentTransitionImpl.setSharedElementTargets(obj6, view6, arrayList10);
                    arrayMap = arrayMap2;
                    ArrayList<View> arrayList14 = arrayList11;
                    arrayList5 = arrayList10;
                    fragmentTransitionImpl.scheduleRemoveTargets(obj6, null, null, null, null, obj6, arrayList14);
                    linkedHashMap2 = linkedHashMap3;
                    linkedHashMap2.put(firstOut, true);
                    linkedHashMap2.put(lastIn, true);
                    rect3 = rect2;
                    view8 = view6;
                    arrayList11 = arrayList14;
                    obj = obj6;
                }
                linkedHashMap4 = linkedHashMap2;
                view9 = view4;
                list2 = list;
                arrayMap2 = arrayMap;
                arrayList10 = arrayList5;
                z = isPop;
                fragmentTransitionImpl3 = fragmentTransitionImpl;
            }
            arrayList10.clear();
            arrayList11.clear();
            view9 = view4;
            list2 = list;
            linkedHashMap4 = linkedHashMap3;
            view8 = view5;
            rect3 = rect;
            fragmentTransitionImpl3 = fragmentTransitionImpl2;
        }
        List<TransitionInfo> list3 = list2;
        View view15 = view9;
        ArrayMap arrayMap7 = arrayMap2;
        ArrayList<View> arrayList15 = arrayList11;
        ArrayList<View> arrayList16 = arrayList10;
        Rect rect4 = rect3;
        FragmentTransitionImpl fragmentTransitionImpl4 = fragmentTransitionImpl3;
        LinkedHashMap linkedHashMap5 = linkedHashMap4;
        View view16 = view8;
        ArrayList arrayList17 = new ArrayList();
        Object obj10 = null;
        Object obj11 = null;
        for (TransitionInfo transitionInfo4 : transitionInfos) {
            if (transitionInfo4.isVisibilityUnchanged()) {
                linkedHashMap5.put(transitionInfo4.getOperation(), false);
                transitionInfo4.completeSpecialEffect();
            } else {
                Object cloneTransition = fragmentTransitionImpl4.cloneTransition(transitionInfo4.getTransition());
                SpecialEffectsController.Operation operation2 = transitionInfo4.getOperation();
                boolean z3 = obj != null && (operation2 == firstOut || operation2 == lastIn);
                if (cloneTransition != null) {
                    LinkedHashMap linkedHashMap6 = linkedHashMap5;
                    ArrayList<View> arrayList18 = new ArrayList<>();
                    Object obj12 = obj;
                    View view17 = operation2.getFragment().mView;
                    Object obj13 = obj10;
                    Intrinsics.checkNotNullExpressionValue(view17, "operation.fragment.mView");
                    defaultSpecialEffectsController.captureTransitioningViews(arrayList18, view17);
                    if (!z3) {
                        arrayList = arrayList16;
                    } else if (operation2 == firstOut) {
                        arrayList = arrayList16;
                        arrayList18.removeAll(CollectionsKt.toSet(arrayList));
                    } else {
                        arrayList = arrayList16;
                        arrayList18.removeAll(CollectionsKt.toSet(arrayList15));
                    }
                    if (arrayList18.isEmpty()) {
                        fragmentTransitionImpl4.addTarget(cloneTransition, view16);
                        obj3 = obj13;
                        operation = operation2;
                        arrayList16 = arrayList;
                        obj4 = obj11;
                        arrayList2 = arrayList17;
                        view = view15;
                        linkedHashMap = linkedHashMap6;
                        obj2 = obj12;
                        view2 = view16;
                        obj5 = cloneTransition;
                        arrayList3 = arrayList18;
                    } else {
                        fragmentTransitionImpl4.addTargets(cloneTransition, arrayList18);
                        view = view15;
                        obj2 = obj12;
                        obj3 = obj13;
                        arrayList16 = arrayList;
                        obj4 = obj11;
                        arrayList2 = arrayList17;
                        view2 = view16;
                        arrayList3 = arrayList18;
                        linkedHashMap = linkedHashMap6;
                        fragmentTransitionImpl4.scheduleRemoveTargets(cloneTransition, cloneTransition, arrayList18, null, null, null, null);
                        if (operation2.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation = operation2;
                            awaitingContainerChanges.remove(operation);
                            ArrayList<View> arrayList19 = new ArrayList<>(arrayList3);
                            arrayList19.remove(operation.getFragment().mView);
                            obj5 = cloneTransition;
                            fragmentTransitionImpl4.scheduleHideFragmentView(obj5, operation.getFragment().mView, arrayList19);
                            OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    DefaultSpecialEffectsController.startTransitions$lambda$11(arrayList3);
                                }
                            });
                        } else {
                            operation = operation2;
                            obj5 = cloneTransition;
                        }
                    }
                    if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        ArrayList<View> arrayList20 = arrayList3;
                        arrayList4 = arrayList2;
                        arrayList4.addAll(arrayList20);
                        if (z2) {
                            fragmentTransitionImpl4.setEpicenter(obj5, rect4);
                        }
                        view3 = view;
                    } else {
                        view3 = view;
                        arrayList4 = arrayList2;
                        fragmentTransitionImpl4.setEpicenter(obj5, view3);
                    }
                    linkedHashMap.put(operation, true);
                    if (transitionInfo4.getIsOverlapAllowed()) {
                        linkedHashMap5 = linkedHashMap;
                        arrayList17 = arrayList4;
                        obj11 = fragmentTransitionImpl4.mergeTransitionsTogether(obj4, obj5, null);
                        view16 = view2;
                        obj = obj2;
                        obj10 = obj3;
                    } else {
                        obj10 = fragmentTransitionImpl4.mergeTransitionsTogether(obj3, obj5, null);
                        linkedHashMap5 = linkedHashMap;
                        arrayList17 = arrayList4;
                        obj11 = obj4;
                        view16 = view2;
                        obj = obj2;
                    }
                    defaultSpecialEffectsController = this;
                    view15 = view3;
                } else if (!z3) {
                    linkedHashMap5.put(operation2, false);
                    transitionInfo4.completeSpecialEffect();
                }
            }
        }
        ArrayList arrayList21 = arrayList17;
        LinkedHashMap linkedHashMap7 = linkedHashMap5;
        Object obj14 = obj10;
        Object obj15 = obj;
        Object mergeTransitionsInSequence = fragmentTransitionImpl4.mergeTransitionsInSequence(obj11, obj14, obj15);
        if (mergeTransitionsInSequence == null) {
            return linkedHashMap7;
        }
        ArrayList<TransitionInfo> arrayList22 = new ArrayList();
        for (Object obj16 : list3) {
            if (!((TransitionInfo) obj16).isVisibilityUnchanged()) {
                arrayList22.add(obj16);
            }
        }
        for (final TransitionInfo transitionInfo5 : arrayList22) {
            Object transition = transitionInfo5.getTransition();
            final SpecialEffectsController.Operation operation3 = transitionInfo5.getOperation();
            boolean z4 = obj15 != null && (operation3 == firstOut || operation3 == lastIn);
            if (transition != null || z4) {
                if (!ViewCompat.isLaidOut(getContainer())) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Container " + getContainer() + " has not been laid out. Completing operation " + operation3);
                    }
                    transitionInfo5.completeSpecialEffect();
                } else {
                    fragmentTransitionImpl4.setListenerForTransitionEnd(transitionInfo5.getOperation().getFragment(), mergeTransitionsInSequence, transitionInfo5.getSignal(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$$ExternalSyntheticLambda4
                        @Override // java.lang.Runnable
                        public final void run() {
                            DefaultSpecialEffectsController.startTransitions$lambda$14$lambda$13(DefaultSpecialEffectsController.TransitionInfo.this, operation3);
                        }
                    });
                }
            }
        }
        if (!ViewCompat.isLaidOut(getContainer())) {
            return linkedHashMap7;
        }
        ArrayList arrayList23 = arrayList21;
        FragmentTransition.setViewVisibility(arrayList23, 4);
        ArrayList<String> prepareSetNameOverridesReordered = fragmentTransitionImpl4.prepareSetNameOverridesReordered(arrayList15);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, ">>>>> Beginning transition <<<<<");
            Log.v(FragmentManager.TAG, ">>>>> SharedElementFirstOutViews <<<<<");
            Iterator<View> it3 = arrayList16.iterator();
            while (it3.hasNext()) {
                View sharedElementFirstOutViews = it3.next();
                Intrinsics.checkNotNullExpressionValue(sharedElementFirstOutViews, "sharedElementFirstOutViews");
                View view18 = sharedElementFirstOutViews;
                Log.v(FragmentManager.TAG, "View: " + view18 + " Name: " + ViewCompat.getTransitionName(view18));
            }
            Log.v(FragmentManager.TAG, ">>>>> SharedElementLastInViews <<<<<");
            Iterator<View> it4 = arrayList15.iterator();
            while (it4.hasNext()) {
                View sharedElementLastInViews = it4.next();
                Intrinsics.checkNotNullExpressionValue(sharedElementLastInViews, "sharedElementLastInViews");
                View view19 = sharedElementLastInViews;
                Log.v(FragmentManager.TAG, "View: " + view19 + " Name: " + ViewCompat.getTransitionName(view19));
            }
        }
        fragmentTransitionImpl4.beginDelayedTransition(getContainer(), mergeTransitionsInSequence);
        fragmentTransitionImpl4.setNameOverridesReordered(getContainer(), arrayList16, arrayList15, prepareSetNameOverridesReordered, arrayMap7);
        FragmentTransition.setViewVisibility(arrayList23, 0);
        fragmentTransitionImpl4.swapSharedElementTargets(obj15, arrayList16, arrayList15);
        return linkedHashMap7;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$9(SpecialEffectsController.Operation operation, SpecialEffectsController.Operation operation2, boolean z, ArrayMap lastInViews) {
        Intrinsics.checkNotNullParameter(lastInViews, "$lastInViews");
        FragmentTransition.callSharedElementStartEnd(operation.getFragment(), operation2.getFragment(), z, lastInViews, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$10(FragmentTransitionImpl impl, View view, Rect lastInEpicenterRect) {
        Intrinsics.checkNotNullParameter(impl, "$impl");
        Intrinsics.checkNotNullParameter(lastInEpicenterRect, "$lastInEpicenterRect");
        impl.getBoundsOnScreen(view, lastInEpicenterRect);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$11(ArrayList transitioningViews) {
        Intrinsics.checkNotNullParameter(transitioningViews, "$transitioningViews");
        FragmentTransition.setViewVisibility(transitioningViews, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTransitions$lambda$14$lambda$13(TransitionInfo transitionInfo, SpecialEffectsController.Operation operation) {
        Intrinsics.checkNotNullParameter(transitionInfo, "$transitionInfo");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        transitionInfo.completeSpecialEffect();
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "Transition for operation " + operation + " has completed");
        }
    }

    private final void retainMatchingViews(ArrayMap<String, View> arrayMap, final Collection<String> collection) {
        Set<Map.Entry<String, View>> entries = arrayMap.entrySet();
        Intrinsics.checkNotNullExpressionValue(entries, "entries");
        CollectionsKt.retainAll(entries, new Function1<Map.Entry<String, View>, Boolean>() { // from class: androidx.fragment.app.DefaultSpecialEffectsController$retainMatchingViews$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Map.Entry<String, View> entry) {
                Intrinsics.checkNotNullParameter(entry, "entry");
                return Boolean.valueOf(CollectionsKt.contains(collection, ViewCompat.getTransitionName(entry.getValue())));
            }
        });
    }

    private final void captureTransitioningViews(ArrayList<View> transitioningViews, View view) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
                if (transitioningViews.contains(view)) {
                    return;
                }
                transitioningViews.add(view);
                return;
            }
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = viewGroup.getChildAt(i);
                if (child.getVisibility() == 0) {
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    captureTransitioningViews(transitioningViews, child);
                }
            }
            return;
        }
        if (transitioningViews.contains(view)) {
            return;
        }
        transitioningViews.add(view);
    }

    private final void findNamedViews(Map<String, View> namedViews, View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            namedViews.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View child = viewGroup.getChildAt(i);
                if (child.getVisibility() == 0) {
                    Intrinsics.checkNotNullExpressionValue(child, "child");
                    findNamedViews(namedViews, child);
                }
            }
        }
    }

    private final void applyContainerChanges(SpecialEffectsController.Operation operation) {
        View view = operation.getFragment().mView;
        SpecialEffectsController.Operation.State finalState = operation.getFinalState();
        Intrinsics.checkNotNullExpressionValue(view, "view");
        finalState.applyState(view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\b\u0012\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;)V", "isVisibilityUnchanged", "", "()Z", "getOperation", "()Landroidx/fragment/app/SpecialEffectsController$Operation;", "getSignal", "()Landroidx/core/os/CancellationSignal;", "completeSpecialEffect", "", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static class SpecialEffectsInfo {
        private final SpecialEffectsController.Operation operation;
        private final CancellationSignal signal;

        public final SpecialEffectsController.Operation getOperation() {
            return this.operation;
        }

        public final CancellationSignal getSignal() {
            return this.signal;
        }

        public SpecialEffectsInfo(SpecialEffectsController.Operation operation, CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.operation = operation;
            this.signal = signal;
        }

        public final boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State.Companion companion = SpecialEffectsController.Operation.State.INSTANCE;
            View view = this.operation.getFragment().mView;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            SpecialEffectsController.Operation.State asOperationState = companion.asOperationState(view);
            SpecialEffectsController.Operation.State finalState = this.operation.getFinalState();
            return asOperationState == finalState || !(asOperationState == SpecialEffectsController.Operation.State.VISIBLE || finalState == SpecialEffectsController.Operation.State.VISIBLE);
        }

        public final void completeSpecialEffect() {
            this.operation.completeSpecialEffect(this.signal);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\f\u001a\u0004\u0018\u00010\n2\u0006\u0010\r\u001a\u00020\u000eR\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$AnimationInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "isPop", "", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;Z)V", "animation", "Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;", "isAnimLoaded", "getAnimation", "context", "Landroid/content/Context;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class AnimationInfo extends SpecialEffectsInfo {
        private FragmentAnim.AnimationOrAnimator animation;
        private boolean isAnimLoaded;
        private final boolean isPop;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnimationInfo(SpecialEffectsController.Operation operation, CancellationSignal signal, boolean z) {
            super(operation, signal);
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            this.isPop = z;
        }

        public final FragmentAnim.AnimationOrAnimator getAnimation(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this.isAnimLoaded) {
                return this.animation;
            }
            FragmentAnim.AnimationOrAnimator loadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.isPop);
            this.animation = loadAnimation;
            this.isAnimLoaded = true;
            return loadAnimation;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultSpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0002\u0010\tJ\u0014\u0010\f\u001a\u0004\u0018\u00010\u000b2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0002J\u0006\u0010\u0016\u001a\u00020\u0007R\u0013\u0010\n\u001a\u0004\u0018\u00010\u000b8F¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0013¨\u0006\u0017"}, d2 = {"Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo;", "Landroidx/fragment/app/DefaultSpecialEffectsController$SpecialEffectsInfo;", "operation", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "signal", "Landroidx/core/os/CancellationSignal;", "isPop", "", "providesSharedElementTransition", "(Landroidx/fragment/app/SpecialEffectsController$Operation;Landroidx/core/os/CancellationSignal;ZZ)V", "handlingImpl", "Landroidx/fragment/app/FragmentTransitionImpl;", "getHandlingImpl", "()Landroidx/fragment/app/FragmentTransitionImpl;", "isOverlapAllowed", "()Z", "sharedElementTransition", "", "getSharedElementTransition", "()Ljava/lang/Object;", "transition", "getTransition", "hasSharedElementTransition", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class TransitionInfo extends SpecialEffectsInfo {
        private final boolean isOverlapAllowed;
        private final Object sharedElementTransition;
        private final Object transition;

        public final Object getSharedElementTransition() {
            return this.sharedElementTransition;
        }

        public final Object getTransition() {
            return this.transition;
        }

        public final boolean hasSharedElementTransition() {
            return this.sharedElementTransition != null;
        }

        /* renamed from: isOverlapAllowed, reason: from getter */
        public final boolean getIsOverlapAllowed() {
            return this.isOverlapAllowed;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransitionInfo(SpecialEffectsController.Operation operation, CancellationSignal signal, boolean z, boolean z2) {
            super(operation, signal);
            Object returnTransition;
            boolean z3;
            Object obj;
            Intrinsics.checkNotNullParameter(operation, "operation");
            Intrinsics.checkNotNullParameter(signal, "signal");
            if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                Fragment fragment = operation.getFragment();
                returnTransition = z ? fragment.getReenterTransition() : fragment.getEnterTransition();
            } else {
                Fragment fragment2 = operation.getFragment();
                returnTransition = z ? fragment2.getReturnTransition() : fragment2.getExitTransition();
            }
            this.transition = returnTransition;
            if (operation.getFinalState() != SpecialEffectsController.Operation.State.VISIBLE) {
                z3 = true;
            } else if (z) {
                z3 = operation.getFragment().getAllowReturnTransitionOverlap();
            } else {
                z3 = operation.getFragment().getAllowEnterTransitionOverlap();
            }
            this.isOverlapAllowed = z3;
            if (!z2) {
                obj = null;
            } else if (z) {
                obj = operation.getFragment().getSharedElementReturnTransition();
            } else {
                obj = operation.getFragment().getSharedElementEnterTransition();
            }
            this.sharedElementTransition = obj;
        }

        public final FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.transition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.sharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl == null ? handlingImpl2 : handlingImpl;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + getOperation().getFragment() + " returned Transition " + this.transition + " which uses a different Transition  type than its shared element transition " + this.sharedElementTransition).toString());
        }

        private final FragmentTransitionImpl getHandlingImpl(Object transition) {
            if (transition == null) {
                return null;
            }
            if (FragmentTransition.PLATFORM_IMPL != null && FragmentTransition.PLATFORM_IMPL.canHandle(transition)) {
                return FragmentTransition.PLATFORM_IMPL;
            }
            if (FragmentTransition.SUPPORT_IMPL != null && FragmentTransition.SUPPORT_IMPL.canHandle(transition)) {
                return FragmentTransition.SUPPORT_IMPL;
            }
            throw new IllegalArgumentException("Transition " + transition + " for fragment " + getOperation().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }
    }
}
