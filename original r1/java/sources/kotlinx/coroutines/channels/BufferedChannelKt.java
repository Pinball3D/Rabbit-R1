package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt__SystemProps_commonKt;

/* compiled from: BufferedChannel.kt */
@Metadata(d1 = {"\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\u0018\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020.H\u0002\u001a\u0018\u00109\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u000bH\u0002\u001a*\u0010;\u001a\b\u0012\u0004\u0012\u0002H<0\u001a\"\u0004\b\u0000\u0010<2\u0006\u0010=\u001a\u00020\u00032\f\u0010>\u001a\b\u0012\u0004\u0012\u0002H<0\u001aH\u0002\u001a,\u0010?\u001a \u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u0002H<0\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u0002H<0\u001a0@\"\u0004\b\u0000\u0010<H\u0000\u001a\u0010\u0010A\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u000bH\u0002\u001aL\u0010C\u001a\u00020.\"\u0004\b\u0000\u0010D*\b\u0012\u0004\u0012\u0002HD0E2\u0006\u0010F\u001a\u0002HD2%\b\u0002\u0010G\u001a\u001f\u0012\u0013\u0012\u00110I¢\u0006\f\bJ\u0012\b\bK\u0012\u0004\b\b(L\u0012\u0004\u0012\u00020M\u0018\u00010HH\u0002¢\u0006\u0002\u0010N\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\b\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0010\u0010%\u001a\u00020\u000b8\u0000X\u0081\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010&\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010'\u001a\u00020\u0003X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010)\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0019\u0010*\u001a\u00020\u0003*\u00020\u00038Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010,\"\u0019\u0010-\u001a\u00020.*\u00020\u00038Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b/\u00100\"\u0019\u00101\u001a\u00020\u000b*\u00020\u00038Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b2\u00103\"\u0019\u00104\u001a\u00020\u0003*\u00020\u00038Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b5\u0010,¨\u0006O"}, d2 = {"BUFFERED", "Lkotlinx/coroutines/internal/Symbol;", "BUFFER_END_RENDEZVOUS", "", "BUFFER_END_UNLIMITED", "CHANNEL_CLOSED", "getCHANNEL_CLOSED", "()Lkotlinx/coroutines/internal/Symbol;", "CLOSE_HANDLER_CLOSED", "CLOSE_HANDLER_INVOKED", "CLOSE_STATUS_ACTIVE", "", "CLOSE_STATUS_CANCELLATION_STARTED", "CLOSE_STATUS_CANCELLED", "CLOSE_STATUS_CLOSED", "DONE_RCV", "EB_COMPLETED_COUNTER_MASK", "EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT", "EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS", "FAILED", "INTERRUPTED_RCV", "INTERRUPTED_SEND", "IN_BUFFER", "NO_CLOSE_CAUSE", "NO_RECEIVE_RESULT", "NULL_SEGMENT", "Lkotlinx/coroutines/channels/ChannelSegment;", "", "POISONED", "RESULT_BUFFERED", "RESULT_CLOSED", "RESULT_FAILED", "RESULT_RENDEZVOUS", "RESULT_SUSPEND", "RESULT_SUSPEND_NO_WAITER", "RESUMING_BY_EB", "RESUMING_BY_RCV", "SEGMENT_SIZE", "SENDERS_CLOSE_STATUS_SHIFT", "SENDERS_COUNTER_MASK", "SUSPEND", "SUSPEND_NO_WAITER", "ebCompletedCounter", "getEbCompletedCounter", "(J)J", "ebPauseExpandBuffers", "", "getEbPauseExpandBuffers", "(J)Z", "sendersCloseStatus", "getSendersCloseStatus", "(J)I", "sendersCounter", "getSendersCounter", "constructEBCompletedAndPauseFlag", "counter", "pauseEB", "constructSendersAndCloseStatus", "closeStatus", "createSegment", ExifInterface.LONGITUDE_EAST, "id", "prev", "createSegmentFunction", "Lkotlin/reflect/KFunction2;", "initialBufferEnd", "capacity", "tryResume0", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CancellableContinuation;", "value", "onCancellation", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "cause", "", "(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BufferedChannelKt {
    public static final Symbol BUFFERED;
    private static final long BUFFER_END_RENDEZVOUS = 0;
    private static final long BUFFER_END_UNLIMITED = Long.MAX_VALUE;
    private static final Symbol CHANNEL_CLOSED;
    private static final Symbol CLOSE_HANDLER_CLOSED;
    private static final Symbol CLOSE_HANDLER_INVOKED;
    private static final int CLOSE_STATUS_ACTIVE = 0;
    private static final int CLOSE_STATUS_CANCELLATION_STARTED = 1;
    private static final int CLOSE_STATUS_CANCELLED = 3;
    private static final int CLOSE_STATUS_CLOSED = 2;
    private static final Symbol DONE_RCV;
    private static final long EB_COMPLETED_COUNTER_MASK = 4611686018427387903L;
    private static final long EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT = 4611686018427387904L;
    private static final int EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS;
    private static final Symbol FAILED;
    private static final Symbol INTERRUPTED_RCV;
    private static final Symbol INTERRUPTED_SEND;
    private static final Symbol IN_BUFFER;
    private static final Symbol NO_CLOSE_CAUSE;
    private static final Symbol NO_RECEIVE_RESULT;
    private static final ChannelSegment<Object> NULL_SEGMENT = new ChannelSegment<>(-1, null, null, 0);
    private static final Symbol POISONED;
    private static final int RESULT_BUFFERED = 1;
    private static final int RESULT_CLOSED = 4;
    private static final int RESULT_FAILED = 5;
    private static final int RESULT_RENDEZVOUS = 0;
    private static final int RESULT_SUSPEND = 2;
    private static final int RESULT_SUSPEND_NO_WAITER = 3;
    private static final Symbol RESUMING_BY_EB;
    private static final Symbol RESUMING_BY_RCV;
    public static final int SEGMENT_SIZE;
    private static final int SENDERS_CLOSE_STATUS_SHIFT = 60;
    private static final long SENDERS_COUNTER_MASK = 1152921504606846975L;
    private static final Symbol SUSPEND;
    private static final Symbol SUSPEND_NO_WAITER;

    /* JADX INFO: Access modifiers changed from: private */
    public static final long constructEBCompletedAndPauseFlag(long j, boolean z) {
        return (z ? 4611686018427387904L : 0L) + j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long constructSendersAndCloseStatus(long j, int i) {
        return (i << 60) + j;
    }

    public static final Symbol getCHANNEL_CLOSED() {
        return CHANNEL_CLOSED;
    }

    private static final long getEbCompletedCounter(long j) {
        return j & 4611686018427387903L;
    }

    private static final boolean getEbPauseExpandBuffers(long j) {
        return (j & 4611686018427387904L) != 0;
    }

    private static final int getSendersCloseStatus(long j) {
        return (int) (j >> 60);
    }

    private static final long getSendersCounter(long j) {
        return j & SENDERS_COUNTER_MASK;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long initialBufferEnd(int i) {
        if (i == 0) {
            return 0L;
        }
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        return Long.MAX_VALUE;
    }

    public static final <E> KFunction<ChannelSegment<E>> createSegmentFunction() {
        return BufferedChannelKt$createSegmentFunction$1.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> ChannelSegment<E> createSegment(long j, ChannelSegment<E> channelSegment) {
        return new ChannelSegment<>(j, channelSegment, channelSegment.getChannel(), 0);
    }

    static {
        int systemProp$default;
        int systemProp$default2;
        systemProp$default = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, (Object) null);
        SEGMENT_SIZE = systemProp$default;
        systemProp$default2 = SystemPropsKt__SystemProps_commonKt.systemProp$default("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, (Object) null);
        EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS = systemProp$default2;
        BUFFERED = new Symbol("BUFFERED");
        IN_BUFFER = new Symbol("SHOULD_BUFFER");
        RESUMING_BY_RCV = new Symbol("S_RESUMING_BY_RCV");
        RESUMING_BY_EB = new Symbol("RESUMING_BY_EB");
        POISONED = new Symbol("POISONED");
        DONE_RCV = new Symbol("DONE_RCV");
        INTERRUPTED_SEND = new Symbol("INTERRUPTED_SEND");
        INTERRUPTED_RCV = new Symbol("INTERRUPTED_RCV");
        CHANNEL_CLOSED = new Symbol("CHANNEL_CLOSED");
        SUSPEND = new Symbol("SUSPEND");
        SUSPEND_NO_WAITER = new Symbol("SUSPEND_NO_WAITER");
        FAILED = new Symbol("FAILED");
        NO_RECEIVE_RESULT = new Symbol("NO_RECEIVE_RESULT");
        CLOSE_HANDLER_CLOSED = new Symbol("CLOSE_HANDLER_CLOSED");
        CLOSE_HANDLER_INVOKED = new Symbol("CLOSE_HANDLER_INVOKED");
        NO_CLOSE_CAUSE = new Symbol("NO_CLOSE_CAUSE");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean tryResume0$default(CancellableContinuation cancellableContinuation, Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        return tryResume0(cancellableContinuation, obj, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean tryResume0(CancellableContinuation<? super T> cancellableContinuation, T t, Function1<? super Throwable, Unit> function1) {
        Object tryResume = cancellableContinuation.tryResume(t, null, function1);
        if (tryResume == null) {
            return false;
        }
        cancellableContinuation.completeResume(tryResume);
        return true;
    }
}
