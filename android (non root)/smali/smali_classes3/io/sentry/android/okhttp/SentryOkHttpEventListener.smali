.class public final Lio/sentry/android/okhttp/SentryOkHttpEventListener;
.super Lokhttp3/EventListener;
.source "SentryOkHttpEventListener.kt"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "Use SentryOkHttpEventListener from sentry-okhttp instead"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "SentryOkHttpEventListener"
        imports = {
            "io.sentry.okhttp.SentryOkHttpEventListener"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0019\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\nB\u0019\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bB6\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012%\u0008\u0002\u0010\u000c\u001a\u001f\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J*\u0010\"\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J2\u0010)\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J \u0010*\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010+\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J&\u0010/\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u0002012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020403H\u0016J\u0018\u00105\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u000201H\u0016J&\u00106\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020&03H\u0016J\u0018\u0010:\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010;\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010?\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010@\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010D\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010E\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010F\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010G\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u0010\u0010H\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010I\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u0018H\u0016J\u001a\u0010J\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006N"
    }
    d2 = {
        "Lio/sentry/android/okhttp/SentryOkHttpEventListener;",
        "Lokhttp3/EventListener;",
        "()V",
        "originalEventListener",
        "(Lokhttp3/EventListener;)V",
        "originalEventListenerFactory",
        "Lokhttp3/EventListener$Factory;",
        "(Lokhttp3/EventListener$Factory;)V",
        "hub",
        "Lio/sentry/IHub;",
        "(Lio/sentry/IHub;Lokhttp3/EventListener;)V",
        "(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V",
        "originalEventListenerCreator",
        "Lkotlin/Function1;",
        "Lokhttp3/Call;",
        "Lkotlin/ParameterName;",
        "name",
        "call",
        "(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V",
        "delegate",
        "Lio/sentry/okhttp/SentryOkHttpEventListener;",
        "cacheConditionalHit",
        "",
        "cachedResponse",
        "Lokhttp3/Response;",
        "cacheHit",
        "response",
        "cacheMiss",
        "callEnd",
        "callFailed",
        "ioe",
        "Ljava/io/IOException;",
        "callStart",
        "canceled",
        "connectEnd",
        "inetSocketAddress",
        "Ljava/net/InetSocketAddress;",
        "proxy",
        "Ljava/net/Proxy;",
        "protocol",
        "Lokhttp3/Protocol;",
        "connectFailed",
        "connectStart",
        "connectionAcquired",
        "connection",
        "Lokhttp3/Connection;",
        "connectionReleased",
        "dnsEnd",
        "domainName",
        "",
        "inetAddressList",
        "",
        "Ljava/net/InetAddress;",
        "dnsStart",
        "proxySelectEnd",
        "url",
        "Lokhttp3/HttpUrl;",
        "proxies",
        "proxySelectStart",
        "requestBodyEnd",
        "byteCount",
        "",
        "requestBodyStart",
        "requestFailed",
        "requestHeadersEnd",
        "request",
        "Lokhttp3/Request;",
        "requestHeadersStart",
        "responseBodyEnd",
        "responseBodyStart",
        "responseFailed",
        "responseHeadersEnd",
        "responseHeadersStart",
        "satisfactionFailure",
        "secureConnectEnd",
        "handshake",
        "Lokhttp3/Handshake;",
        "secureConnectStart",
        "sentry-android-okhttp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, v0, v1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lokhttp3/Call;",
            "+",
            "Lokhttp3/EventListener;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    .line 73
    new-instance v0, Lio/sentry/okhttp/SentryOkHttpEventListener;

    invoke-direct {v0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 45
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p4, "getInstance()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalEventListenerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lio/sentry/android/okhttp/SentryOkHttpEventListener$4;

    invoke-direct {v0, p2}, Lio/sentry/android/okhttp/SentryOkHttpEventListener$4;-><init>(Lokhttp3/EventListener$Factory;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 68
    invoke-direct {p0, p1, v0}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 68
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p3, "getInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalEventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;

    invoke-direct {v0, p2}, Lio/sentry/android/okhttp/SentryOkHttpEventListener$3;-><init>(Lokhttp3/EventListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 63
    invoke-direct {p0, p1, v0}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 63
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p3, "getInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lokhttp3/EventListener;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener$Factory;)V
    .locals 2

    const-string v0, "originalEventListenerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    .line 60
    new-instance v1, Lio/sentry/android/okhttp/SentryOkHttpEventListener$2;

    invoke-direct {v1, p1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener$2;-><init>(Lokhttp3/EventListener$Factory;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 58
    invoke-direct {p0, v0, v1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener;)V
    .locals 2

    const-string v0, "originalEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    .line 55
    new-instance v1, Lio/sentry/android/okhttp/SentryOkHttpEventListener$1;

    invoke-direct {v1, p1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener$1;-><init>(Lokhttp3/EventListener;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 53
    invoke-direct {p0, v0, v1}, Lio/sentry/android/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 76
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 80
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public cacheMiss(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 84
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->cacheMiss(Lokhttp3/Call;)V

    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 88
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->callEnd(Lokhttp3/Call;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 92
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 96
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->callStart(Lokhttp3/Call;)V

    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 100
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canceled(Lokhttp3/Call;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 109
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/sentry/okhttp/SentryOkHttpEventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 7

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 119
    invoke-virtual/range {v1 .. v6}, Lio/sentry/okhttp/SentryOkHttpEventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetSocketAddress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 123
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 127
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 131
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inetAddressList"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 139
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    return-void
.end method

.method public proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/Proxy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxies"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener;->proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V

    return-void
.end method

.method public proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 147
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 151
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 155
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->requestBodyStart(Lokhttp3/Call;)V

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 159
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 163
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 167
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->requestHeadersStart(Lokhttp3/Call;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 175
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->responseBodyStart(Lokhttp3/Call;)V

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 179
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 183
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 187
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->responseHeadersStart(Lokhttp3/Call;)V

    return-void
.end method

.method public satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 191
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 195
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpEventListener;->delegate:Lio/sentry/okhttp/SentryOkHttpEventListener;

    .line 199
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener;->secureConnectStart(Lokhttp3/Call;)V

    return-void
.end method
