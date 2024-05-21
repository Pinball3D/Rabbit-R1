.class public final synthetic Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/SentryPerformanceProvider$1;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/SentryPerformanceProvider$1;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryPerformanceProvider$1;

    iput-object p2, p0, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;->f$0:Lio/sentry/android/core/SentryPerformanceProvider$1;

    iget-object p0, p0, Lio/sentry/android/core/SentryPerformanceProvider$1$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/SentryPerformanceProvider$1;->lambda$onActivityStarted$0$io-sentry-android-core-SentryPerformanceProvider$1(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    return-void
.end method
