.class final Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper$Api30;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api30"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setSurfaceFrameRate(Landroid/view/Surface;F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 440
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/view/Surface;->setFrameRate(FI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "VideoFrameReleaseHelper"

    const-string v0, "Failed to call Surface.setFrameRate"

    .line 442
    invoke-static {p1, v0, p0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
