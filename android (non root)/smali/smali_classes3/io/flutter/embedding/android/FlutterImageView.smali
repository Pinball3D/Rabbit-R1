.class public Lio/flutter/embedding/android/FlutterImageView;
.super Landroid/view/View;
.source "FlutterImageView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterImageView"


# instance fields
.field private currentBitmap:Landroid/graphics/Bitmap;

.field private currentImage:Landroid/media/Image;

.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private imageReader:Landroid/media/ImageReader;

.field private isAttachedToFlutterRenderer:Z

.field private kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    .line 78
    sget-object v1, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-direct {p0, p1, v0, v0, v1}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V
    .locals 0

    .line 74
    invoke-static {p2, p3}, Lio/flutter/embedding/android/FlutterImageView;->createImageReader(II)Landroid/media/ImageReader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/ImageReader;Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V
    .locals 1

    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    iput-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    .line 91
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x1

    .line 82
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-direct {p0, p1, p2, p2, v0}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    return-void
.end method

.method private closeCurrentImage()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    :cond_0
    return-void
.end method

.method private static createImageReader(II)Landroid/media/ImageReader;
    .locals 8

    const/4 v0, 0x1

    if-gtz p0, :cond_0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "ImageReader width must be greater than 0, but given width=%d, set width=1"

    invoke-static {v1, p0}, Lio/flutter/embedding/android/FlutterImageView;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p0

    :goto_0
    if-gtz p1, :cond_1

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "ImageReader height must be greater than 0, but given height=%d, set height=1"

    invoke-static {p1, p0}, Lio/flutter/embedding/android/FlutterImageView;->logW(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x3

    const-wide/16 v6, 0x300

    .line 115
    invoke-static/range {v2 .. v7}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    return-void
.end method

.method private static varargs logW(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlutterImageView"

    invoke-static {p1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateCurrentBitmap()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    .line 267
    invoke-virtual {v0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 268
    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 269
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    return-void
.end method


# virtual methods
.method public acquireLatestImage()Z
    .locals 2

    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 208
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    .line 213
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->invalidate()V

    :cond_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    .line 143
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$1;->$SwitchMap$io$flutter$embedding$android$FlutterImageView$SurfaceKind:[I

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-virtual {v1}, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 145
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->swapSurface(Landroid/view/Surface;)V

    .line 146
    invoke-virtual {p1, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->SetRenderingToImageView(Z)V

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iput-boolean v1, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    return-void
.end method

.method public closeImageReader()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 242
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V

    return-void
.end method

.method public detachFromRenderer()V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterImageView;->setAlpha(F)V

    .line 169
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->acquireLatestImage()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    .line 174
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    .line 175
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    .line 177
    sget-object v2, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 181
    invoke-virtual {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->SetRenderingToImageView(Z)V

    :cond_1
    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object p0
.end method

.method public getImageReader()Landroid/media/ImageReader;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 128
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 247
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentImage:Landroid/media/Image;

    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->updateCurrentBitmap()V

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-virtual {p1, p0, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 295
    invoke-virtual {p3}, Landroid/media/ImageReader;->getWidth()I

    move-result p3

    if-ne p1, p3, :cond_0

    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {p3}, Landroid/media/ImageReader;->getHeight()I

    move-result p3

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lio/flutter/embedding/android/FlutterImageView;->kind:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    .line 301
    sget-object p4, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->background:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    if-ne p3, p4, :cond_1

    iget-boolean p3, p0, Lio/flutter/embedding/android/FlutterImageView;->isAttachedToFlutterRenderer:Z

    if-eqz p3, :cond_1

    .line 302
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/android/FlutterImageView;->resizeIfNeeded(II)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 305
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->swapSurface(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public resizeIfNeeded(II)V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    .line 223
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getHeight()I

    move-result v0

    if-ne p2, v0, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeCurrentImage()V

    .line 231
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterImageView;->closeImageReader()V

    .line 232
    invoke-static {p1, p2}, Lio/flutter/embedding/android/FlutterImageView;->createImageReader(II)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterImageView;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method
