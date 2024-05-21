.class public Lio/sentry/okhttp/SentryOkHttpInterceptor;
.super Ljava/lang/Object;
.source "SentryOkHttpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryOkHttpInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryOkHttpInterceptor.kt\nio/sentry/okhttp/SentryOkHttpInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,228:1\n1#2:229\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001:\u0001)B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J,\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0002J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J)\u0010 \u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010!\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0002\u00a2\u0006\u0002\u0010\"J\u0018\u0010#\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\'\u0010$\u001a\u00020\u0015*\u0004\u0018\u00010%2\u0012\u0010&\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020\u00150\'H\u0002\u00a2\u0006\u0002\u0010(R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lio/sentry/okhttp/SentryOkHttpInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "hub",
        "Lio/sentry/IHub;",
        "(Lio/sentry/IHub;)V",
        "beforeSpan",
        "Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;",
        "(Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V",
        "captureFailedRequests",
        "",
        "failedRequestStatusCodes",
        "",
        "Lio/sentry/HttpStatusCodeRange;",
        "failedRequestTargets",
        "",
        "(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V",
        "containsStatusCode",
        "statusCode",
        "",
        "finishSpan",
        "",
        "span",
        "Lio/sentry/ISpan;",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
        "isFromEventListener",
        "intercept",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "sendBreadcrumb",
        "code",
        "(Lokhttp3/Request;Ljava/lang/Integer;Lokhttp3/Response;)V",
        "shouldCaptureClientError",
        "ifHasValidLength",
        "",
        "fn",
        "Lkotlin/Function1;",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "BeforeSpanCallback",
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
.field private final beforeSpan:Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

.field private final captureFailedRequests:Z

.field private final failedRequestStatusCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/HttpStatusCodeRange;",
            ">;"
        }
    .end annotation
.end field

