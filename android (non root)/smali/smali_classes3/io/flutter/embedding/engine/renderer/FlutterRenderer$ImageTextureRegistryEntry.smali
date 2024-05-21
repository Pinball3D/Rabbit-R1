.class final Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$ImageTextureEntry;
.implements Lio/flutter/view/TextureRegistry$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageTextureRegistryEntry"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageTextureRegistryEntry"


# instance fields
.field private final id:J

.field private ignoringFence:Z

.field private image:Landroid/media/Image;

.field private released:Z

.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    iput-wide p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    return-void
.end method

.method private maybeWaitOnFence(Landroid/media/Image;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 747
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->waitOnFence(Landroid/media/Image;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    const-string p0, "ImageTextureRegistryEntry"

    const-string p1, "ImageTextureEntry can\'t wait on the fence on Android < 33"

    .line 753
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private waitOnFence(Landroid/media/Image;)V
    .locals 0

    .line 727
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object p0

    .line 728
    invoke-virtual {p0}, Landroid/hardware/SyncFence;->awaitForever()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ImageTextureRegistryEntry"

    const-string p1, "acquireLatestImage image\'s fence was never signalled."

    .line 730
    invoke-static {p0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 2

    .line 761
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 764
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->maybeWaitOnFence(Landroid/media/Image;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 764
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 784
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 778
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 782
    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$700(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;

    iget-wide v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    iget-object v4, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 784
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 785
    throw v0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    return-wide v0
.end method

.method public pushImage(Landroid/media/Image;)V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 709
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 712
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const-string v1, "ImageTextureRegistryEntry"

    const-string v2, "Dropping PlatformView Frame"

    .line 715
    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    .line 720
    invoke-static {p1, v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$500(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 712
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 696
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    .line 699
    invoke-static {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$600(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    return-void
.end method
