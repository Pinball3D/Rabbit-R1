.class public Lorg/webrtc/SurfaceEglRenderer;
.super Lorg/webrtc/EglRenderer;
.source "SurfaceEglRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceEglRenderer"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public static synthetic $r8$lambda$xXX-ywdCqM5leaxXkxy473i7s2A(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lorg/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lorg/webrtc/SurfaceEglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SurfaceEglRenderer"

    invoke-static {p1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V
    .locals 5

    const-string v0, "Reporting frame resolution changed to "

    iget-object v1, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 130
    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lorg/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    if-eqz v2, :cond_0

    .line 132
    monitor-exit v1

    return-void

    :cond_0
    iget-boolean v2, p0, Lorg/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    const-string v2, "Reporting first rendered frame."

    .line 136
    invoke-direct {p0, v2}, Lorg/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/SurfaceEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v2}, Lorg/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    :cond_1
    iget v2, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 141
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 142
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, p0, Lorg/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 143
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 144
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with rotation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lorg/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/SurfaceEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_3

    .line 148
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lorg/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v4

    .line 147
    invoke-interface {v0, v2, v3, v4}, Lorg/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 150
    :cond_3
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 151
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v0

    iput v0, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 152
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p0, Lorg/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 154
    :cond_4
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public disableFpsReduction()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 86
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 88
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-super {p0}, Lorg/webrtc/EglRenderer;->disableFpsReduction()V

    return-void

    :catchall_0
    move-exception p0

    .line 88
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 53
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    iput-object p2, p0, Lorg/webrtc/SurfaceEglRenderer;->rendererEvents:Lorg/webrtc/RendererCommon$RendererEvents;

    iget-object p2, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 55
    monitor-enter p2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    iput v0, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    iput v0, p0, Lorg/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    iput v0, p0, Lorg/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 60
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-super {p0, p1, p3, p4}, Lorg/webrtc/EglRenderer;->init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 60
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public init(Lorg/webrtc/EglBase$Context;[ILorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/webrtc/SurfaceEglRenderer;->init(Lorg/webrtc/EglBase$Context;Lorg/webrtc/RendererCommon$RendererEvents;[ILorg/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public onFrame(Lorg/webrtc/VideoFrame;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceEglRenderer;->updateFrameDimensionsAndReportEvents(Lorg/webrtc/VideoFrame;)V

    .line 104
    invoke-super {p0, p1}, Lorg/webrtc/EglRenderer;->onFrame(Lorg/webrtc/VideoFrame;)V

    return-void
.end method

.method public pauseVideo()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 94
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-super {p0}, Lorg/webrtc/EglRenderer;->pauseVideo()V

    return-void

    :catchall_0
    move-exception p0

    .line 96
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setFpsReduction(F)V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    .line 78
    monitor-enter v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lorg/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-super {p0, p1}, Lorg/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void

    :catchall_0
    move-exception p0

    .line 80
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 124
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged: format: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 110
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 111
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/webrtc/SurfaceEglRenderer;->createEglSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 116
    invoke-static {}, Lorg/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 117
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/webrtc/SurfaceEglRenderer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lorg/webrtc/SurfaceEglRenderer$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Lorg/webrtc/SurfaceEglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 119
    invoke-static {p1}, Lorg/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
