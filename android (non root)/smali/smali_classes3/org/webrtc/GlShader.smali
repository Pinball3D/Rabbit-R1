.class public Lorg/webrtc/GlShader;
.super Ljava/lang/Object;
.source "GlShader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GlShader"


# instance fields
.field private program:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8b31

    .line 42
    invoke-static {v0, p1}, Lorg/webrtc/GlShader;->compileShader(ILjava/lang/String;)I

    move-result p1

    const v0, 0x8b30

    .line 43
    invoke-static {v0, p2}, Lorg/webrtc/GlShader;->compileShader(ILjava/lang/String;)I

    move-result p2

    .line 44
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lorg/webrtc/GlShader;->program:I

    if-eqz v0, :cond_1

    .line 48
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/webrtc/GlShader;->program:I

    .line 49
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lorg/webrtc/GlShader;->program:I

    .line 50
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    iget v2, p0, Lorg/webrtc/GlShader;->program:I

    const v3, 0x8b82

    .line 52
    invoke-static {v2, v3, v1, v0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 53
    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 64
    invoke-static {p1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 65
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    const-string p0, "Creating GlShader"

    .line 66
    invoke-static {p0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not link program: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lorg/webrtc/GlShader;->program:I

    invoke-static {p2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GlShader"

    invoke-static {p2, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    new-instance p1, Ljava/lang/RuntimeException;

    iget p0, p0, Lorg/webrtc/GlShader;->program:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "glCreateProgram() failed. GLES20 error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static compileShader(ILjava/lang/String;)I
    .locals 3

    .line 22
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    if-eqz p0, :cond_1

    .line 26
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 27
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const v2, 0x8b81

    .line 29
    invoke-static {p0, v2, v1, v0}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 30
    aget v0, v1, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string p1, "compileShader"

    .line 35
    invoke-static {p1}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return p0

    .line 31
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compile error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in shader:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlShader"

    .line 31
    invoke-static {v0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "glCreateShader() failed. GLES20 error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAttribLocation(Ljava/lang/String;)I
    .locals 2

    iget p0, p0, Lorg/webrtc/GlShader;->program:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 73
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 75
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not locate \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' in program"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The program has been released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUniformLocation(Ljava/lang/String;)I
    .locals 2

    iget p0, p0, Lorg/webrtc/GlShader;->program:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 106
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not locate uniform \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' in program"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The program has been released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public release()V
    .locals 2

    const-string v0, "GlShader"

    const-string v1, "Deleting shader."

    .line 124
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lorg/webrtc/GlShader;->program:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 127
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    iput v1, p0, Lorg/webrtc/GlShader;->program:I

    :cond_0
    return-void
.end method

.method public setVertexAttribArray(Ljava/lang/String;IILjava/nio/FloatBuffer;)V
    .locals 8

    iget v0, p0, Lorg/webrtc/GlShader;->program:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 96
    invoke-virtual {p0, p1}, Lorg/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v2

    .line 97
    invoke-static {v2}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v4, 0x1406

    const/4 v5, 0x0

    move v3, p2

    move v6, p3

    move-object v7, p4

    .line 98
    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const-string p0, "setVertexAttribArray"

    .line 99
    invoke-static {p0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The program has been released"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVertexAttribArray(Ljava/lang/String;ILjava/nio/FloatBuffer;)V
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/webrtc/GlShader;->setVertexAttribArray(Ljava/lang/String;IILjava/nio/FloatBuffer;)V

    return-void
.end method

.method public useProgram()V
    .locals 2

    iget v0, p0, Lorg/webrtc/GlShader;->program:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 117
    sget-object v0, Lorg/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lorg/webrtc/GlShader;->program:I

    .line 118
    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 119
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "glUseProgram"

    .line 120
    invoke-static {p0}, Lorg/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 119
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 115
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "The program has been released"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
