.class public final Landroidx/media3/exoplayer/offline/Download;
.super Ljava/lang/Object;
.source "Download.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/Download$FailureReason;,
        Landroidx/media3/exoplayer/offline/Download$State;
    }
.end annotation


# static fields
.field public static final FAILURE_REASON_NONE:I = 0x0

.field public static final FAILURE_REASON_UNKNOWN:I = 0x1

.field public static final STATE_COMPLETED:I = 0x3

.field public static final STATE_DOWNLOADING:I = 0x2

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_QUEUED:I = 0x0

.field public static final STATE_REMOVING:I = 0x5

.field public static final STATE_RESTARTING:I = 0x7

.field public static final STATE_STOPPED:I = 0x1

.field public static final STOP_REASON_NONE:I


# instance fields
.field public final contentLength:J

.field public final failureReason:I

.field final progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

.field public final request:Landroidx/media3/exoplayer/offline/DownloadRequest;

.field public final startTimeMs:J

.field public final state:I

.field public final stopReason:I

.field public final updateTimeMs:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJII)V
    .locals 12

    .line 127
    new-instance v11, Landroidx/media3/exoplayer/offline/DownloadProgress;

    invoke-direct {v11}, Landroidx/media3/exoplayer/offline/DownloadProgress;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroidx/media3/exoplayer/offline/Download;-><init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/offline/DownloadRequest;IJJJIILandroidx/media3/exoplayer/offline/DownloadProgress;)V
    .locals 4

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    invoke-static {p11}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p10, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-ne v2, v3, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    .line 148
    :goto_2
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    if-eqz p9, :cond_4

    const/4 v2, 0x2

    if-eq p2, v2, :cond_3

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    .line 150
    :goto_3
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    :cond_4
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/Download;->request:Landroidx/media3/exoplayer/offline/DownloadRequest;

    iput p2, p0, Landroidx/media3/exoplayer/offline/Download;->state:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/offline/Download;->startTimeMs:J

    iput-wide p5, p0, Landroidx/media3/exoplayer/offline/Download;->updateTimeMs:J

    iput-wide p7, p0, Landroidx/media3/exoplayer/offline/Download;->contentLength:J

    iput p9, p0, Landroidx/media3/exoplayer/offline/Download;->stopReason:I

    iput p10, p0, Landroidx/media3/exoplayer/offline/Download;->failureReason:I

    iput-object p11, p0, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    return-void
.end method


# virtual methods
.method public getBytesDownloaded()J
    .locals 2

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    .line 169
    iget-wide v0, p0, Landroidx/media3/exoplayer/offline/DownloadProgress;->bytesDownloaded:J

    return-wide v0
.end method

.method public getPercentDownloaded()F
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/Download;->progress:Landroidx/media3/exoplayer/offline/DownloadProgress;

    .line 177
    iget p0, p0, Landroidx/media3/exoplayer/offline/DownloadProgress;->percentDownloaded:F

    return p0
.end method

.method public isTerminalState()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/offline/Download;->state:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
