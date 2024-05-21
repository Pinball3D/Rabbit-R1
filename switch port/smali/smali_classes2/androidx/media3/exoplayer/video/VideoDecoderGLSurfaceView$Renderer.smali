.class final Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;
.super Ljava/lang/Object;
.source "VideoDecoderGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Renderer"
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

.field private static final TEXTURE_UNIFORMS:[Ljava/lang/String;

.field private static final TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

.field private static final VERTEX_SHADER:Ljava/lang/String; = "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

.field private static final kColorConversion2020:[F

.field private static final kColorConversion601:[F

.field private static final kColorConversion709:[F


# instance fields
.field private colorMatrixLocation:I

.field private final pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final previousStrides:[I

.field private final previousWidths:[I

.field private program:Landroidx/media3/common/util/GlProgram;

.field private renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

.field private final surfaceView:Landroid/opengl/GLSurfaceView;

.field private final texLocations:[I

.field private final textureCoords:[Ljava/nio/FloatBuffer;

.field private final yuvTextures:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    const-string v0, "u_tex"

    const-string v1, "v_tex"

    const-string v2, "y_tex"

    .line 124
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    .line 143
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41374bc7    # -0.392f
        0x40011687    # 2.017f
        0x3fcc49ba    # 1.596f
        -0x40afdf3b    # -0.813f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x3f94fdf4    # 1.164f
        0x0
        -0x41a5e354    # -0.213f
        0x40072b02    # 2.112f
        0x3fe58106    # 1.793f
        -0x40f78d50    # -0.533f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x3f958106    # 1.168f
        0x0
        -0x41bf7cee    # -0.188f
        0x400978d5    # 2.148f
        0x3fd76c8b    # 1.683f
        -0x40d91687    # -0.652f
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/opengl/GLSurfaceView;)V
    .locals 4

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    const/4 p1, 0x3

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    .line 169
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    new-array v0, p1, [Ljava/nio/FloatBuffer;

    iput-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    iget-object v2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    const/4 v3, -0x1

    .line 172
    aput v3, v2, v0

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setupTextures()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "program"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 315
    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    sget-object v3, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_UNIFORMS:[Ljava/lang/String;

    .line 317
    aget-object v3, v3, v1

    invoke-virtual {v0, v3}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    add-int/2addr v0, v1

    .line 318
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    .line 319
    aget v0, v0, v1

    const/16 v3, 0xde1

    invoke-static {v3, v0}, Landroidx/media3/common/util/GlUtil;->bindTexture(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "VideoDecoderGLSV"

    const-string v1, "Failed to set up the textures"

    .line 323
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    .line 209
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v1, :cond_0

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_2

    iget-object v2, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    :cond_1
    iput-object v1, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    :cond_2
    iget-object v1, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->renderedOutputBuffer:Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    .line 221
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    sget-object v2, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion709:[F

    .line 225
    iget v3, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v3, v5, :cond_4

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object v2, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion2020:[F

    goto :goto_0

    :cond_4
    sget-object v2, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->kColorConversion601:[F

    :goto_0
    iget v3, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    const/4 v6, 0x0

    .line 237
    invoke-static {v3, v5, v6, v2, v6}, Landroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 244
    iget-object v2, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 245
    iget-object v3, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/nio/ByteBuffer;

    move v7, v6

    :goto_1
    const/4 v8, 0x2

    if-ge v7, v4, :cond_6

    if-nez v7, :cond_5

    .line 248
    iget v8, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    goto :goto_2

    :cond_5
    iget v9, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    add-int/2addr v9, v5

    div-int/lit8 v8, v9, 0x2

    :goto_2
    move v13, v8

    const v8, 0x84c0

    add-int/2addr v8, v7

    .line 249
    invoke-static {v8}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget-object v8, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->yuvTextures:[I

    .line 250
    aget v8, v8, v7

    const/16 v9, 0xde1

    invoke-static {v9, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v8, 0xcf5

    .line 251
    invoke-static {v8, v5}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/4 v10, 0x0

    const/16 v11, 0x1909

    .line 252
    aget v12, v2, v7

    const/4 v14, 0x0

    const/16 v15, 0x1909

    const/16 v16, 0x1401

    aget-object v17, v3, v7

    invoke-static/range {v9 .. v17}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    new-array v3, v4, [I

    .line 265
    iget v1, v1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    aput v1, v3, v6

    add-int/2addr v1, v5

    .line 269
    div-int/2addr v1, v8

    aput v1, v3, v8

    aput v1, v3, v5

    move v1, v6

    :goto_3
    const/4 v7, 0x4

    const/4 v9, 0x5

    if-ge v1, v4, :cond_a

    iget-object v10, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    .line 272
    aget v10, v10, v1

    aget v11, v3, v1

    if-ne v10, v11, :cond_7

    iget-object v10, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    aget v10, v10, v1

    aget v11, v2, v1

    if-eq v10, v11, :cond_9

    .line 273
    :cond_7
    aget v10, v2, v1

    if-eqz v10, :cond_8

    move v10, v5

    goto :goto_4

    :cond_8
    move v10, v6

    :goto_4
    invoke-static {v10}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 274
    aget v10, v3, v1

    int-to-float v10, v10

    aget v11, v2, v1

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget-object v11, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    const/16 v12, 0x8

    new-array v12, v12, [F

    const/4 v13, 0x0

    aput v13, v12, v6

    aput v13, v12, v5

    aput v13, v12, v8

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v12, v4

    aput v10, v12, v7

    aput v13, v12, v9

    const/4 v7, 0x6

    aput v10, v12, v7

    const/4 v7, 0x7

    aput v14, v12, v7

    .line 278
    invoke-static {v12}, Landroidx/media3/common/util/GlUtil;->createBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v7

    aput-object v7, v11, v1

    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    .line 280
    aget v9, v7, v1

    const/4 v10, 0x2

    const/16 v11, 0x1406

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->textureCoords:[Ljava/nio/FloatBuffer;

    aget-object v14, v7, v1

    invoke-static/range {v9 .. v14}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousWidths:[I

    .line 287
    aget v9, v3, v1

    aput v9, v7, v1

    iget-object v7, v0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->previousStrides:[I

    .line 288
    aget v9, v2, v1

    aput v9, v7, v1

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    const/16 v0, 0x4000

    .line 292
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 293
    invoke-static {v9, v6, v7}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 295
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "VideoDecoderGLSV"

    const-string v2, "Failed to draw a frame"

    .line 297
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    const/4 p0, 0x0

    .line 202
    invoke-static {p0, p0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    .line 179
    :try_start_0
    new-instance p1, Landroidx/media3/common/util/GlProgram;

    const-string p2, "varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n"

    const-string v0, "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n"

    invoke-direct {p1, p2, v0}, Landroidx/media3/common/util/GlProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string p2, "in_pos"

    .line 180
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->TEXTURE_VERTICES:Ljava/nio/FloatBuffer;

    .line 181
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v0, "in_tc_y"

    .line 188
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    aput p2, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v0, "in_tc_u"

    .line 189
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    aput p2, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->texLocations:[I

    iget-object p2, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string v0, "in_tc_v"

    .line 190
    invoke-virtual {p2, v0}, Landroidx/media3/common/util/GlProgram;->getAttributeArrayLocationAndEnable(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    aput p2, p1, v0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->program:Landroidx/media3/common/util/GlProgram;

    const-string p2, "mColorConversion"

    .line 191
    invoke-virtual {p1, p2}, Landroidx/media3/common/util/GlProgram;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->colorMatrixLocation:I

    .line 192
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    .line 193
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->setupTextures()V

    .line 194
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "VideoDecoderGLSV"

    const-string p2, "Failed to set up the textures and program"

    .line 196
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setOutputBuffer(Landroidx/media3/decoder/VideoDecoderOutputBuffer;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->pendingOutputBufferReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 304
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/decoder/VideoDecoderOutputBuffer;

    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->release()V

    :cond_0
    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoDecoderGLSurfaceView$Renderer;->surfaceView:Landroid/opengl/GLSurfaceView;

    .line 309
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
