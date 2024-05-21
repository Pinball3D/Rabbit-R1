.class public Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;
.super Ljava/lang/Object;
.source "ImageReaderPlatformViewRenderTarget.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewRenderTarget;


# static fields
.field private static final MAX_IMAGES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageReaderPlatformViewRenderTarget"


# instance fields
.field private bufferHeight:I

.field private bufferWidth:I

.field private final onImageAvailableHandler:Landroid/os/Handler;

.field private final onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private reader:Landroid/media/ImageReader;

.field private textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;


# direct methods
.method public constructor <init>(Lio/flutter/view/TextureRegistry$ImageTextureEntry;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iput v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    .line 35
    new-instance v0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;

    invoke-direct {v0, p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;-><init>(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)V

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-object p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    .locals 0

    .line 16
    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    return-object p0
.end method

.method private closeReader()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->pushImage(Landroid/media/Image;)V

    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    .line 29
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    :cond_0
    return-void
.end method


# virtual methods
.method protected createImageReader()Landroid/media/ImageReader;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader33()Landroid/media/ImageReader;

    move-result-object p0

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader29()Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method protected createImageReader29()Landroid/media/ImageReader;
    .locals 6

    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iget v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    const/16 v2, 0x22

    const/4 v3, 0x4

    const-wide/16 v4, 0x100

    .line 78
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    .line 84
    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method protected createImageReader33()Landroid/media/ImageReader;
    .locals 3

    .line 54
    new-instance v0, Landroid/media/ImageReader$Builder;

    iget v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iget v2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    invoke-direct {v0, v1, v2}, Landroid/media/ImageReader$Builder;-><init>(II)V

    const/4 v1, 0x4

    .line 56
    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setMaxImages(I)Landroid/media/ImageReader$Builder;

    const/16 v1, 0x22

    .line 67
    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setImageFormat(I)Landroid/media/ImageReader$Builder;

    const-wide/16 v1, 0x100

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader$Builder;->setUsage(J)Landroid/media/ImageReader$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/media/ImageReader$Builder;->build()Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->onImageAvailableHandler:Landroid/os/Handler;

    .line 71
    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    return p0
.end method

.method public getId()J
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    .line 134
    invoke-interface {p0}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->id()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    .line 148
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    return p0
.end method

.method public isReleased()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    .line 138
    invoke-direct {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->closeReader()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->textureEntry:Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    return-void
.end method

.method public resize(II)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    if-ne v0, p2, :cond_0

    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->closeReader()V

    iput p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferWidth:I

    iput p2, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->bufferHeight:I

    .line 114
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->createImageReader()Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->reader:Landroid/media/ImageReader;

    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0

    .line 130
    invoke-virtual {p0}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method
