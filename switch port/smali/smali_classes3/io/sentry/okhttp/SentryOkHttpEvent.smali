.class public final Lio/sentry/okhttp/SentryOkHttpEvent;
.super Ljava/lang/Object;
.source "SentryOkHttpEvent.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryOkHttpEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryOkHttpEvent.kt\nio/sentry/okhttp/SentryOkHttpEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,226:1\n1#2:227\n766#3:228\n857#3,2:229\n1855#3,2:231\n1726#3,3:233\n*S KotlinDebug\n*F\n+ 1 SentryOkHttpEvent.kt\nio/sentry/okhttp/SentryOkHttpEvent\n*L\n164#1:228\n164#1:229,2\n164#1:231,2\n209#1:233,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u0011H\u0002J9\u0010\u0018\u001a\u00020\u00192\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2%\u0008\u0002\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dJ7\u0010!\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0017\u001a\u00020\u00112%\u0008\u0002\u0010\u001c\u001a\u001f\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u001e\u0012\u0008\u0008\u001f\u0012\u0004\u0008\u0008( \u0012\u0004\u0012\u00020\u0019\u0018\u00010\u001dJ\u0010\u0010\"\u001a\u00020\u00192\u0006\u0010 \u001a\u00020\nH\u0002J\u000e\u0010#\u001a\u00020\u00192\u0006\u0010$\u001a\u00020\u001bJ\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u000eJ\u0010\u0010&\u001a\u00020\u00192\u0008\u0010\'\u001a\u0004\u0018\u00010\u0011J\u0010\u0010(\u001a\u00020\u00192\u0008\u0010)\u001a\u0004\u0018\u00010\u0011J\u000e\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u000eJ\u000e\u0010.\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,J\u000e\u0010/\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u0011R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\nX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\n0\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "Lio/sentry/okhttp/SentryOkHttpEvent;",
        "",
        "hub",
        "Lio/sentry/IHub;",
        "request",
        "Lokhttp3/Request;",
        "(Lio/sentry/IHub;Lokhttp3/Request;)V",
        "breadcrumb",
        "Lio/sentry/Breadcrumb;",
        "callRootSpan",
        "Lio/sentry/ISpan;",
        "getCallRootSpan$sentry_okhttp",
        "()Lio/sentry/ISpan;",
        "clientErrorResponse",
        "Lokhttp3/Response;",
        "eventSpans",
        "",
        "",
        "isEventFinished",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "isReadingResponseBody",
        "response",
        "findParentSpan",
        "event",
        "finishEvent",
        "",
        "finishDate",
        "Lio/sentry/SentryDate;",
        "beforeFinish",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "span",
        "finishSpan",
        "moveThrowableToRootSpan",
        "scheduleFinish",
        "timestamp",
        "setClientErrorResponse",
        "setError",
        "errorMessage",
        "setProtocol",
        "protocolName",
        "setRequestBodySize",
        "byteCount",
        "",
        "setResponse",
        "setResponseBodySize",
        "startSpan",
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


# instance fields
.field private final breadcrumb:Lio/sentry/Breadcrumb;

.field private final callRootSpan:Lio/sentry/ISpan;

.field private clientErrorResponse:Lokhttp3/Response;

.field private final eventSpans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private final hub:Lio/sentry/IHub;

.field private final isEventFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isReadingResponseBody:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final request:Lokhttp3/Request;

.field private response:Lokhttp3/Response;


