.class public Lio/flutter/embedding/android/FlutterTextureView;
.super Landroid/view/TextureView;
.source "FlutterTextureView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/RenderSurface;


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterTextureView"


# instance fields
.field private flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private isPaused:Z

.field private isSurfaceAvailableForRendering:Z

.field private renderSurface:Landroid/view/Surface;

.field private final surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/android/FlutterTextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 50
    new-instance p1, Lio/flutter/embedding/android/FlutterTextureView$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/android/FlutterTextureView$1;-><init>(Lio/flutter/embedding/android/FlutterTextureView;)V

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 112
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->init()V

    return-void
.end method

.method static synthetic access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    return p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->shouldNotify()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/android/FlutterTextureView;II)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/FlutterTextureView;->changeSurfaceSize(II)V

    return-void
.end method

.method static synthetic access$400(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    return-void
.end method

.method static synthetic access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;
    .locals 0

    .line 34
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$502(Lio/flutter/embedding/android/FlutterTextureView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 34
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-object p1
.end method

.method private changeSurfaceSize(II)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notifying FlutterRenderer that Android surface size has changed to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterTextureView"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 251
    invoke-virtual {p0, p1, p2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->surfaceChanged(II)V

    return-void

    .line 241
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "changeSurfaceSize() should only be called when flutterRenderer is non-null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private connectSurfaceToRenderer()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    .line 234
    :cond_0
    new-instance v0, Landroid/view/Surface;

    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    .line 235
    invoke-virtual {v1, v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->startRenderingToSurface(Landroid/view/Surface;Z)V

    return-void

    .line 223
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "connectSurfaceToRenderer() should only be called when flutterRenderer and getSurfaceTexture() are non-null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private disconnectSurfaceFromRenderer()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    :cond_0
    return-void

    .line 257
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "disconnectSurfaceFromRenderer() should only be called when flutterRenderer is non-null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private init()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->surfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 118
    invoke-virtual {p0, v0}, Lio/flutter/embedding/android/FlutterTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method private shouldNotify()Z
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public attachToRenderer(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 2

    const-string v0, "Attaching to FlutterRenderer."

    const-string v1, "FlutterTextureView"

    .line 141
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-eqz v0, :cond_0

    const-string v0, "Already connected to a FlutterRenderer. Detaching from old one and attaching to new one."

    .line 143
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 147
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->stopRenderingToSurface()V

    :cond_0
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 152
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->resume()V

    return-void
.end method

.method public detachFromRenderer()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting FlutterRenderer from Android surface."

    .line 169
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->disconnectSurfaceFromRenderer()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterTextureView;->pause()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    goto :goto_0

    :cond_1
    const-string p0, "detachFromRenderer() invoked when no FlutterRenderer was attached."

    .line 177
    invoke-static {v1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAttachedRenderer()Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    return-object p0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    if-nez v0, :cond_0

    const-string p0, "FlutterTextureView"

    const-string v0, "pause() invoked when no FlutterRenderer was attached."

    .line 187
    invoke-static {p0, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->flutterRenderer:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const-string v1, "FlutterTextureView"

    if-nez v0, :cond_0

    const-string p0, "resume() invoked when no FlutterRenderer was attached."

    .line 195
    invoke-static {v1, p0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isSurfaceAvailableForRendering:Z

    if-eqz v0, :cond_1

    const-string v0, "Surface is available for rendering. Connecting FlutterRenderer to Android surface."

    .line 202
    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lio/flutter/embedding/android/FlutterTextureView;->connectSurfaceToRenderer()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/android/FlutterTextureView;->isPaused:Z

    return-void
.end method

.method public setRenderSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView;->renderSurface:Landroid/view/Surface;

    return-void
.end method
