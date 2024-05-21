.class final Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;
.super Ljava/lang/Object;
.source "SceneRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoFrameMetadataListener;
.implements Lcom/google/android/exoplayer2/video/spherical/CameraMotionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SceneRenderer"


# instance fields
.field private volatile defaultStereoMode:I

.field private final frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

.field private lastProjectionData:[B

.field private lastStereoMode:I

.field private final projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Lcom/google/android/exoplayer2/video/spherical/Projection;",
            ">;"
        }
    .end annotation
.end field

.field private final projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

.field private final resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final rotationMatrix:[F

.field private final sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/TimedValueQueue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final tempMatrix:[F

.field private textureId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    .line 66
    new-instance v0, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 67
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 68
    new-instance v0, Lcom/google/android/exoplayer2/util/TimedValueQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    return-void
.end method

.method private setProjection([BIJ)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget p2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    :cond_0
    iput p2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    if-ne v1, p2, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    .line 194
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastProjectionData:[B

    if-eqz p1, :cond_2

    iget p2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 200
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/spherical/ProjectionDecoder;->decode([BI)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 203
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lcom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->lastStereoMode:I

    .line 205
    invoke-static {p1}, Lcom/google/android/exoplayer2/video/spherical/Projection;->createEquirectangular(I)Lcom/google/android/exoplayer2/video/spherical/Projection;

    move-result-object p1

    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 206
    invoke-virtual {p0, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public drawFrame([FZ)V
    .locals 8

    const-string v0, "Failed to draw a frame"

    const-string v1, "SceneRenderer"

    const/16 v2, 0x4000

    .line 117
    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    .line 119
    :try_start_0
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 121
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 124
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 125
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 127
    :try_start_1
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V
    :try_end_1
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 129
    invoke-static {v1, v0, v2}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 131
    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    .line 132
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/GlUtil;->setToIdentity([F)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 134
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 135
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->poll(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    .line 137
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->pollRotationMatrix([FJ)Z

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 139
    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->pollFloor(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/spherical/Projection;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    .line 141
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->setProjection(Lcom/google/android/exoplayer2/video/spherical/Projection;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->rotationMatrix:[F

    const/4 v7, 0x0

    move-object v4, p1

    .line 144
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    iget v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->tempMatrix:[F

    .line 145
    invoke-virtual {p1, v0, p0, p2}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->draw(I[FZ)V

    return-void
.end method

.method public init()Landroid/graphics/SurfaceTexture;
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    .line 92
    :try_start_0
    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 93
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    .line 95
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->init()V

    .line 96
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 98
    invoke-static {}, Lcom/google/android/exoplayer2/util/GlUtil;->createExternalTexture()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SceneRenderer"

    const-string v2, "Failed to initialize the renderer"

    .line 100
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->textureId:I

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 103
    new-instance v1, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method synthetic lambda$init$0$com-google-android-exoplayer2-video-spherical-SceneRenderer(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    .line 103
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onCameraMotion(J[F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 171
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->setRotation(J[F)V

    return-void
.end method

.method public onCameraMotionReset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 176
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->clear()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->frameRotationQueue:Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;

    .line 177
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/video/spherical/FrameRotationQueue;->reset()V

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->resetRotationAtNextFrame:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p6, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->sampleTimestampQueue:Lcom/google/android/exoplayer2/util/TimedValueQueue;

    .line 163
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p6, p3, p4, p1}, Lcom/google/android/exoplayer2/util/TimedValueQueue;->add(JLjava/lang/Object;)V

    .line 164
    iget-object p1, p5, Lcom/google/android/exoplayer2/Format;->projectionData:[B

    iget p2, p5, Lcom/google/android/exoplayer2/Format;->stereoMode:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->setProjection([BIJ)V

    return-void
.end method

.method public setDefaultStereoMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->defaultStereoMode:I

    return-void
.end method

.method public shutdown()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/SceneRenderer;->projectionRenderer:Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;

    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->shutdown()V

    return-void
.end method
