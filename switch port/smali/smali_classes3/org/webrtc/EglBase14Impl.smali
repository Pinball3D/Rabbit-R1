.class Lorg/webrtc/EglBase14Impl;
.super Ljava/lang/Object;
.source "EglBase14Impl.java"

# interfaces
.implements Lorg/webrtc/EglBase14;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/EglBase14Impl$Context;
    }
.end annotation


# static fields
.field private static final CURRENT_SDK_VERSION:I

.field private static final EGLExt_SDK_VERSION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "EglBase14Impl"


# instance fields
.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lorg/webrtc/EglBase14Impl;->CURRENT_SDK_VERSION:I

    return-void
.end method

.method public constructor <init>(Landroid/opengl/EGLContext;[I)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 74
    invoke-static {}, Lorg/webrtc/EglBase14Impl;->getEglDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 75
    invoke-static {v0, p2}, Lorg/webrtc/EglBase14Impl;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    .line 76
    invoke-static {p2}, Lorg/webrtc/EglBase;->getOpenGlesVersionFromConfig([I)I

    move-result p2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using OpenGL ES version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglBase14Impl"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    .line 78
    invoke-static {p1, v0, v1, p2}, Lorg/webrtc/EglBase14Impl;->createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lorg/webrtc/EglBase14Impl;->CURRENT_SDK_VERSION:I

    return v0
.end method

.method private checkIsNotReleased()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 162
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    if-eqz p0, :cond_0

    return-void

    .line 164
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This object has been released"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createEglContext(Landroid/opengl/EGLContext;Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 2

    if-eqz p0, :cond_1

    .line 271
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid sharedContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x3098

    const/16 v1, 0x3038

    filled-new-array {v0, p3, v1}, [I

    move-result-object p3

    if-nez p0, :cond_2

    .line 275
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 277
    :cond_2
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 278
    :try_start_0
    invoke-static {p1, p2, p0, p3, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    .line 279
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-eq p0, p1, :cond_3

    return-object p0

    .line 281
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Failed to create EGL context: 0x"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 279
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createSurfaceInternal(Ljava/lang/Object;)V
    .locals 4

    .line 95
    instance-of v0, p1, Landroid/view/Surface;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input must be either a Surface or SurfaceTexture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 99
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3038

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    .line 103
    invoke-static {v1, v2, p1, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 104
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p1, p0, :cond_2

    return-void

    .line 105
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Failed to create window surface: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 100
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Already has an EGLSurface"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v5, 0x1

    new-array v8, v5, [Landroid/opengl/EGLConfig;

    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v8

    move-object v6, v9

    .line 253
    invoke-static/range {v0 .. v7}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    aget p1, v9, p0

    if-lez p1, :cond_1

    aget-object p0, v8, p0

    if-eqz p0, :cond_0

    return-object p0

    .line 263
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglChooseConfig returned null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find any matching EGL config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "eglChooseConfig failed: 0x"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 4

    const/4 v0, 0x0

    .line 236
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 237
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 242
    invoke-static {v1, v2, v0, v2, v3}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize EGL14: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 244
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get EGL14 display: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isEGL14Supported()Z
    .locals 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SDK version: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lorg/webrtc/EglBase14Impl;->CURRENT_SDK_VERSION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ". isEGL14Supported: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x12

    if-lt v1, v4, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "EglBase14Impl"

    invoke-static {v5, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-lt v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 112
    invoke-virtual {p0, v0, v0}, Lorg/webrtc/EglBase14Impl;->createPbufferSurface(II)V

    return-void
.end method

.method public createPbufferSurface(II)V
    .locals 4

    .line 117
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 118
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    filled-new-array {v2, p1, v0, p2, v1}, [I

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    const/4 v3, 0x0

    .line 122
    invoke-static {v1, v2, v0, v3}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 123
    sget-object p0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, p0, :cond_0

    return-void

    .line 124
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create pixel buffer surface with size "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 125
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Already has an EGLSurface"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1}, Lorg/webrtc/EglBase14Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lorg/webrtc/EglBase14Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public detachCurrent()V
    .locals 5

    const-string v0, "eglDetachCurrent failed: 0x"

    .line 200
    sget-object v1, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 201
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 206
    monitor-exit v1

    return-void

    .line 203
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 206
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic getEglBaseContext()Lorg/webrtc/EglBase$Context;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lorg/webrtc/EglBase14Impl;->getEglBaseContext()Lorg/webrtc/EglBase14Impl$Context;

    move-result-object p0

    return-object p0
.end method

.method public getEglBaseContext()Lorg/webrtc/EglBase14Impl$Context;
    .locals 1

    .line 131
    new-instance v0, Lorg/webrtc/EglBase14Impl$Context;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    invoke-direct {v0, p0}, Lorg/webrtc/EglBase14Impl$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0
.end method

.method public hasSurface()Z
    .locals 1

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 136
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeCurrent()V
    .locals 4

    const-string v0, "eglMakeCurrent failed: 0x"

    .line 185
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 186
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 189
    sget-object v1, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    .line 190
    invoke-static {v2, v3, v3, p0}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 194
    monitor-exit v1

    return-void

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 194
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 187
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No EGLSurface - can\'t make current"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 3

    .line 170
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    .line 171
    invoke-virtual {p0}, Lorg/webrtc/EglBase14Impl;->releaseSurface()V

    .line 172
    invoke-virtual {p0}, Lorg/webrtc/EglBase14Impl;->detachCurrent()V

    .line 173
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    .line 174
    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 175
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 177
    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 178
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglContext:Landroid/opengl/EGLContext;

    .line 179
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglConfig:Landroid/opengl/EGLConfig;

    return-void

    :catchall_0
    move-exception p0

    .line 175
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public releaseSurface()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 155
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 156
    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 157
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    :cond_0
    return-void
.end method

.method public surfaceHeight()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3056

    const/4 v3, 0x0

    .line 149
    invoke-static {v1, p0, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p0, v0, v3

    return p0
.end method

.method public surfaceWidth()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    const/16 v2, 0x3057

    const/4 v3, 0x0

    .line 142
    invoke-static {v1, p0, v2, v0, v3}, Landroid/opengl/EGL14;->eglQuerySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;I[II)Z

    aget p0, v0, v3

    return p0
.end method

.method public swapBuffers()V
    .locals 2

    .line 211
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 212
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 215
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 216
    invoke-static {v1, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 217
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 213
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No EGLSurface - can\'t swap buffers"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swapBuffers(J)V
    .locals 3

    .line 222
    invoke-direct {p0}, Lorg/webrtc/EglBase14Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 223
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 226
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 229
    invoke-static {v1, v2, p1, p2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p1, p0, Lorg/webrtc/EglBase14Impl;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase14Impl;->eglSurface:Landroid/opengl/EGLSurface;

    .line 230
    invoke-static {p1, p0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 231
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 224
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No EGLSurface - can\'t swap buffers"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
