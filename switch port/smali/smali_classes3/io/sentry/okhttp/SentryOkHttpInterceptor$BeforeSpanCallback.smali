.class public interface abstract Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;
.super Ljava/lang/Object;
.source "SentryOkHttpInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/okhttp/SentryOkHttpInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BeforeSpanCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&\u00a8\u0006\t"
    }
    d2 = {
        "Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;",
        "",
        "execute",
        "Lio/sentry/ISpan;",
        "span",
        "request",
        "Lokhttp3/Request;",
        "response",
        "Lokhttp3/Response;",
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


# virtual methods
.method public abstract execute(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;
.end method
