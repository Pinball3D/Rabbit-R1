.class final Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;
.super Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;
.source "DefaultTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VideoTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo<",
        "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final allowMixedMimeTypes:Z

.field private final bitrate:I

.field private final codecPreferenceScore:I

.field private final hasMainOrNoRoleFlag:Z

.field private final isWithinMaxConstraints:Z

.field private final isWithinMinConstraints:Z

.field private final isWithinRendererCapabilities:Z

.field private final parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

.field private final pixelCount:I

.field private final preferredMimeTypeMatchIndex:I

.field private final preferredRoleFlagsScore:I

.field private final selectionEligibility:I

.field private final usesHardwareAcceleration:Z

.field private final usesPrimaryDecoder:Z


# direct methods
.method public static synthetic $r8$lambda$edrE9ReKEEMhYewQsqcS1VQ6zfA(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareNonQualityPreferences(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xlJdgRDIOOxPlzotyYFWfne7YcA(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->compareQualityPreferences(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IIZ)V
    .locals 3

    .line 3194
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;I)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3198
    iget-boolean p1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoNonSeamlessAdaptiveness:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x18

    goto :goto_0

    :cond_0
    const/16 p1, 0x10

    .line 3202
    :goto_0
    iget-boolean p2, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedMimeTypeAdaptiveness:Z

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    and-int p2, p6, p1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    const/high16 p2, -0x40800000    # -1.0f

    const/4 p6, -0x1

    if-eqz p7, :cond_6

    .line 3205
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq v1, p6, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->width:I

    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoWidth:I

    if-gt v1, v2, :cond_6

    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq v1, p6, :cond_3

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->height:I

    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoHeight:I

    if-gt v1, v2, :cond_6

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float v1, v1, p2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoFrameRate:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq v1, p6, :cond_5

    iget-object v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v1, v1, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget v2, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->maxVideoBitrate:I

    if-gt v1, v2, :cond_6

    :cond_5
    move v1, p3

    goto :goto_2

    :cond_6
    move v1, v0

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz p7, :cond_b

    .line 3213
    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p7, p7, Lcom/google/android/exoplayer2/Format;->width:I

    if-eq p7, p6, :cond_7

    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p7, p7, Lcom/google/android/exoplayer2/Format;->width:I

    iget v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoWidth:I

    if-lt p7, v1, :cond_b

    :cond_7
    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p7, p7, Lcom/google/android/exoplayer2/Format;->height:I

    if-eq p7, p6, :cond_8

    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p7, p7, Lcom/google/android/exoplayer2/Format;->height:I

    iget v1, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoHeight:I

    if-lt p7, v1, :cond_b

    :cond_8
    iget-object p7, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p7, p7, Lcom/google/android/exoplayer2/Format;->frameRate:F

    cmpl-float p2, p7, p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->frameRate:F

    iget p7, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoFrameRate:I

    int-to-float p7, p7

    cmpl-float p2, p2, p7

    if-ltz p2, :cond_b

    :cond_9
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    if-eq p2, p6, :cond_a

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iget p6, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->minVideoBitrate:I

    if-lt p2, p6, :cond_b

    :cond_a
    move p2, p3

    goto :goto_3

    :cond_b
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    .line 3222
    invoke-static {p5, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    .line 3223
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->bitrate:I

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3224
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    .line 3225
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    iget p6, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoRoleFlags:I

    .line 3226
    invoke-static {p2, p6}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$3800(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    .line 3227
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget p2, p2, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/2addr p2, p3

    if-eqz p2, :cond_c

    goto :goto_4

    :cond_c
    move p2, v0

    goto :goto_5

    :cond_d
    :goto_4
    move p2, p3

    :goto_5
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    move p2, v0

    .line 3229
    :goto_6
    iget-object p6, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p6}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result p6

    if-ge p2, p6, :cond_f

    .line 3230
    iget-object p6, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p6, p6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-eqz p6, :cond_e

    iget-object p6, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p6, p6, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p7, p4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->preferredVideoMimeTypes:Lcom/google/common/collect/ImmutableList;

    .line 3231
    invoke-virtual {p7, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p7

    invoke-virtual {p6, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6

    if-eqz p6, :cond_e

    goto :goto_7

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    :cond_f
    const p2, 0x7fffffff

    :goto_7
    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3238
    invoke-static {p5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getDecoderSupport(I)I

    move-result p2

    const/16 p4, 0x80

    if-ne p2, p4, :cond_10

    move p2, p3

    goto :goto_8

    :cond_10
    move p2, v0

    :goto_8
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    .line 3241
    invoke-static {p5}, Lcom/google/android/exoplayer2/RendererCapabilities;->getHardwareAccelerationSupport(I)I

    move-result p2

    const/16 p4, 0x40

    if-ne p2, p4, :cond_11

    goto :goto_9

    :cond_11
    move p3, v0

    :goto_9
    iput-boolean p3, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    .line 3243
    iget-object p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$3900(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    .line 3244
    invoke-direct {p0, p5, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->evaluateSelectionEligibility(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return-void
.end method

.method private static compareNonQualityPreferences(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .locals 4

    .line 3286
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    .line 3287
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredRoleFlagsScore:I

    .line 3290
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->hasMainOrNoRoleFlag:Z

    .line 3292
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    .line 3294
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    .line 3295
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3297
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->preferredMimeTypeMatchIndex:I

    .line 3298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3299
    invoke-static {}, Lcom/google/common/collect/Ordering;->natural()Lcom/google/common/collect/Ordering;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v3

    .line 3296
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    .line 3301
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean v2, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    .line 3302
    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compareFalseFirst(ZZ)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3303
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    if-eqz v1, :cond_0

    .line 3304
    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->codecPreferenceScore:I

    invoke-virtual {v0, p0, p1}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3306
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method private static compareQualityPreferences(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)I
    .locals 5

    .line 3319
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinRendererCapabilities:Z

    if-eqz v0, :cond_0

    .line 3320
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4000()Lcom/google/common/collect/Ordering;

    move-result-object v0

    goto :goto_0

    .line 3321
    :cond_0
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4000()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v0

    .line 3322
    :goto_0
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3324
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3325
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 3326
    iget-object v4, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v4, v4, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4000()Lcom/google/common/collect/Ordering;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Ordering;->reverse()Lcom/google/common/collect/Ordering;

    move-result-object v4

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$4100()Lcom/google/common/collect/Ordering;

    move-result-object v4

    .line 3323
    :goto_1
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget v2, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    .line 3327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->pixelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v1

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    .line 3328
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->bitrate:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1, v0}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3329
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public static compareSelections(Ljava/util/List;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;)I"
        }
    .end annotation

    .line 3333
    invoke-static {}, Lcom/google/common/collect/ComparisonChain;->start()Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3336
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3337
    invoke-static {p1, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v3, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda0;-><init>()V

    .line 3335
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    .line 3340
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ComparisonChain;->compare(II)Lcom/google/common/collect/ComparisonChain;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3343
    invoke-static {p0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3344
    invoke-static {p1, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    new-instance v1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo$$ExternalSyntheticLambda1;-><init>()V

    .line 3342
    invoke-virtual {v0, p0, p1, v1}, Lcom/google/common/collect/ComparisonChain;->compare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/common/collect/ComparisonChain;

    move-result-object p0

    .line 3346
    invoke-virtual {p0}, Lcom/google/common/collect/ComparisonChain;->result()I

    move-result p0

    return p0
.end method

.method public static createForTrackGroup(ILcom/google/android/exoplayer2/source/TrackGroup;Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;[II)Lcom/google/common/collect/ImmutableList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplayer2/source/TrackGroup;",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;",
            "[II)",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 3146
    iget v0, v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportWidth:I

    iget v1, v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportHeight:I

    iget-boolean v2, v9, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->viewportOrientationMayChange:Z

    .line 3147
    invoke-static {v8, v0, v1, v2}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->access$3700(Lcom/google/android/exoplayer2/source/TrackGroup;IIZ)I

    move-result v10

    .line 3152
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v11

    const/4 v12, 0x0

    move v13, v12

    .line 3153
    :goto_0
    iget v0, v8, Lcom/google/android/exoplayer2/source/TrackGroup;->length:I

    if-ge v13, v0, :cond_2

    .line 3154
    invoke-virtual {v8, v13}, Lcom/google/android/exoplayer2/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format;->getPixelCount()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v10, v1, :cond_1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-gt v0, v10, :cond_0

    goto :goto_1

    :cond_0
    move v7, v12

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    move v7, v0

    .line 3158
    :goto_2
    new-instance v14, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    aget v5, p3, v13

    move-object v0, v14

    move v1, p0

    move-object/from16 v2, p1

    move v3, v13

    move-object/from16 v4, p2

    move/from16 v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;-><init>(ILcom/google/android/exoplayer2/source/TrackGroup;ILcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;IIZ)V

    invoke-virtual {v11, v14}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3168
    :cond_2
    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private evaluateSelectionEligibility(II)I
    .locals 2

    .line 3263
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->roleFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3267
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedRendererCapabilitiesIfNecessary:Z

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    .line 3270
    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->exceedVideoConstraintsIfNecessary:Z

    if-nez v0, :cond_2

    return v1

    .line 3273
    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector;->isSupported(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMinConstraints:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isWithinMaxConstraints:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget v0, v0, Lcom/google/android/exoplayer2/Format;->bitrate:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceHighestSupportedBitrate:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->forceLowestBitrate:Z

    if-nez p0, :cond_3

    and-int p0, p1, p2

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public getSelectionEligibility()I
    .locals 0

    iget p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->selectionEligibility:I

    return p0
.end method

.method public bridge synthetic isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$TrackInfo;)Z
    .locals 0

    .line 3138
    check-cast p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)Z

    move-result p0

    return p0
.end method

.method public isCompatibleForAdaptationWith(Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->allowMixedMimeTypes:Z

    if-nez v0, :cond_0

    .line 3254
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 3255
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->parameters:Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$Parameters;->allowVideoMixedDecoderSupportAdaptiveness:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    iget-boolean v1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesPrimaryDecoder:Z

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/trackselection/DefaultTrackSelector$VideoTrackInfo;->usesHardwareAcceleration:Z

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
