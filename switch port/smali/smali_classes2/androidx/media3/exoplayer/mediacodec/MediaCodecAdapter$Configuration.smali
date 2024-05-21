.class public final Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

.field public final crypto:Landroid/media/MediaCrypto;

.field public final flags:I

.field public final format:Landroidx/media3/common/Format;

.field public final mediaFormat:Landroid/media/MediaFormat;

.field public final surface:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iput-object p3, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->format:Landroidx/media3/common/Format;

    iput-object p4, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iput-object p5, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iput p6, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    return-void
.end method

.method public static createForAudioDecoding(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 8

    .line 59
    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method

.method public static createForVideoDecoding(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;
    .locals 8

    .line 79
    new-instance v7, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$Configuration;-><init>(Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Landroidx/media3/common/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method
