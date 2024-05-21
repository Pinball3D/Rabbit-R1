.class public Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;
.super Landroidx/media3/decoder/DecoderException;
.source "MediaCodecDecoderException.java"


# instance fields
.field public final codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final diagnosticInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)V
    .locals 3

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Decoder failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p2, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/media3/decoder/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    .line 38
    sget p2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_1

    invoke-static {p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iput-object v1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecDecoderException;->diagnosticInfo:Ljava/lang/String;

    return-void
.end method

.method private static getDiagnosticInfoV21(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .line 44
    instance-of v0, p0, Landroid/media/MediaCodec$CodecException;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {p0}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
