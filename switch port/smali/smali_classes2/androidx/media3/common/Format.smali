.class public final Landroidx/media3/common/Format;
.super Ljava/lang/Object;
.source "Format.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/Format$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT:Landroidx/media3/common/Format;

.field private static final FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

.field private static final FIELD_AVERAGE_BITRATE:Ljava/lang/String;

.field private static final FIELD_CHANNEL_COUNT:Ljava/lang/String;

.field private static final FIELD_CODECS:Ljava/lang/String;

.field private static final FIELD_COLOR_INFO:Ljava/lang/String;

.field private static final FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_CRYPTO_TYPE:Ljava/lang/String;

.field private static final FIELD_DRM_INIT_DATA:Ljava/lang/String;

.field private static final FIELD_ENCODER_DELAY:Ljava/lang/String;

.field private static final FIELD_ENCODER_PADDING:Ljava/lang/String;

.field private static final FIELD_FRAME_RATE:Ljava/lang/String;

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_INITIALIZATION_DATA:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

.field private static final FIELD_METADATA:Ljava/lang/String;

.field private static final FIELD_PCM_ENCODING:Ljava/lang/String;

.field private static final FIELD_PEAK_BITRATE:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_PROJECTION_DATA:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_SAMPLE_RATE:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_STEREO_MODE:Ljava/lang/String;

.field private static final FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

.field private static final FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final NO_VALUE:I = -0x1

.field public static final OFFSET_SAMPLE_RELATIVE:J = 0x7fffffffffffffffL


# instance fields
.field public final accessibilityChannel:I

.field public final averageBitrate:I

.field public final bitrate:I

.field public final channelCount:I

.field public final codecs:Ljava/lang/String;

.field public final colorInfo:Landroidx/media3/common/ColorInfo;

.field public final containerMimeType:Ljava/lang/String;

.field public final cryptoType:I

.field public final drmInitData:Landroidx/media3/common/DrmInitData;

.field public final encoderDelay:I

.field public final encoderPadding:I

.field public final frameRate:F

.field private hashCode:I

.field public final height:I

.field public final id:Ljava/lang/String;

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final maxInputSize:I

.field public final metadata:Landroidx/media3/common/Metadata;

.field public final pcmEncoding:I

.field public final peakBitrate:I

.field public final pixelWidthHeightRatio:F

