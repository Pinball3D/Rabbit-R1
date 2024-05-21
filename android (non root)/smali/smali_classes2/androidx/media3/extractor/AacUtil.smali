.class public final Landroidx/media3/extractor/AacUtil;
.super Ljava/lang/Object;
.source "AacUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/AacUtil$Config;,
        Landroidx/media3/extractor/AacUtil$AacAudioObjectType;
    }
.end annotation


# static fields
.field public static final AAC_ELD_MAX_RATE_BYTES_PER_SECOND:I = 0x1f40

.field public static final AAC_HE_AUDIO_SAMPLE_COUNT:I = 0x800

.field public static final AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND:I = 0x3e80

.field public static final AAC_HE_V2_MAX_RATE_BYTES_PER_SECOND:I = 0x1b58

.field public static final AAC_LC_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_LC_MAX_RATE_BYTES_PER_SECOND:I = 0x186a0

.field public static final AAC_LD_AUDIO_SAMPLE_COUNT:I = 0x200

.field public static final AAC_XHE_AUDIO_SAMPLE_COUNT:I = 0x400

.field public static final AAC_XHE_MAX_RATE_BYTES_PER_SECOND:I = 0x3e800

.field public static final AUDIO_OBJECT_TYPE_AAC_ELD:I = 0x17

.field public static final AUDIO_OBJECT_TYPE_AAC_ER_BSAC:I = 0x16

.field public static final AUDIO_OBJECT_TYPE_AAC_LC:I = 0x2

.field public static final AUDIO_OBJECT_TYPE_AAC_PS:I = 0x1d

.field public static final AUDIO_OBJECT_TYPE_AAC_SBR:I = 0x5

.field public static final AUDIO_OBJECT_TYPE_AAC_XHE:I = 0x2a

.field private static final AUDIO_OBJECT_TYPE_ESCAPE:I = 0x1f

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_CONFIGURATION_INVALID:I = -0x1

.field private static final AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

.field private static final AUDIO_SPECIFIC_CONFIG_FREQUENCY_INDEX_ARBITRARY:I = 0xf

.field private static final AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

.field private static final CODECS_STRING_PREFIX:Ljava/lang/String; = "mp4a.40."

