.class Lorg/webrtc/VideoFrameDrawer$YuvUploader;
.super Ljava/lang/Object;
.source "VideoFrameDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/VideoFrameDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YuvUploader"
.end annotation


# instance fields
.field private copyBuffer:Ljava/nio/ByteBuffer;

.field private yuvTextures:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/VideoFrameDrawer$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;-><init>()V

    return-void
.end method


# virtual methods
.method public getYuvTextures()[I
    .locals 0

    iget-object p0, p0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object p0
.end method

.method public release()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 130
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput-object v0, p0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    :cond_0
    return-void
.end method

.method public uploadFromBuffer(Lorg/webrtc/VideoFrame$I420Buffer;)[I
    .locals 4

    .line 113
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v0

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v1

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 114
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lorg/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I

    move-result-object p0

    return-object p0
.end method

.method public uploadYuvData(II[I[Ljava/nio/ByteBuffer;)[I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 70
    div-int/lit8 v3, v1, 0x2

    filled-new-array {v1, v3, v3}, [I

    move-result-object v1

    .line 71
    div-int/lit8 v3, v2, 0x2

    filled-new-array {v2, v3, v3}, [I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x3

    if-ge v4, v6, :cond_1

    .line 75
    aget v6, p3, v4

    aget v7, v1, v4

    if-le v6, v7, :cond_0

    .line 76
    aget v6, v2, v4

    mul-int/2addr v7, v6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_3

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    if-eqz v4, :cond_2

    .line 81
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v5, :cond_3

    .line 82
    :cond_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    const/16 v5, 0xde1

    if-nez v4, :cond_4

    new-array v4, v6, [I

    iput-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_4

    iget-object v7, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 88
    invoke-static {v5}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v8

    aput v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ge v3, v6, :cond_6

    const v4, 0x84c0

    add-int/2addr v4, v3

    .line 93
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    .line 94
    aget v4, v4, v3

    invoke-static {v5, v4}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 97
    aget v8, p3, v3

    aget v11, v1, v3

    if-ne v8, v11, :cond_5

    .line 99
    aget-object v4, p4, v3

    goto :goto_3

    .line 101
    :cond_5
    aget-object v7, p4, v3

    iget-object v9, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    aget v12, v2, v3

    move v10, v11

    invoke-static/range {v7 .. v12}, Lorg/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    iget-object v4, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->copyBuffer:Ljava/nio/ByteBuffer;

    :goto_3
    move-object v15, v4

    const/16 v7, 0xde1

    const/4 v8, 0x0

    const/16 v9, 0x1909

    .line 105
    aget v10, v1, v3

    aget v11, v2, v3

    const/4 v12, 0x0

    const/16 v13, 0x1909

    const/16 v14, 0x1401

    invoke-static/range {v7 .. v15}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, v0, Lorg/webrtc/VideoFrameDrawer$YuvUploader;->yuvTextures:[I

    return-object v0
.end method
