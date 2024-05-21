.class public final synthetic Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/FullyDisplayedReporter$FullyDisplayedReporterListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic f$1:Lio/sentry/ISpan;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Lio/sentry/ISpan;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;->f$1:Lio/sentry/ISpan;

    return-void
.end method


# virtual methods
.method public final onFullyDrawn()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda8;->f$1:Lio/sentry/ISpan;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$onActivityCreated$7$io-sentry-android-core-ActivityLifecycleIntegration(Lio/sentry/ISpan;)V

    return-void
.end method
