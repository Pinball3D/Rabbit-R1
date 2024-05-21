.class public final Lkotlinx/coroutines/channels/BufferedChannelKt;
.super Ljava/lang/Object;
.source "BufferedChannel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a\u0018\u00106\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u00108\u001a\u00020.H\u0002\u001a\u0018\u00109\u001a\u00020\u00032\u0006\u00107\u001a\u00020\u00032\u0006\u0010:\u001a\u00020\u000bH\u0002\u001a*\u0010;\u001a\u0008\u0012\u0004\u0012\u0002H<0\u001a\"\u0004\u0008\u0000\u0010<2\u0006\u0010=\u001a\u00020\u00032\u000c\u0010>\u001a\u0008\u0012\u0004\u0012\u0002H<0\u001aH\u0002\u001a,\u0010?\u001a \u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H<0\u001a\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002H<0\u001a0@\"\u0004\u0008\u0000\u0010<H\u0000\u001a\u0010\u0010A\u001a\u00020\u00032\u0006\u0010B\u001a\u00020\u000bH\u0002\u001aL\u0010C\u001a\u00020.\"\u0004\u0008\u0000\u0010D*\u0008\u0012\u0004\u0012\u0002HD0E2\u0006\u0010F\u001a\u0002HD2%\u0008\u0002\u0010G\u001a\u001f\u0012\u0013\u0012\u00110I\u00a2\u0006\u000c\u0008J\u0012\u0008\u0008K\u0012\u0004\u0008\u0008(L\u0012\u0004\u0012\u00020M\u0018\u00010HH\u0002\u00a2\u0006\u0002\u0010N\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0005\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u000e\u0010\u0008\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000c\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0016\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\"\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010#\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010$\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0010\u0010%\u001a\u00020\u000b8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010&\u001a\u00020\u000bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\'\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010(\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010)\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0019\u0010*\u001a\u00020\u0003*\u00020\u00038\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,\"\u0019\u0010-\u001a\u00020.*\u00020\u00038\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008/\u00100\"\u0019\u00101\u001a\u00020\u000b*\u00020\u00038\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00082\u00103\"\u0019\u00104\u001a\u00020\u0003*\u00020\u00038\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00085\u0010,\u00a8\u0006O"
    }
    d2 = {
        "BUFFERED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "BUFFER_END_RENDEZVOUS",
        "",
        "BUFFER_END_UNLIMITED",
        "CHANNEL_CLOSED",
        "getCHANNEL_CLOSED",
        "()Lkotlinx/coroutines/internal/Symbol;",
        "CLOSE_HANDLER_CLOSED",
        "CLOSE_HANDLER_INVOKED",
        "CLOSE_STATUS_ACTIVE",
        "",
        "CLOSE_STATUS_CANCELLATION_STARTED",
        "CLOSE_STATUS_CANCELLED",
        "CLOSE_STATUS_CLOSED",
        "DONE_RCV",
        "EB_COMPLETED_COUNTER_MASK",
        "EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT",
        "EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS",
        "FAILED",
        "INTERRUPTED_RCV",
        "INTERRUPTED_SEND",
        "IN_BUFFER",
        "NO_CLOSE_CAUSE",
        "NO_RECEIVE_RESULT",
        "NULL_SEGMENT",
        "Lkotlinx/coroutines/channels/ChannelSegment;",
        "",
        "POISONED",
        "RESULT_BUFFERED",
        "RESULT_CLOSED",
        "RESULT_FAILED",
        "RESULT_RENDEZVOUS",
        "RESULT_SUSPEND",
        "RESULT_SUSPEND_NO_WAITER",
        "RESUMING_BY_EB",
        "RESUMING_BY_RCV",
        "SEGMENT_SIZE",
        "SENDERS_CLOSE_STATUS_SHIFT",
        "SENDERS_COUNTER_MASK",
        "SUSPEND",
        "SUSPEND_NO_WAITER",
        "ebCompletedCounter",
        "getEbCompletedCounter",
        "(J)J",
        "ebPauseExpandBuffers",
        "",
        "getEbPauseExpandBuffers",
        "(J)Z",
        "sendersCloseStatus",
        "getSendersCloseStatus",
        "(J)I",
        "sendersCounter",
        "getSendersCounter",
        "constructEBCompletedAndPauseFlag",
        "counter",
        "pauseEB",
        "constructSendersAndCloseStatus",
        "closeStatus",
        "createSegment",
        "E",
        "id",
        "prev",
        "createSegmentFunction",
        "Lkotlin/reflect/KFunction2;",
        "initialBufferEnd",
        "capacity",
        "tryResume0",
        "T",
        "Lkotlinx/coroutines/CancellableContinuation;",
        "value",
        "onCancellation",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cause",
        "",
        "(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final BUFFERED:Lkotlinx/coroutines/internal/Symbol;

.field private static final BUFFER_END_RENDEZVOUS:J = 0x0L

.field private static final BUFFER_END_UNLIMITED:J = 0x7fffffffffffffffL

.field private static final CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

.field private static final CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/Symbol;

.field private static final CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

.field private static final CLOSE_STATUS_ACTIVE:I = 0x0

.field private static final CLOSE_STATUS_CANCELLATION_STARTED:I = 0x1

.field private static final CLOSE_STATUS_CANCELLED:I = 0x3

.field private static final CLOSE_STATUS_CLOSED:I = 0x2

.field private static final DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

.field private static final EB_COMPLETED_COUNTER_MASK:J = 0x3fffffffffffffffL

.field private static final EB_COMPLETED_PAUSE_EXPAND_BUFFERS_BIT:J = 0x4000000000000000L

.field private static final EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

.field private static final FAILED:Lkotlinx/coroutines/internal/Symbol;

.field private static final INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

.field private static final INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

.field private static final IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

.field private static final NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/Symbol;

.field private static final NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/Symbol;

.field private static final NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final POISONED:Lkotlinx/coroutines/internal/Symbol;

.field private static final RESULT_BUFFERED:I = 0x1

.field private static final RESULT_CLOSED:I = 0x4

.field private static final RESULT_FAILED:I = 0x5

.field private static final RESULT_RENDEZVOUS:I = 0x0

.field private static final RESULT_SUSPEND:I = 0x2

.field private static final RESULT_SUSPEND_NO_WAITER:I = 0x3

.field private static final RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

.field private static final RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

.field public static final SEGMENT_SIZE:I

.field private static final SENDERS_CLOSE_STATUS_SHIFT:I = 0x3c

.field private static final SENDERS_COUNTER_MASK:J = 0xfffffffffffffffL

.field private static final SUSPEND:Lkotlinx/coroutines/internal/Symbol;

.field private static final SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 2871
    new-instance v6, Lkotlinx/coroutines/channels/ChannelSegment;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    sput-object v6, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    const-string v7, "kotlinx.coroutines.bufferedChannel.segmentSize"

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    .line 2877
    invoke-static/range {v7 .. v12}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SEGMENT_SIZE:I

    const-string v1, "kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations"

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 2884
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp$default(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    .line 2921
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "BUFFERED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->BUFFERED:Lkotlinx/coroutines/internal/Symbol;

    .line 2924
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SHOULD_BUFFER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    .line 2929
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "S_RESUMING_BY_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    .line 2934
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "RESUMING_BY_EB"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    .line 2939
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "POISONED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    .line 2942
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "DONE_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    .line 2944
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "INTERRUPTED_SEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    .line 2946
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "INTERRUPTED_RCV"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    .line 2948
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CHANNEL_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    .line 2978
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SUSPEND"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    .line 2979
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SUSPEND_NO_WAITER"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    .line 2980
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "FAILED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    .line 2996
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_RECEIVE_RESULT"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/Symbol;

    .line 3003
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSE_HANDLER_CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    .line 3004
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSE_HANDLER_INVOKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    .line 3011
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NO_CLOSE_CAUSE"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$constructEBCompletedAndPauseFlag(JZ)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->constructEBCompletedAndPauseFlag(JZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$constructSendersAndCloseStatus(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->constructSendersAndCloseStatus(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCLOSE_HANDLER_CLOSED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getCLOSE_HANDLER_INVOKED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CLOSE_HANDLER_INVOKED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getDONE_RCV$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->DONE_RCV:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getEXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS$p()I
    .locals 1

    sget v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->EXPAND_BUFFER_COMPLETION_WAIT_ITERATIONS:I

    return v0
.end method

.method public static final synthetic access$getFAILED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->FAILED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getINTERRUPTED_RCV$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_RCV:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getINTERRUPTED_SEND$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->INTERRUPTED_SEND:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getIN_BUFFER$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->IN_BUFFER:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getNO_CLOSE_CAUSE$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_CLOSE_CAUSE:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getNO_RECEIVE_RESULT$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NO_RECEIVE_RESULT:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getNULL_SEGMENT$p()Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->NULL_SEGMENT:Lkotlinx/coroutines/channels/ChannelSegment;

    return-object v0
.end method

.method public static final synthetic access$getPOISONED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->POISONED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getRESUMING_BY_EB$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_EB:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getRESUMING_BY_RCV$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->RESUMING_BY_RCV:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getSUSPEND$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$getSUSPEND_NO_WAITER$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->SUSPEND_NO_WAITER:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic access$initialBufferEnd(I)J
    .locals 2

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/channels/BufferedChannelKt;->initialBufferEnd(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method private static final constructEBCompletedAndPauseFlag(JZ)J
    .locals 2

    if-eqz p2, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final constructSendersAndCloseStatus(JI)J
    .locals 2

    int-to-long v0, p2

    const/16 p2, 0x3c

    shl-long/2addr v0, p2

    add-long/2addr v0, p0

    return-wide v0
.end method

.method private static final createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(J",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;)",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;"
        }
    .end annotation

    .line 2865
    new-instance v6, Lkotlinx/coroutines/channels/ChannelSegment;

    .line 2868
    invoke-virtual {p2}, Lkotlinx/coroutines/channels/ChannelSegment;->getChannel()Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-object v3, p2

    .line 2865
    invoke-direct/range {v0 .. v5}, Lkotlinx/coroutines/channels/ChannelSegment;-><init>(JLkotlinx/coroutines/channels/ChannelSegment;Lkotlinx/coroutines/channels/BufferedChannel;I)V

    return-object v6
.end method

.method public static final createSegmentFunction()Lkotlin/reflect/KFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/reflect/KFunction<",
            "Lkotlinx/coroutines/channels/ChannelSegment<",
            "TE;>;>;"
        }
    .end annotation

    .line 2863
    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;->INSTANCE:Lkotlinx/coroutines/channels/BufferedChannelKt$createSegmentFunction$1;

    check-cast v0, Lkotlin/reflect/KFunction;

    return-object v0
.end method

.method public static final getCHANNEL_CLOSED()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/channels/BufferedChannelKt;->CHANNEL_CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method private static final getEbCompletedCounter(J)J
    .locals 2

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static final getEbPauseExpandBuffers(J)Z
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final getSendersCloseStatus(J)I
    .locals 1

    const/16 v0, 0x3c

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static final getSendersCounter(J)J
    .locals 2

    const-wide v0, 0xfffffffffffffffL

    and-long/2addr p0, v0

    return-wide p0
.end method

.method private static final initialBufferEnd(I)J
    .locals 2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    int-to-long v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private static final tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-TT;>;TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2894
    invoke-interface {p0, p1, v0, p2}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2896
    invoke-interface {p0, p1}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic tryResume0$default(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2890
    :cond_0
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/channels/BufferedChannelKt;->tryResume0(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method
