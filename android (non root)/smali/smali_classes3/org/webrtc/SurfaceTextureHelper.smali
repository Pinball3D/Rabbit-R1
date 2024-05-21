.class public Lorg/webrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lorg/webrtc/EglBase;

.field private final frameRefMonitor:Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;

.field private frameRotation:I

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lorg/webrtc/VideoSink;

.field private final oesTextureId:I

.field private pendingListener:Lorg/webrtc/VideoSink;

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHeight:I

.field private final textureRefCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

.field private textureWidth:I

.field private final timestampAligner:Lorg/webrtc/TimestampAligner;

.field private final yuvConverter:Lorg/webrtc/YuvConverter;


# direct methods
.method private constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)V
    .locals 2

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lorg/webrtc/SurfaceTextureHelper$2;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceTextureHelper$2;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    .line 162
    new-instance v0, Lorg/webrtc/SurfaceTextureHelper$3;

    invoke-direct {v0, p0}, Lorg/webrtc/SurfaceTextureHelper$3;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 179
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iput-object p2, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 183
    new-instance p3, Lorg/webrtc/TimestampAligner;

    invoke-direct {p3}, Lorg/webrtc/TimestampAligner;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lorg/webrtc/SurfaceTextureHelper;->timestampAligner:Lorg/webrtc/TimestampAligner;

    iput-object p4, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    iput-object p5, p0, Lorg/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    .line 187
    sget-object p3, Lorg/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {p1, p3}, Lorg/webrtc/EglBase;->create(Lorg/webrtc/EglBase$Context;[I)Lorg/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    .line 190
    :try_start_0
    invoke-interface {p1}, Lorg/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 191
    invoke-interface {p1}, Lorg/webrtc/EglBase;->makeCurrent()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 199
    invoke-static {p1}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 200
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 201
    new-instance p1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda5;

    invoke-direct {p1, p0}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda5;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Lorg/webrtc/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    .line 194
    invoke-interface {p0}, Lorg/webrtc/EglBase;->release()V

    .line 195
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->quit()V

    .line 196
    throw p1

    .line 180
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor <init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;Lorg/webrtc/SurfaceTextureHelper$1;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p5}, Lorg/webrtc/SurfaceTextureHelper;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/SurfaceTextureHelper;)Lorg/webrtc/VideoSink;
    .locals 0

    .line 33
    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/VideoSink;

    return-object p0
.end method

.method static synthetic access$302(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/VideoSink;)Lorg/webrtc/VideoSink;
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/VideoSink;

    return-object p1
.end method

.method static synthetic access$402(Lorg/webrtc/SurfaceTextureHelper;Lorg/webrtc/VideoSink;)Lorg/webrtc/VideoSink;
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/VideoSink;

    return-object p1
.end method

.method static synthetic access$500(Lorg/webrtc/SurfaceTextureHelper;)Z
    .locals 0

    .line 33
    iget-boolean p0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p0
.end method

