.class final Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryOkHttpEventListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/okhttp/SentryOkHttpEventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/sentry/ISpan;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lio/sentry/ISpan;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;->$response:Lokhttp3/Response;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 314
    check-cast p1, Lio/sentry/ISpan;

    invoke-virtual {p0, p1}, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;->invoke(Lio/sentry/ISpan;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lio/sentry/ISpan;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;->$response:Lokhttp3/Response;

    .line 315
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "http.response.status_code"

    invoke-interface {p1, v1, v0}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 317
    invoke-interface {p1}, Lio/sentry/ISpan;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/okhttp/SentryOkHttpEventListener$responseHeadersEnd$responseHeadersSpan$1;->$response:Lokhttp3/Response;

    .line 318
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-static {p0}, Lio/sentry/SpanStatus;->fromHttpStatusCode(I)Lio/sentry/SpanStatus;

    move-result-object p0

    invoke-interface {p1, p0}, Lio/sentry/ISpan;->setStatus(Lio/sentry/SpanStatus;)V

    :cond_0
    return-void
.end method
