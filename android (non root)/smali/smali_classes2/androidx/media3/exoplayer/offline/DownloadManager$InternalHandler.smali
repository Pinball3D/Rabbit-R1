.class final Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# static fields
.field private static final UPDATE_PROGRESS_INTERVAL_MS:I = 0x1388


# instance fields
.field private activeDownloadTaskCount:I

.field private final activeTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/media3/exoplayer/offline/DownloadManager$Task;",
            ">;"
        }
    .end annotation
.end field

.field private final downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

.field private final downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

.field private final downloads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;"
        }
    .end annotation
.end field

.field private downloadsPaused:Z

.field private hasActiveRemoveTask:Z

.field private final mainHandler:Landroid/os/Handler;

.field private maxParallelDownloads:I

.field private minRetryCount:I

.field private notMetRequirements:I

.field public released:Z

.field private final thread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$Q3DB9u8Xelz3Rx9X4s71Ymag7Ik(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/Download;)I
    .locals 0

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->compareStartTimes(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/Download;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/HandlerThread;Landroidx/media3/exoplayer/offline/WritableDownloadIndex;Landroidx/media3/exoplayer/offline/DownloaderFactory;Landroid/os/Handler;IIZ)V
    .locals 1

    .line 706
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->minRetryCount:I

    iput-boolean p7, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 714
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 715
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    return-void
.end method