.method static synthetic access$502(Lorg/webrtc/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 3

    .line 92
    new-instance v0, Lorg/webrtc/YuvConverter;

    invoke-direct {v0}, Lorg/webrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2, v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;Z)Lorg/webrtc/SurfaceTextureHelper;
    .locals 2

    .line 103
    new-instance v0, Lorg/webrtc/YuvConverter;

    invoke-direct {v0}, Lorg/webrtc/YuvConverter;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;ZLorg/webrtc/YuvConverter;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-static {p0, p1, p2, p3, v0}, Lorg/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lorg/webrtc/EglBase$Context;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 9

    .line 62
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 64
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance v0, Lorg/webrtc/SurfaceTextureHelper$1;

    move-object v1, v0

    move-object v2, p1

    move-object v3, v8

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/webrtc/SurfaceTextureHelper$1;-><init>(Lorg/webrtc/EglBase$Context;Landroid/os/Handler;ZLorg/webrtc/YuvConverter;Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method private release()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 389
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    .line 395
    invoke-virtual {v0}, Lorg/webrtc/YuvConverter;->release()V

    iget v0, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 396
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 397
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->eglBase:Lorg/webrtc/EglBase;

    .line 398
    invoke-interface {v0}, Lorg/webrtc/EglBase;->release()V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 399
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->timestampAligner:Lorg/webrtc/TimestampAligner;

    if-eqz p0, :cond_0

    .line 401
    invoke-virtual {p0}, Lorg/webrtc/TimestampAligner;->dispose()V

    :cond_0
    return-void

    .line 393
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unexpected release."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 390
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private returnTextureFrame()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 304
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda6;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 0

    .line 215
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 13

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 353
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/VideoSink;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/webrtc/SurfaceTextureHelper;->textureWidth:I

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/webrtc/SurfaceTextureHelper;->textureHeight:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 368
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->updateTexImage()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 371
    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 372
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    iget-object v3, p0, Lorg/webrtc/SurfaceTextureHelper;->timestampAligner:Lorg/webrtc/TimestampAligner;

    if-eqz v3, :cond_2

    .line 374
    invoke-virtual {v3, v1, v2}, Lorg/webrtc/TimestampAligner;->translateTimestamp(J)J

    move-result-wide v1

    .line 376
    :cond_2
    new-instance v12, Lorg/webrtc/TextureBufferImpl;

    iget v4, p0, Lorg/webrtc/SurfaceTextureHelper;->textureWidth:I

    iget v5, p0, Lorg/webrtc/SurfaceTextureHelper;->textureHeight:I

    sget-object v6, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iget v7, p0, Lorg/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 378
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lorg/webrtc/SurfaceTextureHelper;->yuvConverter:Lorg/webrtc/YuvConverter;

    iget-object v11, p0, Lorg/webrtc/SurfaceTextureHelper;->textureRefCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lorg/webrtc/TextureBufferImpl;-><init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->frameRefMonitor:Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;

    if-eqz v0, :cond_3

    .line 381
    invoke-interface {v0, v12}, Lorg/webrtc/SurfaceTextureHelper$FrameRefMonitor;->onNewBuffer(Lorg/webrtc/VideoFrame$TextureBuffer;)V

    .line 383
    :cond_3
    new-instance v0, Lorg/webrtc/VideoFrame;

    iget v3, p0, Lorg/webrtc/SurfaceTextureHelper;->frameRotation:I

    invoke-direct {v0, v12, v3, v1, v2}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/VideoSink;

    .line 384
    invoke-interface {p0, v0}, Lorg/webrtc/VideoSink;->onFrame(Lorg/webrtc/VideoFrame;)V

    .line 385
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    return-void

    :cond_4
    :goto_0
    const-string p0, "SurfaceTextureHelper"

    const-string v0, "Texture size has not been set."

    .line 362
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    .line 354
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updateTexImage()V
    .locals 1

    .line 347
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 348
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 349
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "dispose()"

    .line 324
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 325
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public forceFrame()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 275
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p0
.end method

.method public isTextureInUse()Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return p0
.end method

.method synthetic lambda$dispose$6$org-webrtc-SurfaceTextureHelper()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_0

    .line 328
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->release()V

    :cond_0
    return-void
.end method

.method synthetic lambda$forceFrame$3$org-webrtc-SurfaceTextureHelper()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 277
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method synthetic lambda$new$0$org-webrtc-SurfaceTextureHelper(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 0
    iget-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz p1, :cond_0

    const-string p1, "SurfaceTextureHelper"

    const-string v0, "A frame is already pending, dropping frame."

    .line 203
    invoke-static {p1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 207
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method synthetic lambda$returnTextureFrame$5$org-webrtc-SurfaceTextureHelper()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    iget-boolean v0, p0, Lorg/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->release()V

    goto :goto_0

    .line 309
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    :goto_0
    return-void
.end method

.method synthetic lambda$setFrameRotation$4$org-webrtc-SurfaceTextureHelper(I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/webrtc/SurfaceTextureHelper;->frameRotation:I

    return-void
.end method

.method synthetic lambda$setTextureSize$2$org-webrtc-SurfaceTextureHelper(II)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/webrtc/SurfaceTextureHelper;->textureWidth:I

    iput p2, p0, Lorg/webrtc/SurfaceTextureHelper;->textureHeight:I

    .line 266
    invoke-direct {p0}, Lorg/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method synthetic lambda$stopListening$1$org-webrtc-SurfaceTextureHelper()V
    .locals 1

    .line 0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/VideoSink;

    iput-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/VideoSink;

    return-void
.end method

.method public setFrameRotation(I)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 283
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda4;-><init>(Lorg/webrtc/SurfaceTextureHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 262
    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 263
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda2;-><init>(Lorg/webrtc/SurfaceTextureHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 259
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Texture height must be positive, but was "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 256
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Texture width must be positive, but was "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startListening(Lorg/webrtc/VideoSink;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->listener:Lorg/webrtc/VideoSink;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/VideoSink;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->pendingListener:Lorg/webrtc/VideoSink;

    iget-object p1, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object p0, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 234
    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 231
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SurfaceTextureHelper listener has already been set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopListening()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "stopListening()"

    .line 242
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 243
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    .line 244
    new-instance v1, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lorg/webrtc/SurfaceTextureHelper$$ExternalSyntheticLambda3;-><init>(Lorg/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public textureToYuv(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 340
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object p0

    return-object p0
.end method
