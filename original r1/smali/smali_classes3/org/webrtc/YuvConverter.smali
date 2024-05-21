.class public final Lorg/webrtc/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/YuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TAG:Ljava/lang/String; = "YuvConverter"


# instance fields
.field private final drawer:Lorg/webrtc/GlGenericDrawer;

.field private final i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

.field private final shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

.field private final threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private final videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 120
    new-instance v0, Lorg/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lorg/webrtc/VideoFrameDrawer;-><init>()V

    invoke-direct {p0, v0}, Lorg/webrtc/YuvConverter;-><init>(Lorg/webrtc/VideoFrameDrawer;)V

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/VideoFrameDrawer;)V
    .locals 4

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 110
    new-instance v1, Lorg/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lorg/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 112
    new-instance v1, Lorg/webrtc/YuvConverter$ShaderCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;-><init>(Lorg/webrtc/YuvConverter$1;)V

    iput-object v1, p0, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    .line 113
    new-instance v2, Lorg/webrtc/GlGenericDrawer;

    const-string v3, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v2, v3, v1}, Lorg/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lorg/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v2, p0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    iput-object p1, p0, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 125
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method private convertInternal(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 141
    invoke-interface/range {p1 .. p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v3

    move-object/from16 v4, p1

    .line 140
    invoke-virtual {v1, v4, v2, v3}, Lorg/webrtc/VideoFrameDrawer;->prepareBufferForViewportSize(Lorg/webrtc/VideoFrame$Buffer;II)Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lorg/webrtc/VideoFrame$TextureBuffer;

    .line 171
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v11

    .line 172
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v12

    add-int/lit8 v2, v11, 0x7

    .line 173
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v13, v2, 0x8

    add-int/lit8 v2, v12, 0x1

    .line 174
    div-int/lit8 v14, v2, 0x2

    add-int v2, v12, v14

    mul-int v3, v13, v2

    .line 177
    invoke-static {v3}, Lorg/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 180
    div-int/lit8 v10, v13, 0x4

    .line 183
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 184
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 185
    invoke-virtual {v9, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 186
    invoke-virtual {v9, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v3, v0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 188
    invoke-virtual {v3, v10, v2}, Lorg/webrtc/GlTextureFrameBuffer;->setSize(II)V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 191
    invoke-virtual {v2}, Lorg/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v8, 0x8d40

    invoke-static {v8, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 192
    invoke-static {v2}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    .line 195
    invoke-virtual {v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneY()V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object v3, v1

    move-object v4, v9

    move v5, v11

    move v6, v12

    move/from16 v8, v16

    move-object/from16 v16, v9

    move v9, v10

    move/from16 v17, v10

    move v10, v12

    .line 196
    invoke-static/range {v2 .. v10}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    .line 201
    invoke-virtual {v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneU()V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    .line 202
    div-int/lit8 v17, v17, 0x2

    move-object/from16 v4, v16

    move v8, v12

    move/from16 v9, v17

    move v10, v14

    invoke-static/range {v2 .. v10}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->shaderCallbacks:Lorg/webrtc/YuvConverter$ShaderCallbacks;

    .line 207
    invoke-virtual {v2}, Lorg/webrtc/YuvConverter$ShaderCallbacks;->setPlaneV()V

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    move/from16 v7, v17

    .line 208
    invoke-static/range {v2 .. v10}, Lorg/webrtc/VideoFrameDrawer;->drawTexture(Lorg/webrtc/RendererCommon$GlDrawer;Lorg/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 212
    invoke-virtual {v2}, Lorg/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v0, v0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v15

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "YuvConverter.convert"

    .line 215
    invoke-static {v0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v0, 0x0

    const v2, 0x8d40

    .line 218
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    mul-int v2, v13, v12

    .line 224
    div-int/lit8 v3, v13, 0x2

    add-int v4, v2, v3

    .line 226
    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 227
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 228
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v14, v13

    add-int/2addr v14, v3

    add-int/2addr v2, v14

    .line 233
    invoke-virtual {v15, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 236
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v14

    .line 237
    invoke-virtual {v15, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 238
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 240
    invoke-interface {v1}, Lorg/webrtc/VideoFrame$TextureBuffer;->release()V

    .line 242
    new-instance v10, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;

    invoke-direct {v10, v15}, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;-><init>(Ljava/nio/ByteBuffer;)V

    move v2, v11

    move v3, v12

    move-object v4, v0

    move v5, v13

    move v7, v13

    move v9, v13

    invoke-static/range {v2 .. v10}, Lorg/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lorg/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$convertInternal$0(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 243
    invoke-static {p0}, Lorg/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public convert(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;
    .locals 1

    .line 132
    :try_start_0
    invoke-direct {p0, p1}, Lorg/webrtc/YuvConverter;->convertInternal(Lorg/webrtc/VideoFrame$TextureBuffer;)Lorg/webrtc/VideoFrame$I420Buffer;

    move-result-object p0
    :try_end_0
    .catch Landroid/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "YuvConverter"

    const-string v0, "Failed to convert TextureBuffer"

    .line 134
    invoke-static {p1, v0, p0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 247
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-object v0, p0, Lorg/webrtc/YuvConverter;->drawer:Lorg/webrtc/GlGenericDrawer;

    .line 248
    invoke-virtual {v0}, Lorg/webrtc/GlGenericDrawer;->release()V

    iget-object v0, p0, Lorg/webrtc/YuvConverter;->i420TextureFrameBuffer:Lorg/webrtc/GlTextureFrameBuffer;

    .line 249
    invoke-virtual {v0}, Lorg/webrtc/GlTextureFrameBuffer;->release()V

    iget-object v0, p0, Lorg/webrtc/YuvConverter;->videoFrameDrawer:Lorg/webrtc/VideoFrameDrawer;

    .line 250
    invoke-virtual {v0}, Lorg/webrtc/VideoFrameDrawer;->release()V

    iget-object p0, p0, Lorg/webrtc/YuvConverter;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 252
    invoke-virtual {p0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method
