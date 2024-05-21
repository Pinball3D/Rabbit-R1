.class final Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$SurfaceProducer;
.implements Lio/flutter/view/TextureRegistry$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageReaderSurfaceProducer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;
    }
.end annotation


# static fields
.field private static final MAX_IMAGES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ImageReaderSurfaceProducer"


# instance fields
.field private activeReader:Landroid/media/ImageReader;

.field private final id:J

.field private ignoringFence:Z

.field private lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

.field private lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

.field private final onImageAvailableHandler:Landroid/os/Handler;

.field private final onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final readersToClose:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field private requestedHeight:I

.field private requestedWidth:I

.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->ignoringFence:Z

    iput p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    iput p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    .line 394
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 402
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableHandler:Landroid/os/Handler;

    .line 403
    new-instance p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;

    invoke-direct {p1, p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$1;-><init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;)V

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iput-wide p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id:J

    return-void
.end method

.method static synthetic access$800(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Landroid/media/ImageReader;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->maybeCloseReader(Landroid/media/ImageReader;)V

    return-void
.end method

.method static synthetic access$900(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;)V
    .locals 0

    .line 361
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImage(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;)V

    return-void
.end method

.method private createImageReader()Landroid/media/ImageReader;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 650
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->createImageReader33()Landroid/media/ImageReader;

    move-result-object p0

    return-object p0

    .line 652
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->createImageReader29()Landroid/media/ImageReader;

    move-result-object p0

    return-object p0
.end method

.method private createImageReader29()Landroid/media/ImageReader;
    .locals 6

    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    iget v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    const/16 v2, 0x22

    const/4 v3, 0x4

    const-wide/16 v4, 0x100

    .line 638
    invoke-static/range {v0 .. v5}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableHandler:Landroid/os/Handler;

    .line 644
    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method private createImageReader33()Landroid/media/ImageReader;
    .locals 3

    .line 614
    new-instance v0, Landroid/media/ImageReader$Builder;

    iget v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    iget v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    invoke-direct {v0, v1, v2}, Landroid/media/ImageReader$Builder;-><init>(II)V

    const/4 v1, 0x4

    .line 616
    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setMaxImages(I)Landroid/media/ImageReader$Builder;

    const/16 v1, 0x22

    .line 627
    invoke-virtual {v0, v1}, Landroid/media/ImageReader$Builder;->setImageFormat(I)Landroid/media/ImageReader$Builder;

    const-wide/16 v1, 0x100

    .line 629
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader$Builder;->setUsage(J)Landroid/media/ImageReader$Builder;

    .line 630
    invoke-virtual {v0}, Landroid/media/ImageReader$Builder;->build()Landroid/media/ImageReader;

    move-result-object v0

    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->onImageAvailableHandler:Landroid/os/Handler;

    .line 631
    invoke-virtual {v0, v1, p0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method private maybeCloseReader(Landroid/media/ImageReader;)V
    .locals 1

    .line 513
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 514
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 515
    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->reader:Landroid/media/ImageReader;

    if-ne v0, p1, :cond_1

    .line 519
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->reader:Landroid/media/ImageReader;

    if-ne v0, p1, :cond_2

    .line 523
    monitor-exit p0

    return-void

    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 525
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 526
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    invoke-virtual {p1}, Landroid/media/ImageReader;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 526
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private maybeCreateReader()V
    .locals 1

    .line 532
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 534
    monitor-exit p0

    return-void

    .line 536
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->createImageReader()Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    .line 537
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeWaitOnFence(Landroid/media/Image;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->ignoringFence:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 589
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->waitOnFence(Landroid/media/Image;)V

    return-void

    :cond_2
    iget-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->ignoringFence:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->ignoringFence:Z

    const-string p0, "ImageReaderSurfaceProducer"

    const-string p1, "ImageTextureEntry can\'t wait on the fence on Android < 33"

    .line 595
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private onImage(Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;)V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 546
    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 547
    iget-object v1, p1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->reader:Landroid/media/ImageReader;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ImageReaderSurfaceProducer"

    const-string v1, "Skipped frame because resize is in flight."

    .line 548
    invoke-static {v0, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->close()V

    .line 550
    monitor-exit p0

    return-void

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    .line 554
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    const-string v1, "ImageReaderSurfaceProducer"

    const-string v2, "Dropping rendered frame that was not acquired in time."

    .line 557
    invoke-static {v1, v2}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->close()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id:J

    .line 563
    invoke-static {p1, v0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$500(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 554
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private releaseInternal()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->released:Z

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->close()V

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->close()V

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 439
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/ImageReader;

    .line 440
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 442
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    :cond_3
    return-void
.end method

.method private waitOnFence(Landroid/media/Image;)V
    .locals 0

    .line 570
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object p0

    .line 571
    invoke-virtual {p0}, Landroid/hardware/SyncFence;->awaitForever()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "ImageReaderSurfaceProducer"

    const-string p1, "acquireLatestImage image\'s fence was never signalled."

    .line 573
    invoke-static {p0, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 3

    .line 496
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastProducedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    iget-object v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->lastConsumedImage:Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;

    .line 501
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->close()V

    :cond_0
    if-nez v0, :cond_1

    return-object v1

    .line 508
    :cond_1
    iget-object v1, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->image:Landroid/media/Image;

    invoke-direct {p0, v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->maybeWaitOnFence(Landroid/media/Image;)V

    .line 509
    iget-object p0, v0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer$PerImage;->image:Landroid/media/Image;

    return-object p0

    :catchall_0
    move-exception v0

    .line 501
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public disableFenceForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->ignoringFence:Z

    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    .line 605
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->releaseInternal()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 606
    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$700(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;

    iget-wide v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id:J

    iget-object v4, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 608
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 609
    throw v0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 0

    .line 487
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->maybeCreateReader()V

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    .line 488
    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    return p0
.end method

.method public id()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id:J

    return-wide v0
.end method

.method public readersToCloseSize()I
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 666
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    return p0
.end method

.method public release()V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->released:Z

    if-eqz v0, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->releaseInternal()V

    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->id:J

    .line 455
    invoke-static {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$600(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedHeight:I

    iput p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->requestedWidth:I

    .line 466
    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->readersToClose:Ljava/util/Set;

    .line 469
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageReaderSurfaceProducer;->activeReader:Landroid/media/ImageReader;

    .line 472
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
