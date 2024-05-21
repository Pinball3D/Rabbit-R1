.class public final Landroidx/media3/extractor/FlacStreamMetadata;
.super Ljava/lang/Object;
.source "FlacStreamMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;
    }
.end annotation


# static fields
.field public static final NOT_IN_LOOKUP_TABLE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "FlacStreamMetadata"


# instance fields
.field public final bitsPerSample:I

.field public final bitsPerSampleLookupKey:I

.field public final channels:I

.field public final maxBlockSizeSamples:I

.field public final maxFrameSize:I

.field private final metadata:Landroidx/media3/common/Metadata;

.field public final minBlockSizeSamples:I

.field public final minFrameSize:I

.field public final sampleRate:I

.field public final sampleRateLookupKey:I

.field public final seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

.field public final totalSamples:J


# direct methods
.method private constructor <init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iput p3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iput p4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iput p5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 175
    invoke-static {p5}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    iput p6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iput p7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 178
    invoke-static {p7}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    iput-wide p8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iput-object p10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iput-object p11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    return-void
.end method

.method public constructor <init>(IIIIIIIJLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x0

    .line 156
    invoke-static/range {p10 .. p11}, Landroidx/media3/extractor/FlacStreamMetadata;->concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object v11

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    .line 146
    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    mul-int/lit8 p2, p2, 0x8

    .line 119
    invoke-virtual {v0, p2}, Landroidx/media3/common/util/ParsableBitArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 120
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    .line 121
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    const/16 p1, 0x18

    .line 122
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p2

    iput p2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    .line 123
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    const/16 p1, 0x14

    .line 124
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 125
    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getSampleRateLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRateLookupKey:I

    const/4 p1, 0x3

    .line 126
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    const/4 p1, 0x5

    .line 127
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 128
    invoke-static {p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getBitsPerSampleLookupKey(I)I

    move-result p1

    iput p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSampleLookupKey:I

    const/16 p1, 0x24

    .line 129
    invoke-virtual {v0, p1}, Landroidx/media3/common/util/ParsableBitArray;->readBitsToLong(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    iput-object p1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    return-void
.end method

.method private static concatenateVorbisMetadata(Ljava/util/List;Ljava/util/List;)Landroidx/media3/common/Metadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media3/common/Metadata;"
        }
    .end annotation

    .line 319
    invoke-static {p0}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p0

    if-nez p0, :cond_0

    .line 320
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_0
    new-instance v0, Landroidx/media3/common/Metadata;

    invoke-direct {v0, p1}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, p0}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p0

    return-object p0
.end method

.method private static getBitsPerSampleLookupKey(I)I
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0xc

    if-eq p0, v0, :cond_3

    const/16 v0, 0x10

    if-eq p0, v0, :cond_2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static getSampleRateLookupKey(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, -0x1

    return p0

    :sswitch_0
    const/4 p0, 0x3

    return p0

    :sswitch_1
    const/4 p0, 0x2

    return p0

    :sswitch_2
    const/16 p0, 0xb

    return p0

    :sswitch_3
    const/4 p0, 0x1

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x9

    return p0

    :sswitch_6
    const/16 p0, 0x8

    return p0

    :sswitch_7
    const/4 p0, 0x7

    return p0

    :sswitch_8
    const/4 p0, 0x6

    return p0

    :sswitch_9
    const/4 p0, 0x5

    return p0

    :sswitch_a
    const/4 p0, 0x4

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1f40 -> :sswitch_a
        0x3e80 -> :sswitch_9
        0x5622 -> :sswitch_8
        0x5dc0 -> :sswitch_7
        0x7d00 -> :sswitch_6
        0xac44 -> :sswitch_5
        0xbb80 -> :sswitch_4
        0x15888 -> :sswitch_3
        0x17700 -> :sswitch_2
        0x2b110 -> :sswitch_1
        0x2ee00 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public copyWithPictureFrames(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/extractor/metadata/flac/PictureFrame;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 298
    new-instance v0, Landroidx/media3/common/Metadata;

    invoke-direct {v0, p1}, Landroidx/media3/common/Metadata;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v12

    .line 299
    new-instance p1, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v9, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move-object v1, p1

    invoke-direct/range {v1 .. v12}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object p1
.end method

.method public copyWithSeekTable(Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 13

    .line 264
    new-instance v12, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v11, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    move-object v0, v12

    move-object v10, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object v12
.end method

.method public copyWithVorbisComments(Ljava/util/List;)Landroidx/media3/extractor/FlacStreamMetadata;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/media3/extractor/FlacStreamMetadata;"
        }
    .end annotation

    .line 281
    invoke-static {p1}, Landroidx/media3/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Landroidx/media3/common/Metadata;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v11

    .line 282
    new-instance p1, Landroidx/media3/extractor/FlacStreamMetadata;

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v3, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    iget v4, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    iget v5, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    iget v6, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    iget v7, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget-wide v8, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    iget-object v10, p0, Landroidx/media3/extractor/FlacStreamMetadata;->seekTable:Landroidx/media3/extractor/FlacStreamMetadata$SeekTable;

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>(IIIIIIIJLandroidx/media3/extractor/FlacStreamMetadata$SeekTable;Landroidx/media3/common/Metadata;)V

    return-object p1
.end method

.method public getApproxBytesPerFrame()J
    .locals 4

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    int-to-long v0, v0

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minFrameSize:I

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 217
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    :goto_0
    add-long/2addr v0, v2

    goto :goto_2

    :cond_0
    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->minBlockSizeSamples:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    if-ne v0, v1, :cond_1

    if-lez v0, :cond_1

    int-to-long v0, v0

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x1000

    :goto_1
    iget v2, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    .line 225
    div-long/2addr v0, v2

    const-wide/16 v2, 0x40

    goto :goto_0

    :goto_2
    return-wide v0
.end method

.method public getDecodedBitrate()I
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getDurationUs()J
    .locals 4

    iget-wide v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, p0

    .line 199
    div-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method public getFormat([BLandroidx/media3/common/Metadata;)Landroidx/media3/common/Format;
    .locals 3

    const/4 v0, 0x4

    const/16 v1, -0x80

    .line 243
    aput-byte v1, p1, v0

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxFrameSize:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 245
    :goto_0
    invoke-virtual {p0, p2}, Landroidx/media3/extractor/FlacStreamMetadata;->getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p2

    .line 246
    new-instance v1, Landroidx/media3/common/Format$Builder;

    invoke-direct {v1}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v2, "audio/flac"

    .line 247
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    .line 249
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    .line 250
    invoke-virtual {v0, p0}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 251
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 252
    invoke-virtual {p0, p2}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public getMaxDecodedFrameSize()I
    .locals 2

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->maxBlockSizeSamples:I

    iget v1, p0, Landroidx/media3/extractor/FlacStreamMetadata;->channels:I

    mul-int/2addr v0, v1

    iget p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->bitsPerSample:I

    .line 186
    div-int/lit8 p0, p0, 0x8

    mul-int/2addr v0, p0

    return v0
.end method

.method public getMetadataCopyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->metadata:Landroidx/media3/common/Metadata;

    if-nez p0, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getSampleNumber(J)J
    .locals 8

    iget v0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr p1, v0

    const-wide/32 v0, 0xf4240

    .line 209
    div-long v2, p1, v0

    const-wide/16 v4, 0x0

    iget-wide p0, p0, Landroidx/media3/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v0, 0x1

    sub-long v6, p0, v0

    .line 210
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->constrainValue(JJJ)J

    move-result-wide p0

    return-wide p0
.end method
