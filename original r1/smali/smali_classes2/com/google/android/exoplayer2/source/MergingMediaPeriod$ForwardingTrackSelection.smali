.class final Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingTrackSelection"
.end annotation


# instance fields
.field private final trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

.field private final trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;Lcom/google/android/exoplayer2/source/TrackGroup;)V
    .locals 0

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-void
.end method


# virtual methods
.method public blacklist(IJ)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 599
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->blacklist(IJ)Z

    move-result p0

    return p0
.end method

.method public disable()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 526
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 521
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 612
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 615
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 616
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 588
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p0

    return p0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/Format;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 501
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getIndexInTrackGroup(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 506
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result p0

    return p0
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/Format;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 531
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 541
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result p0

    return p0
.end method

.method public getSelectedIndexInTrackGroup()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 536
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result p0

    return p0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 552
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSelectionReason()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 546
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result p0

    return p0
.end method

.method public getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 486
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->getType()I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplayer2/source/TrackGroup;

    .line 622
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/TrackGroup;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 623
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public indexOf(I)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 516
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result p0

    return p0
.end method

.method public indexOf(Lcom/google/android/exoplayer2/Format;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 511
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplayer2/Format;)I

    move-result p0

    return p0
.end method

.method public isBlacklisted(IJ)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 604
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->isBlacklisted(IJ)Z

    move-result p0

    return p0
.end method

.method public length()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 496
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result p0

    return p0
.end method

.method public onDiscontinuity()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 562
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onDiscontinuity()V

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 572
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 557
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    return-void
.end method

.method public onRebuffer()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 567
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->onRebuffer()V

    return-void
.end method

.method public shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplayer2/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    .line 594
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplayer2/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V
    .locals 9
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

    move-object v0, p0

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 582
    invoke-interface/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplayer2/source/chunk/MediaChunkIterator;)V

    return-void
.end method
