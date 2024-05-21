package kotlinx.coroutines.flow;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Count.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {17}, m = MetricSummary.JsonKeys.COUNT, n = {CmcdHeadersFactory.OBJECT_TYPE_INIT_SEGMENT}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class FlowKt__CountKt$count$1<T> extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FlowKt__CountKt$count$1(Continuation<? super FlowKt__CountKt$count$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return FlowKt.count(null, this);
    }
}
