.class public final synthetic Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/android/core/ANRWatchDog$ANRListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/AnrIntegration;

.field public final synthetic f$1:Lio/sentry/IHub;

.field public final synthetic f$2:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/AnrIntegration;Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AnrIntegration;

    iput-object p2, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iput-object p3, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/core/SentryAndroidOptions;

    return-void
.end method


# virtual methods
.method public final onAppNotResponding(Lio/sentry/android/core/ApplicationNotResponding;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/AnrIntegration;

    iget-object v1, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$1:Lio/sentry/IHub;

    iget-object p0, p0, Lio/sentry/android/core/AnrIntegration$$ExternalSyntheticLambda0;->f$2:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0, v1, p0, p1}, Lio/sentry/android/core/AnrIntegration;->lambda$startAnrWatchdog$1$io-sentry-android-core-AnrIntegration(Lio/sentry/IHub;Lio/sentry/android/core/SentryAndroidOptions;Lio/sentry/android/core/ApplicationNotResponding;)V

    return-void
.end method