# direct methods
.method public static synthetic $r8$lambda$hAxmhx_6zn5AMz56re_-JEBAOh8(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;)V
    .locals 0

    invoke-static {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->scheduleFinish$lambda$7(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lokhttp3/Request;)V
    .locals 7

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->request:Lokhttp3/Request;

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->isReadingResponseBody:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->isEventFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object v0

    const-string v1, "parse(request.url.toString())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrlOrFallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "urlDetails.urlOrFallback"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v3

    .line 47
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object p1

    :goto_0
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http.client"

    invoke-interface {p1, v6, v5}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p1, :cond_2

    .line 52
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v4

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "auto.http.okhttp"

    invoke-virtual {v4, v5}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    .line 53
    :goto_2
    invoke-virtual {v0, p1}, Lio/sentry/util/UrlUtils$UrlDetails;->applyToSpan(Lio/sentry/ISpan;)V

    .line 56
    invoke-static {v1, p2}, Lio/sentry/Breadcrumb;->http(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/Breadcrumb;

    move-result-object v0

    const-string v4, "http(url, method)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    const-string p0, "host"

    .line 57
    invoke-virtual {v0, p0, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "path"

    .line 58
    invoke-virtual {v0, v4, v3}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    const-string v0, "url"

    .line 61
    invoke-interface {p1, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 62
    invoke-interface {p1, p0, v2}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 63
    invoke-interface {p1, v4, v3}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    if-eqz p1, :cond_7

    .line 64
    sget-object p0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v0, "ROOT"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "this as java.lang.String).toUpperCase(locale)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "http.request.method"

    invoke-interface {p1, p2, p0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method private final findParentSpan(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "connection"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "response_body"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 201
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_1

    :sswitch_1
    const-string v0, "request_headers"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 198
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_1

    :sswitch_2
    const-string v0, "request_body"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 199
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_1

    :sswitch_3
    const-string v0, "response_headers"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 200
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_1

    :sswitch_4
    const-string v0, "secure_connect"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    const-string v0, "connect"

    .line 197
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISpan;

    goto :goto_1

    :goto_0
    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    :goto_1
    if-nez p1, :cond_5

    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    :cond_5
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c7bebde -> :sswitch_4
        -0x145a678 -> :sswitch_3
        0x4da64152 -> :sswitch_2
        0x526e09d6 -> :sswitch_1
        0x63e95ee0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static synthetic finishEvent$default(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 141
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishEvent(Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic finishSpan$default(Lio/sentry/okhttp/SentryOkHttpEvent;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lio/sentry/ISpan;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 126
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method private final moveThrowableToRootSpan(Lio/sentry/ISpan;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    .line 188
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lio/sentry/ISpan;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-nez v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-interface {p1}, Lio/sentry/ISpan;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    :goto_0
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-nez p0, :cond_1

    goto :goto_1

    .line 190
    :cond_1
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-interface {p0, v0}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V

    :goto_1
    const/4 p0, 0x0

    .line 191
    invoke-interface {p1, p0}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private static final scheduleFinish$lambda$7(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->isReadingResponseBody:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 233
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 209
    invoke-interface {v1}, Lio/sentry/ISpan;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISpan;->isFinished()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 211
    invoke-static {p0, p1, v1, v0, v1}, Lio/sentry/okhttp/SentryOkHttpEvent;->finishEvent$default(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final finishEvent(Lio/sentry/SentryDate;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/SentryDate;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/ISpan;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->isEventFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v2, "okHttp:request"

    iget-object v3, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->request:Lokhttp3/Request;

    .line 148
    invoke-virtual {v0, v2, v3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->response:Lokhttp3/Response;

    if-eqz v2, :cond_1

    const-string v3, "okHttp:response"

    .line 149
    invoke-virtual {v0, v3, v2}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    iget-object v3, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    .line 152
    invoke-interface {v2, v3, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-nez v0, :cond_3

    iget-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->clientErrorResponse:Lokhttp3/Response;

    if-eqz p1, :cond_2

    .line 158
    sget-object p2, Lio/sentry/okhttp/SentryOkHttpUtils;->INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {p2, p0, v0, p1}, Lio/sentry/okhttp/SentryOkHttpUtils;->captureClientError$sentry_okhttp(Lio/sentry/IHub;Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 164
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 228
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 229
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lio/sentry/ISpan;

    .line 164
    invoke-interface {v4}, Lio/sentry/ISpan;->isFinished()Z

    move-result v4

    xor-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 229
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 230
    :cond_5
    check-cast v2, Ljava/util/List;

    .line 228
    check-cast v2, Ljava/lang/Iterable;

    .line 231
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/ISpan;

    .line 165
    invoke-direct {p0, v1}, Lio/sentry/okhttp/SentryOkHttpEvent;->moveThrowableToRootSpan(Lio/sentry/ISpan;)V

    if-eqz p1, :cond_6

    .line 167
    invoke-interface {v1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_1

    .line 169
    :cond_6
    invoke-interface {v1}, Lio/sentry/ISpan;->finish()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    .line 172
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-object p2, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->clientErrorResponse:Lokhttp3/Response;

    if-eqz p2, :cond_9

    .line 176
    sget-object v0, Lio/sentry/okhttp/SentryOkHttpUtils;->INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lio/sentry/okhttp/SentryOkHttpUtils;->captureClientError$sentry_okhttp(Lio/sentry/IHub;Lokhttp3/Request;Lokhttp3/Response;)V

    :cond_9
    if-eqz p1, :cond_a

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    .line 179
    invoke-interface {p0}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lio/sentry/ISpan;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    .line 181
    invoke-interface {p0}, Lio/sentry/ISpan;->finish()V

    :goto_2
    return-void
.end method

.method public final finishSpan(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Lio/sentry/ISpan;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/ISpan;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/sentry/ISpan;"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 127
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->findParentSpan(Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 129
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_1
    invoke-direct {p0, v0}, Lio/sentry/okhttp/SentryOkHttpEvent;->moveThrowableToRootSpan(Lio/sentry/ISpan;)V

    if-eqz p1, :cond_3

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    .line 131
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz p2, :cond_2

    .line 132
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_2
    invoke-direct {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->moveThrowableToRootSpan(Lio/sentry/ISpan;)V

    :cond_3
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 135
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_4
    invoke-interface {v0}, Lio/sentry/ISpan;->finish()V

    return-object v0
.end method

.method public final getCallRootSpan$sentry_okhttp()Lio/sentry/ISpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    return-object p0
.end method

.method public final scheduleFinish(Lio/sentry/SentryDate;)V
    .locals 4

    const-string v0, "timestamp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    .line 207
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/okhttp/SentryOkHttpEvent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent$$ExternalSyntheticLambda0;-><init>(Lio/sentry/okhttp/SentryOkHttpEvent;Lio/sentry/SentryDate;)V

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lio/sentry/ISentryExecutorService;->schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->hub:Lio/sentry/IHub;

    .line 215
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 216
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    .line 218
    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Failed to call the executor. OkHttp span will not be finished automatically. Did you call Sentry.close()?"

    .line 221
    check-cast p1, Ljava/lang/Throwable;

    .line 217
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final setClientErrorResponse(Lokhttp3/Response;)V
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->clientErrorResponse:Lokhttp3/Response;

    return-void
.end method

.method public final setError(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    const-string v1, "error_message"

    .line 107
    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_0

    .line 108
    invoke-interface {p0, v1, p1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setProtocol(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    const-string v1, "protocol"

    .line 81
    invoke-virtual {v0, v1, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_0

    .line 82
    invoke-interface {p0, v1, p1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setRequestBodySize(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    const-string v1, "request_content_length"

    .line 88
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_0

    const-string v0, "http.request_content_length"

    .line 89
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setResponse(Lokhttp3/Response;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->response:Lokhttp3/Response;

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    .line 73
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Protocol;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "protocol"

    invoke-virtual {v0, v2, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    .line 74
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "status_code"

    invoke-virtual {v0, v3, v1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lokhttp3/Response;->protocol()Lokhttp3/Protocol;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Protocol;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_1

    .line 76
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "http.response.status_code"

    invoke-interface {p0, v0, p1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setResponseBodySize(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->breadcrumb:Lio/sentry/Breadcrumb;

    const-string v1, "response_content_length"

    .line 95
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->callRootSpan:Lio/sentry/ISpan;

    if-eqz p0, :cond_0

    const-string v0, "http.response_content_length"

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final startSpan(Ljava/lang/String;)V
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->findParentSpan(Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http.client."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "response_body"

    .line 117
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->isReadingResponseBody:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    .line 119
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    :cond_1
    invoke-interface {v0}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    const-string v2, "auto.http.okhttp"

    invoke-virtual {v1, v2}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEvent;->eventSpans:Ljava/util/Map;

    .line 122
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
