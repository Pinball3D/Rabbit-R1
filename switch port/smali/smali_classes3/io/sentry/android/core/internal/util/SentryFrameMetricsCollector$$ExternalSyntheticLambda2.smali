.class public final synthetic Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/Window$OnFrameMetricsAvailableListener;


# instance fields
.field public final synthetic f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

.field public final synthetic f$1:Lio/sentry/android/core/BuildInfoProvider;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;Lio/sentry/android/core/BuildInfoProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/core/BuildInfoProvider;

    return-void
.end method


# virtual methods
.method public final onFrameMetricsAvailable(Landroid/view/Window;Landroid/view/FrameMetrics;I)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;->f$0:Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$$ExternalSyntheticLambda2;->f$1:Lio/sentry/android/core/BuildInfoProvider;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;->lambda$new$2$io-sentry-android-core-internal-util-SentryFrameMetricsCollector(Lio/sentry/android/core/BuildInfoProvider;Landroid/view/Window;Landroid/view/FrameMetrics;I)V

    return-void
.end method
