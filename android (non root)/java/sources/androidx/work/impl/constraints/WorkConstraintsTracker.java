package androidx.work.impl.constraints;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.controllers.BatteryChargingController;
import androidx.work.impl.constraints.controllers.BatteryNotLowController;
import androidx.work.impl.constraints.controllers.ConstraintController;
import androidx.work.impl.constraints.controllers.NetworkConnectedController;
import androidx.work.impl.constraints.controllers.NetworkMeteredController;
import androidx.work.impl.constraints.controllers.NetworkNotRoamingController;
import androidx.work.impl.constraints.controllers.NetworkUnmeteredController;
import androidx.work.impl.constraints.controllers.StorageNotLowController;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.internal.CombineKt;

/* compiled from: WorkConstraintsTracker.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\u0012\u0010\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\fR\u0018\u0010\u0005\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/work/impl/constraints/WorkConstraintsTracker;", "", "trackers", "Landroidx/work/impl/constraints/trackers/Trackers;", "(Landroidx/work/impl/constraints/trackers/Trackers;)V", "controllers", "", "Landroidx/work/impl/constraints/controllers/ConstraintController;", "(Ljava/util/List;)V", "areAllConstraintsMet", "", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "track", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/work/impl/constraints/ConstraintsState;", "spec", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkConstraintsTracker {
    private final List<ConstraintController<?>> controllers;

    /* JADX WARN: Multi-variable type inference failed */
    public WorkConstraintsTracker(List<? extends ConstraintController<?>> controllers) {
        Intrinsics.checkNotNullParameter(controllers, "controllers");
        this.controllers = controllers;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkConstraintsTracker(Trackers trackers) {
        this((List<? extends ConstraintController<?>>) CollectionsKt.listOf((Object[]) new ConstraintController[]{new BatteryChargingController(trackers.getBatteryChargingTracker()), new BatteryNotLowController(trackers.getBatteryNotLowTracker()), new StorageNotLowController(trackers.getStorageNotLowTracker()), new NetworkConnectedController(trackers.getNetworkStateTracker()), new NetworkUnmeteredController(trackers.getNetworkStateTracker()), new NetworkNotRoamingController(trackers.getNetworkStateTracker()), new NetworkMeteredController(trackers.getNetworkStateTracker())}));
        Intrinsics.checkNotNullParameter(trackers, "trackers");
    }

    public final Flow<ConstraintsState> track(WorkSpec spec) {
        Intrinsics.checkNotNullParameter(spec, "spec");
        List<ConstraintController<?>> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).hasConstraint(spec)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(arrayList2, 10));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            arrayList3.add(((ConstraintController) it.next()).track());
        }
        final Flow[] flowArr = (Flow[]) CollectionsKt.toList(arrayList3).toArray(new Flow[0]);
        return FlowKt.distinctUntilChanged(new Flow<ConstraintsState>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super ConstraintsState> flowCollector, Continuation continuation) {
                Flow[] flowArr2 = flowArr;
                final Flow[] flowArr3 = flowArr;
                Object combineInternal = CombineKt.combineInternal(flowCollector, flowArr2, new Function0<ConstraintsState[]>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final ConstraintsState[] invoke() {
                        return new ConstraintsState[flowArr3.length];
                    }
                }, new AnonymousClass3(null), continuation);
                return combineInternal == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? combineInternal : Unit.INSTANCE;
            }

            /* compiled from: Zip.kt */
            @Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0006\b\u0000\u0010\u0002\u0018\u0001\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0006H\u008a@¨\u0006\u0007"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;", "it", "", "kotlinx/coroutines/flow/FlowKt__ZipKt$combine$6$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
            @DebugMetadata(c = "androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3", f = "WorkConstraintsTracker.kt", i = {}, l = {292}, m = "invokeSuspend", n = {}, s = {})
            /* renamed from: androidx.work.impl.constraints.WorkConstraintsTracker$track$$inlined$combine$1$3, reason: invalid class name */
            /* loaded from: classes2.dex */
            public static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ConstraintsState>, ConstraintsState[], Continuation<? super Unit>, Object> {
                private /* synthetic */ Object L$0;
                /* synthetic */ Object L$1;
                int label;

                public AnonymousClass3(Continuation continuation) {
                    super(3, continuation);
                }

                @Override // kotlin.jvm.functions.Function3
                public final Object invoke(FlowCollector<? super ConstraintsState> flowCollector, ConstraintsState[] constraintsStateArr, Continuation<? super Unit> continuation) {
                    AnonymousClass3 anonymousClass3 = new AnonymousClass3(continuation);
                    anonymousClass3.L$0 = flowCollector;
                    anonymousClass3.L$1 = constraintsStateArr;
                    return anonymousClass3.invokeSuspend(Unit.INSTANCE);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    ConstraintsState.ConstraintsMet constraintsMet;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = this.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj);
                        FlowCollector flowCollector = (FlowCollector) this.L$0;
                        AnonymousClass3 anonymousClass3 = this;
                        ConstraintsState[] constraintsStateArr = (ConstraintsState[]) ((Object[]) this.L$1);
                        int length = constraintsStateArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 >= length) {
                                constraintsMet = null;
                                break;
                            }
                            constraintsMet = constraintsStateArr[i2];
                            if (!Intrinsics.areEqual(constraintsMet, ConstraintsState.ConstraintsMet.INSTANCE)) {
                                break;
                            }
                            i2++;
                        }
                        if (constraintsMet == null) {
                            constraintsMet = ConstraintsState.ConstraintsMet.INSTANCE;
                        }
                        this.label = 1;
                        if (flowCollector.emit(constraintsMet, anonymousClass3) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
            }
        });
    }

    public final boolean areAllConstraintsMet(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        List<ConstraintController<?>> list = this.controllers;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ConstraintController) obj).isConstrained(workSpec)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (!arrayList2.isEmpty()) {
            Logger.get().debug(WorkConstraintsTrackerKt.access$getTAG$p(), "Work " + workSpec.id + " constrained by " + CollectionsKt.joinToString$default(arrayList2, null, null, null, 0, null, new Function1<ConstraintController<?>, CharSequence>() { // from class: androidx.work.impl.constraints.WorkConstraintsTracker$areAllConstraintsMet$1
                @Override // kotlin.jvm.functions.Function1
                public final CharSequence invoke(ConstraintController<?> it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    String simpleName = it.getClass().getSimpleName();
                    Intrinsics.checkNotNullExpressionValue(simpleName, "it.javaClass.simpleName");
                    return simpleName;
                }
            }, 31, null));
        }
        return arrayList2.isEmpty();
    }
}
