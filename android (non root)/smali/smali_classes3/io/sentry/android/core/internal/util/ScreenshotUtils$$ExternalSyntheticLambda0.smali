.class public final synthetic Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p0, p0, Lio/sentry/android/core/internal/util/ScreenshotUtils$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, p0, p1}, Lio/sentry/android/core/internal/util/ScreenshotUtils;->lambda$takeScreenshot$0(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
