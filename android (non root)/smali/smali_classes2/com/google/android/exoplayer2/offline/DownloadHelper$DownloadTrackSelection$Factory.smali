.class final Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/offline/DownloadHelper$1;)V
    .locals 0

    .line 1141
    invoke-direct {p0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 1

    .line 1149
    array-length p0, p1

    new-array p0, p0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 p2, 0x0

    .line 1150
    :goto_0
    array-length p3, p1

    if-ge p2, p3, :cond_1

    .line 1152
    aget-object p3, p1, p2

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_1

    .line 1154
    :cond_0
    new-instance p3, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;

    aget-object p4, p1, p2

    iget-object p4, p4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    aget-object v0, p1, p2

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    invoke-direct {p3, p4, v0}, Lcom/google/android/exoplayer2/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[I)V

    :goto_1
    aput-object p3, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
