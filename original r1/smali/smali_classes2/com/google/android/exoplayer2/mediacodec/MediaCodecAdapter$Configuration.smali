.class public final Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
.super Ljava/lang/Object;
.source "MediaCodecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation


# instance fields
.field public final codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

.field public final crypto:Landroid/media/MediaCrypto;

.field public final flags:I

.field public final format:Lcom/google/android/exoplayer2/Format;

.field public final mediaFormat:Landroid/media/MediaFormat;

.field public final surface:Landroid/view/Surface;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iput-object p3, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->format:Lcom/google/android/exoplayer2/Format;

    iput-object p4, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iput-object p5, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iput p6, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    return-void
.end method

.method public static createForAudioDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 8

    .line 57
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method

.method public static createForVideoDecoding(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;
    .locals 8

    .line 77
    new-instance v7, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;-><init>(Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object v7
.end method
