.class public final synthetic Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/graphics/Canvas;

.field public final synthetic f$2:Lio/sentry/ILogger;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Canvas;

    iput-object p3, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$2:Lio/sentry/ILogger;

    iput-object p4, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$0:Landroid/view/View;

    iget-object v1, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$1:Landroid/graphics/Canvas;

    iget-object v2, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$2:Lio/sentry/ILogger;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda1;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, p0}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->lambda$takeScreenshot$1(Landroid/view/View;Landroid/graphics/Canvas;Lio/sentry/ILogger;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
