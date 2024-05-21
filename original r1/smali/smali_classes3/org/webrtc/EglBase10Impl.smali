.class Lorg/webrtc/EglBase10Impl;
.super Ljava/lang/Object;
.source "EglBase10Impl.java"

# interfaces
.implements Lorg/webrtc/EglBase10;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/EglBase10Impl$Context;
    }
.end annotation


# static fields
.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final TAG:Ljava/lang/String; = "EglBase10Impl"


# instance fields
.field private final egl:Ljavax/microedition/khronos/egl/EGL10;

.field private eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private eglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 93
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 94
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->getEglDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iput-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 95
    invoke-static {v0, v1, p2}, Lorg/webrtc/EglBase10Impl;->getEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 96
    invoke-static {p2}, Lorg/webrtc/EglBase;->getOpenGlesVersionFromConfig([I)I

    move-result p2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Using OpenGL ES version "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EglBase10Impl"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 98
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/webrtc/EglBase10Impl;->createEglContext(Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 29
    invoke-static {}, Lorg/webrtc/EglBase10Impl;->nativeGetCurrentNativeEGLContext()J

    move-result-wide v0

    return-wide v0
.end method

.method private checkIsNotReleased()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 248
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-eqz p0, :cond_0

    return-void

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "This object has been released"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createEglContext(Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2

    if-eqz p1, :cond_1

    .line 345
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 346
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid sharedContext"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/16 v0, 0x3098

    const/16 v1, 0x3038

    filled-new-array {v0, p4, v1}, [I

    move-result-object p4

    if-nez p1, :cond_2

    .line 349
    sget-object p1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 351
    :cond_2
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 352
    invoke-interface {v1, p2, p3, p1, p4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object p1

    .line 353
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    sget-object p2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-eq p1, p2, :cond_3

    return-object p1

    .line 355
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed to create EGL context: 0x"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 356
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p0

    .line 353
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private createSurfaceInternal(Ljava/lang/Object;)V
    .locals 4

    .line 180
    instance-of v0, p1, Landroid/view/SurfaceHolder;

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input must be either a SurfaceHolder or SurfaceTexture"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 183
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 184
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_3

    const/16 v0, 0x3038

    filled-new-array {v0}, [I

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 188
    invoke-interface {v1, v2, v3, p1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 189
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p1, v0, :cond_2

    return-void

    .line 190
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to create window surface: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 191
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 185
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Already has an EGLSurface"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getEglConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 8

    const/4 v4, 0x1

    new-array v6, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v0, 0x1

    new-array v7, v0, [I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-object v5, v7

    .line 328
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x0

    aget p1, v7, p0

    if-lez p1, :cond_1

    aget-object p0, v6, p0

    if-eqz p0, :cond_0

    return-object p0

    .line 337
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "eglChooseConfig returned null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 333
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unable to find any matching EGL config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 329
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "eglChooseConfig failed: 0x"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 330
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getEglDisplay()Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 3

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 311
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    .line 312
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 317
    invoke-interface {v2, v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to initialize EGL10: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 319
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to get EGL10 display: 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 314
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static native nativeGetCurrentNativeEGLContext()J
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .locals 1

    const/4 v0, 0x1

    .line 198
    invoke-virtual {p0, v0, v0}, Lorg/webrtc/EglBase10Impl;->createPbufferSurface(II)V

    return-void
.end method

.method public createPbufferSurface(II)V
    .locals 4

    .line 203
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 204
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3056

    const/16 v1, 0x3038

    const/16 v2, 0x3057

    filled-new-array {v2, p1, v0, p2, v1}, [I

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 208
    invoke-interface {v1, v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 209
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create pixel buffer surface with size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "x"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": 0x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 211
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Already has an EGLSurface"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lorg/webrtc/EglBase10Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .locals 1

    .line 169
    new-instance v0, Lorg/webrtc/EglBase10Impl$1FakeSurfaceHolder;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/EglBase10Impl$1FakeSurfaceHolder;-><init>(Lorg/webrtc/EglBase10Impl;Landroid/view/Surface;)V

    invoke-direct {p0, v0}, Lorg/webrtc/EglBase10Impl;->createSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public detachCurrent()V
    .locals 7

    const-string v0, "eglDetachCurrent failed: 0x"

    .line 283
    sget-object v1, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 284
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    monitor-exit v1

    return-void

    .line 286
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 287
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEglBaseContext()Lorg/webrtc/EglBase$Context;
    .locals 3

    .line 217
    new-instance v0, Lorg/webrtc/EglBase10Impl$Context;

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-direct {v0, v1, v2, p0}, Lorg/webrtc/EglBase10Impl$Context;-><init>(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLContext;Ljavax/microedition/khronos/egl/EGLConfig;)V

    return-object v0
.end method

.method public hasSurface()Z
    .locals 1

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 222
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public makeCurrent()V
    .locals 6

    const-string v0, "eglMakeCurrent failed: 0x"

    .line 268
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->checkIsNotReleased()V

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 269
    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v1, v2, :cond_1

    .line 272
    sget-object v1, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v4, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v5, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 273
    invoke-interface {v2, v3, v4, v4, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    monitor-exit v1

    return-void

    .line 274
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    .line 275
    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception p0

    .line 277
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 270
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No EGLSurface - can\'t make current"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 3

    .line 256
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->checkIsNotReleased()V

    .line 257
    invoke-virtual {p0}, Lorg/webrtc/EglBase10Impl;->releaseSurface()V

    .line 258
    invoke-virtual {p0}, Lorg/webrtc/EglBase10Impl;->detachCurrent()V

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 259
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 260
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 261
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 262
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method public releaseSurface()V
    .locals 3

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 241
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 242
    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 243
    sget-object v0, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    :cond_0
    return-void
.end method

.method public surfaceHeight()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v3, 0x3056

    .line 235
    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public surfaceWidth()I
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    const/16 v3, 0x3057

    .line 228
    invoke-interface {v1, v2, p0, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglQuerySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;I[I)Z

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public swapBuffers()V
    .locals 3

    .line 294
    invoke-direct {p0}, Lorg/webrtc/EglBase10Impl;->checkIsNotReleased()V

    iget-object v0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 295
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eq v0, v1, :cond_0

    .line 298
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/EglBase10Impl;->egl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lorg/webrtc/EglBase10Impl;->eglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object p0, p0, Lorg/webrtc/EglBase10Impl;->eglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 299
    invoke-interface {v1, v2, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 296
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No EGLSurface - can\'t swap buffers"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public swapBuffers(J)V
    .locals 0

    .line 306
    invoke-virtual {p0}, Lorg/webrtc/EglBase10Impl;->swapBuffers()V

    return-void
.end method