.method private addDownload(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V
    .locals 13

    .line 876
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v0

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    if-eqz v0, :cond_0

    .line 879
    invoke-static {v0, p1, p2, v7, v8}, Landroidx/media3/exoplayer/offline/DownloadManager;->mergeRequest(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/DownloadRequest;IJ)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;

    goto :goto_1

    .line 881
    :cond_0
    new-instance v0, Landroidx/media3/exoplayer/offline/Download;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v4, v1

    const-wide/16 v9, -0x1

    const/4 v12, 0x0

    move-object v2, v0

    move-object v3, p1

    move-wide v5, v7

    move v11, p2

    .line 884
    invoke-direct/range {v2 .. v12}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V

    .line 881
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;

    .line 891
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private canDownloadsRun()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static compareStartTimes(Landroidx/media3/exoplayer/offline/Download;Landroidx/media3/exoplayer/offline/Download;)I
    .locals 2

    .line 1279
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    iget-wide p0, p1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    invoke-static {v0, v1, p0, p1}, Landroidx/media3/common/util/Util;->compareLong(JJ)I

    move-result p0

    return p0
.end method

.method private static copyDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;
    .locals 13

    .line 1267
    new-instance v12, Landroidx/media3/exoplayer/offline/Download;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v3, p0, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    .line 1271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    const/4 v10, 0x0

    iget-object v11, p0, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    move-object v0, v12

    move v2, p1

    move v9, p2

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    return-object v12
.end method

.method private getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;
    .locals 2

    .line 1241
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1243
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/offline/Download;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    :try_start_0
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 1247
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->getDownload(Ljava/lang/String;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1249
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to load download: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DownloadManager"

    invoke-static {p2, p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDownloadIndex(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1256
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1257
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    .line 1258
    iget-object v1, v1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private initialize(I)V
    .locals 6

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 786
    invoke-interface {v1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x5

    const/4 v5, 0x7

    filled-new-array {p1, v2, v3, v4, v5}, [I

    move-result-object v2

    .line 788
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->getDownloads([I)Landroidx/media3/exoplayer/offline/DownloadCursor;

    move-result-object v0

    .line 790
    :goto_0
    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 791
    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getDownload()Landroidx/media3/exoplayer/offline/Download;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "DownloadManager"

    const-string v3, "Failed to load index."

    .line 794
    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 795
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    :cond_0
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    .line 802
    invoke-virtual {v1, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 803
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void

    .line 797
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 798
    throw p0
.end method

.method private onContentLengthChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Task;J)V
    .locals 14

    move-object v0, p0

    .line 1070
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v1

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1072
    invoke-direct {p0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    .line 1073
    iget-wide v2, v1, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1076
    :cond_0
    new-instance v13, Landroidx/media3/exoplayer/offline/Download;

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget v3, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    iget-wide v4, v1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    .line 1081
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget v10, v1, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    iget v11, v1, Landroidx/media3/exoplayer/offline/Download;->failureReason:I

    iget-object v12, v1, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    move-object v1, v13

    move-wide/from16 v8, p2

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    .line 1076
    invoke-direct {p0, v13}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;

    :cond_1
    :goto_0
    return-void
.end method

.method private onDownloadTaskStopped(Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1133
    new-instance v15, Landroidx/media3/exoplayer/offline/Download;

    iget-object v4, v0, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-nez v2, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :cond_0
    const/4 v3, 0x4

    :goto_0
    move v5, v3

    .line 1136
    iget-wide v6, v0, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    iget v12, v0, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    const/4 v14, 0x0

    if-nez v2, :cond_1

    move v13, v14

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    move v13, v3

    .line 1141
    :goto_1
    iget-object v0, v0, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    move-object v3, v15

    move-object v14, v0

    invoke-direct/range {v3 .. v14}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    iget-object v0, v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1144
    iget-object v3, v15, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v3, v3, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    iget-object v0, v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 1147
    invoke-interface {v0, v15}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->putDownload(Landroidx/media3/exoplayer/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "DownloadManager"

    const-string v4, "Failed to update index."

    .line 1149
    invoke-static {v3, v4, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1151
    :goto_2
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    invoke-direct {v0, v15, v4, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;-><init>(Landroidx/media3/exoplayer/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    .line 1154
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private onRemoveTaskStopped(Landroidx/media3/exoplayer/offline/Download;)V
    .locals 4

    .line 1158
    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 1160
    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    if-nez v0, :cond_0

    const/4 v2, 0x0

    .line 1161
    :cond_0
    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    invoke-direct {p0, p1, v2, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    .line 1162
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    goto :goto_1

    .line 1164
    :cond_1
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1165
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 1167
    iget-object v1, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v1, v1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->removeDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DownloadManager"

    const-string v1, "Failed to remove from database"

    .line 1169
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_0
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v3, 0x0

    invoke-direct {v0, p1, v2, v1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;-><init>(Landroidx/media3/exoplayer/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    .line 1177
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return-void
.end method

.method private onTaskStopped(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V
    .locals 6

    .line 1089
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object v0

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 1090
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    goto :goto_0

    :cond_0
    iget v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez v3, :cond_1

    const/16 v3, 0xb

    .line 1096
    invoke-virtual {p0, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->removeMessages(I)V

    .line 1099
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$300(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1100
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void

    .line 1104
    :cond_2
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$400(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Ljava/lang/Exception;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1106
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Task failed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$200(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Landroidx/media3/exoplayer/offline/DownloadRequest;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "DownloadManager"

    invoke-static {v4, p1, v3}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1110
    :cond_3
    invoke-direct {p0, v0, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/Download;

    .line 1111
    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    const/4 v2, 0x7

    if-ne v0, v2, :cond_4

    goto :goto_1

    .line 1126
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 1118
    :cond_5
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1119
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->onRemoveTaskStopped(Landroidx/media3/exoplayer/offline/Download;)V

    goto :goto_2

    :cond_6
    xor-int/lit8 v0, v1, 0x1

    .line 1113
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1114
    invoke-direct {p0, p1, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->onDownloadTaskStopped(Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V

    .line 1129
    :goto_2
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;
    .locals 8

    .line 1212
    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1213
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v0, v0, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownloadIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1215
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1216
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    .line 1218
    :cond_1
    iget-wide v4, p1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    iget-wide v6, v1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1219
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1221
    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    :goto_2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 1225
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->putDownload(Landroidx/media3/exoplayer/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v2, "Failed to update index."

    .line 1227
    invoke-static {v1, v2, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1229
    :goto_3
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;-><init>(Landroidx/media3/exoplayer/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 1235
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method private putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;
    .locals 1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1206
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1207
    invoke-static {p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p0

    return-object p0
.end method

.method private release()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 937
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    .line 938
    invoke-virtual {v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 941
    invoke-interface {v0}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->setDownloadingStatesToQueued()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 943
    invoke-static {v1, v3, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 945
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->thread:Landroid/os/HandlerThread;

    .line 946
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 947
    monitor-enter p0

    :try_start_1
    iput-boolean v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->released:Z

    .line 949
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 950
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private removeAllDownloads()V
    .locals 7

    const-string v0, "DownloadManager"

    .line 905
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    const/4 v3, 0x3

    const/4 v4, 0x4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    .line 906
    invoke-interface {v2, v3}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->getDownloads([I)Landroidx/media3/exoplayer/offline/DownloadCursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroidx/media3/exoplayer/offline/DownloadCursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 908
    invoke-interface {v2}, Landroidx/media3/exoplayer/offline/DownloadCursor;->getDownload()Landroidx/media3/exoplayer/offline/Download;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    .line 910
    :try_start_2
    invoke-interface {v2}, Landroidx/media3/exoplayer/offline/DownloadCursor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 906
    :try_start_3
    invoke-interface {v2}, Landroidx/media3/exoplayer/offline/DownloadCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v2, "Failed to load downloads."

    .line 911
    invoke-static {v0, v2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const/4 v2, 0x0

    move v3, v2

    :goto_3
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 913
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 914
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/Download;

    invoke-static {v6, v5, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    move v3, v2

    .line 916
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 918
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/exoplayer/offline/Download;

    invoke-static {v6, v5, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->copyDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v6

    .line 917
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 920
    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :try_start_5
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 922
    invoke-interface {v1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->setStatesToRemoving()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    const-string v3, "Failed to update index."

    .line 924
    invoke-static {v0, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 926
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v1, v2

    :goto_6
    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 927
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 928
    new-instance v3, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 930
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/Download;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v2, v0, v5}, Landroidx/media3/exoplayer/offline/DownloadManager$DownloadUpdate;-><init>(Landroidx/media3/exoplayer/offline/Download;ZLjava/util/List;Ljava/lang/Exception;)V

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    .line 931
    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 933
    :cond_5
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private removeDownload(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    .line 895
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v0

    if-nez v0, :cond_0

    .line 897
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to remove nonexistent download: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadManager"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p1, 0x5

    const/4 v1, 0x0

    .line 900
    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    .line 901
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setDownloadsPaused(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadsPaused:Z

    .line 808
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setMaxParallelDownloads(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    .line 868
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setMinRetryCount(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->minRetryCount:I

    return-void
.end method

.method private setNotMetRequirements(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->notMetRequirements:I

    .line 813
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private setStopReason(Landroidx/media3/exoplayer/offline/Download;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v10, p2

    const/4 v2, 0x1

    if-nez v10, :cond_0

    .line 845
    iget v3, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    if-ne v3, v2, :cond_3

    const/4 v2, 0x0

    .line 846
    invoke-direct {p0, p1, v2, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    goto :goto_0

    .line 848
    :cond_0
    iget v3, v1, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    if-eq v10, v3, :cond_3

    .line 849
    iget v3, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    move v3, v2

    .line 853
    :cond_2
    new-instance v13, Landroidx/media3/exoplayer/offline/Download;

    iget-object v2, v1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-wide v4, v1, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    .line 858
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, v1, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    const/4 v11, 0x0

    iget-object v12, v1, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    move-object v1, v13

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    .line 853
    invoke-direct {p0, v13}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownload(Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/Download;

    :cond_3
    :goto_0
    return-void
.end method

.method private setStopReason(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "DownloadManager"

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 818
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 819
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/offline/Download;

    invoke-direct {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setStopReason(Landroidx/media3/exoplayer/offline/Download;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 823
    invoke-interface {p1, p2}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->setStopReason(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "Failed to set manual stop reason"

    .line 825
    invoke-static {v0, p2, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 828
    :cond_1
    invoke-direct {p0, p1, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->getDownload(Ljava/lang/String;Z)Landroidx/media3/exoplayer/offline/Download;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 830
    invoke-direct {p0, v1, p2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setStopReason(Landroidx/media3/exoplayer/offline/Download;I)V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 834
    invoke-interface {v1, p1, p2}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->setStopReason(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to set manual stop reason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 840
    :goto_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncTasks()V

    return-void
.end method

.method private syncDownloadingDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;I)V
    .locals 1

    .line 1030
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1031
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt p3, v0, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 1032
    invoke-direct {p0, p2, p3, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    .line 1033
    invoke-virtual {p1, p3}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_1
    return-void
.end method

.method private syncQueuedDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/DownloadManager$Task;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1000
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 1001
    invoke-virtual {p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    return-object p1

    .line 1005
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->canDownloadsRun()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->maxParallelDownloads:I

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    .line 1010
    invoke-direct {p0, p2, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->putDownloadWithState(Landroidx/media3/exoplayer/offline/Download;II)Landroidx/media3/exoplayer/offline/Download;

    move-result-object p1

    iget-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

    .line 1011
    iget-object v0, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {p2, v0}, Landroidx/media3/exoplayer/offline/DownloaderFactory;->createDownloader(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/Downloader;

    move-result-object v3

    .line 1012
    new-instance p2, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget-object v2, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, p1, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    const/4 v5, 0x0

    iget v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v8, 0x0

    move-object v1, p2

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/Downloader;Landroidx/media3/exoplayer/offline/DownloadProgress;ZILandroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;Landroidx/media3/exoplayer/offline/DownloadManager$1;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 1020
    iget-object p1, p1, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeDownloadTaskCount:I

    if-nez p1, :cond_2

    const/16 p1, 0xb

    const-wide/16 v0, 0x1388

    .line 1022
    invoke-virtual {p0, p1, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1024
    :cond_2
    invoke-virtual {p2}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->start()V

    return-object p2

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private syncRemovingDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1039
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1041
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void

    :cond_1
    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloaderFactory:Landroidx/media3/exoplayer/offline/DownloaderFactory;

    .line 1053
    iget-object v0, p2, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/offline/DownloaderFactory;->createDownloader(Landroidx/media3/exoplayer/offline/DownloadRequest;)Landroidx/media3/exoplayer/offline/Downloader;

    move-result-object v3

    .line 1054
    new-instance p1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    iget-object v2, p2, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, p2, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    const/4 v5, 0x1

    iget v6, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->minRetryCount:I

    const/4 v8, 0x0

    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;Landroidx/media3/exoplayer/offline/Downloader;Landroidx/media3/exoplayer/offline/DownloadProgress;ZILandroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;Landroidx/media3/exoplayer/offline/DownloadManager$1;)V

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 1062
    iget-object p2, p2, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object p2, p2, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->hasActiveRemoveTask:Z

    .line 1064
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->start()V

    return-void
.end method

.method private syncStoppedDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 989
    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 p0, 0x0

    .line 990
    invoke-virtual {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->cancel(Z)V

    :cond_0
    return-void
.end method

.method private syncTasks()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 957
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 958
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/Download;

    iget-object v3, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 959
    iget-object v4, v2, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iget-object v4, v4, Landroidx/media3/exoplayer/offline/DownloadRequest;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    .line 960
    iget v4, v2, Landroidx/media3/exoplayer/offline/Download;->state:I

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 978
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 973
    :cond_1
    :goto_1
    invoke-direct {p0, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncRemovingDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;)V

    goto :goto_2

    .line 968
    :cond_2
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    invoke-direct {p0, v3, v2, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncDownloadingDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;I)V

    goto :goto_2

    .line 962
    :cond_3
    invoke-direct {p0, v3}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncStoppedDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V

    goto :goto_2

    .line 965
    :cond_4
    invoke-direct {p0, v3, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->syncQueuedDownload(Landroidx/media3/exoplayer/offline/DownloadManager$Task;Landroidx/media3/exoplayer/offline/Download;)Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_5

    .line 980
    invoke-static {v3}, Landroidx/media3/exoplayer/offline/DownloadManager$Task;->access$000(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v1, v1, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private updateProgress()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1184
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloads:Ljava/util/ArrayList;

    .line 1185
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    .line 1186
    iget v2, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :try_start_0
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->downloadIndex:Landroidx/media3/exoplayer/offline/WritableDownloadIndex;

    .line 1188
    invoke-interface {v2, v1}, Landroidx/media3/exoplayer/offline/WritableDownloadIndex;->putDownload(Landroidx/media3/exoplayer/offline/Download;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "DownloadManager"

    const-string v3, "Failed to update index."

    .line 1190
    invoke-static {v2, v3, v1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    const-wide/16 v1, 0x1388

    .line 1194
    invoke-virtual {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 721
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 775
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 772
    :pswitch_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->release()V

    return-void

    .line 769
    :pswitch_1
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->updateProgress()V

    return-void

    .line 765
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    .line 766
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, p1}, Landroidx/media3/common/util/Util;->toLong(II)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->onContentLengthChanged(Landroidx/media3/exoplayer/offline/DownloadManager$Task;J)V

    return-void

    .line 760
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/offline/DownloadManager$Task;

    .line 761
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->onTaskStopped(Landroidx/media3/exoplayer/offline/DownloadManager$Task;)V

    goto :goto_1

    .line 757
    :pswitch_4
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->removeAllDownloads()V

    goto :goto_0

    .line 753
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 754
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->removeDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 748
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadRequest;

    .line 749
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 750
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->addDownload(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_0

    .line 744
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 745
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setMinRetryCount(I)V

    goto :goto_0

    .line 740
    :pswitch_8
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 741
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setMaxParallelDownloads(I)V

    goto :goto_0

    .line 735
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 736
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 737
    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setStopReason(Ljava/lang/String;I)V

    goto :goto_0

    .line 731
    :pswitch_a
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 732
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setNotMetRequirements(I)V

    goto :goto_0

    .line 727
    :pswitch_b
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    move v1, v2

    .line 728
    :cond_0
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->setDownloadsPaused(Z)V

    goto :goto_0

    .line 723
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 724
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->initialize(I)V

    :goto_0
    move v1, v2

    :goto_1
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->mainHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadManager$InternalHandler;->activeTasks:Ljava/util/HashMap;

    .line 778
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {p1, v2, v1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 779
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
