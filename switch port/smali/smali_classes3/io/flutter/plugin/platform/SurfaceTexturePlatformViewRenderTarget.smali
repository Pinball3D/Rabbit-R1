.class public Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "SurfaceTexturePlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTexturePlatformViewRenderTarget"


# instance fields
.field private bufferHeight:I

.field private bufferWidth:I

.field private final frameConsumedListener:Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

.field private final pendingFramesCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private shouldRecreateSurfaceForLowMemory:Z

.field private surface:Landroid/view/Surface;

.field private surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

.field private final trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;)V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->pendingFramesCount:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    iput v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    .line 36
    new-instance v1, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;

    invoke-direct {v1, p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$1;-><init>(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)V

    iput-object v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->frameConsumedListener:Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

    iput-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    .line 47
    new-instance v0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$2;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget$2;-><init>(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    iput-object p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 111
    invoke-interface {p1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 112
    invoke-interface {p1, v1}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->setOnFrameConsumedListener(Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;)V

    .line 113
    invoke-interface {p1, v0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->setOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    .line 114
    invoke-direct {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->init()V

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 18
    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->pendingFramesCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method static synthetic access$102(Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    return p1
.end method

.method private init()V
    .locals 3

    iget v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    if-lez v0, :cond_0

    iget v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    if-lez v1, :cond_0

    iget-object v2, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 84
    invoke-virtual {v2, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 90
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 95
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 97
    :try_start_0
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p0, v0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 100
    throw v1
.end method

.method private onFrameProduced()V
    .locals 0

    return-void
.end method

.method private recreateSurfaceIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 74
    :cond_1
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->createSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->shouldRecreateSurfaceForLowMemory:Z

    return-void
.end method


# virtual methods
.method protected createSurface()Landroid/view/Surface;
    .locals 1

    .line 79
    new-instance v0, Landroid/view/Surface;

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    return p0
.end method

.method public getId()J
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTextureEntry:Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;

    .line 159
    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 176
    invoke-direct {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->recreateSurfaceIfNeeded()V

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    return p0
.end method

.method public isReleased()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 118
    invoke-direct {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->recreateSurfaceIfNeeded()V

    iget-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->onFrameProduced()V

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 135
    invoke-virtual {p0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "SurfaceTexturePlatformViewRenderTarget"

    const-string v0, "Invalid RenderTarget: null or already released SurfaceTexture"

    .line 131
    invoke-static {p0, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public resize(II)V
    .locals 0

    iput p1, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferWidth:I

    iput p2, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->bufferHeight:I

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_0
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/SurfaceTexturePlatformViewRenderTarget;->surface:Landroid/view/Surface;

    .line 139
    invoke-virtual {p0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method
