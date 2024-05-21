.class final Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;
.super Lcom/google/android/exoplayer2/source/SampleQueue;
.source "HlsSampleStreamWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HlsSampleQueue"
.end annotation


# instance fields
.field private drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field private final overridingDrmInitData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/upstream/Allocator;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionManager;",
            "Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/exoplayer2/drm/DrmInitData;",
            ">;)V"
        }
    .end annotation

    .line 1664
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/SampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;)V

    iput-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$1;)V
    .locals 0

    .line 1634
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;-><init>(Lcom/google/android/exoplayer2/upstream/Allocator;Lcom/google/android/exoplayer2/drm/DrmSessionManager;Lcom/google/android/exoplayer2/drm/DrmSessionEventListener$EventDispatcher;Ljava/util/Map;)V

    return-void
.end method

.method private getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 6

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 1716
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 1719
    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    .line 1720
    instance-of v5, v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    if-eqz v5, :cond_1

    .line 1721
    check-cast v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    const-string v5, "com.apple.streaming.transportStreamTimestamp"

    .line 1722
    iget-object v4, v4, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_3

    return-object p1

    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    return-object p0

    :cond_4
    add-int/lit8 p0, v0, -0x1

    .line 1734
    new-array p0, p0, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    :goto_2
    if-ge v1, v0, :cond_7

    if-eq v1, v2, :cond_6

    if-ge v1, v2, :cond_5

    move v3, v1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v1, -0x1

    .line 1738
    :goto_3
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v4

    aput-object v4, p0, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1741
    :cond_7
    new-instance p1, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object p1
.end method


# virtual methods
.method public getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1692
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->overridingDrmInitData:Ljava/util/Map;

    .line 1695
    iget-object v2, v0, Lcom/google/android/exoplayer2/drm/DrmInitData;->schemeType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1700
    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->getAdjustedMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    .line 1701
    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    if-ne v0, v2, :cond_2

    iget-object v2, p1, Lcom/google/android/exoplayer2/Format;->metadata:Lcom/google/android/exoplayer2/metadata/Metadata;

    if-eq v1, v2, :cond_3

    .line 1702
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 1704
    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedUpstreamFormat(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    return-object p0
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 0

    .line 1759
    invoke-super/range {p0 .. p6}, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 1685
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->invalidateUpstreamFormatAdjustment()V

    return-void
.end method

.method public setSourceChunk(Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;)V
    .locals 0

    .line 1669
    iget p1, p1, Lcom/google/android/exoplayer2/source/hls/HlsMediaChunk;->uid:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$HlsSampleQueue;->sourceId(I)V

    return-void
.end method
