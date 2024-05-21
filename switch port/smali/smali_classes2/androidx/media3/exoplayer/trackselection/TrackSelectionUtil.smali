.class public final Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Landroidx/media3/exoplayer/trackselection/TrackSelection;)Landroidx/media3/common/Tracks;
    .locals 3

    .line 150
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    .line 151
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 152
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 153
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_1
    invoke-static {p0, v0}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil;->buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public static buildTracks(Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Landroidx/media3/common/Tracks;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Landroidx/media3/exoplayer/trackselection/TrackSelection;",
            ">;)",
            "Landroidx/media3/common/Tracks;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 170
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 172
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 174
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v4

    .line 175
    aget-object v5, p1, v3

    move v6, v2

    .line 176
    :goto_1
    iget v7, v4, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_4

    .line 177
    invoke-virtual {v4, v6}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v7

    .line 179
    invoke-virtual {v0, v3, v6, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_2

    :cond_0
    move v8, v2

    .line 182
    :goto_2
    iget v10, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v10, v10, [I

    .line 183
    iget v11, v7, Landroidx/media3/common/TrackGroup;->length:I

    new-array v11, v11, [Z

    move v12, v2

    .line 184
    :goto_3
    iget v13, v7, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v12, v13, :cond_3

    .line 186
    invoke-virtual {v0, v3, v6, v12}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v13

    aput v13, v10, v12

    move v13, v2

    .line 188
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 189
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/exoplayer/trackselection/TrackSelection;

    .line 190
    invoke-interface {v14}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->getTrackGroup()Landroidx/media3/common/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroidx/media3/common/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 191
    invoke-interface {v14, v12}, Landroidx/media3/exoplayer/trackselection/TrackSelection;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move v13, v9

    goto :goto_5

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_2
    move v13, v2

    .line 196
    :goto_5
    aput-boolean v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 198
    :cond_3
    new-instance v9, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v9, v7, v8, v10, v11}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;

    move-result-object v0

    move v3, v2

    .line 202
    :goto_6
    iget v4, v0, Landroidx/media3/exoplayer/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_6

    .line 203
    invoke-virtual {v0, v3}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v4

    .line 204
    iget v5, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v5, v5, [I

    .line 205
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([II)V

    .line 206
    iget v6, v4, Landroidx/media3/common/TrackGroup;->length:I

    new-array v6, v6, [Z

    .line 207
    new-instance v7, Landroidx/media3/common/Tracks$Group;

    invoke-direct {v7, v4, v2, v5, v6}, Landroidx/media3/common/Tracks$Group;-><init>(Landroidx/media3/common/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 210
    :cond_6
    new-instance v0, Landroidx/media3/common/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createFallbackOptions(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;)Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 7

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 123
    invoke-interface {p0}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    .line 126
    invoke-interface {p0, v4, v0, v1}, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;->isTrackExcluded(IJ)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 130
    :cond_1
    new-instance p0, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v2, v5}, Landroidx/media3/exoplayer/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object p0
.end method

.method public static createTrackSelectionsForDefinitions([Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;
    .locals 8

    .line 65
    array-length v0, p0

    new-array v0, v0, [Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 67
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 68
    aget-object v4, p0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 72
    :cond_0
    iget-object v5, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    if-nez v3, :cond_1

    .line 74
    invoke-interface {p1, v4}, Landroidx/media3/exoplayer/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;)Landroidx/media3/exoplayer/trackselection/ExoTrackSelection;

    move-result-object v3

    aput-object v3, v0, v2

    move v3, v6

    goto :goto_1

    .line 76
    :cond_1
    new-instance v5, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;

    iget-object v6, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->group:Landroidx/media3/common/TrackGroup;

    iget-object v7, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v7, v7, v1

    iget v4, v4, Landroidx/media3/exoplayer/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v5, v6, v7, v4}, Landroidx/media3/exoplayer/trackselection/FixedTrackSelection;-><init>(Landroidx/media3/common/TrackGroup;II)V

    aput-object v5, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static updateParametersWithOverride(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;ILandroidx/media3/exoplayer/source/TrackGroupArray;ZLandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    .line 103
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0, p1, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 107
    invoke-virtual {p0, p1, p2, p4}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILandroidx/media3/exoplayer/source/TrackGroupArray;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$SelectionOverride;)Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 109
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method
