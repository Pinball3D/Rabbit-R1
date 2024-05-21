.class public final synthetic Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/sentry/TransactionFinishedCallback;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

.field public final synthetic f$1:Ljava/lang/ref/WeakReference;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/ActivityLifecycleIntegration;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iput-object p2, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lio/sentry/ITransaction;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$0:Lio/sentry/android/core/ActivityLifecycleIntegration;

    iget-object v1, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$1:Ljava/lang/ref/WeakReference;

    iget-object p0, p0, Lio/sentry/android/core/ActivityLifecycleIntegration$$ExternalSyntheticLambda4;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lio/sentry/android/core/ActivityLifecycleIntegration;->lambda$startTracing$0$io-sentry-android-core-ActivityLifecycleIntegration(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lio/sentry/ITransaction;)V

    return-void
.end method