.field private static final TAG:Ljava/lang/String; = "AacUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x17700
        0x15888
        0xfa00
        0xbb80
        0xac44
        0x7d00
        0x5dc0
        0x5622
        0x3e80
        0x2ee0
        0x2b11
        0x1f40
        0x1cb6
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x8
        -0x1
        -0x1
        -0x1
        0x7
        0x8
        -0x1
        0x8
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAacLcAudioSpecificConfig(II)[B
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    sget-object v4, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 275
    array-length v5, v4

    if-ge v2, v5, :cond_1

    .line 276
    aget v4, v4, v2

    if-ne p0, v4, :cond_0

    move v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_1
    sget-object v4, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    .line 281
    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 282
    aget v4, v4, v1

    if-ne p1, v4, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq p0, v0, :cond_4

    if-eq v2, v0, :cond_4

    const/4 p0, 0x2

    .line 290
    invoke-static {p0, v3, v2}, Landroidx/media3/extractor/AacUtil;->buildAudioSpecificConfig(III)[B

    move-result-object p0

    return-object p0

    .line 287
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid sample rate or number of channels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static buildAudioSpecificConfig(III)[B
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [B

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xf8

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x7

    or-int/2addr p0, v1

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    shl-int/lit8 p0, p1, 0x7

    and-int/lit16 p0, p0, 0x80

    shl-int/lit8 p1, p2, 0x3

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x1

    aput-byte p0, v0, p1

    return-object v0
.end method

.method private static getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 2

    const/4 v0, 0x5

    .line 316
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 318
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    add-int/lit8 v0, p0, 0x20

    :cond_0
    return v0
.end method

.method private static getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 333
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 335
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 339
    invoke-virtual {p0, v1}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "AAC header insufficient data"

    .line 336
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_1
    const/16 p0, 0xd

    if-ge v0, p0, :cond_2

    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_SAMPLING_RATE_TABLE:[I

    .line 341
    aget p0, p0, v0

    :goto_0
    return p0

    :cond_2
    const-string p0, "AAC header wrong Sampling Frequency Index"

    .line 343
    invoke-static {p0, v2}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 202
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v0

    .line 203
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v1

    const/4 v2, 0x4

    .line 204
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mp4a.40."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    const/16 v5, 0x1d

    if-ne v0, v5, :cond_1

    .line 213
    :cond_0
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getSamplingFrequency(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v1

    .line 214
    invoke-static {p0}, Landroidx/media3/extractor/AacUtil;->getAudioObjectType(Landroidx/media3/common/util/ParsableBitArray;)I

    move-result v0

    const/16 v5, 0x16

    if-ne v0, v5, :cond_1

    .line 217
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result v3

    :cond_1
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, p1, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_2

    const/16 p1, 0x11

    if-eq v0, p1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 238
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unsupported audio object type: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    .line 235
    :cond_2
    :pswitch_0
    invoke-static {p0, v0, v3}, Landroidx/media3/extractor/AacUtil;->parseGaSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;II)V

    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 248
    :pswitch_2
    invoke-virtual {p0, v6}, Landroidx/media3/common/util/ParsableBitArray;->readBits(I)I

    move-result p0

    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_3

    goto :goto_0

    .line 250
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported epConfig: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/ParserException;->createForUnsupportedContainerFeature(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_0
    sget-object p0, Landroidx/media3/extractor/AacUtil;->AUDIO_SPECIFIC_CONFIG_CHANNEL_COUNT_TABLE:[I

    .line 259
    aget p0, p0, v3

    const/4 p1, -0x1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_5

    .line 263
    new-instance p1, Landroidx/media3/extractor/AacUtil$Config;

    invoke-direct {p1, v1, p0, v4, v0}, Landroidx/media3/extractor/AacUtil$Config;-><init>(IILjava/lang/String;Landroidx/media3/extractor/AacUtil$1;)V

    return-object p1

    .line 261
    :cond_5
    invoke-static {v0, v0}, Landroidx/media3/common/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static parseAudioSpecificConfig([B)Landroidx/media3/extractor/AacUtil$Config;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/ParserException;
        }
    .end annotation

    .line 185
    new-instance v0, Landroidx/media3/common/util/ParsableBitArray;

    invoke-direct {v0, p0}, Landroidx/media3/common/util/ParsableBitArray;-><init>([B)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Landroidx/media3/extractor/AacUtil;->parseAudioSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;Z)Landroidx/media3/extractor/AacUtil$Config;

    move-result-object p0

    return-object p0
.end method

.method private static parseGaSpecificConfig(Landroidx/media3/common/util/ParsableBitArray;II)V
    .locals 3

    .line 351
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AacUtil"

    const-string v1, "Unexpected frameLengthFlag = 1"

    .line 353
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    .line 357
    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    .line 359
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableBitArray;->readBit()Z

    move-result v0

    if-eqz p2, :cond_8

    const/4 p2, 0x6

    const/16 v1, 0x14

    const/4 v2, 0x3

    if-eq p1, p2, :cond_2

    if-ne p1, v1, :cond_3

    .line 364
    :cond_2
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_3
    if-eqz v0, :cond_7

    const/16 p2, 0x16

    if-ne p1, p2, :cond_4

    const/16 p2, 0x10

    .line 368
    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_4
    const/16 p2, 0x11

    if-eq p1, p2, :cond_5

    const/16 p2, 0x13

    if-eq p1, p2, :cond_5

    if-eq p1, v1, :cond_5

    const/16 p2, 0x17

    if-ne p1, p2, :cond_6

    .line 376
    :cond_5
    invoke-virtual {p0, v2}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_6
    const/4 p1, 0x1

    .line 378
    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableBitArray;->skipBits(I)V

    :cond_7
    return-void

    .line 361
    :cond_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
