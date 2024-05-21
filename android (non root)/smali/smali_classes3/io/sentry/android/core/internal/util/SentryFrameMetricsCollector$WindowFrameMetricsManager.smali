.class public interface abstract Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector$WindowFrameMetricsManager;
.super Ljava/lang/Object;
.source "SentryFrameMetricsCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/internal/util/SentryFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowFrameMetricsManager"
.end annotation


# virtual methods
.method public addOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 374
    invoke-virtual {p1, p2, p3}, Landroid/view/Window;->addOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method public removeOnFrameMetricsAvailableListener(Landroid/view/Window;Landroid/view/Window$OnFrameMetricsAvailableListener;)V
    .locals 0

    .line 381
    invoke-virtual {p1, p2}, Landroid/view/Window;->removeOnFrameMetricsAvailableListener(Landroid/view/Window$OnFrameMetricsAvailableListener;)V

    return-void
.end method
