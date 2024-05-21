.class final Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;
.super Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;
.source "AudioTagPayloadReader.java"


# static fields
.field private static final AAC_PACKET_TYPE_AAC_RAW:I = 0x1

.field private static final AAC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final AUDIO_FORMAT_AAC:I = 0xa

.field private static final AUDIO_FORMAT_ALAW:I = 0x7

.field private static final AUDIO_FORMAT_MP3:I = 0x2

.field private static final AUDIO_FORMAT_ULAW:I = 0x8

.field private static final AUDIO_SAMPLING_RATE_TABLE:[I


# instance fields
.field private audioFormat:I

.field private hasOutputFormat:Z

.field private hasParsedAudioDataHeader:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x5622

    const v1, 0xac44

    const/16 v2, 0x1588

    const/16 v3, 0x2b11

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplayer2/extractor/TrackOutput;)V

    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    shr-int/2addr p1, v2

    and-int/lit8 p1, p1, 0x3

    sget-object v0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->AUDIO_SAMPLING_RATE_TABLE:[I

    .line 61
    aget p1, v0, p1

    .line 62
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v2, "audio/mpeg"

    .line 64
    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    goto :goto_2

    :cond_0
    const/4 p1, 0x7

    if-eq v0, p1, :cond_3

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    if-ne v0, p1, :cond_2

    goto :goto_2

    .line 82
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Audio format not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/android/exoplayer2/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    if-ne v0, p1, :cond_4

    const-string p1, "audio/g711-alaw"

    goto :goto_1

    :cond_4
    const-string p1, "audio/g711-mlaw"

    .line 73
    :goto_1
    new-instance v0, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 75
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 76
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    const/16 v0, 0x1f40

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    :goto_2
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasParsedAudioDataHeader:Z

    goto :goto_3

    .line 87
    :cond_5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_3
    return v1
.end method

.method protected parsePayload(Lcom/google/android/exoplayer2/util/ParsableByteArray;J)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v7

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 97
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p2

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return v2

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    if-nez v3, :cond_1

    .line 103
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result p2

    new-array p3, p2, [B

    .line 104
    invoke-virtual {p1, p3, v1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    .line 105
    invoke-static {p3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object p1

    .line 106
    new-instance p2, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    const-string v0, "audio/mp4a-latm"

    .line 108
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    iget-object v0, p1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    .line 109
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    iget v0, p1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    .line 110
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p2

    iget p1, p1, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    .line 111
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 112
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 114
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->hasOutputFormat:Z

    return v1

    :cond_1
    iget v3, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->audioFormat:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 118
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    invoke-interface {v0, p1, v9}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    .line 120
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/flv/AudioTagPayloadReader;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v6, p2

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return v2
.end method

.method public seek()V
    .locals 0

    return-void
.end method
