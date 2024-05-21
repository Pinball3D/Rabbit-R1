.class public Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 49
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "configureCodec"

    .line 50
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 51
    iget-object v1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->mediaFormat:Landroid/media/MediaFormat;

    iget-object v2, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->surface:Landroid/view/Surface;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->crypto:Landroid/media/MediaCrypto;

    iget p1, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->flags:I

    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 56
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    const-string p1, "startCodec"

    .line 57
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/media/MediaCodec;->start()V

    .line 59
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 60
    new-instance p1, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;

    invoke-direct {p1, p0, v0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v0, p0

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 65
    :cond_0
    throw p1
.end method

.method protected createCodec(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Landroid/media/MediaCodec;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->codecInfo:Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "createCodec:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 74
    invoke-static {p0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p0

    .line 75
    invoke-static {}, Lcom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    return-object p0
.end method