.field public final projectionData:[B

.field public final roleFlags:I

.field public final rotationDegrees:I

.field public final sampleMimeType:Ljava/lang/String;

.field public final sampleRate:I

.field public final selectionFlags:I

.field public final stereoMode:I

.field public final subsampleOffsetUs:J

.field public final tileCountHorizontal:I

.field public final tileCountVertical:I

.field public final width:I


# direct methods
.method public static synthetic $r8$lambda$ba0Ak4dg3iMUe8gYyXIEXHYdq-M(Landroid/os/Bundle;)Landroidx/media3/common/Format;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/Format;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 685
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    const/4 v0, 0x0

    .line 1269
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1270
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1271
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1272
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1273
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1274
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1275
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    const/4 v0, 0x7

    .line 1276
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1277
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    const/16 v0, 0x9

    .line 1278
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 1279
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1280
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    .line 1281
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    const/16 v0, 0xd

    .line 1282
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    const/16 v0, 0xe

    .line 1283
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    const/16 v0, 0xf

    .line 1284
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    const/16 v0, 0x10

    .line 1285
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    const/16 v0, 0x11

    .line 1286
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    const/16 v0, 0x12

    .line 1287
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    const/16 v0, 0x13

    .line 1288
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/16 v0, 0x14

    .line 1289
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    const/16 v0, 0x15

    .line 1290
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    const/16 v0, 0x16

    .line 1291
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    const/16 v0, 0x17

    .line 1292
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    const/16 v0, 0x18

    .line 1293
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    const/16 v0, 0x19

    .line 1294
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    const/16 v0, 0x1a

    .line 1295
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    const/16 v0, 0x1b

    .line 1296
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    const/16 v0, 0x1c

    .line 1297
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    const/16 v0, 0x1d

    .line 1298
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    const/16 v0, 0x1e

    .line 1299
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    const/16 v0, 0x1f

    .line 1300
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    .line 1367
    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/Format$Builder;)V
    .locals 5

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$100(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 851
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$200(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 852
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$300(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->normalizeLanguageCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 853
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$400(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 854
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$500(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 855
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$600(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 856
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->peakBitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :cond_0
    iput v0, p0, Landroidx/media3/common/Format;->bitrate:I

    .line 858
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$800(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 859
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$900(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/Metadata;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 861
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1000(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 863
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1100(Landroidx/media3/common/Format$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 864
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1200(Landroidx/media3/common/Format$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 866
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1300(Landroidx/media3/common/Format$Builder;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 867
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1400(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/DrmInitData;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 868
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1500(Landroidx/media3/common/Format$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 870
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1600(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->width:I

    .line 871
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->height:I

    .line 872
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1800(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 873
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1900(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$1900(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_1
    iput v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 875
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2000(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_3
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2000(Landroidx/media3/common/Format$Builder;)F

    move-result v1

    :goto_2
    iput v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 876
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2100(Landroidx/media3/common/Format$Builder;)[B

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 877
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2200(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 878
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2300(Landroidx/media3/common/Format$Builder;)Landroidx/media3/common/ColorInfo;

    move-result-object v1

    iput-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 880
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2400(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 881
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2500(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 882
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2600(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 883
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2700(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    :goto_3
    iput v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 884
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2800(Landroidx/media3/common/Format$Builder;)I

    move-result v3

    :goto_4
    iput v3, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 886
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$2900(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 888
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3000(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 889
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3100(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    iput v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 891
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3200(Landroidx/media3/common/Format$Builder;)I

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    const/4 p1, 0x1

    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    goto :goto_5

    .line 895
    :cond_6
    invoke-static {p1}, Landroidx/media3/common/Format$Builder;->access$3200(Landroidx/media3/common/Format$Builder;)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/Format;->cryptoType:I

    :goto_5
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Format$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    return-void
.end method

.method private static defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Format;
    .locals 6

    .line 1370
    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    .line 1371
    invoke-static {p0}, Landroidx/media3/common/util/BundleableUtil;->ensureClassLoader(Landroid/os/Bundle;)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    .line 1373
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-object v3, v2, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    .line 1374
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1375
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v4, v2, Landroidx/media3/common/Format;->selectionFlags:I

    .line 1376
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v4, v2, Landroidx/media3/common/Format;->roleFlags:I

    .line 1377
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v4, v2, Landroidx/media3/common/Format;->averageBitrate:I

    .line 1378
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v4, v2, Landroidx/media3/common/Format;->peakBitrate:I

    .line 1379
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    .line 1380
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    .line 1381
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Metadata;

    iget-object v4, v2, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/common/Metadata;

    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    .line 1384
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1383
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    .line 1387
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroidx/media3/common/Format;->defaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1386
    invoke-virtual {v1, v3}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v3, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v2, v2, Landroidx/media3/common/Format;->maxInputSize:I

    .line 1388
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    .line 1390
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 1392
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_1

    .line 1399
    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    .line 1400
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/DrmInitData;

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    sget-object v3, Landroidx/media3/common/Format;->DEFAULT:Landroidx/media3/common/Format;

    iget-wide v4, v3, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 1401
    invoke-virtual {p0, v2, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->width:I

    .line 1403
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->height:I

    .line 1404
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->frameRate:F

    .line 1405
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1406
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1408
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 1407
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    .line 1409
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setProjectionData([B)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->stereoMode:I

    .line 1410
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setStereoMode(I)Landroidx/media3/common/Format$Builder;

    sget-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 1411
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1413
    sget-object v2, Landroidx/media3/common/ColorInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v2, v1}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object v1

    check-cast v1, Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    :cond_0
    sget-object v1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    .line 1416
    iget v2, v3, Landroidx/media3/common/Format;->channelCount:I

    .line 1417
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->sampleRate:I

    .line 1418
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 1419
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->encoderDelay:I

    .line 1420
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->encoderPadding:I

    .line 1421
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 1424
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1423
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 1427
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1426
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setTileCountHorizontal(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v4, v3, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 1428
    invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setTileCountVertical(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget v3, v3, Landroidx/media3/common/Format;->cryptoType:I

    .line 1430
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    .line 1432
    invoke-virtual {v0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0

    .line 1396
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private static keyForInitializationData(I)Ljava/lang/String;
    .locals 2

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_INITIALIZATION_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x24

    .line 1438
    invoke-static {p0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toLogString(Landroidx/media3/common/Format;)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 1145
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    .line 1146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    iget v1, p0, Landroidx/media3/common/Format;->bitrate:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string v1, ", bitrate="

    .line 1148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1150
    :cond_1
    iget-object v1, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ", codecs="

    .line 1151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    :cond_2
    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    const/16 v3, 0x2c

    if-eqz v1, :cond_9

    .line 1154
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v4, 0x0

    .line 1155
    :goto_0
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget v5, v5, Landroidx/media3/common/DrmInitData;->schemeDataCount:I

    if-ge v4, v5, :cond_8

    .line 1156
    iget-object v5, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    invoke-virtual {v5, v4}, Landroidx/media3/common/DrmInitData;->get(I)Landroidx/media3/common/DrmInitData$SchemeData;

    move-result-object v5

    iget-object v5, v5, Landroidx/media3/common/DrmInitData$SchemeData;->uuid:Ljava/util/UUID;

    .line 1157
    sget-object v6, Landroidx/media3/common/C;->COMMON_PSSH_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v5, "cenc"

    .line 1158
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1159
    :cond_3
    sget-object v6, Landroidx/media3/common/C;->CLEARKEY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "clearkey"

    .line 1160
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1161
    :cond_4
    sget-object v6, Landroidx/media3/common/C;->PLAYREADY_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v5, "playready"

    .line 1162
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1163
    :cond_5
    sget-object v6, Landroidx/media3/common/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v5, "widevine"

    .line 1164
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1165
    :cond_6
    sget-object v6, Landroidx/media3/common/C;->UUID_NIL:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v5, "universal"

    .line 1166
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1168
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unknown ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    const-string v4, ", drm=["

    .line 1171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1175
    :cond_9
    iget v1, p0, Landroidx/media3/common/Format;->width:I

    if-eq v1, v2, :cond_a

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    if-eq v1, v2, :cond_a

    const-string v1, ", res="

    .line 1176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1178
    :cond_a
    iget-object v1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroidx/media3/common/ColorInfo;->isValid()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, ", color="

    .line 1179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v4}, Landroidx/media3/common/ColorInfo;->toLogString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    :cond_b
    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_c

    const-string v1, ", fps="

    .line 1182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1184
    :cond_c
    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    if-eq v1, v2, :cond_d

    const-string v1, ", channels="

    .line 1185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1187
    :cond_d
    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    if-eq v1, v2, :cond_e

    const-string v1, ", sample_rate="

    .line 1188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1190
    :cond_e
    iget-object v1, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v1, :cond_f

    const-string v1, ", language="

    .line 1191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1193
    :cond_f
    iget-object v1, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, ", label="

    .line 1194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    :cond_10
    iget v1, p0, Landroidx/media3/common/Format;->selectionFlags:I

    const-string v2, "]"

    if-eqz v1, :cond_14

    .line 1197
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_11

    const-string v4, "auto"

    .line 1200
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1202
    :cond_11
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    const-string v4, "default"

    .line 1203
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    :cond_12
    iget v4, p0, Landroidx/media3/common/Format;->selectionFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_13

    const-string v4, "forced"

    .line 1206
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    const-string v4, ", selectionFlags=["

    .line 1208
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    :cond_14
    iget v1, p0, Landroidx/media3/common/Format;->roleFlags:I

    if-eqz v1, :cond_24

    .line 1214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_15

    const-string v4, "main"

    .line 1216
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    :cond_15
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_16

    const-string v4, "alt"

    .line 1219
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1221
    :cond_16
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_17

    const-string v4, "supplementary"

    .line 1222
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_17
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_18

    const-string v4, "commentary"

    .line 1225
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_18
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_19

    const-string v4, "dub"

    .line 1228
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    :cond_19
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1a

    const-string v4, "emergency"

    .line 1231
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :cond_1a
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1b

    const-string v4, "caption"

    .line 1234
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1236
    :cond_1b
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1c

    const-string v4, "subtitle"

    .line 1237
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1239
    :cond_1c
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_1d

    const-string v4, "sign"

    .line 1240
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    :cond_1d
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_1e

    const-string v4, "describes-video"

    .line 1243
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_1e
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_1f

    const-string v4, "describes-music"

    .line 1246
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    :cond_1f
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_20

    const-string v4, "enhanced-intelligibility"

    .line 1249
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_20
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_21

    const-string v4, "transcribes-dialog"

    .line 1252
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1254
    :cond_21
    iget v4, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_22

    const-string v4, "easy-read"

    .line 1255
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_22
    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_23

    const-string p0, "trick-play"

    .line 1258
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    const-string p0, ", roleFlags=["

    .line 1260
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    invoke-static {v3}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/Joiner;->appendTo(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)Ljava/lang/StringBuilder;

    .line 1262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/Format$Builder;
    .locals 2

    .line 902
    new-instance v0, Landroidx/media3/common/Format$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/Format$Builder;-><init>(Landroidx/media3/common/Format;Landroidx/media3/common/Format$1;)V

    return-object v0
.end method

.method public copyWithCryptoType(I)Landroidx/media3/common/Format;
    .locals 0

    .line 976
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setCryptoType(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1074
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 1077
    :cond_1
    check-cast p1, Landroidx/media3/common/Format;

    iget v2, p0, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v2, :cond_2

    .line 1078
    iget v3, p1, Landroidx/media3/common/Format;->hashCode:I

    if-eqz v3, :cond_2

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 1082
    iget v3, p1, Landroidx/media3/common/Format;->selectionFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    iget v3, p1, Landroidx/media3/common/Format;->roleFlags:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->averageBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    iget v3, p1, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->maxInputSize:I

    iget v3, p1, Landroidx/media3/common/Format;->maxInputSize:I

    if-ne v2, v3, :cond_3

    iget-wide v2, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    iget-wide v4, p1, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    iget v3, p1, Landroidx/media3/common/Format;->width:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    iget v3, p1, Landroidx/media3/common/Format;->height:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    iget v3, p1, Landroidx/media3/common/Format;->rotationDegrees:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->stereoMode:I

    iget v3, p1, Landroidx/media3/common/Format;->stereoMode:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    iget v3, p1, Landroidx/media3/common/Format;->channelCount:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->sampleRate:I

    iget v3, p1, Landroidx/media3/common/Format;->sampleRate:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    iget v3, p1, Landroidx/media3/common/Format;->pcmEncoding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderDelay:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderDelay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->encoderPadding:I

    iget v3, p1, Landroidx/media3/common/Format;->encoderPadding:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    iget v3, p1, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountHorizontal:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    iget v3, p1, Landroidx/media3/common/Format;->tileCountVertical:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->cryptoType:I

    iget v3, p1, Landroidx/media3/common/Format;->cryptoType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    iget v3, p1, Landroidx/media3/common/Format;->frameRate:F

    .line 1101
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    iget v3, p1, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1102
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 1103
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 1104
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1105
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1106
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1107
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1108
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->projectionData:[B

    iget-object v3, p1, Landroidx/media3/common/Format;->projectionData:[B

    .line 1109
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    iget-object v3, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 1110
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    iget-object v3, p1, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    .line 1111
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v3, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1112
    invoke-static {v2, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1113
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format;->initializationDataEquals(Landroidx/media3/common/Format;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getPixelCount()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Landroidx/media3/common/Format;->height:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    mul-int v1, v0, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/media3/common/Format;->hashCode:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1025
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 1027
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->roleFlags:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->averageBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->peakBitrate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_3

    .line 1032
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_4

    .line 1033
    :cond_4
    invoke-virtual {v0}, Landroidx/media3/common/Metadata;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    if-nez v0, :cond_5

    move v0, v1

    goto :goto_5

    .line 1035
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_6

    .line 1037
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->maxInputSize:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v0, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    long-to-int v0, v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->width:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->height:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 1045
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1047
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->stereoMode:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->channelCount:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->sampleRate:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderDelay:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->encoderPadding:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget v0, p0, Landroidx/media3/common/Format;->cryptoType:I

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/media3/common/Format;->hashCode:I

    :cond_7
    iget p0, p0, Landroidx/media3/common/Format;->hashCode:I

    return p0
.end method

.method public initializationDataEquals(Landroidx/media3/common/Format;)Z
    .locals 4

    iget-object v0, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1126
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1129
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1130
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v3, p1, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    .line 1305
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format;->toBundle(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public toBundle(Z)Landroid/os/Bundle;
    .locals 3

    .line 1314
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_ID:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 1315
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_LABEL:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 1316
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 1317
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 1318
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 1319
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_AVERAGE_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->averageBitrate:I

    .line 1320
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_PEAK_BITRATE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/Format;->peakBitrate:I

    .line 1321
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/Format;->FIELD_CODECS:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    .line 1322
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p1, Landroidx/media3/common/Format;->FIELD_METADATA:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 1325
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    sget-object p1, Landroidx/media3/common/Format;->FIELD_CONTAINER_MIME_TYPE:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    .line 1328
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_SAMPLE_MIME_TYPE:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 1330
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_MAX_INPUT_SIZE:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->maxInputSize:I

    .line 1331
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    .line 1332
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 1333
    invoke-static {p1}, Landroidx/media3/common/Format;->keyForInitializationData(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/Format;->initializationData:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Landroidx/media3/common/Format;->FIELD_DRM_INIT_DATA:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 1337
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_SUBSAMPLE_OFFSET_US:Ljava/lang/String;

    iget-wide v1, p0, Landroidx/media3/common/Format;->subsampleOffsetUs:J

    .line 1338
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_WIDTH:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->width:I

    .line 1340
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_HEIGHT:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->height:I

    .line 1341
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_FRAME_RATE:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->frameRate:F

    .line 1342
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_ROTATION_DEGREES:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->rotationDegrees:I

    .line 1343
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->pixelWidthHeightRatio:F

    .line 1344
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_PROJECTION_DATA:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/common/Format;->projectionData:[B

    .line 1345
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_STEREO_MODE:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->stereoMode:I

    .line 1346
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    if-eqz p1, :cond_2

    sget-object v1, Landroidx/media3/common/Format;->FIELD_COLOR_INFO:Ljava/lang/String;

    .line 1348
    invoke-virtual {p1}, Landroidx/media3/common/ColorInfo;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    sget-object p1, Landroidx/media3/common/Format;->FIELD_CHANNEL_COUNT:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->channelCount:I

    .line 1351
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_SAMPLE_RATE:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->sampleRate:I

    .line 1352
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_PCM_ENCODING:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->pcmEncoding:I

    .line 1353
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_ENCODER_DELAY:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->encoderDelay:I

    .line 1354
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_ENCODER_PADDING:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->encoderPadding:I

    .line 1355
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_ACCESSIBILITY_CHANNEL:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->accessibilityChannel:I

    .line 1357
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_HORIZONTAL:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->tileCountHorizontal:I

    .line 1359
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_TILE_COUNT_VERTICAL:Ljava/lang/String;

    iget v1, p0, Landroidx/media3/common/Format;->tileCountVertical:I

    .line 1360
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object p1, Landroidx/media3/common/Format;->FIELD_CRYPTO_TYPE:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/Format;->cryptoType:I

    .line 1362
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->bitrate:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->width:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->frameRate:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/Format;->colorInfo:Landroidx/media3/common/ColorInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/Format;->channelCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "])"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;
    .locals 11

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    .line 913
    invoke-static {v0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 916
    iget-object v1, p1, Landroidx/media3/common/Format;->id:Ljava/lang/String;

    .line 919
    iget-object v2, p1, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    :goto_0
    iget-object v3, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v0, v4, :cond_2

    if-ne v0, v5, :cond_3

    .line 921
    :cond_2
    iget-object v4, p1, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v3, v4

    :cond_3
    iget v4, p0, Landroidx/media3/common/Format;->averageBitrate:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 928
    iget v4, p1, Landroidx/media3/common/Format;->averageBitrate:I

    :cond_4
    iget v7, p0, Landroidx/media3/common/Format;->peakBitrate:I

    if-ne v7, v6, :cond_5

    .line 929
    iget v7, p1, Landroidx/media3/common/Format;->peakBitrate:I

    :cond_5
    iget-object v6, p0, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 934
    iget-object v8, p1, Landroidx/media3/common/Format;->codecs:Ljava/lang/String;

    invoke-static {v8, v0}, Landroidx/media3/common/util/Util;->getCodecsOfType(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 935
    invoke-static {v8}, Landroidx/media3/common/util/Util;->splitCodecs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-ne v9, v5, :cond_6

    move-object v6, v8

    :cond_6
    iget-object v5, p0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    if-nez v5, :cond_7

    .line 943
    iget-object v5, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    goto :goto_1

    .line 944
    :cond_7
    iget-object v8, p1, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    invoke-virtual {v5, v8}, Landroidx/media3/common/Metadata;->copyWithAppendedEntriesFrom(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Metadata;

    move-result-object v5

    :goto_1
    iget v8, p0, Landroidx/media3/common/Format;->frameRate:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v9, v8, v9

    if-nez v9, :cond_8

    const/4 v9, 0x2

    if-ne v0, v9, :cond_8

    .line 948
    iget v8, p1, Landroidx/media3/common/Format;->frameRate:F

    :cond_8
    iget v0, p0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 952
    iget v9, p1, Landroidx/media3/common/Format;->selectionFlags:I

    or-int/2addr v0, v9

    iget v9, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 953
    iget v10, p1, Landroidx/media3/common/Format;->roleFlags:I

    or-int/2addr v9, v10

    .line 955
    iget-object p1, p1, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    iget-object v10, p0, Landroidx/media3/common/Format;->drmInitData:Landroidx/media3/common/DrmInitData;

    .line 956
    invoke-static {p1, v10}, Landroidx/media3/common/DrmInitData;->createSessionCreationData(Landroidx/media3/common/DrmInitData;Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    .line 958
    invoke-virtual {p0}, Landroidx/media3/common/Format;->buildUpon()Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 959
    invoke-virtual {p0, v1}, Landroidx/media3/common/Format$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 960
    invoke-virtual {p0, v2}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 961
    invoke-virtual {p0, v3}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 962
    invoke-virtual {p0, v0}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 963
    invoke-virtual {p0, v9}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 964
    invoke-virtual {p0, v4}, Landroidx/media3/common/Format$Builder;->setAverageBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 965
    invoke-virtual {p0, v7}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 966
    invoke-virtual {p0, v6}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 967
    invoke-virtual {p0, v5}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 968
    invoke-virtual {p0, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 969
    invoke-virtual {p0, v8}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p0

    .line 970
    invoke-virtual {p0}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p0

    return-object p0
.end method
