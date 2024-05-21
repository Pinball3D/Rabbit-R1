.class final Landroidx/media3/extractor/ogg/OpusReader;
.super Landroidx/media3/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field private static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field private firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroidx/media3/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private static peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z
    .locals 4

    .line 132
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 136
    array-length v1, p1

    new-array v1, v1, [B

    .line 137
    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Landroidx/media3/common/util/ParsableByteArray;->readBytes([BII)V

    .line 138
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    .line 139
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static verifyBitstreamType(Landroidx/media3/common/util/ParsableByteArray;)Z
    .locals 1

    sget-object v0, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 44
    invoke-static {p0, v0}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected preparePayload(Landroidx/media3/common/util/ParsableByteArray;)J
    .locals 2

    .line 57
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/extractor/OpusUtil;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide p0

    return-wide p0
.end method

.method protected readHeaders(Landroidx/media3/common/util/ParsableByteArray;JLandroidx/media3/extractor/ogg/StreamReader$SetupData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    .line 64
    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object p0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 66
    invoke-static {p0}, Landroidx/media3/extractor/OpusUtil;->getChannelCount([B)I

    move-result p1

    .line 67
    invoke-static {p0}, Landroidx/media3/extractor/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object p0

    .line 69
    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    if-eqz p2, :cond_0

    return p3

    .line 78
    :cond_0
    new-instance p2, Landroidx/media3/common/Format$Builder;

    invoke-direct {p2}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v0, "audio/opus"

    .line 80
    invoke-virtual {p2, v0}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p2

    .line 81
    invoke-virtual {p2, p1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const p2, 0xbb80

    .line 82
    invoke-virtual {p1, p2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    return p3

    :cond_1
    sget-object p2, Landroidx/media3/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    .line 86
    invoke-static {p1, p2}, Landroidx/media3/extractor/ogg/OpusReader;->peekPacketStartsWith(Landroidx/media3/common/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz v0, :cond_2

    return p3

    :cond_2
    iput-boolean p3, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 99
    array-length p0, p2

    invoke-virtual {p1, p0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    .line 101
    invoke-static {p1, v1, v1}, Landroidx/media3/extractor/VorbisUtil;->readVorbisCommentHeader(Landroidx/media3/common/util/ParsableByteArray;ZZ)Landroidx/media3/extractor/VorbisUtil$CommentHeader;

    move-result-object p0

    .line 104
    iget-object p0, p0, Landroidx/media3/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 105
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-nez p0, :cond_3

    return p3

    .line 109
    :cond_3
    iget-object p1, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    .line 112
    invoke-virtual {p1}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object p2, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    iget-object p2, p2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 113
    invoke-virtual {p0, p2}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    iput-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    return p3

    .line 119
    :cond_4
    iget-object p0, p4, Landroidx/media3/extractor/ogg/StreamReader$SetupData;->format:Landroidx/media3/common/Format;

    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method protected reset(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Landroidx/media3/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    :cond_0
    return-void
.end method
