.class public final Lio/sentry/android/okhttp/SentryOkHttpInterceptor;
.super Ljava/lang/Object;
.source "SentryOkHttpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use SentryOkHttpInterceptor from sentry-okhttp instead"
    replaceWith = .subannotation Lkotlin/ReplaceWith;
        expression = "SentryOkHttpInterceptor"
        imports = {
            "io.sentry.okhttp.SentryOkHttpInterceptor"
        }
    .end subannotation
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0015B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005B\u000f\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000c\u00a2\u0006\u0002\u0010\u0010J\u0011\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0096\u0001R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/sentry/android/okhttp/SentryOkHttpInterceptor;",
        "Lokhttp3/Interceptor;",
        "()V",
        "hub",
        "Lio/sentry/IHub;",
        "(Lio/sentry/IHub;)V",
        "beforeSpan",
        "Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;",
        "(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V",
        "captureFailedRequests",
        "",
        "failedRequestStatusCodes",
        "",
        "Lio/sentry/HttpStatusCodeRange;",
        "failedRequestTargets",
        "",
        "(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V",
        "intercept",
        "Lokhttp3/Response;",
        "chain",
        "Lokhttp3/Interceptor$Chain;",
        "BeforeSpanCallback",
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
.field private final synthetic $$delegate_0:Lio/sentry/okhttp/SentryOkHttpInterceptor;

.field private final beforeSpan:Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

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
.method public static synthetic $r8$lambda$4sIMJLWbxyHh89fo6GSbci0VzUU(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->__delegate_0$lambda$0(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-static {}, Lio/sentry/HubAdapter;->getInstance()Lio/sentry/HubAdapter;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lio/sentry/IHub;

    invoke-direct {p0, v0}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;)V

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

    .line 53
    invoke-direct/range {v1 .. v8}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/IHub;",
            "Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;",
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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->hub:Lio/sentry/IHub;

    iput-object p2, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->beforeSpan:Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

    iput-boolean p3, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->captureFailedRequests:Z

    iput-object p4, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->failedRequestStatusCodes:Ljava/util/List;

    iput-object p5, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->failedRequestTargets:Ljava/util/List;

    .line 41
    new-instance v0, Lio/sentry/okhttp/SentryOkHttpInterceptor;

    .line 43
    new-instance v3, Lio/sentry/android/okhttp/SentryOkHttpInterceptor$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V

    move-object v1, v0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 41
    invoke-direct/range {v1 .. v6}, Lio/sentry/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->$$delegate_0:Lio/sentry/okhttp/SentryOkHttpInterceptor;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/Class;)V

    .line 58
    invoke-static {}, Lio/sentry/SentryIntegrationPackageStorage;->getInstance()Lio/sentry/SentryIntegrationPackageStorage;

    move-result-object p0

    const-string p1, "maven:io.sentry:sentry-android-okhttp"

    const-string p2, "7.4.0"

    .line 59
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryIntegrationPackageStorage;->addPackage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 34
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

    .line 38
    new-instance p2, Lio/sentry/HttpStatusCodeRange;

    const/16 p3, 0x1f4

    const/16 p4, 0x257

    invoke-direct {p2, p3, p4}, Lio/sentry/HttpStatusCodeRange;-><init>(II)V

    .line 37
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    const-string p2, ".*"

    .line 40
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

    .line 33
    invoke-direct/range {p2 .. p7}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V
    .locals 10

    const-string v0, "beforeSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
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

    invoke-direct/range {v2 .. v9}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;-><init>(Lio/sentry/IHub;Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private static final __delegate_0$lambda$0(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;
    .locals 1

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-object p1

    .line 45
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;->execute(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 1

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->$$delegate_0:Lio/sentry/okhttp/SentryOkHttpInterceptor;

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpInterceptor;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method
