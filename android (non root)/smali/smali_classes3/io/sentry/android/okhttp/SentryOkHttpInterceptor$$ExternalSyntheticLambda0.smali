.class public final synthetic Lio/sentry/android/okhttp/SentryOkHttpInterceptor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/okhttp/SentryOkHttpInterceptor$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;

    invoke-static {p0, p1, p2, p3}, Lio/sentry/android/okhttp/SentryOkHttpInterceptor;->$r8$lambda$4sIMJLWbxyHh89fo6GSbci0VzUU(Lio/sentry/android/okhttp/SentryOkHttpInterceptor$BeforeSpanCallback;Lio/sentry/ISpan;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method
