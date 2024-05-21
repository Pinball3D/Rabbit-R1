package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.AbortFlowException;
import kotlinx.coroutines.flow.internal.FlowExceptions_commonKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [R] */
/* compiled from: Limit.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$transformWhile$1", f = "Limit.kt", i = {0}, l = {152}, m = "invokeSuspend", n = {"collector$iv"}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class FlowKt__LimitKt$transformWhile$1<R> extends SuspendLambda implements Function2<FlowCollector<? super R>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<T> $this_transformWhile;
    final /* synthetic */ Function3<FlowCollector<? super R>, T, Continuation<? super Boolean>, Object> $transform;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$transformWhile$1(Flow<? extends T> flow, Function3<? super FlowCollector<? super R>, ? super T, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super FlowKt__LimitKt$transformWhile$1> continuation) {
        super(2, continuation);
        this.$this_transformWhile = flow;
        this.$transform = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__LimitKt$transformWhile$1 flowKt__LimitKt$transformWhile$1 = new FlowKt__LimitKt$transformWhile$1(this.$this_transformWhile, this.$transform, continuation);
        flowKt__LimitKt$transformWhile$1.L$0 = obj;
        return flowKt__LimitKt$transformWhile$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(FlowCollector<? super R> flowCollector, Continuation<? super Unit> continuation) {
        return ((FlowKt__LimitKt$transformWhile$1) create(flowCollector, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FlowCollector flowCollector = (FlowCollector) this.L$0;
            Flow<T> flow = this.$this_transformWhile;
            FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12 = new FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1(this.$transform, flowCollector);
            try {
                this.L$0 = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                this.label = 1;
                if (flow.collect(flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } catch (AbortFlowException e) {
                e = e;
                flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$12;
                FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1 = (FlowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1) this.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (AbortFlowException e2) {
                e = e2;
                FlowExceptions_commonKt.checkOwnership(e, flowKt__LimitKt$transformWhile$1$invokeSuspend$$inlined$collectWhile$1);
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }
}
