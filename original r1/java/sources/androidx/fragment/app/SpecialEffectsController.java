package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.os.CancellationSignal;
import androidx.core.view.ViewCompat;
import androidx.fragment.R;
import androidx.fragment.app.SpecialEffectsController;
import io.sentry.protocol.Request;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SpecialEffectsController.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b \u0018\u0000 *2\u00020\u0001:\u0003*+,B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0016\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0018\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015J#\u0010\u001a\u001a\u00020\u000f2\u0011\u0010\u001b\u001a\r\u0012\t\u0012\u00070\f¢\u0006\u0002\b\u001d0\u001c2\u0006\u0010\u001e\u001a\u00020\bH&J\u0006\u0010\u001f\u001a\u00020\u000fJ\u0012\u0010 \u001a\u0004\u0018\u00010\f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0012\u0010#\u001a\u0004\u0018\u00010\f2\u0006\u0010!\u001a\u00020\"H\u0002J\u0006\u0010$\u001a\u00020\u000fJ\u0006\u0010%\u001a\u00020\u000fJ\u0010\u0010&\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010'\u001a\u00020\u000fJ\b\u0010(\u001a\u00020\u000fH\u0002J\u000e\u0010)\u001a\u00020\u000f2\u0006\u0010\u001e\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController;", "", "container", "Landroid/view/ViewGroup;", "(Landroid/view/ViewGroup;)V", "getContainer", "()Landroid/view/ViewGroup;", "isContainerPostponed", "", "operationDirectionIsPop", "pendingOperations", "", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "runningOperations", "enqueue", "", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "enqueueAdd", "enqueueHide", "enqueueRemove", "enqueueShow", "executeOperations", "operations", "", "Lkotlin/jvm/JvmSuppressWildcards;", "isPop", "executePendingOperations", "findPendingOperation", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "findRunningOperation", "forceCompleteAllOperations", "forcePostponedExecutePendingOperations", "getAwaitingCompletionLifecycleImpact", "markPostponedState", "updateFinalState", "updateOperationDirection", "Companion", "FragmentStateManagerOperation", "Operation", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public abstract class SpecialEffectsController {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final ViewGroup container;
    private boolean isContainerPostponed;
    private boolean operationDirectionIsPop;
    private final List<Operation> pendingOperations;
    private final List<Operation> runningOperations;

    /* compiled from: SpecialEffectsController.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Operation.LifecycleImpact.values().length];
            try {
                iArr[Operation.LifecycleImpact.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, FragmentManager fragmentManager) {
        return INSTANCE.getOrCreateController(viewGroup, fragmentManager);
    }

    @JvmStatic
    public static final SpecialEffectsController getOrCreateController(ViewGroup viewGroup, SpecialEffectsControllerFactory specialEffectsControllerFactory) {
        return INSTANCE.getOrCreateController(viewGroup, specialEffectsControllerFactory);
    }

    public abstract void executeOperations(List<Operation> operations, boolean isPop);

    public final ViewGroup getContainer() {
        return this.container;
    }

    public final void updateOperationDirection(boolean isPop) {
        this.operationDirectionIsPop = isPop;
    }

    public SpecialEffectsController(ViewGroup container) {
        Intrinsics.checkNotNullParameter(container, "container");
        this.container = container;
        this.pendingOperations = new ArrayList();
        this.runningOperations = new ArrayList();
    }

    public final Operation.LifecycleImpact getAwaitingCompletionLifecycleImpact(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        Fragment fragment = fragmentStateManager.getFragment();
        Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
        Operation findPendingOperation = findPendingOperation(fragment);
        Operation.LifecycleImpact lifecycleImpact = findPendingOperation != null ? findPendingOperation.getLifecycleImpact() : null;
        Operation findRunningOperation = findRunningOperation(fragment);
        Operation.LifecycleImpact lifecycleImpact2 = findRunningOperation != null ? findRunningOperation.getLifecycleImpact() : null;
        int i = lifecycleImpact == null ? -1 : WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
        return (i == -1 || i == 1) ? lifecycleImpact2 : lifecycleImpact;
    }

    private final Operation findPendingOperation(Fragment fragment) {
        Object obj;
        Iterator<T> it = this.pendingOperations.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Operation operation = (Operation) obj;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                break;
            }
        }
        return (Operation) obj;
    }

    private final Operation findRunningOperation(Fragment fragment) {
        Object obj;
        Iterator<T> it = this.runningOperations.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            Operation operation = (Operation) obj;
            if (Intrinsics.areEqual(operation.getFragment(), fragment) && !operation.getIsCanceled()) {
                break;
            }
        }
        return (Operation) obj;
    }

    public final void enqueueAdd(Operation.State finalState, FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(finalState, "finalState");
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(finalState, Operation.LifecycleImpact.ADDING, fragmentStateManager);
    }

    public final void enqueueShow(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.VISIBLE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void enqueueHide(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.GONE, Operation.LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void enqueueRemove(FragmentStateManager fragmentStateManager) {
        Intrinsics.checkNotNullParameter(fragmentStateManager, "fragmentStateManager");
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.getFragment());
        }
        enqueue(Operation.State.REMOVED, Operation.LifecycleImpact.REMOVING, fragmentStateManager);
    }

    private final void enqueue(Operation.State finalState, Operation.LifecycleImpact lifecycleImpact, FragmentStateManager fragmentStateManager) {
        synchronized (this.pendingOperations) {
            CancellationSignal cancellationSignal = new CancellationSignal();
            Fragment fragment = fragmentStateManager.getFragment();
            Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
            Operation findPendingOperation = findPendingOperation(fragment);
            if (findPendingOperation != null) {
                findPendingOperation.mergeWith(finalState, lifecycleImpact);
                return;
            }
            final FragmentStateManagerOperation fragmentStateManagerOperation = new FragmentStateManagerOperation(finalState, lifecycleImpact, fragmentStateManager, cancellationSignal);
            this.pendingOperations.add(fragmentStateManagerOperation);
            fragmentStateManagerOperation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.enqueue$lambda$4$lambda$2(SpecialEffectsController.this, fragmentStateManagerOperation);
                }
            });
            fragmentStateManagerOperation.addCompletionListener(new Runnable() { // from class: androidx.fragment.app.SpecialEffectsController$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SpecialEffectsController.enqueue$lambda$4$lambda$3(SpecialEffectsController.this, fragmentStateManagerOperation);
                }
            });
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueue$lambda$4$lambda$2(SpecialEffectsController this$0, FragmentStateManagerOperation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        if (this$0.pendingOperations.contains(operation)) {
            Operation.State finalState = operation.getFinalState();
            View view = operation.getFragment().mView;
            Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
            finalState.applyState(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueue$lambda$4$lambda$3(SpecialEffectsController this$0, FragmentStateManagerOperation operation) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        this$0.pendingOperations.remove(operation);
        this$0.runningOperations.remove(operation);
    }

    public final void markPostponedState() {
        Operation operation;
        synchronized (this.pendingOperations) {
            updateFinalState();
            List<Operation> list = this.pendingOperations;
            ListIterator<Operation> listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    operation = null;
                    break;
                }
                operation = listIterator.previous();
                Operation operation2 = operation;
                Operation.State.Companion companion = Operation.State.INSTANCE;
                View view = operation2.getFragment().mView;
                Intrinsics.checkNotNullExpressionValue(view, "operation.fragment.mView");
                Operation.State asOperationState = companion.asOperationState(view);
                if (operation2.getFinalState() == Operation.State.VISIBLE && asOperationState != Operation.State.VISIBLE) {
                    break;
                }
            }
            Operation operation3 = operation;
            Fragment fragment = operation3 != null ? operation3.getFragment() : null;
            this.isContainerPostponed = fragment != null ? fragment.isPostponed() : false;
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void forcePostponedExecutePendingOperations() {
        if (this.isContainerPostponed) {
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing postponed operations");
            }
            this.isContainerPostponed = false;
            executePendingOperations();
        }
    }

    public final void executePendingOperations() {
        if (this.isContainerPostponed) {
            return;
        }
        if (!ViewCompat.isAttachedToWindow(this.container)) {
            forceCompleteAllOperations();
            this.operationDirectionIsPop = false;
            return;
        }
        synchronized (this.pendingOperations) {
            if (!this.pendingOperations.isEmpty()) {
                List<Operation> mutableList = CollectionsKt.toMutableList((Collection) this.runningOperations);
                this.runningOperations.clear();
                for (Operation operation : mutableList) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Cancelling operation " + operation);
                    }
                    operation.cancel();
                    if (!operation.getIsComplete()) {
                        this.runningOperations.add(operation);
                    }
                }
                updateFinalState();
                List<Operation> mutableList2 = CollectionsKt.toMutableList((Collection) this.pendingOperations);
                this.pendingOperations.clear();
                this.runningOperations.addAll(mutableList2);
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: Executing pending operations");
                }
                Iterator<Operation> it = mutableList2.iterator();
                while (it.hasNext()) {
                    it.next().onStart();
                }
                executeOperations(mutableList2, this.operationDirectionIsPop);
                this.operationDirectionIsPop = false;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: Finished executing pending operations");
                }
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void forceCompleteAllOperations() {
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = ViewCompat.isAttachedToWindow(this.container);
        synchronized (this.pendingOperations) {
            updateFinalState();
            Iterator<Operation> it = this.pendingOperations.iterator();
            while (it.hasNext()) {
                it.next().onStart();
            }
            for (Operation operation : CollectionsKt.toMutableList((Collection) this.runningOperations)) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: " + (isAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling running operation " + operation);
                }
                operation.cancel();
            }
            for (Operation operation2 : CollectionsKt.toMutableList((Collection) this.pendingOperations)) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: " + (isAttachedToWindow ? "" : "Container " + this.container + " is not attached to window. ") + "Cancelling pending operation " + operation2);
                }
                operation2.cancel();
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void updateFinalState() {
        for (Operation operation : this.pendingOperations) {
            if (operation.getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                View requireView = operation.getFragment().requireView();
                Intrinsics.checkNotNullExpressionValue(requireView, "fragment.requireView()");
                operation.mergeWith(Operation.State.INSTANCE.from(requireView.getVisibility()), Operation.LifecycleImpact.NONE);
            }
        }
    }

    /* compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u0001:\u0002+,B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u000e\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\rJ\u0006\u0010\"\u001a\u00020 J\b\u0010#\u001a\u00020 H\u0017J\u000e\u0010$\u001a\u00020 2\u0006\u0010%\u001a\u00020\tJ\u000e\u0010&\u001a\u00020 2\u0006\u0010%\u001a\u00020\tJ\u0016\u0010'\u001a\u00020 2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010(\u001a\u00020 H\u0016J\b\u0010)\u001a\u00020*H\u0016R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u001e\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0015@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0017R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\t0\u001eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation;", "", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", Request.JsonKeys.FRAGMENT, "Landroidx/fragment/app/Fragment;", "cancellationSignal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/Fragment;Landroidx/core/os/CancellationSignal;)V", "completionListeners", "", "Ljava/lang/Runnable;", "getFinalState", "()Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "setFinalState", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;)V", "getFragment", "()Landroidx/fragment/app/Fragment;", "<set-?>", "", "isCanceled", "()Z", "isComplete", "getLifecycleImpact", "()Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "setLifecycleImpact", "(Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;)V", "specialEffectsSignals", "", "addCompletionListener", "", "listener", "cancel", "complete", "completeSpecialEffect", "signal", "markStartedSpecialEffect", "mergeWith", "onStart", "toString", "", "LifecycleImpact", "State", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static class Operation {
        private final List<Runnable> completionListeners;
        private State finalState;
        private final Fragment fragment;
        private boolean isCanceled;
        private boolean isComplete;
        private LifecycleImpact lifecycleImpact;
        private final Set<CancellationSignal> specialEffectsSignals;

        /* compiled from: SpecialEffectsController.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "", "(Ljava/lang/String;I)V", "NONE", "ADDING", "REMOVING", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes2.dex */
        public enum LifecycleImpact {
            NONE,
            ADDING,
            REMOVING
        }

        /* compiled from: SpecialEffectsController.kt */
        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes2.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[LifecycleImpact.values().length];
                try {
                    iArr[LifecycleImpact.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[LifecycleImpact.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[LifecycleImpact.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public final State getFinalState() {
            return this.finalState;
        }

        public final Fragment getFragment() {
            return this.fragment;
        }

        public final LifecycleImpact getLifecycleImpact() {
            return this.lifecycleImpact;
        }

        /* renamed from: isCanceled, reason: from getter */
        public final boolean getIsCanceled() {
            return this.isCanceled;
        }

        /* renamed from: isComplete, reason: from getter */
        public final boolean getIsComplete() {
            return this.isComplete;
        }

        public void onStart() {
        }

        public final void setFinalState(State state) {
            Intrinsics.checkNotNullParameter(state, "<set-?>");
            this.finalState = state;
        }

        public final void setLifecycleImpact(LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(lifecycleImpact, "<set-?>");
            this.lifecycleImpact = lifecycleImpact;
        }

        public Operation(State finalState, LifecycleImpact lifecycleImpact, Fragment fragment, CancellationSignal cancellationSignal) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            Intrinsics.checkNotNullParameter(fragment, "fragment");
            Intrinsics.checkNotNullParameter(cancellationSignal, "cancellationSignal");
            this.finalState = finalState;
            this.lifecycleImpact = lifecycleImpact;
            this.fragment = fragment;
            this.completionListeners = new ArrayList();
            this.specialEffectsSignals = new LinkedHashSet();
            cancellationSignal.setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.SpecialEffectsController$Operation$$ExternalSyntheticLambda0
                @Override // androidx.core.os.CancellationSignal.OnCancelListener
                public final void onCancel() {
                    SpecialEffectsController.Operation._init_$lambda$0(SpecialEffectsController.Operation.this);
                }
            });
        }

        /* compiled from: SpecialEffectsController.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0080\u0001\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "", "(Ljava/lang/String;I)V", "applyState", "", "view", "Landroid/view/View;", "REMOVED", "VISIBLE", "GONE", "INVISIBLE", "Companion", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes2.dex */
        public enum State {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;


            /* renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);

            /* compiled from: SpecialEffectsController.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes2.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[State.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[State.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[State.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[State.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @JvmStatic
            public static final State from(int i) {
                return INSTANCE.from(i);
            }

            public final void applyState(View view) {
                Intrinsics.checkNotNullParameter(view, "view");
                int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
                if (i == 1) {
                    ViewParent parent = view.getParent();
                    ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
                    if (viewGroup != null) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (i == 2) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    view.setVisibility(0);
                } else if (i == 3) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    view.setVisibility(8);
                } else {
                    if (i != 4) {
                        return;
                    }
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                    }
                    view.setVisibility(4);
                }
            }

            /* compiled from: SpecialEffectsController.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\n\u0010\u0007\u001a\u00020\u0004*\u00020\b¨\u0006\t"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Operation$State$Companion;", "", "()V", "from", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", ViewHierarchyNode.JsonKeys.VISIBILITY, "", "asOperationState", "Landroid/view/View;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes2.dex */
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final State asOperationState(View view) {
                    Intrinsics.checkNotNullParameter(view, "<this>");
                    if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
                        return State.INVISIBLE;
                    }
                    return from(view.getVisibility());
                }

                @JvmStatic
                public final State from(int visibility) {
                    if (visibility == 0) {
                        return State.VISIBLE;
                    }
                    if (visibility == 4) {
                        return State.INVISIBLE;
                    }
                    if (visibility == 8) {
                        return State.GONE;
                    }
                    throw new IllegalArgumentException("Unknown visibility " + visibility);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void _init_$lambda$0(Operation this$0) {
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            this$0.cancel();
        }

        public String toString() {
            return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {finalState = " + this.finalState + " lifecycleImpact = " + this.lifecycleImpact + " fragment = " + this.fragment + '}';
        }

        public final void cancel() {
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            if (this.specialEffectsSignals.isEmpty()) {
                complete();
                return;
            }
            Iterator it = CollectionsKt.toMutableSet(this.specialEffectsSignals).iterator();
            while (it.hasNext()) {
                ((CancellationSignal) it.next()).cancel();
            }
        }

        public final void mergeWith(State finalState, LifecycleImpact lifecycleImpact) {
            Intrinsics.checkNotNullParameter(finalState, "finalState");
            Intrinsics.checkNotNullParameter(lifecycleImpact, "lifecycleImpact");
            int i = WhenMappings.$EnumSwitchMapping$0[lifecycleImpact.ordinal()];
            if (i == 1) {
                if (this.finalState == State.REMOVED) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.lifecycleImpact + " to ADDING.");
                    }
                    this.finalState = State.VISIBLE;
                    this.lifecycleImpact = LifecycleImpact.ADDING;
                    return;
                }
                return;
            }
            if (i == 2) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + " -> REMOVED. mLifecycleImpact  = " + this.lifecycleImpact + " to REMOVING.");
                }
                this.finalState = State.REMOVED;
                this.lifecycleImpact = LifecycleImpact.REMOVING;
                return;
            }
            if (i == 3 && this.finalState != State.REMOVED) {
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "SpecialEffectsController: For fragment " + this.fragment + " mFinalState = " + this.finalState + " -> " + finalState + '.');
                }
                this.finalState = finalState;
            }
        }

        public final void addCompletionListener(Runnable listener) {
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.completionListeners.add(listener);
        }

        public final void markStartedSpecialEffect(CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(signal, "signal");
            onStart();
            this.specialEffectsSignals.add(signal);
        }

        public final void completeSpecialEffect(CancellationSignal signal) {
            Intrinsics.checkNotNullParameter(signal, "signal");
            if (this.specialEffectsSignals.remove(signal) && this.specialEffectsSignals.isEmpty()) {
                complete();
            }
        }

        public void complete() {
            if (this.isComplete) {
                return;
            }
            if (FragmentManager.isLoggingEnabled(2)) {
                Log.v(FragmentManager.TAG, "SpecialEffectsController: " + this + " has called complete.");
            }
            this.isComplete = true;
            Iterator<T> it = this.completionListeners.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$FragmentStateManagerOperation;", "Landroidx/fragment/app/SpecialEffectsController$Operation;", "finalState", "Landroidx/fragment/app/SpecialEffectsController$Operation$State;", "lifecycleImpact", "Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;", "fragmentStateManager", "Landroidx/fragment/app/FragmentStateManager;", "cancellationSignal", "Landroidx/core/os/CancellationSignal;", "(Landroidx/fragment/app/SpecialEffectsController$Operation$State;Landroidx/fragment/app/SpecialEffectsController$Operation$LifecycleImpact;Landroidx/fragment/app/FragmentStateManager;Landroidx/core/os/CancellationSignal;)V", "complete", "", "onStart", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class FragmentStateManagerOperation extends Operation {
        private final FragmentStateManager fragmentStateManager;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public FragmentStateManagerOperation(androidx.fragment.app.SpecialEffectsController.Operation.State r3, androidx.fragment.app.SpecialEffectsController.Operation.LifecycleImpact r4, androidx.fragment.app.FragmentStateManager r5, androidx.core.os.CancellationSignal r6) {
            /*
                r2 = this;
                java.lang.String r0 = "finalState"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
                java.lang.String r0 = "lifecycleImpact"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r0)
                java.lang.String r0 = "fragmentStateManager"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
                java.lang.String r0 = "cancellationSignal"
                kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
                androidx.fragment.app.Fragment r0 = r5.getFragment()
                java.lang.String r1 = "fragmentStateManager.fragment"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r2.<init>(r3, r4, r0, r6)
                r2.fragmentStateManager = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.SpecialEffectsController.FragmentStateManagerOperation.<init>(androidx.fragment.app.SpecialEffectsController$Operation$State, androidx.fragment.app.SpecialEffectsController$Operation$LifecycleImpact, androidx.fragment.app.FragmentStateManager, androidx.core.os.CancellationSignal):void");
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void onStart() {
            if (getLifecycleImpact() == Operation.LifecycleImpact.ADDING) {
                Fragment fragment = this.fragmentStateManager.getFragment();
                Intrinsics.checkNotNullExpressionValue(fragment, "fragmentStateManager.fragment");
                View findFocus = fragment.mView.findFocus();
                if (findFocus != null) {
                    fragment.setFocusedView(findFocus);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "requestFocus: Saved focused view " + findFocus + " for Fragment " + fragment);
                    }
                }
                View requireView = getFragment().requireView();
                Intrinsics.checkNotNullExpressionValue(requireView, "this.fragment.requireView()");
                if (requireView.getParent() == null) {
                    this.fragmentStateManager.addViewToContainer();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
                return;
            }
            if (getLifecycleImpact() == Operation.LifecycleImpact.REMOVING) {
                Fragment fragment2 = this.fragmentStateManager.getFragment();
                Intrinsics.checkNotNullExpressionValue(fragment2, "fragmentStateManager.fragment");
                View requireView2 = fragment2.requireView();
                Intrinsics.checkNotNullExpressionValue(requireView2, "fragment.requireView()");
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, "Clearing focus " + requireView2.findFocus() + " on view " + requireView2 + " for Fragment " + fragment2);
                }
                requireView2.clearFocus();
            }
        }

        @Override // androidx.fragment.app.SpecialEffectsController.Operation
        public void complete() {
            super.complete();
            this.fragmentStateManager.moveToExpectedState();
        }
    }

    /* compiled from: SpecialEffectsController.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Landroidx/fragment/app/SpecialEffectsController$Companion;", "", "()V", "getOrCreateController", "Landroidx/fragment/app/SpecialEffectsController;", "container", "Landroid/view/ViewGroup;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "factory", "Landroidx/fragment/app/SpecialEffectsControllerFactory;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final SpecialEffectsController getOrCreateController(ViewGroup container, FragmentManager fragmentManager) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
            SpecialEffectsControllerFactory specialEffectsControllerFactory = fragmentManager.getSpecialEffectsControllerFactory();
            Intrinsics.checkNotNullExpressionValue(specialEffectsControllerFactory, "fragmentManager.specialEffectsControllerFactory");
            return getOrCreateController(container, specialEffectsControllerFactory);
        }

        @JvmStatic
        public final SpecialEffectsController getOrCreateController(ViewGroup container, SpecialEffectsControllerFactory factory) {
            Intrinsics.checkNotNullParameter(container, "container");
            Intrinsics.checkNotNullParameter(factory, "factory");
            Object tag = container.getTag(R.id.special_effects_controller_view_tag);
            if (tag instanceof SpecialEffectsController) {
                return (SpecialEffectsController) tag;
            }
            SpecialEffectsController createController = factory.createController(container);
            Intrinsics.checkNotNullExpressionValue(createController, "factory.createController(container)");
            container.setTag(R.id.special_effects_controller_view_tag, createController);
            return createController;
        }
    }
}
