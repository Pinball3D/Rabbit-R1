package androidx.work.impl.constraints.controllers;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContraintControllers.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00020\u00040\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/channels/ProducerScope;", "Landroidx/work/impl/constraints/ConstraintsState;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.constraints.controllers.ConstraintController$track$1", f = "ContraintControllers.kt", i = {}, l = {55}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class ConstraintController$track$1 extends SuspendLambda implements Function2<ProducerScope<? super ConstraintsState>, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ConstraintController<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintController$track$1(ConstraintController<T> constraintController, Continuation<? super ConstraintController$track$1> continuation) {
        super(2, continuation);
        this.this$0 = constraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ConstraintController$track$1 constraintController$track$1 = new ConstraintController$track$1(this.this$0, continuation);
        constraintController$track$1.L$0 = obj;
        return constraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super ConstraintsState> producerScope, Continuation<? super Unit> continuation) {
        return ((ConstraintController$track$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.work.impl.constraints.controllers.ConstraintController$track$1$listener$1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ConstraintTracker constraintTracker;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final ProducerScope producerScope = (ProducerScope) this.L$0;
            final ConstraintController<T> constraintController = this.this$0;
            final ?? r1 = new ConstraintListener<T>() { // from class: androidx.work.impl.constraints.controllers.ConstraintController$track$1$listener$1
                @Override // androidx.work.impl.constraints.ConstraintListener
                public void onConstraintChanged(T newValue) {
                    producerScope.getChannel().mo7202trySendJP2dKIU(constraintController.isConstrained((ConstraintController<T>) newValue) ? new ConstraintsState.ConstraintsNotMet(constraintController.getReason()) : ConstraintsState.ConstraintsMet.INSTANCE);
                }
            };
            constraintTracker = ((ConstraintController) this.this$0).tracker;
            constraintTracker.addListener((ConstraintListener) r1);
            final ConstraintController<T> constraintController2 = this.this$0;
            this.label = 1;
            if (ProduceKt.awaitClose(producerScope, new Function0<Unit>() { // from class: androidx.work.impl.constraints.controllers.ConstraintController$track$1.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ConstraintTracker constraintTracker2;
                    constraintTracker2 = ((ConstraintController) constraintController2).tracker;
                    constraintTracker2.removeListener(r1);
                }
            }, this) == coroutine_suspended) {
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
