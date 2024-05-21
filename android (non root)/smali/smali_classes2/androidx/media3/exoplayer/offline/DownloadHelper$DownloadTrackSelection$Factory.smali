.class final Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 995
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/offline/DownloadHelper$1;)V
    .locals 0

    .line 995
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTrackSelections([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/upstream/BandwidthMeter;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/common/Timeline;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 1

    .line 1003
    array-length p0, p1

    new-array p0, p0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 p2, 0x0

    .line 1004
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 1006
    aget-object p3, p1, p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 1008
    :cond_0
    new-instance p3, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;

    aget-object p4, p1, p2

    iget-object p4, p4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    aget-object v0, p1, p2

    iget-object v0, v0, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    invoke-direct {p3, p4, v0}, Landroidx/media3/exoplayer/offline/DownloadHelper$DownloadTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;[I)V

    :goto_1
    aput-object p3, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
