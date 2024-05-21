.class public final synthetic Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

.field public final synthetic f$1:Lio/sentry/IHub;

.field public final synthetic f$2:Lio/sentry/SentryOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;Lio/sentry/IHub;Lio/sentry/SentryOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    iput-object p2, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;

    iget-object v1, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iget-object p0, p0, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/SentryOptions;

    invoke-virtual {v0, v1, p0}, Lio/sentry/android/core/SystemEventsBreadcrumbsIntegration;->lambda$register$0$io-sentry-android-core-SystemEventsBreadcrumbsIntegration(Lio/sentry/IHub;Lio/sentry/SentryOptions;)V

    return-void
.end method
