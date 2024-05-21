.class public final Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;
.super Ljava/lang/Object;
.source "TrackSelectionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Lcom/google/android/exoplayer2/trackselection/TrackSelection;)Lcom/google/android/exoplayer2/Tracks;
    .locals 3

    .line 148
    array-length v0, p1

    new-array v0, v0, [Ljava/util/List;

    const/4 v1, 0x0

    .line 149
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 150
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 151
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

    .line 153
    :cond_1
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplayer2/Tracks;

    move-result-object p0

    return-object p0
.end method

.method public static buildTracks(Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplayer2/Tracks;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;",
            "[",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplayer2/trackselection/TrackSelection;",
            ">;)",
            "Lcom/google/android/exoplayer2/Tracks;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 168
    new-instance v1, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v1}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 170
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 172
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v4

    .line 173
    aget-object v5, p1, v3

    move v6, v2

    .line 174
    :goto_1
    iget v7, v4, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v6, v7, :cond_4

    .line 175
    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v7

    .line 177
    invoke-virtual {v0, v3, v6, v2}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_2

    :cond_0
    move v8, v2

    .line 180
    :goto_2
    iget v10, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v10, v10, [I

    .line 181
    iget v11, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v11, v11, [Z

    move v12, v2

    .line 182
    :goto_3
    iget v13, v7, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v12, v13, :cond_3

    .line 184
    invoke-virtual {v0, v3, v6, v12}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v13

    aput v13, v10, v12

    move v13, v2

    .line 186
    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_2

    .line 187
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/exoplayer2/trackselection/TrackSelection;

    .line 188
    invoke-interface {v14}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/google/android/exoplayer2/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 189
    invoke-interface {v14, v12}, Lcom/google/android/exoplayer2/trackselection/TrackSelection;->indexOf(I)I

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

    .line 194
    :goto_5
    aput-boolean v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 196
    :cond_3
    new-instance v9, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v9, v7, v8, v10, v11}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v9}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/trackselection/MappingTrackSelector$MappedTrackInfo;->getUnmappedTrackGroups()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    move v3, v2

    .line 200
    :goto_6
    iget v4, v0, Lcom/google/android/exoplayer2/source/TrackGroupArray;->length:I

    if-ge v3, v4, :cond_6

    .line 201
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/source/TrackGroupArray;->get(I)Lcom/google/android/exoplayer2/source/TrackGroup;

    move-result-object v4

    .line 202
    iget v5, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v5, v5, [I

    .line 203
    invoke-static {v5, v2}, Ljava/util/Arrays;->fill([II)V

    .line 204
    iget v6, v4, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    new-array v6, v6, [Z

    .line 205
    new-instance v7, Lcom/google/android/exoplayer2/Tracks$Group;

    invoke-direct {v7, v4, v2, v5, v6}, Lcom/google/android/exoplayer2/Tracks$Group;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;Z[I[Z)V

    invoke-virtual {v1, v7}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 208
    :cond_6
    new-instance v0, Lcom/google/android/exoplayer2/Tracks;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/Tracks;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static createFallbackOptions(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;)Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;
    .locals 7

    .line 120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 121
    invoke-interface {p0}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    .line 124
    invoke-interface {p0, v4, v0, v1}, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;->isBlacklisted(IJ)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;

    const/4 v0, 0x1

    invoke-direct {p0, v0, v3, v2, v5}, Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy$FallbackOptions;-><init>(IIII)V

    return-object p0
.end method

.method public static createTrackSelectionsForDefinitions([Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;)[Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;
    .locals 8

    .line 63
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 65
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_2

    .line 66
    aget-object v4, p0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 70
    :cond_0
    iget-object v5, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    array-length v5, v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    if-nez v3, :cond_1

    .line 72
    invoke-interface {p1, v4}, Lcom/google/android/exoplayer2/trackselection/TrackSelectionUtil$AdaptiveTrackSelectionFactory;->createAdaptiveTrackSelection(Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;)Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection;

    move-result-object v3

    aput-object v3, v0, v2

    move v3, v6

    goto :goto_1

    .line 74
    :cond_1
    new-instance v5, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;

    iget-object v6, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->group:Lcom/google/android/exoplayer2/source/TrackGroup;

    iget-object v7, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->tracks:[I

    aget v7, v7, v1

    iget v4, v4, Lcom/google/android/exoplayer2/trackselection/ExoTrackSelection$Definition;->type:I

    invoke-direct {v5, v6, v7, v4}, Lcom/google/android/exoplayer2/trackselection/FixedTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;II)V

    aput-object v5, v0, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static updateParametersWithOverride(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;ILcom/google/android/exoplayer2/source/TrackGroupArray;ZLcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->clearSelectionOverrides(I)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    .line 103
    invoke-virtual {p0, p1, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, p4}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplayer2/source/TrackGroupArray;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method
