package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Merge.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.internal.ChannelFlowTransformLatest$flowCollect$3$1", f = "Merge.kt", i = {0, 0}, l = {30}, m = "emit", n = {"this", "value"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class ChannelFlowTransformLatest$flowCollect$3$1$emit$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest$flowCollect$3$1$emit$1(ChannelFlowTransformLatest$flowCollect$3.AnonymousClass1<? super T> anonymousClass1, Continuation<? super ChannelFlowTransformLatest$flowCollect$3$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
