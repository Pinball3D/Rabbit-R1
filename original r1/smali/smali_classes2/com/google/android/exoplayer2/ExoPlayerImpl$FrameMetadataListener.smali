.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;
.implements Lcom/google/android/exoplayer2/PlayerMessage$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameMetadataListener"
.end annotation


# static fields
.field public static final MSG_SET_CAMERA_MOTION_LISTENER:I = 0x8

.field public static final MSG_SET_SPHERICAL_SURFACE_VIEW:I = 0x2710

.field public static final MSG_SET_VIDEO_FRAME_METADATA_LISTENER:I = 0x7


# instance fields
.field private cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

.field private internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

.field private videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3054
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$1;)V
    .locals 0

    .line 3054
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3080
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 3085
    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getVideoFrameMetadataListener()Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    .line 3086
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/video/spherical/SphericalGLSurfaceView;->getCameraMotionListener()Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 3077
    :cond_2
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    goto :goto_0

    .line 3074
    :cond_3
    check-cast p2, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    :goto_0
    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 3126
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_1

    .line 3129
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotion(J[F)V

    :cond_1
    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalCameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz v0, :cond_0

    .line 3136
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->cameraMotionListener:Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;

    if-eqz p0, :cond_1

    .line 3139
    invoke-interface {p0}, Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;->onCameraMotionReset()V

    :cond_1
    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->internalVideoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 3112
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$FrameMetadataListener;->videoFrameMetadataListener:Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;

    if-eqz v1, :cond_1

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 3116
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;->onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    :cond_1
    return-void
.end method
