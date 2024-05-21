.class public Lorg/webrtc/HardwareVideoEncoderFactory;
.super Ljava/lang/Object;
.source "HardwareVideoEncoderFactory.java"

# interfaces
.implements Lorg/webrtc/VideoEncoderFactory;


# static fields
.field private static final H264_HW_EXCEPTION_MODELS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_L_MS:I = 0x3a98

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_M_MS:I = 0x4e20

.field private static final QCOM_VP8_KEY_FRAME_INTERVAL_ANDROID_N_MS:I = 0x3a98

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoderFactory"


# instance fields
.field private final codecAllowedPredicate:Lorg/webrtc/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final enableH264HighProfile:Z

.field private final enableIntelVp8Encoder:Z

.field private final sharedContext:Lorg/webrtc/EglBase14$Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "Nexus 7"

    const-string v1, "Nexus 4"

    const-string v2, "SAMSUNG-SGH-I337"

    .line 38
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/webrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/EglBase$Context;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/webrtc/HardwareVideoEncoderFactory;-><init>(Lorg/webrtc/EglBase$Context;ZZLorg/webrtc/Predicate;)V

    return-void
.end method

.method public constructor <init>(Lorg/webrtc/EglBase$Context;ZZLorg/webrtc/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/EglBase$Context;",
            "ZZ",
            "Lorg/webrtc/Predicate<",
            "Landroid/media/MediaCodecInfo;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    instance-of v0, p1, Lorg/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    .line 74
    check-cast p1, Lorg/webrtc/EglBase14$Context;

    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    goto :goto_0

    :cond_0
    const-string p1, "HardwareVideoEncoderFactory"

    const-string v0, "No shared EglBase.Context.  Encoders will not use texture mode."

    .line 76
    invoke-static {p1, v0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    :goto_0
    iput-boolean p2, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    iput-boolean p3, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    iput-object p4, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lorg/webrtc/Predicate;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0, p1, p2}, Lorg/webrtc/HardwareVideoEncoderFactory;-><init>(Lorg/webrtc/EglBase$Context;ZZ)V

    return-void
.end method

.method private createBitrateAdjuster(Lorg/webrtc/VideoCodecMimeType;Ljava/lang/String;)Lorg/webrtc/BitrateAdjuster;
    .locals 0

    const-string p0, "OMX.Exynos."

    .line 277
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 278
    sget-object p0, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    if-ne p1, p0, :cond_0

    .line 280
    new-instance p0, Lorg/webrtc/DynamicBitrateAdjuster;

    invoke-direct {p0}, Lorg/webrtc/DynamicBitrateAdjuster;-><init>()V

    return-object p0

    .line 283
    :cond_0
    new-instance p0, Lorg/webrtc/FramerateBitrateAdjuster;

    invoke-direct {p0}, Lorg/webrtc/FramerateBitrateAdjuster;-><init>()V

    return-object p0

    .line 287
    :cond_1
    new-instance p0, Lorg/webrtc/BaseBitrateAdjuster;

    invoke-direct {p0}, Lorg/webrtc/BaseBitrateAdjuster;-><init>()V

    return-object p0
.end method

.method private findCodecForType(Lorg/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;
    .locals 5

    const/4 v0, 0x0

    .line 162
    :goto_0
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 165
    :try_start_0
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "HardwareVideoEncoderFactory"

    const-string v4, "Cannot retrieve encoder codec info"

    .line 167
    invoke-static {v3, v4, v1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v2, :cond_1

    .line 170
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 174
    :cond_0
    invoke-direct {p0, v2, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecMimeType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private getForcedKeyFrameIntervalMs(Lorg/webrtc/VideoCodecMimeType;Ljava/lang/String;)I
    .locals 0

    .line 262
    sget-object p0, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    if-ne p1, p0, :cond_0

    const-string p0, "OMX.qcom."

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3a98

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getKeyFrameIntervalSec(Lorg/webrtc/VideoCodecMimeType;)I
    .locals 2

    .line 250
    sget-object p0, Lorg/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecMimeType:[I

    invoke-virtual {p1}, Lorg/webrtc/VideoCodecMimeType;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported VideoCodecMimeType "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 p0, 0x14

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x64

    return p0
.end method

.method private isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableH264HighProfile:Z

    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OMX.Exynos."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecMimeType;)Z
    .locals 1

    .line 198
    sget-object v0, Lorg/webrtc/HardwareVideoEncoderFactory$1;->$SwitchMap$org$webrtc$VideoCodecMimeType:[I

    invoke-virtual {p2}, Lorg/webrtc/VideoCodecMimeType;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 202
    :cond_1
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0

    .line 200
    :cond_2
    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    return p0
.end method

.method private isHardwareSupportedInCurrentSdkH264(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    sget-object p0, Lorg/webrtc/HardwareVideoEncoderFactory;->H264_HW_EXCEPTION_MODELS:Ljava/util/List;

    .line 231
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OMX.qcom."

    .line 236
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "OMX.Exynos."

    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private isHardwareSupportedInCurrentSdkVp8(Landroid/media/MediaCodecInfo;)Z
    .locals 1

    .line 212
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX.qcom."

    .line 214
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "OMX.Exynos."

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "OMX.Intel."

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->enableIntelVp8Encoder:Z

    if-eqz p0, :cond_2

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isHardwareSupportedInCurrentSdkVp9(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    .line 223
    invoke-virtual {p1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OMX.qcom."

    .line 224
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "OMX.Exynos."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z
    .locals 0

    iget-object p0, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->codecAllowedPredicate:Lorg/webrtc/Predicate;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 246
    :cond_0
    invoke-interface {p0, p1}, Lorg/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSupportedCodec(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecMimeType;)Z
    .locals 3

    .line 183
    invoke-static {p1, p2}, Lorg/webrtc/MediaCodecUtils;->codecSupportsType(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecMimeType;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    sget-object v0, Lorg/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 188
    invoke-virtual {p2}, Lorg/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 187
    invoke-static {v0, v2}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 192
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/webrtc/HardwareVideoEncoderFactory;->isHardwareSupportedInCurrentSdk(Landroid/media/MediaCodecInfo;Lorg/webrtc/VideoCodecMimeType;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/webrtc/HardwareVideoEncoderFactory;->isMediaCodecAllowed(Landroid/media/MediaCodecInfo;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public createEncoder(Lorg/webrtc/VideoCodecInfo;)Lorg/webrtc/VideoEncoder;
    .locals 12

    .line 97
    invoke-virtual {p1}, Lorg/webrtc/VideoCodecInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/VideoCodecMimeType;->fromSdpCodecName(Ljava/lang/String;)Lorg/webrtc/VideoCodecMimeType;

    move-result-object v4

    .line 98
    invoke-direct {p0, v4}, Lorg/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v4}, Lorg/webrtc/VideoCodecMimeType;->mimeType()Ljava/lang/String;

    move-result-object v2

    .line 106
    sget-object v5, Lorg/webrtc/MediaCodecUtils;->TEXTURE_COLOR_FORMATS:[I

    .line 107
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v6

    .line 106
    invoke-static {v5, v6}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v5

    .line 108
    sget-object v6, Lorg/webrtc/MediaCodecUtils;->ENCODER_COLOR_FORMATS:[I

    .line 109
    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 108
    invoke-static {v6, v2}, Lorg/webrtc/MediaCodecUtils;->selectColorFormat([ILandroid/media/MediaCodecInfo$CodecCapabilities;)Ljava/lang/Integer;

    move-result-object v6

    .line 111
    sget-object v2, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    if-ne v4, v2, :cond_2

    .line 112
    iget-object v2, p1, Lorg/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/4 v7, 0x1

    .line 113
    invoke-static {v4, v7}, Lorg/webrtc/MediaCodecUtils;->getCodecProperties(Lorg/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v7

    .line 112
    invoke-static {v2, v7}, Lorg/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v2

    .line 114
    iget-object v7, p1, Lorg/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    const/4 v8, 0x0

    .line 115
    invoke-static {v4, v8}, Lorg/webrtc/MediaCodecUtils;->getCodecProperties(Lorg/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v8

    .line 114
    invoke-static {v7, v8}, Lorg/webrtc/H264Utils;->isSameH264Profile(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v7

    if-nez v2, :cond_1

    if-nez v7, :cond_1

    return-object v1

    :cond_1
    if-eqz v2, :cond_2

    .line 120
    invoke-direct {p0, v0}, Lorg/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    .line 125
    :cond_2
    new-instance v0, Lorg/webrtc/HardwareVideoEncoder;

    new-instance v2, Lorg/webrtc/MediaCodecWrapperFactoryImpl;

    invoke-direct {v2}, Lorg/webrtc/MediaCodecWrapperFactoryImpl;-><init>()V

    iget-object v7, p1, Lorg/webrtc/VideoCodecInfo;->params:Ljava/util/Map;

    .line 126
    invoke-direct {p0, v4}, Lorg/webrtc/HardwareVideoEncoderFactory;->getKeyFrameIntervalSec(Lorg/webrtc/VideoCodecMimeType;)I

    move-result v8

    .line 127
    invoke-direct {p0, v4, v3}, Lorg/webrtc/HardwareVideoEncoderFactory;->getForcedKeyFrameIntervalMs(Lorg/webrtc/VideoCodecMimeType;Ljava/lang/String;)I

    move-result v9

    invoke-direct {p0, v4, v3}, Lorg/webrtc/HardwareVideoEncoderFactory;->createBitrateAdjuster(Lorg/webrtc/VideoCodecMimeType;Ljava/lang/String;)Lorg/webrtc/BitrateAdjuster;

    move-result-object v10

    iget-object v11, p0, Lorg/webrtc/HardwareVideoEncoderFactory;->sharedContext:Lorg/webrtc/EglBase14$Context;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/webrtc/HardwareVideoEncoder;-><init>(Lorg/webrtc/MediaCodecWrapperFactory;Ljava/lang/String;Lorg/webrtc/VideoCodecMimeType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Map;IILorg/webrtc/BitrateAdjuster;Lorg/webrtc/EglBase14$Context;)V

    return-object v0
.end method

.method public getSupportedCodecs()[Lorg/webrtc/VideoCodecInfo;
    .locals 10

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x4

    new-array v2, v1, [Lorg/webrtc/VideoCodecMimeType;

    .line 141
    sget-object v3, Lorg/webrtc/VideoCodecMimeType;->VP8:Lorg/webrtc/VideoCodecMimeType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lorg/webrtc/VideoCodecMimeType;->VP9:Lorg/webrtc/VideoCodecMimeType;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    sget-object v6, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    aput-object v6, v2, v3

    const/4 v3, 0x3

    sget-object v6, Lorg/webrtc/VideoCodecMimeType;->AV1:Lorg/webrtc/VideoCodecMimeType;

    aput-object v6, v2, v3

    move v3, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v6, v2, v3

    .line 143
    invoke-direct {p0, v6}, Lorg/webrtc/HardwareVideoEncoderFactory;->findCodecForType(Lorg/webrtc/VideoCodecMimeType;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 145
    invoke-virtual {v6}, Lorg/webrtc/VideoCodecMimeType;->toSdpCodecName()Ljava/lang/String;

    move-result-object v8

    .line 148
    sget-object v9, Lorg/webrtc/VideoCodecMimeType;->H264:Lorg/webrtc/VideoCodecMimeType;

    if-ne v6, v9, :cond_0

    invoke-direct {p0, v7}, Lorg/webrtc/HardwareVideoEncoderFactory;->isH264HighProfileSupported(Landroid/media/MediaCodecInfo;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    new-instance v7, Lorg/webrtc/VideoCodecInfo;

    .line 150
    invoke-static {v6, v5}, Lorg/webrtc/MediaCodecUtils;->getCodecProperties(Lorg/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    new-instance v7, Lorg/webrtc/VideoCodecInfo;

    .line 154
    invoke-static {v6, v4}, Lorg/webrtc/MediaCodecUtils;->getCodecProperties(Lorg/webrtc/VideoCodecMimeType;Z)Ljava/util/Map;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lorg/webrtc/VideoCodecInfo;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 153
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Lorg/webrtc/VideoCodecInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/webrtc/VideoCodecInfo;

    return-object p0
.end method
