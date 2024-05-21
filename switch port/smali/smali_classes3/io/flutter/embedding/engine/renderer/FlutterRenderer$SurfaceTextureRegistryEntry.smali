.class final Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
.implements Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SurfaceTextureRegistryEntry"
.end annotation


# instance fields
.field private frameConsumedListener:Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

.field private final id:J

.field private final onFrameConsumed:Ljava/lang/Runnable;

.field private onFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private released:Z

.field private final textureWrapper:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

.field private trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;JLandroid/graphics/SurfaceTexture;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$1;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->onFrameConsumed:Ljava/lang/Runnable;

    .line 269
    new-instance v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$2;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry$2;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->onFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-wide p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    .line 242
    new-instance p2, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    invoke-direct {p2, p4, p1}, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;-><init>(Landroid/graphics/SurfaceTexture;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    .line 251
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->onFrameListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1, p0, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;
    .locals 0

    .line 223
    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->frameConsumedListener:Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->released:Z

    return p0
.end method

.method static synthetic access$400(Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;)J
    .locals 2

    .line 223
    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    return-wide v0
.end method

.method private removeListener()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 285
    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->removeOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 323
    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$700(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;

    iget-wide v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    iget-object v4, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 326
    throw v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    return-wide v0
.end method

.method public onTrimMemory(I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    if-eqz p0, :cond_0

    .line 265
    invoke-interface {p0, p1}, Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 309
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Releasing a SurfaceTexture ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlutterRenderer"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    .line 310
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->release()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->id:J

    .line 311
    invoke-static {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$600(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 312
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->removeListener()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->released:Z

    return-void
.end method

.method public setOnFrameConsumedListener(Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->frameConsumedListener:Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;

    return-void
.end method

.method public setOnTrimMemoryListener(Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->trimMemoryListener:Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;

    return-void
.end method

.method public surfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    .line 296
    invoke-virtual {p0}, Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;->surfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method public textureWrapper()Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$SurfaceTextureRegistryEntry;->textureWrapper:Lio/flutter/embedding/engine/renderer/SurfaceTextureWrapper;

    return-object p0
.end method
