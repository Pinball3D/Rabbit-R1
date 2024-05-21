.class Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
.super Landroid/os/HandlerThread;
.source "PlaceholderSurface.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/video/PlaceholderSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaceholderSurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2


# instance fields
.field private eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

.field private handler:Landroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Landroidx/media3/exoplayer/video/PlaceholderSurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ExoPlayer:PlaceholderSurface"

    .line 137
    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initInternal(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/util/GlUtil$GlException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 209
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 210
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/EGLSurfaceTexture;->init(I)V

    .line 211
    new-instance v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 213
    invoke-virtual {v1}, Landroidx/media3/common/util/EGLSurfaceTexture;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroidx/media3/exoplayer/video/PlaceholderSurface;-><init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media3/exoplayer/video/PlaceholderSurface$1;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-void
.end method

.method private releaseInternal()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 217
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 218
    invoke-virtual {p0}, Landroidx/media3/common/util/EGLSurfaceTexture;->release()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    return v1

    .line 196
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->releaseInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to release placeholder surface"

    .line 198
    invoke-static {v0, v2, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return v1

    :catchall_1
    move-exception p1

    .line 200
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->quit()Z

    .line 201
    throw p1

    .line 178
    :cond_1
    :try_start_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initInternal(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroidx/media3/common/util/GlUtil$GlException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 189
    monitor-enter p0

    .line 190
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_4
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 186
    invoke-static {v0, v2, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 189
    monitor-enter p0

    .line 190
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 183
    invoke-static {v0, v2, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 189
    monitor-enter p0

    .line 190
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p0

    goto :goto_2

    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    :catch_2
    move-exception p1

    :try_start_8
    const-string v0, "PlaceholderSurface"

    const-string v2, "Failed to initialize placeholder surface"

    .line 180
    invoke-static {v0, v2, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 189
    monitor-enter p0

    .line 190
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p0

    :goto_2
    return v1

    :catchall_6
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    throw p1

    .line 189
    :goto_3
    monitor-enter p0

    .line 190
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 191
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 192
    throw p1

    :catchall_7
    move-exception p1

    .line 191
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw p1
.end method

.method public init(I)Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .locals 3

    .line 141
    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->start()V

    .line 142
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    .line 143
    new-instance v0, Landroidx/media3/common/util/EGLSurfaceTexture;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroidx/media3/common/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->eglSurfaceTexture:Landroidx/media3/common/util/EGLSurfaceTexture;

    .line 145
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move v2, v1

    goto :goto_0

    .line 154
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 157
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->surface:Landroidx/media3/exoplayer/video/PlaceholderSurface;

    .line 164
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    return-object p0

    .line 162
    :cond_2
    throw p1

    .line 160
    :cond_3
    throw p1

    :catchall_0
    move-exception p1

    .line 154
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    .line 169
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->handler:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 170
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
