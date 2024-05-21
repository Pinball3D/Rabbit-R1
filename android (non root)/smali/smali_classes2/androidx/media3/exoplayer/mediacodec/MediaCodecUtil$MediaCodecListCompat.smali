.class interface abstract Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$MediaCodecListCompat;
.super Ljava/lang/Object;
.source "MediaCodecUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "MediaCodecListCompat"
.end annotation


# virtual methods
.method public abstract getCodecCount()I
.end method

.method public abstract getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
.end method

.method public abstract isFeatureRequired(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract isFeatureSupported(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z
.end method

.method public abstract secureDecodersExplicit()Z
.end method
