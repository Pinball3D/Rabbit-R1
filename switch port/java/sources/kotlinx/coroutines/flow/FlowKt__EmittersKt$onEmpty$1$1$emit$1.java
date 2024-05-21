package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Emitters.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$1$1", f = "Emitters.kt", i = {}, l = {185}, m = "emit", n = {}, s = {})
/* loaded from: classes3.dex */
public final class FlowKt__EmittersKt$onEmpty$1$1$emit$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FlowKt__EmittersKt$onEmpty$1$1<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__EmittersKt$onEmpty$1$1$emit$1(FlowKt__EmittersKt$onEmpty$1$1<? super T> flowKt__EmittersKt$onEmpty$1$1, Continuation<? super FlowKt__EmittersKt$onEmpty$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = flowKt__EmittersKt$onEmpty$1$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
