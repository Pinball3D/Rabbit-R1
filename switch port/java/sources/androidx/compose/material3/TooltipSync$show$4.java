package androidx.compose.material3;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\u008a@"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.TooltipSync$show$4", f = "Tooltip.kt", i = {}, l = {771, 642}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class TooltipSync$show$4 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $persistent;
    final /* synthetic */ TooltipState $state;
    Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TooltipSync$show$4(boolean z, TooltipState tooltipState, Continuation<? super TooltipSync$show$4> continuation) {
        super(1, continuation);
        this.$persistent = z;
        this.$state = tooltipState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new TooltipSync$show$4(this.$persistent, this.$state, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((TooltipSync$show$4) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
            } else if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            if (!this.$persistent) {
                ((RichTooltipState) this.$state).setVisible$material3_release(true);
                this.label = 2;
                if (DelayKt.delay(TooltipKt.TooltipDuration, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                TooltipState tooltipState = this.$state;
                this.L$0 = tooltipState;
                this.label = 1;
                TooltipSync$show$4 tooltipSync$show$4 = this;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(tooltipSync$show$4), 1);
                cancellableContinuationImpl.initCancellability();
                ((RichTooltipState) tooltipState).setVisible$material3_release(true);
                Object result = cancellableContinuationImpl.getResult();
                if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(tooltipSync$show$4);
                }
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
        return Unit.INSTANCE;
    }
}
