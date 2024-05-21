.class public final Landroidx/media3/extractor/flv/FlvExtractor;
.super Ljava/lang/Object;
.source "FlvExtractor.java"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# static fields
.field public static final FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

.field private static final FLV_HEADER_SIZE:I = 0x9

.field private static final FLV_TAG:I = 0x464c56

.field private static final FLV_TAG_HEADER_SIZE:I = 0xb

.field private static final STATE_READING_FLV_HEADER:I = 0x1

.field private static final STATE_READING_TAG_DATA:I = 0x4

.field private static final STATE_READING_TAG_HEADER:I = 0x3

.field private static final STATE_SKIPPING_TO_TAG_HEADER:I = 0x2

.field private static final TAG_TYPE_AUDIO:I = 0x8

.field private static final TAG_TYPE_SCRIPT_DATA:I = 0x12

.field private static final TAG_TYPE_VIDEO:I = 0x9


# instance fields
.field private audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

.field private bytesToNextTagHeader:I

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private final headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private mediaTagTimestampOffsetUs:J

.field private final metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

.field private outputFirstSample:Z

.field private outputSeekMap:Z

.field private final scratch:Landroidx/media3/common/util/ParsableByteArray;

.field private state:I

.field private final tagData:Landroidx/media3/common/util/ParsableByteArray;

.field private tagDataSize:I

.field private final tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

.field private tagTimestampUs:J

.field private tagType:I

.field private videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Landroidx/media3/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/FlvExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/extractor/flv/FlvExtractor;->FACTORY:Landroidx/media3/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 97
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 98
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 99
    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 100
    new-instance v0, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    invoke-direct {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return-void
.end method

.method private ensureReadyForMediaOutput()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 313
    new-instance v1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {v0, v1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    :cond_0
    return-void
.end method

.method private getCurrentTimestampUs()J
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    iget-wide v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 321
    invoke-virtual {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    :goto_0
    return-wide v0
.end method

.method static synthetic lambda$static$0()[Landroidx/media3/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media3/extractor/Extractor;

    .line 46
    new-instance v1, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {v1}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 300
    invoke-virtual {v1}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 301
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iget v3, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/util/ParsableByteArray;->reset([BI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 303
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    iget v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 305
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->setLimit(I)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    .line 306
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagData:Landroidx/media3/common/util/ParsableByteArray;

    return-object p0
.end method

.method private readFlvHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 195
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 200
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x4

    .line 201
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 202
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/2addr p1, v3

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-nez p1, :cond_3

    .line 206
    new-instance p1, Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/16 v4, 0x8

    .line 207
    invoke-interface {v0, v4, v3}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    :cond_3
    const/4 p1, 0x2

    if-eqz v1, :cond_4

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-nez v0, :cond_4

    .line 210
    new-instance v0, Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    iget-object v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 211
    invoke-interface {v1, v2, p1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;-><init>(Landroidx/media3/extractor/TrackOutput;)V

    iput-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    :cond_4
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 213
    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->headerBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 216
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private readTagData(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->getCurrentTimestampUs()J

    move-result-wide v0

    iget v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    const/16 v3, 0x8

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    if-eqz v3, :cond_1

    .line 269
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    iget-object v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->audioReader:Landroidx/media3/extractor/flv/AudioTagPayloadReader;

    .line 270
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroidx/media3/extractor/flv/AudioTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result p1

    :cond_0
    :goto_0
    move v0, v6

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    if-eqz v3, :cond_2

    .line 272
    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;->ensureReadyForMediaOutput()V

    iget-object v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->videoReader:Landroidx/media3/extractor/flv/VideoTagPayloadReader;

    .line 273
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroidx/media3/extractor/flv/VideoTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result p1

    goto :goto_0

    :cond_2
    const/16 v3, 0x12

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 275
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->prepareTagData(Landroidx/media3/extractor/ExtractorInput;)Landroidx/media3/common/util/ParsableByteArray;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->consume(Landroidx/media3/common/util/ParsableByteArray;J)Z

    move-result p1

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 276
    invoke-virtual {v0}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 278
    new-instance v3, Landroidx/media3/extractor/IndexSeekMap;

    iget-object v7, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 280
    invoke-virtual {v7}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTagPositions()[J

    move-result-object v7

    iget-object v8, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 281
    invoke-virtual {v8}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getKeyFrameTimesUs()[J

    move-result-object v8

    invoke-direct {v3, v7, v8, v0, v1}, Landroidx/media3/extractor/IndexSeekMap;-><init>([J[JJ)V

    .line 278
    invoke-interface {v2, v3}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputSeekMap:Z

    goto :goto_0

    :cond_3
    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    .line 286
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    move v0, p1

    :goto_1
    iget-boolean v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    iput-boolean v6, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->metadataReader:Landroidx/media3/extractor/flv/ScriptTagPayloadReader;

    .line 292
    invoke-virtual {p1}, Landroidx/media3/extractor/flv/ScriptTagPayloadReader;->getDurationUs()J

    move-result-wide v1

    cmp-long p1, v1, v4

    if-nez p1, :cond_4

    iget-wide v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    neg-long v1, v1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    :goto_2
    iput-wide v1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->mediaTagTimestampOffsetUs:J

    :cond_5
    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 p1, 0x2

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return v0
.end method

.method private readTagHeader(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 241
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 246
    invoke-virtual {p1, v1}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 247
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagType:I

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 248
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagDataSize:I

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 249
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    .line 250
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shl-int/lit8 p1, p1, 0x18

    int-to-long v0, p1

    iget-wide v4, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    or-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagTimestampUs:J

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->tagHeaderBuffer:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v0, 0x3

    .line 251
    invoke-virtual {p1, v0}, Landroidx/media3/common/util/ParsableByteArray;->skipBytes(I)V

    const/4 p1, 0x4

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return v3
.end method

.method private skipToTagHeader(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    .line 228
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->skipFully(I)V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public read(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 158
    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    iget p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 175
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readTagData(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 181
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 170
    :cond_2
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readTagHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1

    .line 167
    :cond_3
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->skipToTagHeader(Landroidx/media3/extractor/ExtractorInput;)V

    goto :goto_0

    .line 162
    :cond_4
    invoke-direct {p0, p1}, Landroidx/media3/extractor/flv/FlvExtractor;->readFlvHeader(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result p2

    if-nez p2, :cond_0

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    iput-boolean p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->outputFirstSample:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->state:I

    :goto_0
    iput p2, p0, Landroidx/media3/extractor/flv/FlvExtractor;->bytesToNextTagHeader:I

    return-void
.end method

.method public sniff(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 107
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 108
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 109
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    const v1, 0x464c56

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 114
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 115
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 116
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    and-int/lit16 v0, v0, 0xfa

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 121
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 122
    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 123
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 125
    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->resetPeekPosition()V

    .line 126
    invoke-interface {p1, v0}, Landroidx/media3/extractor/ExtractorInput;->advancePeekPosition(I)V

    iget-object v0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 129
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->getData()[B

    move-result-object v0

    invoke-interface {p1, v0, v2, v1}, Landroidx/media3/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 130
    invoke-virtual {p1, v2}, Landroidx/media3/common/util/ParsableByteArray;->setPosition(I)V

    iget-object p0, p0, Landroidx/media3/extractor/flv/FlvExtractor;->scratch:Landroidx/media3/common/util/ParsableByteArray;

    .line 132
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->readInt()I

    move-result p0

    if-nez p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
