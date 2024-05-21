.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final info:Ljava/lang/Object;

.field public final length:I

.field public final rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

.field public final selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

.field public final tracks:Lcom/google/android/exoplayer2/Tracks;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 77
    invoke-virtual {p2}, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iput-object p2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iput-object p3, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplayer2/Tracks;

    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    .line 80
    array-length p1, p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->length:I

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 59
    sget-object v0, Lcom/google/android/exoplayer2/Tracks;->EMPTY:Lcom/google/android/exoplayer2/Tracks;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplayer2/RendererConfiguration;[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/Tracks;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 96
    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v1, v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    array-length v2, v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 99
    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public isEquivalent(Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 122
    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object p0, p0, p2

    iget-object p1, p1, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    aget-object p1, p1, p2

    .line 123
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isRendererEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplayer2/RendererConfiguration;

    .line 85
    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
