.class public Lio/sentry/okhttp/SentryOkHttpEventListener;
.super Lokhttp3/EventListener;
.source "SentryOkHttpEventListener.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0098\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u0000 N2\u00020\u0001:\u0001NB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\u0019\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u00a2\u0006\u0002\u0010\nB\u0019\u0008\u0016\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u000bB6\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012%\u0008\u0002\u0010\u000c\u001a\u001f\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\r\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0018\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0008\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J*\u0010\"\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(H\u0016J2\u0010)\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\u0008\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J \u0010*\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u0018\u0010+\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J\u0018\u0010.\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010,\u001a\u00020-H\u0016J&\u0010/\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u0002012\u000c\u00102\u001a\u0008\u0012\u0004\u0012\u00020403H\u0016J\u0018\u00105\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00100\u001a\u000201H\u0016J&\u00106\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u0002082\u000c\u00109\u001a\u0008\u0012\u0004\u0012\u00020&03H\u0016J\u0018\u0010:\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u00107\u001a\u000208H\u0016J\u0018\u0010;\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010>\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010?\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010@\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010A\u001a\u00020BH\u0016J\u0010\u0010C\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010D\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020=H\u0016J\u0010\u0010E\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010F\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001dH\u0016J\u0018\u0010G\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0010\u0010H\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0018\u0010I\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u001a\u0010J\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010K\u001a\u0004\u0018\u00010LH\u0016J\u0010\u0010M\u001a\u00020\u00142\u0006\u0010\u0011\u001a\u00020\u000eH\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0082\u000e\u00a2\u0006\u0002\n\u0000R+\u0010\u000c\u001a\u001f\u0012\u0013\u0012\u00110\u000e\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0001\u0018\u00010\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006O"
    }
    d2 = {
        "Lio/sentry/okhttp/SentryOkHttpEventListener;",
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
        "canCreateEventSpan",
        "",
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
        "Companion",
        "sentry-okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CONNECTION_EVENT:Ljava/lang/String; = "connection"

.field public static final CONNECT_EVENT:Ljava/lang/String; = "connect"

.field public static final Companion:Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;

.field public static final DNS_EVENT:Ljava/lang/String; = "dns"

.field public static final PROXY_SELECT_EVENT:Ljava/lang/String; = "proxy_select"

.field public static final REQUEST_BODY_EVENT:Ljava/lang/String; = "request_body"

.field public static final REQUEST_HEADERS_EVENT:Ljava/lang/String; = "request_headers"

.field public static final RESPONSE_BODY_EVENT:Ljava/lang/String; = "response_body"

.field public static final RESPONSE_HEADERS_EVENT:Ljava/lang/String; = "response_headers"

.field public static final SECURE_CONNECT_EVENT:Ljava/lang/String; = "secure_connect"

.field private static final eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokhttp3/Call;",
            "Lio/sentry/okhttp/SentryOkHttpEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hub:Lio/sentry/IHub;

.field private originalEventListener:Lokhttp3/EventListener;

.field private final originalEventListenerCreator:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lokhttp3/Call;",
            "Lokhttp3/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/okhttp/SentryOkHttpEventListener;->Companion:Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, v0, v1}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

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

    .line 46
    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListenerCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 44
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p4, "getInstance()"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 43
    :cond_1
    invoke-direct {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalEventListenerFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lio/sentry/okhttp/SentryOkHttpEventListener$4;

    invoke-direct {v0, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$4;-><init>(Lokhttp3/EventListener$Factory;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 84
    invoke-direct {p0, p1, v0}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 84
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p3, "getInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lokhttp3/EventListener$Factory;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener;)V
    .locals 1

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "originalEventListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v0, Lio/sentry/okhttp/SentryOkHttpEventListener$3;

    invoke-direct {v0, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$3;-><init>(Lokhttp3/EventListener;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 79
    invoke-direct {p0, p1, v0}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lokhttp3/EventListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 79
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p3, "getInstance()"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lokhttp3/EventListener;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener$Factory;)V
    .locals 2

    const-string v0, "originalEventListenerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    .line 76
    new-instance v1, Lio/sentry/okhttp/SentryOkHttpEventListener$2;

    invoke-direct {v1, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener$2;-><init>(Lokhttp3/EventListener$Factory;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 74
    invoke-direct {p0, v0, v1}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/EventListener;)V
    .locals 2

    const-string v0, "originalEventListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    .line 71
    new-instance v1, Lio/sentry/okhttp/SentryOkHttpEventListener$1;

    invoke-direct {v1, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener$1;-><init>(Lokhttp3/EventListener;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 69
    invoke-direct {p0, v0, v1}, Lio/sentry/okhttp/SentryOkHttpEventListener;-><init>(Lio/sentry/IHub;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getEventMap$cp()Ljava/util/Map;
    .locals 1

    sget-object v0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    return-object v0
.end method

.method private final canCreateEventSpan()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    .line 409
    instance-of p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cachedResponse"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 404
    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 396
    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public cacheMiss(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 400
    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->cacheMiss(Lokhttp3/Call;)V

    :cond_0
    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->callEnd(Lokhttp3/Call;)V

    :cond_0
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 370
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x3

    const/4 v0, 0x0

    .line 371
    invoke-static {p0, v0, v0, p1, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishEvent$default(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->callFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 376
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 379
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 380
    :cond_2
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setError(Ljava/lang/String;)V

    .line 381
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$callFailed$1;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$callFailed$1;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishEvent$default(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 3

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListenerCreator:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/EventListener;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->callStart(Lokhttp3/Call;)V

    .line 94
    :cond_1
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 95
    new-instance v1, Lio/sentry/okhttp/SentryOkHttpEvent;

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->hub:Lio/sentry/IHub;

    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lio/sentry/okhttp/SentryOkHttpEvent;-><init>(Lio/sentry/IHub;Lokhttp3/Request;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 388
    invoke-virtual {p0, p1}, Lokhttp3/EventListener;->canceled(Lokhttp3/Call;)V

    :cond_0
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

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    .line 190
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 193
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x0

    if-eqz p4, :cond_3

    .line 194
    invoke-virtual {p4}, Lokhttp3/Protocol;->name()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p2, p1

    :goto_0
    invoke-virtual {p0, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->setProtocol(Ljava/lang/String;)V

    const-string p2, "connect"

    const/4 p3, 0x2

    .line 195
    invoke-static {p0, p2, p1, p3, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan$default(Lio/sentry/okhttp/SentryOkHttpEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/ISpan;

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

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 205
    invoke-virtual/range {v1 .. v6}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    .line 206
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 209
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 210
    invoke-virtual {p4}, Lokhttp3/Protocol;->name()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setProtocol(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setError(Ljava/lang/String;)V

    .line 212
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$connectFailed$1;

    invoke-direct {p1, p5}, Lio/sentry/okhttp/SentryOkHttpEventListener$connectFailed$1;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "connect"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

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

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 158
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 161
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "connect"

    .line 162
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1, p1, p2}, Lokhttp3/EventListener;->connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 220
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 223
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 224
    :cond_2
    invoke-virtual {p0, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 2

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1, p1, p2}, Lokhttp3/EventListener;->connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V

    .line 229
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 232
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 233
    invoke-static {p0, v0, p2, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan$default(Lio/sentry/okhttp/SentryOkHttpEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/ISpan;

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

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    .line 140
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 143
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 144
    :cond_2
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$dnsEnd$1;

    invoke-direct {p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener$dnsEnd$1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "dns"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domainName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    .line 127
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 130
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "dns"

    .line 131
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

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

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V

    .line 114
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 117
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 118
    :cond_2
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$proxySelectEnd$1;

    invoke-direct {p1, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener$proxySelectEnd$1;-><init>(Ljava/util/List;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "proxy_select"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    return-void
.end method

.method public proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V

    .line 101
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 104
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "proxy_select"

    .line 105
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    .line 265
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 268
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 269
    :cond_2
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$requestBodyEnd$1;

    invoke-direct {p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener$requestBodyEnd$1;-><init>(J)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string v0, "request_body"

    invoke-virtual {p0, v0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    .line 274
    invoke-virtual {p0, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEvent;->setRequestBodySize(J)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    .line 256
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 259
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "request_body"

    .line 260
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 279
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 282
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 283
    :cond_2
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setError(Ljava/lang/String;)V

    .line 286
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$requestFailed$1;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$requestFailed$1;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string v0, "request_headers"

    invoke-virtual {p0, v0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    .line 292
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$requestFailed$2;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$requestFailed$2;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "request_body"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    .line 247
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 250
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "request_headers"

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 251
    invoke-static {p0, p1, v0, p2, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan$default(Lio/sentry/okhttp/SentryOkHttpEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/ISpan;

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 241
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "request_headers"

    .line 242
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    .line 335
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 338
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 339
    :cond_2
    invoke-virtual {p0, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEvent;->setResponseBodySize(J)V

    .line 340
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$responseBodyEnd$1;

    invoke-direct {p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpEventListener$responseBodyEnd$1;-><init>(J)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "response_body"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    .line 326
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 329
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "response_body"

    .line 330
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioe"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 349
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 352
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    .line 353
    :cond_2
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setError(Ljava/lang/String;)V

    .line 356
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$responseFailed$1;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$responseFailed$1;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string v0, "response_headers"

    invoke-virtual {p0, v0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    .line 362
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpEventListener$responseFailed$2;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$responseFailed$2;-><init>(Ljava/io/IOException;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    const-string p2, "response_body"

    invoke-virtual {p0, p2, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    .line 309
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 312
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p1, :cond_2

    return-void

    .line 313
    :cond_2
    invoke-virtual {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->setResponse(Lokhttp3/Response;)V

    .line 314
    new-instance v0, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;

    invoke-direct {v0, p2}, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;-><init>(Lokhttp3/Response;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const-string p2, "response_headers"

    invoke-virtual {p1, p2, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 321
    invoke-interface {p2}, Lio/sentry/ISpan;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_3
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->hub:Lio/sentry/IHub;

    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p0

    invoke-interface {p0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p2

    :cond_4
    const-string p0, "responseHeadersSpan?.fin\u2026ptions.dateProvider.now()"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->scheduleFinish(Lio/sentry/SentryDate;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    .line 300
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 303
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "response_headers"

    .line 304
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method

.method public satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz p0, :cond_0

    .line 392
    invoke-virtual {p0, p1, p2}, Lokhttp3/EventListener;->satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V

    :cond_0
    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 179
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "secure_connect"

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0, p2, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan$default(Lio/sentry/okhttp/SentryOkHttpEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/ISpan;

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->originalEventListener:Lokhttp3/EventListener;

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    .line 167
    :cond_0
    invoke-direct {p0}, Lio/sentry/okhttp/SentryOkHttpEventListener;->canCreateEventSpan()Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    sget-object p0, Lio/sentry/okhttp/SentryOkHttpEventListener;->eventMap:Ljava/util/Map;

    .line 170
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-nez p0, :cond_2

    return-void

    :cond_2
    const-string p1, "secure_connect"

    .line 171
    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->startSpan(Ljava/lang/String;)V

    return-void
.end method
