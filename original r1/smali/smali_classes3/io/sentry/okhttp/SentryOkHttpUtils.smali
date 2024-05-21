.class public final Lio/sentry/okhttp/SentryOkHttpUtils;
.super Ljava/lang/Object;
.source "SentryOkHttpUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008\u000bJ&\u0010\u000c\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\'\u0010\u0011\u001a\u00020\u0004*\u0004\u0018\u00010\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00040\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/sentry/okhttp/SentryOkHttpUtils;",
        "",
        "()V",
        "captureClientError",
        "",
        "hub",
        "Lio/sentry/IHub;",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
        "captureClientError$sentry_okhttp",
        "getHeaders",
        "",
        "",
        "requestHeaders",
        "Lokhttp3/Headers;",
        "ifHasValidLength",
        "",
        "fn",
        "Lkotlin/Function1;",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
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
.field public static final INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/okhttp/SentryOkHttpUtils;

    invoke-direct {v0}, Lio/sentry/okhttp/SentryOkHttpUtils;-><init>()V

    sput-object v0, Lio/sentry/okhttp/SentryOkHttpUtils;->INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getHeaders(Lio/sentry/IHub;Lokhttp3/Headers;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 81
    :cond_0
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p0, Ljava/util/Map;

    .line 83
    invoke-virtual {p2}, Lokhttp3/Headers;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 84
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-static {v1}, Lio/sentry/util/HttpUtils;->containsSensitiveHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v2

    .line 92
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private final ifHasValidLength(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final captureClientError$sentry_okhttp(Lio/sentry/IHub;Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 6

    const-string p0, "hub"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object p0

    const-string v0, "parse(request.url.toString())"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance v0, Lio/sentry/protocol/Mechanism;

    invoke-direct {v0}, Lio/sentry/protocol/Mechanism;-><init>()V

    const-string v1, "SentryOkHttpInterceptor"

    .line 28
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Mechanism;->setType(Ljava/lang/String;)V

    .line 30
    new-instance v1, Lio/sentry/exception/SentryHttpClientException;

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HTTP Client Error with status code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Lio/sentry/exception/SentryHttpClientException;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v2, Lio/sentry/exception/ExceptionMechanismException;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v3, v4}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 34
    new-instance v0, Lio/sentry/SentryEvent;

    check-cast v2, Ljava/lang/Throwable;

    invoke-direct {v0, v2}, Lio/sentry/SentryEvent;-><init>(Ljava/lang/Throwable;)V

    .line 36
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    const-string v2, "okHttp:request"

    .line 37
    invoke-virtual {v1, v2, p2}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "okHttp:response"

    .line 38
    invoke-virtual {v1, v2, p3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    new-instance v2, Lio/sentry/protocol/Request;

    invoke-direct {v2}, Lio/sentry/protocol/Request;-><init>()V

    .line 41
    invoke-virtual {p0, v2}, Lio/sentry/util/UrlUtils$UrlDetails;->applyToRequest(Lio/sentry/protocol/Request;)V

    .line 43
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p0

    const-string v4, "Cookie"

    invoke-virtual {p0, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v3

    :goto_0
    invoke-virtual {v2, p0}, Lio/sentry/protocol/Request;->setCookies(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/sentry/protocol/Request;->setMethod(Ljava/lang/String;)V

    sget-object p0, Lio/sentry/okhttp/SentryOkHttpUtils;->INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;

    .line 45
    invoke-virtual {p2}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lio/sentry/okhttp/SentryOkHttpUtils;->getHeaders(Lio/sentry/IHub;Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v4}, Lio/sentry/protocol/Request;->setHeaders(Ljava/util/Map;)V

    .line 47
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_1

    :cond_1
    move-object p2, v3

    :goto_1
    new-instance v4, Lio/sentry/okhttp/SentryOkHttpUtils$captureClientError$sentryRequest$1$1;

    invoke-direct {v4, v2}, Lio/sentry/okhttp/SentryOkHttpUtils$captureClientError$sentryRequest$1$1;-><init>(Lio/sentry/protocol/Request;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p2, v4}, Lio/sentry/okhttp/SentryOkHttpUtils;->ifHasValidLength(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 52
    new-instance p2, Lio/sentry/protocol/Response;

    invoke-direct {p2}, Lio/sentry/protocol/Response;-><init>()V

    .line 54
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    const-string v5, "Set-Cookie"

    invoke-virtual {v4, v5}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    invoke-virtual {p2, v4}, Lio/sentry/protocol/Response;->setCookies(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p3}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lio/sentry/okhttp/SentryOkHttpUtils;->getHeaders(Lio/sentry/IHub;Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/sentry/protocol/Response;->setHeaders(Ljava/util/Map;)V

    .line 56
    invoke-virtual {p3}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/sentry/protocol/Response;->setStatusCode(Ljava/lang/Integer;)V

    .line 58
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :cond_3
    new-instance p3, Lio/sentry/okhttp/SentryOkHttpUtils$captureClientError$sentryResponse$1$1;

    invoke-direct {p3, p2}, Lio/sentry/okhttp/SentryOkHttpUtils$captureClientError$sentryResponse$1$1;-><init>(Lio/sentry/protocol/Response;)V

    check-cast p3, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v3, p3}, Lio/sentry/okhttp/SentryOkHttpUtils;->ifHasValidLength(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 63
    invoke-virtual {v0, v2}, Lio/sentry/SentryEvent;->setRequest(Lio/sentry/protocol/Request;)V

    .line 64
    invoke-virtual {v0}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0, p2}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    .line 66
    invoke-interface {p1, v0, v1}, Lio/sentry/IHub;->captureEvent(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/protocol/SentryId;

    return-void
.end method
