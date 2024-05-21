package kotlinx.coroutines.flow.internal;

import androidx.constraintlayout.widget.ConstraintLayout;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: FlowCoroutine.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", "R", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.FlowCoroutineKt$scopedFlow$1$1", f = "FlowCoroutine.kt", i = {}, l = {ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class FlowCoroutineKt$scopedFlow$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function3<CoroutineScope, FlowCollector<? super R>, Continuation<? super Unit>, Object> $block;
    final /* synthetic */ FlowCollector<R> $this_unsafeFlow;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowCoroutineKt$scopedFlow$1$1(Function3<? super CoroutineScope, ? super FlowCollector<? super R>, ? super Continuation<? super Unit>, ? extends Object> function3, FlowCollector<? super R> flowCollector, Continuation<? super FlowCoroutineKt$scopedFlow$1$1> continuation) {
        super(2, continuation);
        this.$block = function3;
        this.$this_unsafeFlow = flowCollector;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowCoroutineKt$scopedFlow$1$1 flowCoroutineKt$scopedFlow$1$1 = new FlowCoroutineKt$scopedFlow$1$1(this.$block, this.$this_unsafeFlow, continuation);
        flowCoroutineKt$scopedFlow$1$1.L$0 = obj;
        return flowCoroutineKt$scopedFlow$1$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FlowCoroutineKt$scopedFlow$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineScope coroutineScope = (CoroutineScope) this.L$0;
            Function3<CoroutineScope, FlowCollector<? super R>, Continuation<? super Unit>, Object> function3 = this.$block;
            Object obj2 = this.$this_unsafeFlow;
            this.label = 1;
            if (function3.invoke(coroutineScope, obj2, this) == coroutine_suspended) {
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
