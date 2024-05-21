.class public Lorg/webrtc/TextureBufferImpl;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Lorg/webrtc/VideoFrame$TextureBuffer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/TextureBufferImpl$RefCountMonitor;
    }
.end annotation


# instance fields
.field private final height:I

.field private final id:I

.field private final refCountDelegate:Lorg/webrtc/RefCountDelegate;

.field private final refCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

.field private final toI420Handler:Landroid/os/Handler;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private final type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

.field private final unscaledHeight:I

.field private final unscaledWidth:I

.field private final width:I

.field private final yuvConverter:Lorg/webrtc/YuvConverter;


# direct methods
.method private constructor <init>(IIIILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/webrtc/TextureBufferImpl;->unscaledWidth:I

    iput p2, p0, Lorg/webrtc/TextureBufferImpl;->unscaledHeight:I

    iput p3, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    iput p4, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    iput-object p5, p0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iput p6, p0, Lorg/webrtc/TextureBufferImpl;->id:I

    iput-object p7, p0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    iput-object p8, p0, Lorg/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iput-object p9, p0, Lorg/webrtc/TextureBufferImpl;->yuvConverter:Lorg/webrtc/YuvConverter;

    .line 81
    new-instance p1, Lorg/webrtc/RefCountDelegate;

    new-instance p2, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p10}, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda1;-><init>(Lorg/webrtc/TextureBufferImpl;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    invoke-direct {p1, p2}, Lorg/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lorg/webrtc/TextureBufferImpl;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    iput-object p10, p0, Lorg/webrtc/TextureBufferImpl;->refCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    return-void
.end method

.method public constructor <init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Ljava/lang/Runnable;)V
    .locals 11

    .line 46
    new-instance v10, Lorg/webrtc/TextureBufferImpl$1;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lorg/webrtc/TextureBufferImpl$1;-><init>(Ljava/lang/Runnable;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/TextureBufferImpl;-><init>(IIIILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method constructor <init>(IILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 65
    invoke-direct/range {v0 .. v10}, Lorg/webrtc/TextureBufferImpl;-><init>(IIIILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/TextureBufferImpl;)Lorg/webrtc/TextureBufferImpl$RefCountMonitor;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->refCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    return-object p0
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/webrtc/TextureBufferImpl;
    .locals 12

    move-object v0, p0

    .line 181
    new-instance v7, Landroid/graphics/Matrix;

    iget-object v1, v0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v7, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p1

    .line 182
    invoke-virtual {v7, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 183
    invoke-virtual {p0}, Lorg/webrtc/TextureBufferImpl;->retain()V

    .line 184
    new-instance v11, Lorg/webrtc/TextureBufferImpl;

    iget-object v5, v0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    iget v6, v0, Lorg/webrtc/TextureBufferImpl;->id:I

    iget-object v8, v0, Lorg/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget-object v9, v0, Lorg/webrtc/TextureBufferImpl;->yuvConverter:Lorg/webrtc/YuvConverter;

    new-instance v10, Lorg/webrtc/TextureBufferImpl$2;

    invoke-direct {v10, p0}, Lorg/webrtc/TextureBufferImpl$2;-><init>(Lorg/webrtc/TextureBufferImpl;)V

    move-object v0, v11

    move v1, p2

    move v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v0 .. v10}, Lorg/webrtc/TextureBufferImpl;-><init>(IIIILorg/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lorg/webrtc/YuvConverter;Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V

    return-object v11
.end method


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lorg/webrtc/TextureBufferImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    .line 174
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/webrtc/TextureBufferImpl;

    move-result-object p0

    return-object p0
.end method

.method public cropAndScale(IIIIII)Lorg/webrtc/VideoFrame$Buffer;
    .locals 6

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    add-int/2addr p2, p4

    sub-int p2, v0, p2

    int-to-float p1, p1

    iget v2, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 135
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    iget p2, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget v0, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    .line 136
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget p1, p0, Lorg/webrtc/TextureBufferImpl;->unscaledWidth:I

    mul-int/2addr p1, p3

    int-to-float p1, p1

    iget p2, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 139
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p1, p0, Lorg/webrtc/TextureBufferImpl;->unscaledHeight:I

    mul-int/2addr p1, p4

    int-to-float p1, p1

    iget p2, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 140
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v0, p0

    move v4, p5

    move v5, p6

    .line 138
    invoke-direct/range {v0 .. v5}, Lorg/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lorg/webrtc/TextureBufferImpl;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/TextureBufferImpl;->height:I

    return p0
.end method

.method public getTextureId()I
    .locals 0

    iget p0, p0, Lorg/webrtc/TextureBufferImpl;->id:I

    return p0
.end method

.method public getToI420Handler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    return-object p0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public getType()Lorg/webrtc/VideoFrame$TextureBuffer$Type;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->type:Lorg/webrtc/VideoFrame$TextureBuffer$Type;

    return-object p0
.end method

.method public getUnscaledHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/TextureBufferImpl;->unscaledHeight:I

    return p0
.end method

.method public getUnscaledWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/TextureBufferImpl;->unscaledWidth:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/TextureBufferImpl;->width:I

    return p0
.end method

.method public getYuvConverter()Lorg/webrtc/YuvConverter;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->yuvConverter:Lorg/webrtc/YuvConverter;

    return-object p0
.end method

.method synthetic lambda$new$0$org-webrtc-TextureBufferImpl(Lorg/webrtc/TextureBufferImpl$RefCountMonitor;)V
    .locals 0

    .line 81
    invoke-interface {p1, p0}, Lorg/webrtc/TextureBufferImpl$RefCountMonitor;->onDestroy(Lorg/webrtc/TextureBufferImpl;)V

    return-void
.end method

.method synthetic lambda$toI420$1$org-webrtc-TextureBufferImpl()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 0
    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->yuvConverter:Lorg/webrtc/YuvConverter;

    .line 113
    invoke-virtual {v0, p0}, Lorg/webrtc/YuvConverter;->convert(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object p0

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->refCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    .line 124
    invoke-interface {v0, p0}, Lorg/webrtc/TextureBufferImpl$RefCountMonitor;->onRelease(Lorg/webrtc/TextureBufferImpl;)V

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 125
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->refCountMonitor:Lorg/webrtc/TextureBufferImpl$RefCountMonitor;

    .line 118
    invoke-interface {v0, p0}, Lorg/webrtc/TextureBufferImpl$RefCountMonitor;->onRetain(Lorg/webrtc/TextureBufferImpl;)V

    iget-object p0, p0, Lorg/webrtc/TextureBufferImpl;->refCountDelegate:Lorg/webrtc/RefCountDelegate;

    .line 119
    invoke-virtual {p0}, Lorg/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public toI420()Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 2

    iget-object v0, p0, Lorg/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 112
    new-instance v1, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/webrtc/TextureBufferImpl$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/TextureBufferImpl;)V

    invoke-static {v0, v1}, Lorg/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/VideoFrame$I420Buffer;

    return-object p0
.end method
