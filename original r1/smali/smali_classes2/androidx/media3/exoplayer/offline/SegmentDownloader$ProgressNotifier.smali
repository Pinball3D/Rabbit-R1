.class final Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Landroidx/media3/datasource/cache/CacheWriter$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProgressNotifier"
.end annotation


# instance fields
.field private bytesDownloaded:J

.field private final contentLength:J

.field private final progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

.field private segmentsDownloaded:I

.field private final totalSegments:I


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;JIJI)V
    .locals 0

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    iput-wide p2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iput p4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    iput-wide p5, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    iput p7, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    return-void
.end method

.method private getPercentDownloaded()F
    .locals 6

    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    long-to-float p0, v4

    mul-float/2addr p0, v3

    long-to-float v0, v0

    :goto_0
    div-float/2addr p0, v0

    return p0

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->totalSegments:I

    if-eqz v0, :cond_1

    iget p0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    int-to-float p0, p0

    mul-float/2addr p0, v3

    int-to-float v0, v0

    goto :goto_0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method


# virtual methods
.method public onProgress(JJJ)V
    .locals 6

    iget-wide p1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    add-long v3, p1, p5

    iput-wide v3, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    iget-wide v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    .line 546
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v5

    invoke-interface/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;->onProgress(JJF)V

    return-void
.end method

.method public onSegmentDownloaded()V
    .locals 7

    iget v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->segmentsDownloaded:I

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->progressListener:Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;

    iget-wide v2, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->contentLength:J

    iget-wide v4, p0, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->bytesDownloaded:J

    .line 551
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/SegmentDownloader$ProgressNotifier;->getPercentDownloaded()F

    move-result v6

    invoke-interface/range {v1 .. v6}, Landroidx/media3/exoplayer/offline/Downloader$ProgressListener;->onProgress(JJF)V

    return-void
.end method
