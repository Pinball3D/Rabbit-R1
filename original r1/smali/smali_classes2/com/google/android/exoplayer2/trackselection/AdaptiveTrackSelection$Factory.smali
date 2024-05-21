.class public Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private final maxHeightToDiscard:I

.field private final maxWidthToDiscard:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x61a8

    const v1, 0x3f333333    # 0.7f

    const/16 v2, 0x2710

    .line 65
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 9

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    const/high16 v7, 0x3f400000    # 0.75f

    .line 93
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .locals 9

    const/16 v4, 0x4ff

    const/16 v5, 0x2cf

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    move v7, p5

    move-object v8, p6

    .line 172
    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIF)V
    .locals 9

    const/high16 v7, 0x3f400000    # 0.75f

    .line 131
    sget-object v8, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;-><init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(IIIIIFFLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    iput p3, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    iput p4, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iput p5, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iput p6, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iput p7, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iput-object p8, p0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method protected createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplayer2/upstream/BandwidthMeter;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;)",
            "Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v16, p5

    .line 277
    new-instance v18, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-object/from16 v1, v18

    iget v6, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v6, v6

    iget v8, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v8, v8

    iget v10, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v10, v10

    iget v12, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxWidthToDiscard:I

    iget v13, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->maxHeightToDiscard:I

    iget v14, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v15, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-object v0, v0, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    move-object/from16 v17, v0

    invoke-direct/range {v1 .. v17}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplayer2/util/Clock;)V

    return-object v18
.end method

.method public final createTrackSelections([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplayer2/Timeline;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 15

    move-object/from16 v0, p1

    .line 237
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;->access$000([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 238
    array-length v2, v0

    new-array v2, v2, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v3, 0x0

    move v4, v3

    .line 239
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 240
    aget-object v5, v0, v4

    if-eqz v5, :cond_2

    .line 241
    iget-object v6, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    iget-object v6, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v6, v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 246
    new-instance v6, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v7, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v8, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v8, v8, v3

    iget v5, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v6, v7, v8, v5}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    goto :goto_1

    .line 250
    :cond_1
    iget-object v10, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v11, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    iget v12, v5, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    .line 255
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lcom/google/common/collect/ImmutableList;

    move-object v9, p0

    move-object/from16 v13, p2

    .line 250
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection$Factory;->createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[IILcom/google/android/exoplayer2/upstream/BandwidthMeter;Lcom/google/common/collect/ImmutableList;)Lcom/google/android/exoplayer2/trackselection/AdaptiveTrackSelection;

    move-result-object v6

    :goto_1
    aput-object v6, v2, v4

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method
