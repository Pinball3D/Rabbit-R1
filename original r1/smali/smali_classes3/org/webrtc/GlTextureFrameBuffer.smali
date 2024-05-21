.class public Lorg/webrtc/GlTextureFrameBuffer;
.super Ljava/lang/Object;
.source "GlTextureFrameBuffer.java"


# instance fields
.field private frameBufferId:I

.field private height:I

.field private final pixelFormat:I

.field private textureId:I

.field private width:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    .line 40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid pixel format: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iput p1, p0, Lorg/webrtc/GlTextureFrameBuffer;->pixelFormat:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/webrtc/GlTextureFrameBuffer;->width:I

    iput p1, p0, Lorg/webrtc/GlTextureFrameBuffer;->height:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1907
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFrameBufferId()I
    .locals 0

    iget p0, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lorg/webrtc/GlTextureFrameBuffer;->height:I

    return p0
.end method

.method public getTextureId()I
    .locals 0

    iget p0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lorg/webrtc/GlTextureFrameBuffer;->width:I

    return p0
.end method

.method public release()V
    .locals 3

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    filled-new-array {v0}, [I

    move-result-object v0

    .line 117
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v2, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    iput v2, p0, Lorg/webrtc/GlTextureFrameBuffer;->width:I

    iput v2, p0, Lorg/webrtc/GlTextureFrameBuffer;->height:I

    return-void
.end method

.method public setSize(II)V
    .locals 12

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->width:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->height:I

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lorg/webrtc/GlTextureFrameBuffer;->width:I

    iput p2, p0, Lorg/webrtc/GlTextureFrameBuffer;->height:I

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    const/16 v1, 0xde1

    if-nez v0, :cond_1

    .line 62
    invoke-static {v1}, Lorg/webrtc/GlUtil;->generateTexture(I)I

    move-result v0

    iput v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    :cond_1
    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    new-array v3, v0, [I

    .line 66
    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v0, v3, v2

    iput v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    :cond_2
    const v0, 0x84c0

    .line 71
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    .line 72
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    iget v9, p0, Lorg/webrtc/GlTextureFrameBuffer;->pixelFormat:I

    const/4 v8, 0x0

    const/16 v10, 0x1401

    const/4 v11, 0x0

    move v5, v9

    move v6, p1

    move v7, p2

    .line 73
    invoke-static/range {v3 .. v11}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 75
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p1, "GlTextureFrameBuffer setSize"

    .line 76
    invoke-static {p1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget p1, p0, Lorg/webrtc/GlTextureFrameBuffer;->frameBufferId:I

    const p2, 0x8d40

    .line 79
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    iget p0, p0, Lorg/webrtc/GlTextureFrameBuffer;->textureId:I

    .line 80
    invoke-static {p2, p1, v1, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 84
    invoke-static {p2}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    const p1, 0x8cd5

    if-ne p0, p1, :cond_3

    .line 89
    invoke-static {p2, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Framebuffer not complete, status: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
