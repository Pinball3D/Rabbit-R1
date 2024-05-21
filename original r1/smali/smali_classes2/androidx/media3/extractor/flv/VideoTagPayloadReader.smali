.class final Landroidx/media3/extractor/flv/VideoTagPayloadReader;
.super Landroidx/media3/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private hasOutputKeyframe:Z

.field private final nalLength:Landroidx/media3/common/util/ParsableByteArray;

.field private final nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    .line 56
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object v0, Landroidx/media3/container/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 57
    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method protected parseHeader(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    iput v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 72
    :cond_1
    new-instance p0, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video format not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected parsePayload(Landroidx/media3/common/util/ParsableByteArray;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readInt24()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    .line 87
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 88
    invoke-static {v0}, Landroidx/media3/extractor/AvcConfig;->parse(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/extractor/AvcConfig;

    move-result-object p1

    .line 89
    iget v0, p1, Landroidx/media3/extractor/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 91
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "video/avc"

    .line 93
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Landroidx/media3/extractor/AvcConfig;->codecs:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/extractor/AvcConfig;->width:I

    .line 95
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/extractor/AvcConfig;->height:I

    .line 96
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p1, Landroidx/media3/extractor/AvcConfig;->pixelWidthHeightRatio:F

    .line 97
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Landroidx/media3/extractor/AvcConfig;->initializationData:Ljava/util/List;

    .line 98
    invoke-virtual {v0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    .line 100
    iget-object v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    iget-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p2, :cond_1

    move v6, p2

    goto :goto_0

    :cond_1
    move v6, p3

    :goto_0
    iget-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    :cond_2
    iget-object v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 111
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 112
    aput-byte p3, v0, p3

    .line 113
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 114
    aput-byte p3, v0, v1

    iget v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    move v7, p3

    .line 121
    :goto_1
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 123
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v0, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    iget-object v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 124
    invoke-virtual {v2, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalLength:Landroidx/media3/common/util/ParsableByteArray;

    .line 125
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    iget-object v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    .line 128
    invoke-virtual {v3, p3}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    iget-object v8, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->nalStartCode:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v3, v8, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x4

    .line 133
    iget-object v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, p1, v2}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/util/ParsableByteArray;I)V

    add-int/2addr v7, v2

    goto :goto_1

    .line 136
    :cond_3
    iget-object v3, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->output:Landroidx/media3/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p2

    :cond_4
    return p3
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return-void
.end method
