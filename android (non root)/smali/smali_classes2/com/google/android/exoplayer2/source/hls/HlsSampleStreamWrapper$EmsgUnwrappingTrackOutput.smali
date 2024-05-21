.class Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;
.super Ljava/lang/Object;
.source "HlsSampleStreamWrapper.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmsgUnwrappingTrackOutput"
.end annotation


# static fields
.field private static final EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

.field private static final ID3_FORMAT:Lcom/google/android/exoplayer2/Format;


# instance fields
.field private buffer:[B

.field private bufferPosition:I

.field private final delegate:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field private final delegateFormat:Lcom/google/android/exoplayer2/Format;

.field private final emsgDecoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

.field private format:Lcom/google/android/exoplayer2/Format;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1766
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "application/id3"

    .line 1767
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ID3_FORMAT:Lcom/google/android/exoplayer2/Format;

    .line 1768
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    .line 1769
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;I)V
    .locals 1

    .line 1780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    new-instance v0, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgDecoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    sget-object p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->EMSG_FORMAT:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    goto :goto_0

    .line 1791
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown metadataType: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p1, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ID3_FORMAT:Lcom/google/android/exoplayer2/Format;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    :goto_0
    const/4 p1, 0x0

    new-array p2, p1, [B

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-void
.end method

.method private emsgContainsExpectedWrappedFormat(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z
    .locals 0

    .line 1866
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    .line 1867
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1868
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ensureBufferCapacity(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    .line 1872
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 1873
    div-int/lit8 v1, p1, 0x2

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    :cond_0
    return-void
.end method

.method private getSampleAndTrimBuffer(II)Lcom/google/android/exoplayer2/util/ParsableByteArray;
    .locals 3

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    sub-int/2addr v0, p2

    sub-int p1, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    .line 1889
    invoke-static {v1, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 1890
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    const/4 v2, 0x0

    .line 1892
    invoke-static {p1, v0, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-object v1
.end method


# virtual methods
.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    .line 1801
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p4, p2

    .line 1808
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ensureBufferCapacity(I)V

    iget-object p4, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    .line 1809
    invoke-interface {p1, p4, v0, p2}, Lcom/google/android/exoplayer2/upstream/DataReader;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 1814
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    iget p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)V
    .locals 1

    iget p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p3, p2

    .line 1823
    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->ensureBufferCapacity(I)V

    iget-object p3, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->buffer:[B

    iget v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    .line 1824
    invoke-virtual {p1, p3, v0, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    iget p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->bufferPosition:I

    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lcom/google/android/exoplayer2/Format;

    .line 1835
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    invoke-direct {p0, p4, p5}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->getSampleAndTrimBuffer(II)Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-result-object p4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lcom/google/android/exoplayer2/Format;

    .line 1838
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lcom/google/android/exoplayer2/Format;

    .line 1841
    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v1, "application/x-emsg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HlsSampleStreamWrapper"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgDecoder:Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;

    .line 1843
    invoke-virtual {v0, p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessageDecoder;->decode(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-result-object p4

    .line 1844
    invoke-direct {p0, p4}, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->emsgContainsExpectedWrappedFormat(Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegateFormat:Lcom/google/android/exoplayer2/Format;

    .line 1845
    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 1849
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s"

    .line 1847
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1845
    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1852
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    .line 1853
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;->getWrappedMetadataBytes()[B

    move-result-object p4

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {v0, p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    move-object p4, v0

    .line 1859
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 1861
    invoke-interface {v0, p4, v4}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->delegate:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-wide v1, p1

    move v3, p3

    move v5, p5

    move-object v6, p6

    .line 1862
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void

    .line 1855
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Ignoring sample for unsupported format: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/hls/HlsSampleStreamWrapper$EmsgUnwrappingTrackOutput;->format:Lcom/google/android/exoplayer2/Format;

    iget-object p0, p0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