.field private final failedRequestTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hub:Lio/sentry/IHub;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    invoke-direct {p0, v0}, Lio/sentry/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;)V
    .locals 9

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 52
    invoke-direct/range {v1 .. v8}, Lio/sentry/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;",
            "Z",
            "Ljava/util/List<",
            "Lio/sentry/HttpStatusCodeRange;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRequestStatusCodes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRequestTargets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->beforeSpan:Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

    iput-boolean p3, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->captureFailedRequests:Z

    iput-object p4, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->failedRequestStatusCodes:Ljava/util/List;

    iput-object p5, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->failedRequestTargets:Ljava/util/List;

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    .line 57
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "maven:io.sentry:sentry-okhttp"

    const-string p2, "7.4.0"

    .line 58
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 42
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object p1

    const-string p7, "getInstance()"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/sentry/IHub;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 46
    new-instance p2, Lio/sentry/HttpStatusCodeRange;

    const/16 p3, 0x1f4

    const/16 p4, 0x257

    invoke-direct {p2, p3, p4}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    .line 45
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    const-string p2, ".*"

    .line 48
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-object p6, v1

    move-object p7, v2

    .line 41
    invoke-direct/range {p2 .. p7}, Lio/sentry/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V
    .locals 10

    const-string v0, "beforeSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v0

    check-cast v3, Lio/sentry/IHub;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    const/4 v9, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v9}, Lio/sentry/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private final containsStatusCode(I)Z
    .locals 1

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->failedRequestStatusCodes:Ljava/util/List;

    .line 206
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/HttpStatusCodeRange;

    .line 207
    invoke-virtual {v0, p1}, Lio/sentry/HttpStatusCodeRange;->isInRange(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private final finishSpan(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->beforeSpan:Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

    if-eqz p0, :cond_2

    .line 168
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;->execute(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;

    move-result-object p0

    if-nez p0, :cond_1

    .line 171
    invoke-interface {p1}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/sentry/SpanContext;->setSampled(Ljava/lang/Boolean;)V

    :cond_1
    if-nez p4, :cond_3

    .line 175
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 180
    invoke-interface {p1}, Lio/sentry/ISpan;->finish()V

    :cond_3
    :goto_0
    return-void
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

    .line 186
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private final sendBreadcrumb(Lokhttp3/Request;Ljava/lang/Integer;Lokhttp3/Response;)V
    .locals 4

    .line 146
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lio/sentry/Breadcrumb;->http(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/Breadcrumb;

    move-result-object p2

    const-string v0, "http(request.url.toString(), request.method, code)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lio/sentry/okhttp/SentryOkHttpInterceptor$sendBreadcrumb$1;

    invoke-direct {v2, p2}, Lio/sentry/okhttp/SentryOkHttpInterceptor$sendBreadcrumb$1;-><init>(Lio/sentry/Breadcrumb;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v0, v2}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->ifHasValidLength(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 151
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    const-string v2, "okHttp:request"

    invoke-virtual {v0, v2, p1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    .line 153
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_1
    new-instance p1, Lio/sentry/okhttp/SentryOkHttpInterceptor$sendBreadcrumb$2$1;

    invoke-direct {p1, p2}, Lio/sentry/okhttp/SentryOkHttpInterceptor$sendBreadcrumb$2$1;-><init>(Lio/sentry/Breadcrumb;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, v1, p1}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->ifHasValidLength(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    const-string p1, "okHttp:response"

    .line 157
    invoke-virtual {v0, p1, p3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    .line 160
    invoke-interface {p0, p2, v0}, Lio/sentry/IHub;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method private final shouldCaptureClientError(Lokhttp3/Request;Lokhttp3/Response;)Z
    .locals 2

    iget-boolean v0, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->captureFailedRequests:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    invoke-direct {p0, p2}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->containsStatusCode(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->failedRequestTargets:Ljava/util/List;

    .line 198
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lio/sentry/util/PropagationTargetsUtils;->contain(Ljava/util/List;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 12

    const-string v0, "baggage"

    const-string v1, "chain"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/sentry/util/UrlUtils;->parse(Ljava/lang/String;)Lio/sentry/util/UrlUtils$UrlDetails;

    move-result-object v2

    const-string v3, "parse(request.url.toString())"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lio/sentry/util/UrlUtils$UrlDetails;->getUrlOrFallback()Ljava/lang/String;

    move-result-object v3

    const-string v4, "urlDetails.urlOrFallback"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    .line 72
    sget-object v5, Lio/sentry/okhttp/SentryOkHttpEventListener;->Companion:Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;

    invoke-virtual {v5}, Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;->getEventMap$sentry_okhttp()Ljava/util/Map;

    move-result-object v5

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 74
    sget-object v3, Lio/sentry/okhttp/SentryOkHttpEventListener;->Companion:Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;

    invoke-virtual {v3}, Lio/sentry/okhttp/SentryOkHttpEventListener$Companion;->getEventMap$sentry_okhttp()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->call()Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/okhttp/SentryOkHttpEvent;

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {v3}, Lio/sentry/okhttp/SentryOkHttpEvent;->getCallRootSpan$sentry_okhttp()Lio/sentry/ISpan;

    move-result-object v4

    goto :goto_2

    :cond_0
    move-object v4, v6

    goto :goto_2

    .line 79
    :cond_1
    invoke-static {}, Lio/sentry/util/Platform;->isAndroid()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    invoke-interface {v5}, Lio/sentry/IHub;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v5

    check-cast v5, Lio/sentry/ISpan;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    invoke-interface {v5}, Lio/sentry/IHub;->getSpan()Lio/sentry/ISpan;

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_3

    .line 80
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http.client"

    invoke-interface {v5, v4, v3}, Lio/sentry/ISpan;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object v3

    move-object v4, v3

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    move-object v3, v6

    :goto_2
    if-eqz v4, :cond_4

    .line 83
    invoke-interface {v4}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v6

    :goto_3
    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    const-string v7, "auto.http.okhttp"

    invoke-virtual {v5, v7}, Lio/sentry/SpanContext;->setOrigin(Ljava/lang/String;)V

    .line 85
    :goto_4
    invoke-virtual {v2, v4}, Lio/sentry/util/UrlUtils$UrlDetails;->applyToSpan(Lio/sentry/ISpan;)V

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    .line 92
    :goto_5
    :try_start_0
    invoke-virtual {v1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v5

    iget-object v7, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    .line 96
    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v8

    .line 97
    invoke-virtual {v1, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 94
    invoke-static {v7, v8, v9, v4}, Lio/sentry/util/TracingUtils;->traceIfAllowed(Lio/sentry/IHub;Ljava/lang/String;Ljava/util/List;Lio/sentry/ISpan;)Lio/sentry/util/TracingUtils$TracingHeaders;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 100
    invoke-virtual {v7}, Lio/sentry/util/TracingUtils$TracingHeaders;->getSentryTraceHeader()Lio/sentry/SentryTraceHeader;

    move-result-object v8

    invoke-virtual {v8}, Lio/sentry/SentryTraceHeader;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "tracingHeaders.sentryTraceHeader.name"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lio/sentry/util/TracingUtils$TracingHeaders;->getSentryTraceHeader()Lio/sentry/SentryTraceHeader;

    move-result-object v9

    invoke-virtual {v9}, Lio/sentry/SentryTraceHeader;->getValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "tracingHeaders.sentryTraceHeader.value"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v8, v9}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 101
    invoke-virtual {v7}, Lio/sentry/util/TracingUtils$TracingHeaders;->getBaggageHeader()Lio/sentry/BaggageHeader;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 102
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 103
    invoke-virtual {v7}, Lio/sentry/BaggageHeader;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v8, "it.name"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Lio/sentry/BaggageHeader;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.value"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 107
    :cond_7
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    .line 108
    invoke-interface {p1, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v4, :cond_8

    const-string v0, "http.response.status_code"

    .line 110
    invoke-interface {v4, v0, v6}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    if-nez v4, :cond_9

    goto :goto_6

    .line 111
    :cond_9
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/sentry/SpanStatus;->fromHttpStatusCode(I)Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-interface {v4, v0}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V

    .line 116
    :goto_6
    invoke-direct {p0, v1, p1}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->shouldCaptureClientError(Lokhttp3/Request;Lokhttp3/Response;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 122
    invoke-virtual {v3, p1}, Lio/sentry/okhttp/SentryOkHttpEvent;->setClientErrorResponse(Lokhttp3/Response;)V

    goto :goto_7

    .line 124
    :cond_a
    sget-object v0, Lio/sentry/okhttp/SentryOkHttpUtils;->INSTANCE:Lio/sentry/okhttp/SentryOkHttpUtils;

    iget-object v3, p0, Lio/sentry/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    invoke-virtual {v0, v3, v1, p1}, Lio/sentry/okhttp/SentryOkHttpUtils;->captureClientError$sentry_okhttp(Lio/sentry/IHub;Lokhttp3/Request;Lokhttp3/Response;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :cond_b
    :goto_7
    invoke-direct {p0, v4, v1, p1, v2}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->finishSpan(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;Z)V

    if-nez v2, :cond_c

    .line 140
    invoke-direct {p0, v1, v6, p1}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->sendBreadcrumb(Lokhttp3/Request;Ljava/lang/Integer;Lokhttp3/Response;)V

    :cond_c
    return-object p1

    :catchall_0
    move-exception v0

    move-object v11, v6

    move-object v6, p1

    move-object p1, v0

    move-object v0, v11

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v11, v6

    move-object v6, p1

    move-object p1, v0

    move-object v0, v11

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object v0, v6

    goto :goto_a

    :catch_1
    move-exception p1

    move-object v0, v6

    :goto_8
    if-eqz v4, :cond_d

    .line 131
    :try_start_2
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    invoke-interface {v4, v3}, Lio/sentry/ISpan;->setThrowable(Ljava/lang/Throwable;)V

    .line 132
    sget-object v3, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v4, v3}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V

    goto :goto_9

    :catchall_2
    move-exception p1

    goto :goto_a

    .line 134
    :cond_d
    :goto_9
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 136
    :goto_a
    invoke-direct {p0, v4, v1, v6, v2}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->finishSpan(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;Z)V

    if-nez v2, :cond_e

    .line 140
    invoke-direct {p0, v1, v0, v6}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->sendBreadcrumb(Lokhttp3/Request;Ljava/lang/Integer;Lokhttp3/Response;)V

    :cond_e
    throw p1
.end method
