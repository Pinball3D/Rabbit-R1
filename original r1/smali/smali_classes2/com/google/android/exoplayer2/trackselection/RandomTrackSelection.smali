.class public final Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;
.super Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;
.source "RandomTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection$Factory;
    }
.end annotation


# instance fields
.field private final random:Ljava/util/Random;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILjava/util/Random;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/BaseTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[II)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 80
    iget p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    invoke-virtual {p4, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void
.end method


# virtual methods
.method public getSelectedIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return p0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectionReason()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const/4 p3, 0x0

    move p4, p3

    move p5, p4

    .line 93
    :goto_0
    iget p6, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge p4, p6, :cond_1

    .line 94
    invoke-virtual {p0, p4, p1, p2}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result p6

    if-nez p6, :cond_0

    add-int/lit8 p5, p5, 0x1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->random:Ljava/util/Random;

    .line 99
    invoke-virtual {p4, p5}, Ljava/util/Random;->nextInt(I)I

    move-result p4

    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    .line 100
    iget p4, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-eq p5, p4, :cond_4

    move p4, p3

    .line 103
    :goto_1
    iget p5, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->length:I

    if-ge p3, p5, :cond_4

    .line 104
    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->isBlacklisted(IJ)Z

    move-result p5

    if-nez p5, :cond_3

    iget p5, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    add-int/lit8 p6, p4, 0x1

    if-ne p5, p4, :cond_2

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/RandomTrackSelection;->selectedIndex:I

    return-void

    :cond_2
    move p4, p6

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
