.class public final Landroidx/media3/common/util/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/util/GlUtil$GlException;,
        Landroidx/media3/common/util/GlUtil$Api17;
    }
.end annotation


# static fields
.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

.field public static final EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

.field private static final EGL_GL_COLORSPACE_BT2020_PQ_EXT:I = 0x3340

.field private static final EGL_GL_COLORSPACE_KHR:I = 0x309d

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

.field private static final EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

.field private static final EXTENSION_COLORSPACE_BT2020_PQ:Ljava/lang/String; = "EGL_EXT_gl_colorspace_bt2020_pq"

.field private static final EXTENSION_PROTECTED_CONTENT:Ljava/lang/String; = "EGL_EXT_protected_content"

.field private static final EXTENSION_SURFACELESS_CONTEXT:Ljava/lang/String; = "EGL_KHR_surfaceless_context"

.field private static final EXTENSION_YUV_TARGET:Ljava/lang/String; = "GL_EXT_YUV_target"

.field public static final HOMOGENEOUS_COORDINATE_VECTOR_SIZE:I = 0x4

.field public static final LENGTH_NDC:F = 2.0f


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    const/16 v0, 0x309d

    const/16 v1, 0x3340

    const/16 v2, 0x3038

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    filled-new-array {v2}, [I

    move-result-object v0

    sput-object v0, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3040
        0x4
        0x3024
        0xa
        0x3023
        0xa
        0x3022
        0xa
        0x3021
        0x2
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->checkEglException(Ljava/lang/String;)V

    return-void
.end method

.method private static assertValidTextureSize(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0xd33

    const/4 v3, 0x0

    .line 429
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    aget v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v2, "Create a OpenGL context first or run the GL methods on an OpenGL thread."

    .line 431
    invoke-static {v0, v2}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    if-gt p0, v1, :cond_1

    if-gt p1, v1, :cond_1

    return-void

    .line 439
    :cond_1
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "width or height is greater than GL_MAX_TEXTURE_SIZE "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :cond_2
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    const-string p1, "width or height is less than 0"

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bindTexture(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 597
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 598
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2800

    const/16 v0, 0x2601

    .line 599
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 600
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2801

    .line 601
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 602
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2802

    const v0, 0x812f

    .line 603
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 604
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const/16 p1, 0x2803

    .line 605
    invoke-static {p0, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 606
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static checkEglException(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 683
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 684
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", error code: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    return-void
.end method

.method public static checkGlError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 403
    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    .line 405
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "glError: "

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 411
    :cond_2
    new-instance v1, Landroidx/media3/common/util/GlUtil$GlException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static checkGlException(ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    .line 678
    :cond_0
    new-instance p0, Landroidx/media3/common/util/GlUtil$GlException;

    invoke-direct {p0, p1}, Landroidx/media3/common/util/GlUtil$GlException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static clearOutputFrame()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 446
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 447
    invoke-static {v0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    const/16 v0, 0x4100

    .line 448
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 449
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static create4x4IdentityMatrix()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 131
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->setToIdentity([F)V

    return-object v0
.end method

.method private static createBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    .line 512
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 513
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static createBuffer([F)Ljava/nio/FloatBuffer;
    .locals 1

    .line 503
    array-length v0, p0

    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    move-result-object p0

    check-cast p0, Ljava/nio/FloatBuffer;

    return-object p0
.end method

.method public static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 274
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    .line 275
    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 273
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    :cond_2
    move v1, v2

    .line 276
    :cond_3
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 277
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/util/GlUtil$Api17;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public static createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 252
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x2

    sget-object v2, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    invoke-static {v0, p0, v1, v2}, Landroidx/media3/common/util/GlUtil;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;

    move-result-object p0

    return-object p0
.end method

.method public static createEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroidx/media3/common/util/GlUtil$Api17;->createEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    return-object v0
.end method

.method public static createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;IZ)Landroid/opengl/EGLSurface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p2, v0, :cond_2

    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    if-eqz p3, :cond_1

    sget-object p3, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    goto :goto_1

    :cond_1
    sget-object p3, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_BT2020_PQ:[I

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    if-ne p2, v0, :cond_3

    const-string p2, "Outputting HLG to the screen is not supported."

    .line 317
    invoke-static {p3, p2}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_1010102:[I

    sget-object p3, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    goto :goto_1

    .line 321
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unsupported color transfer: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    sget-object p2, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    sget-object p3, Landroidx/media3/common/util/GlUtil;->EGL_WINDOW_SURFACE_ATTRIBUTES_NONE:[I

    .line 323
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/common/util/GlUtil$Api17;->createEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I[I)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method public static createExternalTexture()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 521
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    const v1, 0x8d65

    .line 522
    invoke-static {v1, v0}, Landroidx/media3/common/util/GlUtil;->bindTexture(II)V

    return v0
.end method

.method public static createFboForTexture(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 616
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "No current context"

    .line 615
    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    new-array v0, v1, [I

    const/4 v2, 0x0

    .line 619
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 620
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v1, v0, v2

    const v3, 0x8d40

    .line 621
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 622
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    const v1, 0x8ce0

    const/16 v4, 0xde1

    .line 623
    invoke-static {v3, v1, v4, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 625
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget p0, v0, v2

    return p0
.end method

.method public static createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 382
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 383
    sget-object p2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {p1, v1, v1, p2}, Landroidx/media3/common/util/GlUtil;->createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;

    move-result-object p2

    .line 386
    :goto_0
    invoke-static {p1, p0, p2, v1, v1}, Landroidx/media3/common/util/GlUtil;->focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V

    return-object p2
.end method

.method private static createPbufferSurface(Landroid/opengl/EGLDisplay;II[I)Landroid/opengl/EGLSurface;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    filled-new-array {v2, p1, v0, p2, v1}, [I

    move-result-object p1

    .line 344
    invoke-static {p0, p3, p1}, Landroidx/media3/common/util/GlUtil$Api17;->createEglPbufferSurface(Landroid/opengl/EGLDisplay;[I[I)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method private static createTexture(IIII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 558
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlUtil;->assertValidTextureSize(II)V

    .line 559
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->generateTexture()I

    move-result v0

    const/16 v1, 0xde1

    .line 560
    invoke-static {v1, v0}, Landroidx/media3/common/util/GlUtil;->bindTexture(II)V

    mul-int v1, p0, p1

    mul-int/lit8 v1, v1, 0x4

    .line 561
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1908

    move v4, p2

    move v5, p0

    move v6, p1

    move v9, p3

    .line 562
    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 572
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return v0
.end method

.method public static createTexture(IIZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 540
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "GLES30 extensions are not supported below API 18."

    invoke-static {p2, v0}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    const p2, 0x881a

    const/16 v0, 0x140b

    .line 541
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/GlUtil;->createTexture(IIII)I

    move-result p0

    return p0

    :cond_1
    const/16 p2, 0x1908

    const/16 v0, 0x1401

    .line 543
    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/GlUtil;->createTexture(IIII)I

    move-result p0

    return p0
.end method

.method public static createVertexBuffer(Ljava/util/List;)[F
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[F>;)[F"
        }
    .end annotation

    .line 142
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    new-array v0, v0, [F

    const/4 v2, 0x0

    move v3, v2

    .line 143
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 145
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x4

    .line 144
    invoke-static {v4, v2, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static deleteFbo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 661
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 662
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static deleteRbo(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 667
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    .line 669
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static deleteTexture(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    filled-new-array {p0}, [I

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 635
    invoke-static {v1, p0, v0}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 636
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    return-void
.end method

.method public static destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 646
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlUtil$Api17;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V

    return-void
.end method

.method public static destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 656
    invoke-static {p0, p1}, Landroidx/media3/common/util/GlUtil$Api17;->destroyEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)V

    return-void
.end method

.method public static focusEglSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 460
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/GlUtil$Api17;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    return-void
.end method

.method public static focusFramebuffer(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 477
    invoke-static/range {p0 .. p5}, Landroidx/media3/common/util/GlUtil$Api17;->focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V

    return-void
.end method

.method public static focusFramebufferUsingCurrentContext(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 494
    invoke-static {p0, p1, p2}, Landroidx/media3/common/util/GlUtil$Api17;->focusFramebufferUsingCurrentContext(III)V

    return-void
.end method

.method public static focusPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    sget-object v0, Landroidx/media3/common/util/GlUtil;->EGL_CONFIG_ATTRIBUTES_RGBA_8888:[I

    .line 360
    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/GlUtil;->createFocusedPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLSurface;

    move-result-object p0

    return-object p0
.end method

.method private static generateTexture()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    .line 579
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "No current context"

    .line 578
    invoke-static {v0, v2}, Landroidx/media3/common/util/GlUtil;->checkGlException(ZLjava/lang/String;)V

    new-array v0, v1, [I

    const/4 v2, 0x0

    .line 582
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 583
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->checkGlError()V

    aget v0, v0, v2

    return v0
.end method

.method public static getCurrentContext()Landroid/opengl/EGLContext;
    .locals 1

    .line 392
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedCoordinateBounds()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getTextureCoordinateBounds()[F
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static isBt2020PqExtensionSupported()Z
    .locals 3

    const/4 v0, 0x0

    .line 231
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/16 v2, 0x3055

    .line 232
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "EGL_EXT_gl_colorspace_bt2020_pq"

    .line 233
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isProtectedContentExtensionSupported(Landroid/content/Context;)Z
    .locals 4

    .line 160
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 163
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_2

    const-string v0, "samsung"

    sget-object v3, Landroidx/media3/common/util/Util;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "XT1650"

    sget-object v3, Landroidx/media3/common/util/Util;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    .line 170
    :cond_2
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    if-ge v0, v1, :cond_3

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.vr.high_performance"

    .line 173
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    .line 178
    :cond_3
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object p0

    const/16 v0, 0x3055

    .line 179
    invoke-static {p0, v0}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v0, "EGL_EXT_protected_content"

    .line 180
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public static isSurfacelessContextExtensionSupported()Z
    .locals 3

    .line 191
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 194
    :cond_0
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    const/16 v1, 0x3055

    .line 195
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglQueryString(Landroid/opengl/EGLDisplay;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "EGL_KHR_surfaceless_context"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isYuvTargetExtensionSupported()Z
    .locals 4

    .line 206
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 211
    :cond_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x1f03

    if-eqz v0, :cond_1

    .line 214
    :try_start_0
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->createEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    .line 215
    invoke-static {v0}, Landroidx/media3/common/util/GlUtil;->createEglContext(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLContext;

    move-result-object v3

    .line 216
    invoke-static {v3, v0}, Landroidx/media3/common/util/GlUtil;->focusPlaceholderEglSurface(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLSurface;

    .line 217
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v0, v3}, Landroidx/media3/common/util/GlUtil;->destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    :try_end_0
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v2

    .line 223
    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v0, "GL_EXT_YUV_target"

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static setToIdentity([F)V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-static {p0, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method
