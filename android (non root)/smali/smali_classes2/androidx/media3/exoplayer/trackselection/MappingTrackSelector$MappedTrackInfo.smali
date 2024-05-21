.class public final Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;
.super Ljava/lang/Object;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/trackselection/MappingTrackSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MappedTrackInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo$RendererSupport;
    }
.end annotation


# static fields
.field public static final RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS:I = 0x2

.field public static final RENDERER_SUPPORT_NO_TRACKS:I = 0x0

.field public static final RENDERER_SUPPORT_PLAYABLE_TRACKS:I = 0x3

.field public static final RENDERER_SUPPORT_UNSUPPORTED_TRACKS:I = 0x1


# instance fields
.field private final rendererCount:I

.field private final rendererFormatSupports:[[[I

.field private final rendererMixedMimeTypeAdaptiveSupports:[I

.field private final rendererNames:[Ljava/lang/String;

.field private final rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

.field private final rendererTrackTypes:[I

.field private final unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;


# direct methods
.method constructor <init>([Ljava/lang/String;[I[Landroidx/media3/exoplayer/source/TrackGroupArray;[I[[[ILandroidx/media3/exoplayer/source/TrackGroupArray;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererNames:[Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    iput-object p3, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    iput-object p5, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    iput-object p4, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    iput-object p6, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 135
    array-length p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return-void
.end method


# virtual methods
.method public getAdaptiveSupport(IIZ)I
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 270
    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/TrackGroup;->length:I

    .line 272
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    .line 275
    invoke-virtual {p0, p1, p2, v2}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    if-eqz p3, :cond_1

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 279
    aput v2, v1, v3

    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p3

    .line 283
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(II[I)I

    move-result p0

    return p0
.end method

.method public getAdaptiveSupport(II[I)I
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x0

    move v3, v1

    move-object v4, v2

    move v1, v0

    move v2, v1

    .line 301
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_1

    .line 302
    aget v5, p3, v0

    iget-object v6, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 304
    aget-object v6, v6, p1

    .line 305
    invoke-virtual {v6, p2}, Landroidx/media3/exoplayer/source/TrackGroupArray;->get(I)Landroidx/media3/common/TrackGroup;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroidx/media3/common/TrackGroup;->getFormat(I)Landroidx/media3/common/Format;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    if-nez v2, :cond_0

    move-object v4, v5

    goto :goto_1

    .line 309
    :cond_0
    invoke-static {v4, v5}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    :goto_1
    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 311
    aget-object v2, v2, p1

    aget-object v2, v2, p2

    aget v2, v2, v0

    .line 314
    invoke-static {v2}, Landroidx/media3/exoplayer/RendererCapabilities;->getAdaptiveSupport(I)I

    move-result v2

    .line 312
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    move v2, v6

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererMixedMimeTypeAdaptiveSupports:[I

    .line 318
    aget p0, p0, p1

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_2
    return v3
.end method

.method public getCapabilities(III)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 235
    aget-object p0, p0, p1

    aget-object p0, p0, p2

    aget p0, p0, p3

    return p0
.end method

.method public getRendererCount()I
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    return p0
.end method

.method public getRendererName(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererNames:[Ljava/lang/String;

    .line 151
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getRendererSupport(I)I
    .locals 9

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererFormatSupports:[[[I

    .line 183
    aget-object p0, p0, p1

    .line 184
    array-length p1, p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p1, :cond_4

    aget-object v3, p0, v1

    .line 185
    array-length v4, v3

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    .line 187
    invoke-static {v6}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    if-eq v6, v7, :cond_2

    const/4 v8, 0x2

    if-eq v6, v8, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 p0, 0x4

    if-ne v6, p0, :cond_0

    return v7

    .line 199
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    move v7, v8

    .line 201
    :cond_2
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public getRendererType(I)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 162
    aget p0, p0, p1

    return p0
.end method

.method public getTrackGroups(I)Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackGroups:[Landroidx/media3/exoplayer/source/TrackGroupArray;

    .line 172
    aget-object p0, p0, p1

    return-object p0
.end method

.method public getTrackSupport(III)I
    .locals 0

    .line 248
    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getCapabilities(III)I

    move-result p0

    .line 247
    invoke-static {p0}, Landroidx/media3/exoplayer/RendererCapabilities;->getFormatSupport(I)I

    move-result p0

    return p0
.end method

.method public getTypeSupport(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererCount:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->rendererTrackTypes:[I

    .line 219
    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 220
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererSupport(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getUnmappedTrackGroups()Landroidx/media3/exoplayer/source/TrackGroupArray;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/trackselection/MappingTrackSelector$MappedTrackInfo;->unmappedTrackGroups:Landroidx/media3/exoplayer/source/TrackGroupArray;

    return-object p0
.end method
