.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Landroidx/media3/common/util/RunnableFutureTask;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/common/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

.field public final dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

.field private final progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

.field public final segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;[B)V
    .locals 1

    .line 496
    invoke-direct {p0}, Landroidx/media3/common/util/RunnableFutureTask;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Landroidx/media3/datasource/cache/CacheDataSource;

    iput-object p3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 501
    new-instance v0, Landroidx/media3/datasource/cache/CacheWriter;

    iget-object p1, p1, Landroidx/media3/exoplayer/offline/SegmentDownloader$Segment;->dataSpec:Landroidx/media3/datasource/DataSpec;

    invoke-direct {v0, p2, p1, p4, p3}, Landroidx/media3/datasource/cache/CacheWriter;-><init>(Landroidx/media3/datasource/cache/CacheDataSource;Landroidx/media3/datasource/DataSpec;[BLandroidx/media3/datasource/cache/CacheWriter$ProgressListener;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    .line 516
    invoke-virtual {p0}, Landroidx/media3/datasource/cache/CacheWriter;->cancel()V

    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 484
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->doWork()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Landroidx/media3/datasource/cache/CacheWriter;

    .line 507
    invoke-virtual {v0}, Landroidx/media3/datasource/cache/CacheWriter;->cache()V

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;

    if-eqz p0, :cond_0

    .line 509
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->onSegmentDownloaded()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
