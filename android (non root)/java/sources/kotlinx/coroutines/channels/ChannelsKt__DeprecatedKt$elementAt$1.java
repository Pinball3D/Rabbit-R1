package kotlinx.coroutines.channels;

import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Deprecated.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {38}, m = "elementAt", n = {"$this$consume$iv", "index", MetricSummary.JsonKeys.COUNT}, s = {"L$0", "I$0", "I$1"})
/* loaded from: classes3.dex */
public final class ChannelsKt__DeprecatedKt$elementAt$1<E> extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelsKt__DeprecatedKt$elementAt$1(Continuation<? super ChannelsKt__DeprecatedKt$elementAt$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object elementAt;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        elementAt = ChannelsKt__DeprecatedKt.elementAt(null, 0, this);
        return elementAt;
    }
}
