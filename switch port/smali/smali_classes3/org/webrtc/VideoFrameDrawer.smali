.class public Lorg/webrtc/VideoFrameDrawer;
.super Ljava/lang/Object;
.source "VideoFrameDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/VideoFrameDrawer$YuvUploader;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoFrameDrawer"

.field static final srcPoints:[F


# instance fields
.field private final dstPoints:[F

.field private lastI420Frame:Lorg/webrtc/VideoFrame;

.field private renderHeight:I

.field private final renderMatrix:Landroid/graphics/Matrix;

.field private final renderSize:Landroid/graphics/Point;

.field private renderWidth:I

.field private final yuvUploader:Lorg/webrtc/VideoFrameDrawer$YuvUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/webrtc/VideoFrameDrawer;->srcPoints:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->dstPoints:[F

    .line 144
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->renderSize:Landroid/graphics/Point;

    .line 172
    new-instance v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;-><init>(Lorg/webrtc/VideoFrameDrawer$1;)V

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->yuvUploader:Lorg/webrtc/VideoFrameDrawer$YuvUploader;

    .line 176
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V
    .locals 6

    if-nez p3, :cond_0

    iput p1, p0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    iput p2, p0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->dstPoints:[F

    sget-object v1, Lorg/webrtc/VideoFrameDrawer;->srcPoints:[F

    .line 159
    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/VideoFrameDrawer;->dstPoints:[F

    mul-int/lit8 v3, v0, 0x2

    .line 163
    aget v4, v1, v3

    int-to-float v5, p1

    mul-float/2addr v4, v5

    aput v4, v1, v3

    add-int/2addr v3, v2

    .line 164
    aget v2, v1, v3

    int-to-float v4, p2

    mul-float/2addr v2, v4

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/webrtc/VideoFrameDrawer;->dstPoints:[F

    .line 168
    aget p2, p1, p3

    aget v0, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    aget p1, p1, v1

    invoke-static {p2, v0, v3, p1}, Lorg/webrtc/VideoFrameDrawer;->distance(FFFF)I

    move-result p1

    iput p1, p0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    iget-object p1, p0, Lorg/webrtc/VideoFrameDrawer;->dstPoints:[F

    .line 169
    aget p2, p1, p3

    aget p3, p1, v2

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-static {p2, p3, v0, p1}, Lorg/webrtc/VideoFrameDrawer;->distance(FFFF)I

    move-result p1

    iput p1, p0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    return-void
.end method

.method private static distance(FFFF)I
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    .line 137
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V
    .locals 10

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p2

    .line 36
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 37
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 38
    sget-object v0, Lorg/webrtc/VideoFrameDrawer$1;->$SwitchMap$org$webrtc$VideoFrame$TextureBuffer$Type:[I

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getType()Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/webrtc/VideoFrame$TextureBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 44
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lorg/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown texture type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lorg/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, v0}, Lorg/webrtc/VideoFrameDrawer;->drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 185
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v6

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 184
    invoke-virtual/range {v0 .. v7}, Lorg/webrtc/VideoFrameDrawer;->drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    return-void
.end method

.method public drawFrame(Lorg/webrtc/VideoFrame;Lorg/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 191
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v3

    .line 192
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v4

    .line 193
    invoke-direct {p0, v3, v4, p3}, Lorg/webrtc/VideoFrameDrawer;->calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V

    iget v3, v0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    if-lez v3, :cond_5

    iget v3, v0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    if-gtz v3, :cond_0

    goto/16 :goto_1

    .line 199
    :cond_0
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v3

    instance-of v3, v3, Lorg/webrtc/VideoFrame$TextureBuffer;

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 200
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f000000    # 0.5f

    .line 201
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-nez v3, :cond_1

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 203
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_1
    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 205
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getRotation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preRotate(F)Z

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x41000000    # -0.5f

    .line 206
    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v2, :cond_2

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 208
    invoke-virtual {v4, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_2
    if-eqz v3, :cond_3

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/webrtc/VideoFrameDrawer;->lastI420Frame:Lorg/webrtc/VideoFrame;

    .line 213
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/webrtc/VideoFrame$TextureBuffer;

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/webrtc/VideoFrameDrawer;->lastI420Frame:Lorg/webrtc/VideoFrame;

    if-eq v1, v2, :cond_4

    iput-object v1, v0, Lorg/webrtc/VideoFrameDrawer;->lastI420Frame:Lorg/webrtc/VideoFrame;

    .line 220
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/webrtc/VideoFrame$Buffer;->toI420()Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    iget-object v2, v0, Lorg/webrtc/VideoFrameDrawer;->yuvUploader:Lorg/webrtc/VideoFrameDrawer$YuvUploader;

    .line 221
    invoke-virtual {v2, v1}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->uploadFromBuffer(Lorg/webrtc/VideoFrame$I420Buffer;)[I

    .line 222
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$I420Buffer;->release()V

    :cond_4
    iget-object v1, v0, Lorg/webrtc/VideoFrameDrawer;->yuvUploader:Lorg/webrtc/VideoFrameDrawer$YuvUploader;

    .line 225
    invoke-virtual {v1}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->getYuvTextures()[I

    move-result-object v3

    iget-object v1, v0, Lorg/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 226
    invoke-static {v1}, Lorg/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v4

    iget v5, v0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 225
    invoke-interface/range {v2 .. v10}, Lorg/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    :goto_0
    return-void

    .line 195
    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal frame size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lorg/webrtc/VideoFrameDrawer;->renderWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lorg/webrtc/VideoFrameDrawer;->renderHeight:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFrameDrawer"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepareBufferForViewportSize(Lorg/webrtc/VideoFrame$Buffer;II)Lorg/webrtc/VideoFrame$Buffer;
    .locals 0

    .line 233
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$Buffer;->retain()V

    return-object p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->yuvUploader:Lorg/webrtc/VideoFrameDrawer$YuvUploader;

    .line 238
    invoke-virtual {v0}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer;->lastI420Frame:Lorg/webrtc/VideoFrame;

    return-void
.end method
