.class final Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaCodecListCompatV21"
.end annotation


# instance fields
.field private final codecKind:I

.field private mediaCodecInfos:[Landroid/media/MediaCodecInfo;


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    return-void
.end method

.method private ensureMediaCodecInfosInitialized()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "mediaCodecInfos"
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    if-nez v0, :cond_0

    .line 1110
    new-instance v0, Landroid/media/MediaCodecList;

    iget v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->codecKind:I

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    :cond_0
    return-void
.end method


# virtual methods
.method public getCodecCount()I
    .locals 0

    .line 1080
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 1081
    array-length p0, p0

    return p0
.end method

.method public getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
    .locals 0

    .line 1086
    invoke-direct {p0}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->ensureMediaCodecInfosInitialized()V

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompatV21;->mediaCodecInfos:[Landroid/media/MediaCodecInfo;

    .line 1087
    aget-object p0, p0, p1

    return-object p0
.end method

.method public isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1104
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
    .locals 0

    .line 1098
    invoke-virtual {p3, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public secureDecodersExplicit()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
