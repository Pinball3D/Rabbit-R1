.class final Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;
.super Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AudioTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitrate:I

.field private final channelCount:I

.field private final hasMainOrNoRoleFlag:Z

.field private final isDefaultSelectionFlag:Z

.field private final isWithinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final language:Ljava/lang/String;

.field private final localeLanguageMatchIndex:I

.field private final localeLanguageScore:I

.field private final parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

.field private final preferredLanguageIndex:I

.field private final preferredLanguageScore:I

.field private final preferredMimeTypeMatchIndex:I

.field private final preferredRoleFlagsScore:I

.field private final sampleRate:I

.field private final selectionEligibility:I

.field private final usesHardwareAcceleration:Z

.field private final usesPrimaryDecoder:Z


# direct methods
.method public constructor <init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/TrackGroup;",
            "I",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "IZ",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 3466
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;I)V

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3468
    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->normalizeUndeterminedLanguageToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3470
    invoke-static {p5, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    move p2, p1

    .line 3473
    :goto_0
    iget-object p3, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p3

    const v0, 0x7fffffff

    if-ge p2, p3, :cond_1

    .line 3474
    iget-object p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioLanguages:Lcom/google/common/collect/ImmutableList;

    .line 3477
    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3475
    invoke-static {p3, v1, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result p3

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    move p3, p1

    move p2, v0

    :goto_1
    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    iput p3, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 3487
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->roleFlags:I

    iget p3, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioRoleFlags:I

    .line 3488
    invoke-static {p2, p3}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4000(II)I

    move-result p2

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 3489
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->roleFlags:I

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->roleFlags:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, p1

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3490
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_4

    move p2, p3

    goto :goto_4

    :cond_4
    move p2, p1

    :goto_4
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 3491
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->channelCount:I

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 3492
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->sampleRate:I

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 3493
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    iput p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 3494
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq p2, v1, :cond_5

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->bitrate:I

    iget v2, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->maxAudioBitrate:I

    if-gt p2, v2, :cond_7

    :cond_5
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->channelCount:I

    if-eq p2, v1, :cond_6

    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p2, p2, Landroidx/media3/common/Format;->channelCount:I

    iget v1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->maxAudioChannelCount:I

    if-gt p2, v1, :cond_7

    :cond_6
    iget-object p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    .line 3498
    invoke-interface {p7, p2}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    move p2, p3

    goto :goto_5

    :cond_7
    move p2, p1

    :goto_5
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 3499
    invoke-static {}, Landroidx/media3/common/util/Util;->getSystemLanguageCodes()[Ljava/lang/String;

    move-result-object p2

    move p7, p1

    .line 3502
    :goto_6
    array-length v1, p2

    if-ge p7, v1, :cond_9

    .line 3503
    iget-object v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    aget-object v2, p2, p7

    .line 3504
    invoke-static {v1, v2, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->getFormatLanguageScore(Landroidx/media3/common/Format;Ljava/lang/String;Z)I

    move-result v1

    if-lez v1, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 p7, p7, 0x1

    goto :goto_6

    :cond_9
    move v1, p1

    move p7, v0

    :goto_7
    iput p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    iput v1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    move p2, p1

    .line 3515
    :goto_8
    iget-object p7, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p7}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p7

    if-ge p2, p7, :cond_b

    .line 3516
    iget-object p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object p7, p7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p7, :cond_a

    iget-object p7, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object p7, p7, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->preferredAudioMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 3517
    invoke-virtual {v1, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_a

    move v0, p2

    goto :goto_9

    :cond_a
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    iput v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3524
    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_c

    move p2, p3

    goto :goto_a

    :cond_c
    move p2, p1

    :goto_a
    iput-boolean p2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 3527
    invoke-static {p5}, Landroidx/media3/exoplayer/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_d

    move p1, p3

    :cond_d
    iput-boolean p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 3529
    invoke-direct {p0, p5, p6}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->evaluateSelectionEligibility(IZ)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    return-void
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 3622
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-static {p1}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILandroidx/media3/common/TrackGroup;Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;[IZLcom/google/common/base/Predicate;)Lcom/google/common/collect/ImmutableList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/TrackGroup;",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;",
            "[IZ",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/common/Format;",
            ">;)",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;",
            ">;"
        }
    .end annotation

    .line 3424
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    const/4 v1, 0x0

    move-object v10, p1

    .line 3425
    :goto_0
    iget v2, v10, Landroidx/media3/common/TrackGroup;->length:I

    if-ge v1, v2, :cond_0

    .line 3426
    new-instance v11, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    aget v7, p3, v1

    move-object v2, v11

    move v3, p0

    move-object v4, p1

    move v5, v1

    move-object v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;-><init>(ILandroidx/media3/common/TrackGroup;ILandroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;IZLcom/google/common/base/Predicate;)V

    invoke-virtual {v0, v11}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3436
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private evaluateSelectionEligibility(IZ)I
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3604
    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, v0}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3607
    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->exceedAudioConstraintsIfNecessary:Z

    if-nez v0, :cond_1

    return v1

    .line 3610
    :cond_1
    invoke-static {p1, v1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget p1, p1, Landroidx/media3/common/Format;->bitrate:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez p1, :cond_3

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowMultipleAdaptiveSelections:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_3

    :cond_2
    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_0

    .line 3559
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_0

    .line 3560
    :cond_0
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3561
    :goto_0
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinRendererCapabilities:Z

    .line 3562
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 3565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageIndex:I

    .line 3566
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3567
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3564
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredLanguageScore:I

    .line 3568
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredRoleFlagsScore:I

    .line 3569
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isDefaultSelectionFlag:Z

    .line 3571
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3572
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 3574
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageMatchIndex:I

    .line 3575
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3576
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3573
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->localeLanguageScore:I

    .line 3577
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isWithinConstraints:Z

    .line 3579
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3581
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3582
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3583
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3580
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 3585
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 3586
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3587
    iget-boolean v4, v4, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v4, :cond_1

    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4200()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4300()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3584
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    .line 3589
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    .line 3590
    invoke-virtual {v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    .line 3592
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->channelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    .line 3593
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->sampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 3595
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->bitrate:I

    .line 3596
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    .line 3598
    iget-object p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->language:Ljava/lang/String;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector;->access$4300()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3594
    :goto_2
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3599
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 3414
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->compareTo(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)I

    move-result p0

    return p0
.end method

.method public getSelectionEligibility()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    .line 3539
    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedChannelCountAdaptiveness:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->channelCount:I

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v2, v2, Landroidx/media3/common/Format;->channelCount:I

    if-ne v0, v2, :cond_3

    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedMimeTypeAdaptiveness:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v2, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget-object v2, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 3544
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedSampleRateAdaptiveness:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v0, v0, Landroidx/media3/common/Format;->sampleRate:I

    iget-object v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->format:Landroidx/media3/common/Format;

    iget v1, v1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->parameters:Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$Parameters;->allowAudioMixedDecoderSupportAdaptiveness:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_3

    iget-boolean p0, p0, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean p1, p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->usesHardwareAcceleration:Z

    if-ne p0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0

    .line 3414
    check-cast p1, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;->isCompatibleForAdaptationWith(Landroidx/media3/exoplayer/trackselection/DefaultTrackSelector$AudioTrackInfo;)Z

    move-result p0

    return p0
.end method
