.class public final Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;
.super Ljava/lang/Object;
.source "AmrExtractor.java"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor$Flags;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING:I = 0x1

.field public static final FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS:I = 0x2

.field private static final MAX_FRAME_SIZE_BYTES:I

.field private static final NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD:I = 0x14

.field private static final SAMPLE_RATE_NB:I = 0x1f40

.field private static final SAMPLE_RATE_WB:I = 0x3e80

.field private static final SAMPLE_TIME_PER_FRAME_US:I = 0x4e20

.field private static final amrSignatureNb:[B

.field private static final amrSignatureWb:[B

.field private static final frameSizeBytesByTypeNb:[I

.field private static final frameSizeBytesByTypeWb:[I


# instance fields
.field private currentSampleBytesRemaining:I

.field private currentSampleSize:I

.field private currentSampleTimeUs:J

.field private extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

.field private firstSamplePosition:J

.field private firstSampleSize:I

.field private final flags:I

.field private hasOutputFormat:Z

.field private hasOutputSeekMap:Z

.field private isWideBand:Z

.field private numSamplesWithSameSize:I

.field private final scratch:[B

.field private seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

.field private timeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->FACTORY:Lcom/google/android/exoplayer2/extractor/ExtractorsFactory;

    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    const-string v1, "#!AMR\n"

    .line 135
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    const-string v1, "#!AMR-WB\n"

    .line 136
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getUtf8Bytes(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    const/16 v1, 0x8

    aget v0, v0, v1

    sput v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    return-void

    :array_0
    .array-data 4
        0xd
        0xe
        0x10
        0x12
        0x14
        0x15
        0x1b
        0x20
        0x6
        0x7
        0x6
        0x6
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x12
        0x18
        0x21
        0x25
        0x29
        0x2f
        0x33
        0x3b
        0x3d
        0x6
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 169
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->flags:I

    const/4 p1, 0x1

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    return-void
.end method

.method static amrSignatureNb()[B
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 239
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method static amrSignatureWb()[B
    .locals 2

    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    .line 243
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private assertInitialized()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput",
            "trackOutput"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 403
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 404
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static frameSizeBytesByTypeNb(I)I
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    .line 231
    aget p0, v0, p0

    return p0
.end method

.method static frameSizeBytesByTypeWb(I)I
    .locals 1

    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 235
    aget p0, v0, p0

    return p0
.end method

.method private static getBitrateFromFrameSize(IJ)I
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7a1200

    mul-long/2addr v0, v2

    .line 415
    div-long/2addr v0, p1

    long-to-int p0, v0

    return p0
.end method

.method private getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;
    .locals 11

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    const-wide/16 v1, 0x4e20

    .line 396
    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->getBitrateFromFrameSize(IJ)I

    move-result v8

    .line 397
    new-instance v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v9, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    move-object v3, v0

    move-wide v4, p1

    move v10, p3

    invoke-direct/range {v3 .. v10}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;-><init>(JJIIZ)V

    return-object v0
.end method

.method private getFrameSizeInBytes(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal AMR "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_0

    const-string p0, "WB"

    goto :goto_0

    :cond_0
    const-string p0, "NB"

    .line 350
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " frame type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 349
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeWb:[I

    .line 354
    aget p0, p0, p1

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->frameSizeBytesByTypeNb:[I

    aget p0, p0, p1

    :goto_1
    return p0
.end method

.method private isNarrowBandValidFrameType(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-nez p0, :cond_1

    const/16 p0, 0xc

    if-lt p1, p0, :cond_0

    const/16 p0, 0xe

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isValidFrameType(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    .line 360
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBandValidFrameType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isNarrowBandValidFrameType(I)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isWideBandValidFrameType(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    if-lt p1, p0, :cond_0

    const/16 p0, 0xd

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplayer2/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/Extractor;

    .line 57
    new-instance v1, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private maybeOutputFormat()V
    .locals 4
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputFormat:Z

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    if-eqz v1, :cond_0

    const-string v2, "audio/amr-wb"

    goto :goto_0

    :cond_0
    const-string v2, "audio/3gpp"

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0x3e80

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f40

    :goto_1
    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 282
    new-instance v3, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v3}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 284
    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->MAX_FRAME_SIZE_BYTES:I

    .line 285
    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 286
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 282
    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    :cond_2
    return-void
.end method

.method private maybeOutputSeekMap(JI)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->flags:I

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    const-wide/16 v3, -0x1

    cmp-long v1, p1, v3

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget v4, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-eq v1, v4, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    const/16 v4, 0x14

    if-ge v1, v4, :cond_2

    if-ne p3, v3, :cond_5

    :cond_2
    and-int/lit8 p3, v0, 0x2

    if-eqz p3, :cond_3

    move p3, v2

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    .line 388
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->getConstantBitrateSeekMap(JZ)Lcom/google/android/exoplayer2/extractor/SeekMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 390
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    goto :goto_2

    .line 382
    :cond_4
    :goto_1
    new-instance p1, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/SeekMap$Unseekable;-><init>(J)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    .line 383
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplayer2/extractor/SeekMap;)V

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->hasOutputSeekMap:Z

    :cond_5
    :goto_2
    return-void
.end method

.method private static peekAmrSignature(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[B)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-interface {p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    .line 271
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 272
    array-length v2, p1

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    .line 273
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private peekNextSampleSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->resetPeekPosition()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 333
    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->scratch:[B

    .line 335
    aget-byte p1, p1, v2

    and-int/lit16 v0, p1, 0x83

    if-gtz v0, :cond_0

    shr-int/lit8 p1, p1, 0x3

    and-int/lit8 p1, p1, 0xf

    .line 344
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->getFrameSizeInBytes(I)I

    move-result p0

    return p0

    .line 339
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Invalid padding bits for frame header "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureNb:[B

    .line 255
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->peekAmrSignature(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[B)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 257
    array-length p0, v0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v3

    :cond_0
    sget-object v0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->amrSignatureWb:[B

    .line 259
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->peekAmrSignature(Lcom/google/android/exoplayer2/extractor/ExtractorInput;[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->isWideBand:Z

    .line 261
    array-length p0, v0

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->skipFully(I)V

    return v3

    :cond_1
    return v2
.end method

.method private readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-nez v0, :cond_1

    .line 296
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->peekNextSampleSize(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    if-ne v0, v2, :cond_0

    .line 302
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSamplePosition:J

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->firstSampleSize:I

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->numSamplesWithSameSize:I

    goto :goto_0

    :catch_0
    return v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget v3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    .line 311
    invoke-interface {v0, p1, v3, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/upstream/DataReader;IZ)I

    move-result p1

    if-ne p1, v2, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    const/4 p1, 0x0

    if-lez v0, :cond_3

    return p1

    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    add-long/2addr v2, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 321
    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    return p1
.end method


# virtual methods
.method public init(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->extractorOutput:Lcom/google/android/exoplayer2/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->trackOutput:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 195
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Lcom/google/android/exoplayer2/extractor/PositionHolder;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->assertInitialized()V

    .line 201
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 202
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Could not find AMR header."

    const/4 p1, 0x0

    .line 203
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 207
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->maybeOutputFormat()V

    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->readSample(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)I

    move-result p2

    .line 209
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->maybeOutputSeekMap(JI)V

    return p2
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 2

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleTimeUs:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleSize:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->currentSampleBytesRemaining:I

    cmp-long v0, p1, p3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->seekMap:Lcom/google/android/exoplayer2/extractor/SeekMap;

    .line 218
    instance-of v1, v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    if-eqz v1, :cond_0

    .line 219
    check-cast v0, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/extractor/ConstantBitrateSeekMap;->getTimeUsAtPosition(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    goto :goto_0

    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->timeOffsetUs:J

    :goto_0
    return-void
.end method

.method public sniff(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/amr/AmrExtractor;->readAmrHeader(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z

    move-result p0

    return p0
.end method
