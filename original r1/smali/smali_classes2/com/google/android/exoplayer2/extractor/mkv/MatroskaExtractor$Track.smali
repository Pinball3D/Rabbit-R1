.class public final Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;
.super Ljava/lang/Object;
.source "MatroskaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Track"
.end annotation


# static fields
.field private static final DEFAULT_MAX_CLL:I = 0x3e8

.field private static final DEFAULT_MAX_FALL:I = 0xc8

.field private static final DISPLAY_UNIT_PIXELS:I = 0x0

.field private static final MAX_CHROMATICITY:I = 0xc350


# instance fields
.field public audioBitDepth:I

.field private blockAddIdType:I

.field public channelCount:I

.field public codecDelayNs:J

.field public codecId:Ljava/lang/String;

.field public codecPrivate:[B

.field public colorRange:I

.field public colorSpace:I

.field public colorTransfer:I

.field public cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

.field public defaultSampleDurationNs:I

.field public displayHeight:I

.field public displayUnit:I

.field public displayWidth:I

.field public dolbyVisionConfigBytes:[B

.field public drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

.field public flagDefault:Z

.field public flagForced:Z

.field public hasColorInfo:Z

.field public hasContentEncryption:Z

.field public height:I

.field private language:Ljava/lang/String;

.field public maxBlockAdditionId:I

.field public maxContentLuminance:I

.field public maxFrameAverageLuminance:I

.field public maxMasteringLuminance:F

.field public minMasteringLuminance:F

.field public nalUnitLengthFieldLength:I

.field public name:Ljava/lang/String;

.field public number:I

.field public output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

.field public primaryBChromaticityX:F

.field public primaryBChromaticityY:F

.field public primaryGChromaticityX:F

.field public primaryGChromaticityY:F

.field public primaryRChromaticityX:F

.field public primaryRChromaticityY:F

.field public projectionData:[B

.field public projectionPosePitch:F

.field public projectionPoseRoll:F

.field public projectionPoseYaw:F

.field public projectionType:I

.field public sampleRate:I

.field public sampleStrippedBytes:[B

.field public seekPreRollNs:J

.field public stereoMode:I

.field public trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

.field public type:I

.field public whitePointChromaticityX:F

.field public whitePointChromaticityY:F

.field public width:I


# direct methods
.method protected constructor <init>()V
    .locals 4

    .line 1972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    const/16 v0, 0x1f40

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    const-string v0, "eng"

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)V
    .locals 0

    .line 1972
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->assertOutputInitialized()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;)I
    .locals 0

    .line 1972
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p0
.end method

.method static synthetic access$202(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;I)I
    .locals 0

    .line 1972
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->blockAddIdType:I

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1972
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;Z)Z
    .locals 0

    .line 1972
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->samplesHaveSupplementalData(Z)Z

    move-result p0

    return p0
.end method

.method private assertOutputInitialized()V
    .locals 0
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2542
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getCodecPrivate(Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "codecPrivate"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-eqz p0, :cond_0

    return-object p0

    .line 2548
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Missing CodecPrivate for codec "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private getHdrStaticInfo()[B
    .locals 5

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x19

    new-array v0, v0, [B

    .line 2392
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    .line 2393
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityX:F

    const v3, 0x47435000    # 50000.0f

    mul-float/2addr v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2394
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryRChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2395
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2396
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryGChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2397
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2398
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->primaryBChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2399
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityX:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2400
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->whitePointChromaticityY:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2401
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2402
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->minMasteringLuminance:F

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-short v2, v2

    .line 2403
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxContentLuminance:I

    int-to-short v2, v2

    .line 2404
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxFrameAverageLuminance:I

    int-to-short p0, p0

    .line 2405
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/util/ParsableByteArray;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const/16 v0, 0x10

    const/4 v1, 0x0

    .line 2420
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    .line 2421
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedInt()J

    move-result-wide v2

    const-wide/32 v4, 0x58564944

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 2423
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/divx"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    const-wide/32 v4, 0x33363248

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 2425
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/3gpp"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1
    const-wide/32 v4, 0x31435657

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 2429
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    .line 2430
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getData()[B

    move-result-object p0

    .line 2431
    :goto_0
    array-length v2, p0

    add-int/lit8 v2, v2, -0x4

    if-ge v0, v2, :cond_3

    .line 2432
    aget-byte v2, p0, v0

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x3

    aget-byte v2, p0, v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    .line 2437
    array-length v2, p0

    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    .line 2438
    new-instance v0, Landroid/util/Pair;

    const-string v2, "video/wvc1"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "Failed to find FourCC VC1 initialization data"

    .line 2441
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const-string p0, "MatroskaExtractor"

    const-string v0, "Unknown FourCC. Setting mimeType to video/x-unknown"

    .line 2449
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    new-instance p0, Landroid/util/Pair;

    const-string v0, "video/x-unknown"

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catch_0
    const-string p0, "Error parsing FourCC private data"

    .line 2445
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 2517
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLittleEndianUnsignedShort()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const v2, 0xfffe

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    const/16 v0, 0x18

    .line 2521
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    .line 2522
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 2523
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v4

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$700()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v4, v6

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    return v3

    :catch_0
    const-string p0, "Error parsing MS/ACM codec private"

    const/4 v0, 0x0

    .line 2528
    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private static parseVorbisCodecPrivate([B)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    const-string v0, "Error parsing vorbis codec private"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2462
    :try_start_0
    aget-byte v3, p0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    move v6, v2

    move v5, v3

    .line 2468
    :goto_0
    aget-byte v7, p0, v5

    and-int/lit16 v8, v7, 0xff

    const/16 v9, 0xff

    if-ne v8, v9, :cond_0

    add-int/lit16 v6, v6, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v5, v3

    and-int/2addr v7, v9

    add-int/2addr v6, v7

    move v7, v2

    .line 2475
    :goto_1
    aget-byte v8, p0, v5

    and-int/lit16 v10, v8, 0xff

    if-ne v10, v9, :cond_1

    add-int/lit16 v7, v7, 0xff

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v5, v3

    and-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2481
    aget-byte v8, p0, v5

    if-ne v8, v3, :cond_4

    .line 2485
    new-array v3, v6, [B

    .line 2486
    invoke-static {p0, v5, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v6

    .line 2488
    aget-byte v6, p0, v5

    const/4 v8, 0x3

    if-ne v6, v8, :cond_3

    add-int/2addr v5, v7

    .line 2493
    aget-byte v6, p0, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    .line 2497
    array-length v6, p0

    sub-int/2addr v6, v5

    new-array v6, v6, [B

    .line 2498
    array-length v7, p0

    sub-int/2addr v7, v5

    invoke-static {p0, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2499
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2500
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2501
    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 2494
    :cond_2
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2489
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2482
    :cond_4
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0

    .line 2463
    :cond_5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    :catch_0
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object p0

    throw p0
.end method

.method private samplesHaveSupplementalData(Z)Z
    .locals 2

    const-string v0, "A_OPUS"

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2365
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->maxBlockAdditionId:I

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public initializeOutput(Lcom/google/android/exoplayer2/extractor/ExtractorOutput;I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "this.output"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "codecId"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2052
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x4

    const/4 v9, 0x3

    sparse-switch v2, :sswitch_data_0

    :goto_0
    const/4 v1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "A_OPUS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "A_FLAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x1f

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "A_EAC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x1e

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "V_MPEG2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "S_TEXT/UTF8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x1c

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "S_TEXT/WEBVTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/16 v1, 0x1b

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/16 v1, 0x1a

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "S_TEXT/ASS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/16 v1, 0x19

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "A_PCM/INT/LIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/16 v1, 0x18

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "A_PCM/INT/BIG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/16 v1, 0x17

    goto/16 :goto_1

    :sswitch_a
    const-string v2, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x16

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "A_DTS/EXPRESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "V_THEORA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x14

    goto/16 :goto_1

    :sswitch_d
    const-string v2, "S_HDMV/PGS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0x13

    goto/16 :goto_1

    :sswitch_e
    const-string v2, "V_VP9"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x12

    goto/16 :goto_1

    :sswitch_f
    const-string v2, "V_VP8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x11

    goto/16 :goto_1

    :sswitch_10
    const-string v2, "V_AV1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    move v1, v4

    goto/16 :goto_1

    :sswitch_11
    const-string v2, "A_DTS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0xf

    goto/16 :goto_1

    :sswitch_12
    const-string v2, "A_AC3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0xe

    goto/16 :goto_1

    :sswitch_13
    const-string v2, "A_AAC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_14
    const-string v2, "A_DTS/LOSSLESS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_15
    const-string v2, "S_VOBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_16
    const-string v2, "V_MPEG4/ISO/AVC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_17
    const-string v2, "V_MPEG4/ISO/ASP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_18
    const-string v2, "S_DVBSUB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto/16 :goto_0

    :cond_18
    move v1, v7

    goto/16 :goto_1

    :sswitch_19
    const-string v2, "V_MS/VFW/FOURCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_1a
    const-string v2, "A_MPEG/L3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1b
    const-string v2, "A_MPEG/L2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1c
    const-string v2, "A_VORBIS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto/16 :goto_0

    :cond_1c
    move v1, v8

    goto :goto_1

    :sswitch_1d
    const-string v2, "A_TRUEHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto/16 :goto_0

    :cond_1d
    move v1, v9

    goto :goto_1

    :sswitch_1e
    const-string v2, "A_MS/ACM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1f
    const-string v2, "V_MPEG4/ISO/SP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_20
    const-string v2, "V_MPEG4/ISO/AP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_0

    :cond_20
    const/4 v1, 0x0

    :goto_1
    const-string v2, "application/dvbsubs"

    const-string v12, "application/pgs"

    const-string v13, "application/vobsub"

    const-string v14, "text/vtt"

    const-string v15, "text/x-ssa"

    const-string v5, "application/x-subrip"

    const/16 v16, 0x1000

    const-string v6, ". Setting mimeType to audio/x-unknown"

    const-string v17, "audio/raw"

    const-string v11, "MatroskaExtractor"

    const-string v18, "audio/x-unknown"

    const/4 v10, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "Unrecognized codec identifier."

    .line 2241
    invoke-static {v0, v10}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    .line 2105
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2106
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecDelayNs:J

    invoke-virtual {v3, v9, v10}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 2107
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2110
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->seekPreRollNs:J

    invoke-virtual {v3, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 2109
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v17, "audio/opus"

    const/16 v16, 0x1680

    move/from16 v6, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_9

    :pswitch_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2149
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v17, "audio/flac"

    goto/16 :goto_6

    :pswitch_2
    const-string v17, "audio/eac3"

    goto/16 :goto_5

    :pswitch_3
    const-string v17, "video/mpeg2"

    goto/16 :goto_5

    :pswitch_4
    move-object/from16 v17, v5

    goto/16 :goto_5

    :pswitch_5
    move-object/from16 v17, v14

    goto/16 :goto_5

    .line 2081
    :pswitch_6
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v1

    .line 2082
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 2083
    iget v4, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2084
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/HevcConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/hevc"

    goto/16 :goto_a

    .line 2221
    :pswitch_7
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$500()[B

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v15

    goto/16 :goto_6

    :pswitch_8
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 2172
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v8

    if-nez v8, :cond_21

    .line 2176
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported little endian PCM bit depth: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object/from16 v17, v18

    goto :goto_5

    :cond_21
    :goto_3
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_4
    const/4 v6, -0x1

    goto/16 :goto_11

    :pswitch_9
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v1, v7, :cond_22

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v8, 0x3

    goto/16 :goto_11

    :cond_22
    if-ne v1, v4, :cond_23

    const/high16 v8, 0x10000000

    goto :goto_3

    .line 2193
    :cond_23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported big endian PCM bit depth: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_a
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    if-ne v1, v3, :cond_24

    goto :goto_3

    .line 2208
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported floating point PCM bit depth: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_b
    const-string v17, "video/x-unknown"

    goto :goto_5

    :pswitch_c
    move-object/from16 v17, v12

    goto :goto_5

    :pswitch_d
    const-string v17, "video/x-vnd.on2.vp9"

    goto :goto_5

    :pswitch_e
    const-string v17, "video/x-vnd.on2.vp8"

    :goto_5
    const/4 v1, 0x0

    :goto_6
    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x0

    :goto_8
    const/4 v6, -0x1

    :goto_9
    const/4 v8, -0x1

    goto/16 :goto_11

    :pswitch_f
    const-string v17, "video/av01"

    goto :goto_5

    :pswitch_10
    const-string v17, "audio/vnd.dts"

    goto :goto_5

    :pswitch_11
    const-string v17, "audio/ac3"

    goto :goto_5

    :pswitch_12
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2114
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    .line 2115
    invoke-static {v3}, Lcom/google/android/exoplayer2/audio/AacUtil;->parseAudioSpecificConfig([B)Lcom/google/android/exoplayer2/audio/AacUtil$Config;

    move-result-object v3

    .line 2118
    iget v4, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->sampleRateHz:I

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2119
    iget v4, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->channelCount:I

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2120
    iget-object v3, v3, Lcom/google/android/exoplayer2/audio/AacUtil$Config;->codecs:Ljava/lang/String;

    const-string v17, "audio/mp4a-latm"

    goto :goto_7

    :pswitch_13
    const-string v17, "audio/vnd.dts.hd"

    goto :goto_5

    :pswitch_14
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2228
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v13

    goto :goto_6

    .line 2074
    :pswitch_15
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v1

    .line 2075
    iget-object v3, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 2076
    iget v4, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->nalUnitLengthFieldLength:I

    .line 2077
    iget-object v1, v1, Lcom/google/android/exoplayer2/video/AvcConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/avc"

    :goto_a
    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v8, -0x1

    move-object/from16 v19, v3

    move-object v3, v1

    move-object/from16 v1, v19

    goto/16 :goto_11

    :pswitch_16
    new-array v1, v8, [B

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2237
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2238
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    move-object/from16 v17, v2

    goto :goto_b

    :pswitch_17
    const/4 v4, 0x0

    .line 2087
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2088
    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseFourCcPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v1

    .line 2089
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    .line 2090
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    :goto_b
    const/4 v3, 0x0

    goto/16 :goto_8

    :pswitch_18
    const/4 v4, 0x0

    const-string v17, "audio/mpeg"

    goto :goto_c

    :pswitch_19
    const/4 v4, 0x0

    const-string v17, "audio/mpeg-L2"

    :goto_c
    move/from16 v6, v16

    const/4 v1, 0x0

    goto :goto_d

    :pswitch_1a
    const/4 v4, 0x0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    .line 2100
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseVorbisCodecPrivate([B)Ljava/util/List;

    move-result-object v1

    const-string v17, "audio/vorbis"

    const/16 v16, 0x2000

    move/from16 v6, v16

    :goto_d
    const/4 v3, 0x0

    goto/16 :goto_9

    :pswitch_1b
    const/4 v4, 0x0

    .line 2138
    new-instance v1, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    const-string v17, "audio/true-hd"

    :goto_e
    const/4 v1, 0x0

    goto :goto_b

    :pswitch_1c
    const/4 v4, 0x0

    .line 2153
    new-instance v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecId:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getCodecPrivate(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->parseMsAcmCodecPrivate(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    .line 2154
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/Util;->getPcmEncoding(I)I

    move-result v8

    if-nez v8, :cond_25

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported PCM bit depth: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->audioBitDepth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_25
    const/4 v1, 0x0

    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_26
    const-string v1, "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown"

    .line 2167
    invoke-static {v11, v1}, Lcom/google/android/exoplayer2/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    move-object/from16 v17, v18

    goto :goto_e

    :pswitch_1d
    const/4 v4, 0x0

    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->codecPrivate:[B

    if-nez v1, :cond_27

    const/4 v1, 0x0

    goto :goto_10

    .line 2070
    :cond_27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_10
    const-string v17, "video/mp4v-es"

    goto :goto_b

    :goto_11
    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    if-eqz v7, :cond_28

    .line 2247
    new-instance v7, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->dolbyVisionConfigBytes:[B

    invoke-direct {v7, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([B)V

    .line 2248
    invoke-static {v7}, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/DolbyVisionConfig;

    move-result-object v7

    if-eqz v7, :cond_28

    .line 2250
    iget-object v3, v7, Lcom/google/android/exoplayer2/video/DolbyVisionConfig;->codecs:Ljava/lang/String;

    const-string v17, "video/dolby-vision"

    :cond_28
    move-object/from16 v7, v17

    iget-boolean v9, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagDefault:Z

    iget-boolean v10, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->flagForced:Z

    if-eqz v10, :cond_29

    const/4 v10, 0x2

    goto :goto_12

    :cond_29
    move v10, v4

    :goto_12
    or-int/2addr v9, v10

    .line 2260
    new-instance v10, Lcom/google/android/exoplayer2/Format$Builder;

    invoke-direct {v10}, Lcom/google/android/exoplayer2/Format$Builder;-><init>()V

    .line 2263
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2a

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->channelCount:I

    .line 2266
    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->sampleRate:I

    .line 2267
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2268
    invoke-virtual {v2, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v5, 0x1

    goto/16 :goto_19

    .line 2269
    :cond_2a
    invoke-static {v7}, Lcom/google/android/exoplayer2/util/MimeTypes;->isVideo(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayUnit:I

    if-nez v2, :cond_2d

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2b

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    :cond_2b
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-ne v2, v5, :cond_2c

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    :cond_2c
    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    goto :goto_13

    :cond_2d
    const/4 v5, -0x1

    :goto_13
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayWidth:I

    if-eq v2, v5, :cond_2e

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->displayHeight:I

    if-eq v8, v5, :cond_2e

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    mul-int/2addr v11, v2

    int-to-float v2, v11

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    mul-int/2addr v11, v8

    int-to-float v8, v11

    div-float/2addr v2, v8

    goto :goto_14

    :cond_2e
    const/high16 v2, -0x40800000    # -1.0f

    :goto_14
    iget-boolean v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->hasColorInfo:Z

    if-eqz v8, :cond_2f

    .line 2281
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->getHdrStaticInfo()[B

    move-result-object v8

    .line 2282
    new-instance v11, Lcom/google/android/exoplayer2/video/ColorInfo;

    iget v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorSpace:I

    iget v13, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorRange:I

    iget v14, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->colorTransfer:I

    invoke-direct {v11, v12, v13, v14, v8}, Lcom/google/android/exoplayer2/video/ColorInfo;-><init>(III[B)V

    goto :goto_15

    :cond_2f
    const/4 v11, 0x0

    :goto_15
    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v8, :cond_30

    .line 2286
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v8

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v8, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    .line 2287
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v5

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_30
    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionType:I

    if-nez v8, :cond_35

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseYaw:F

    const/4 v12, 0x0

    .line 2290
    invoke-static {v8, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_35

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    .line 2291
    invoke-static {v8, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_35

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPoseRoll:F

    .line 2293
    invoke-static {v8, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-nez v8, :cond_31

    goto :goto_17

    :cond_31
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, 0x42b40000    # 90.0f

    .line 2295
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_32

    const/16 v4, 0x5a

    goto :goto_17

    :cond_32
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, -0x3ccc0000    # -180.0f

    .line 2297
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_34

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, 0x43340000    # 180.0f

    .line 2298
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_33

    goto :goto_16

    :cond_33
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionPosePitch:F

    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 2300
    invoke-static {v4, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_35

    const/16 v4, 0x10e

    goto :goto_17

    :cond_34
    :goto_16
    const/16 v4, 0xb4

    goto :goto_17

    :cond_35
    move v4, v5

    :goto_17
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->width:I

    .line 2305
    invoke-virtual {v10, v5}, Lcom/google/android/exoplayer2/Format$Builder;->setWidth(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->height:I

    .line 2306
    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/Format$Builder;->setHeight(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v5

    .line 2307
    invoke-virtual {v5, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2308
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setRotationDegrees(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->projectionData:[B

    .line 2309
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setProjectionData([B)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->stereoMode:I

    .line 2310
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setStereoMode(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2311
    invoke-virtual {v2, v11}, Lcom/google/android/exoplayer2/Format$Builder;->setColorInfo(Lcom/google/android/exoplayer2/video/ColorInfo;)Lcom/google/android/exoplayer2/Format$Builder;

    const/4 v5, 0x2

    goto :goto_19

    .line 2312
    :cond_36
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2313
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2314
    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2315
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2316
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 2317
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    goto :goto_18

    :cond_37
    const-string v0, "Unexpected MIME type."

    const/4 v1, 0x0

    .line 2320
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplayer2/ParserException;

    move-result-object v0

    throw v0

    :cond_38
    :goto_18
    const/4 v5, 0x3

    :goto_19
    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    if-eqz v2, :cond_39

    .line 2324
    invoke-static {}, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor;->access$600()Ljava/util/Map;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->name:Ljava/lang/String;

    .line 2325
    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    :cond_39
    move/from16 v2, p2

    .line 2330
    invoke-virtual {v10, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setId(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2331
    invoke-virtual {v2, v7}, Lcom/google/android/exoplayer2/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2332
    invoke-virtual {v2, v6}, Lcom/google/android/exoplayer2/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->language:Ljava/lang/String;

    .line 2333
    invoke-virtual {v2, v4}, Lcom/google/android/exoplayer2/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2334
    invoke-virtual {v2, v9}, Lcom/google/android/exoplayer2/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v2

    .line 2335
    invoke-virtual {v2, v1}, Lcom/google/android/exoplayer2/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 2336
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->drmInitData:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2337
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/Format$Builder;->setDrmInitData(Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format$Builder;

    move-result-object v1

    .line 2338
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Format$Builder;->build()Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iget v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->number:I

    move-object/from16 v3, p1

    .line 2340
    invoke-interface {v3, v2, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplayer2/extractor/TrackOutput;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    .line 2341
    invoke-interface {v2, v1}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->format(Lcom/google/android/exoplayer2/Format;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_1d
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_10
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public outputPendingSampleMetadata()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->output:Lcom/google/android/exoplayer2/extractor/TrackOutput;

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    .line 2348
    invoke-virtual {v0, v1, p0}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->outputPendingSampleMetadata(Lcom/google/android/exoplayer2/extractor/TrackOutput;Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/extractor/mkv/MatroskaExtractor$Track;->trueHdSampleRechunker:Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;

    if-eqz p0, :cond_0

    .line 2355
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/TrueHdSampleRechunker;->reset()V

    :cond_0
    return-void
.end method
