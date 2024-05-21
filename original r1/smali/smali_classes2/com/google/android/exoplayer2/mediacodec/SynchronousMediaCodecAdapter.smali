.class public final Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;
.super Ljava/lang/Object;
.source "SynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;
    }
.end annotation


# instance fields
.field private final codec:Landroid/media/MediaCodec;

.field private inputByteBuffers:[Ljava/nio/ByteBuffer;

.field private outputByteBuffers:[Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 86
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {p1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;-><init>(Landroid/media/MediaCodec;)V

    return-void
.end method


# virtual methods
.method public dequeueInputBufferIndex()I
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    const-wide/16 v0, 0x0

    .line 99
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result p0

    return p0
.end method

.method public dequeueOutputBufferIndex(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    .line 106
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 107
    sget v2, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 108
    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    :cond_1
    if-eq v0, v1, :cond_0

    return v0
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 166
    invoke-virtual {p0}, Landroid/media/MediaCodec;->flush()V

    return-void
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 123
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 124
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 126
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/ByteBuffer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 206
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getMetrics()Landroid/os/PersistableBundle;

    move-result-object p0

    return-object p0
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2

    .line 133
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 134
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    .line 136
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/nio/ByteBuffer;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getOutputFormat()Landroid/media/MediaFormat;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 117
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$setOnFrameRenderedListener$0$com-google-android-exoplayer2-mediacodec-SynchronousMediaCodecAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V
    .locals 6

    .line 0
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    .line 181
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;->onFrameRendered(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;JJ)V

    return-void
.end method

.method public needsReconfiguration()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .line 143
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public queueSecureInputBuffer(IILcom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 150
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v3

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    .line 149
    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->inputByteBuffers:[Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->outputByteBuffers:[Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 173
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method

.method public releaseOutputBuffer(IJ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 161
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public releaseOutputBuffer(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 155
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public setOnFrameRenderedListener(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/os/Handler;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 179
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 189
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setParameters(Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 195
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter;->codec:Landroid/media/MediaCodec;

    .line 200
    invoke-virtual {p0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method
