package kotlinx.coroutines.channels;

import androidx.appcompat.app.AppCompatDelegate;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TickerChannels.kt */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 1, 1, 2, 2}, l = {106, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY}, m = "fixedDelayTicker", n = {"channel", "delayMillis", "channel", "delayMillis", "channel", "delayMillis"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
/* loaded from: classes3.dex */
public final class TickerChannelsKt$fixedDelayTicker$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    int label;
    /* synthetic */ Object result;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TickerChannelsKt$fixedDelayTicker$1(Continuation<? super TickerChannelsKt$fixedDelayTicker$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object fixedDelayTicker;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        fixedDelayTicker = TickerChannelsKt.fixedDelayTicker(0L, 0L, null, this);
        return fixedDelayTicker;
    }
}
