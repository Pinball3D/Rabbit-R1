.class public final synthetic Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final synthetic f$1:Lio/sentry/ILogger;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/ILogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;->f$1:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda1;->f$1:Lio/sentry/ILogger;

    invoke-virtual {v0, p0}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lambda$new$1$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Lio/sentry/ILogger;)V

    return-void
.end method
