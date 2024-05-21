.class Landroidx/media3/exoplayer/offline/DownloadManager$Task;
.super Ljava/lang/Thread;
.source "DownloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private contentLength:J

.field private final downloadProgress:Landroidx/media3/exoplayer/offline/DownloadProgress;

.field private final downloader:Landroidx/media3/exoplayer/offline/Downloader;

.field private finalException:Ljava/lang/Exception;

.field private volatile internalHandler:Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;

.field private volatile isCanceled:Z

.field private final isRemove:Z

.field private final minRetryCount:I

.field private final request:Landroidx/media3/exoplayer/offline/DownloadRequest;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/Downloader;Landroidx/media3/exoplayer/offline/DownloadProgress;ZILandroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloadProgress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    iput-boolean p4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isRemove:Z

    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->minRetryCount:I

    iput-object p6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->internalHandler:Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->contentLength:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/Downloader;Landroidx/media3/exoplayer/offline/DownloadProgress;ZILandroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;Landroidx/media3/exoplayer/offline/DownloadManager$1;)V
    .locals 0

    .line 1283
    invoke-direct/range {p0 .. p6}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/Downloader;Landroidx/media3/exoplayer/offline/DownloadProgress;ZILandroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;)V

    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1283
    iget-boolean p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isRemove:Z

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;
    .locals 0

    .line 1283
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z
    .locals 0

    .line 1283
    iget-boolean p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isCanceled:Z

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Ljava/lang/Exception;
    .locals 0

    .line 1283
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    return-object p0
.end method

.method private static getRetryDelayMillis(I)I
    .locals 1

    add-int/lit8 p0, p0, -0x1

    mul-int/lit16 p0, p0, 0x3e8

    const/16 v0, 0x1388

    .line 1389
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public cancel(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->internalHandler:Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;

    :cond_0
    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isCanceled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isCanceled:Z

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 1324
    invoke-interface {p1}, Landroidx/media3/exoplayer/offline/Downloader;->cancel()V

    .line 1325
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->interrupt()V

    :cond_1
    return-void
.end method

.method public onProgress(JJF)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloadProgress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    .line 1371
    iput-wide p3, v0, Landroidx/media3/exoplayer/offline/DownloadProgress;->bytesDownloaded:J

    iget-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloadProgress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    .line 1372
    iput p5, p3, Landroidx/media3/exoplayer/offline/DownloadProgress;->percentDownloaded:F

    iget-wide p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->contentLength:J

    cmp-long p3, p1, p3

    if-eqz p3, :cond_0

    iput-wide p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->contentLength:J

    iget-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->internalHandler:Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;

    if-eqz p3, :cond_0

    const/16 p4, 0x20

    shr-long p4, p1, p4

    long-to-int p4, p4

    long-to-int p1, p1

    const/16 p2, 0xa

    .line 1378
    invoke-virtual {p3, p2, p4, p1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1383
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isRemove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 1335
    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/Downloader;->remove()V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move v3, v0

    :cond_1
    :goto_0
    iget-boolean v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isCanceled:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_4

    :try_start_1
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloader:Landroidx/media3/exoplayer/offline/Downloader;

    .line 1341
    invoke-interface {v4, p0}, Landroidx/media3/exoplayer/offline/Downloader;->download(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    iget-boolean v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->isCanceled:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->downloadProgress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    .line 1345
    iget-wide v5, v5, Landroidx/media3/exoplayer/offline/DownloadProgress;->bytesDownloaded:J

    cmp-long v7, v5, v1

    if-eqz v7, :cond_2

    move v3, v0

    move-wide v1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->minRetryCount:I

    if-gt v3, v5, :cond_3

    .line 1353
    invoke-static {v3}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->getRetryDelayMillis(I)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 1351
    :cond_3
    throw v4
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->finalException:Ljava/lang/Exception;

    goto :goto_1

    .line 1359
    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->internalHandler:Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;

    if-eqz v0, :cond_5

    const/16 v1, 0x9

    .line 1365
    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    return-void
.end method
