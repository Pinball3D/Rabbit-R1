.class public final Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
.super Ljava/lang/Object;
.source "DefaultMediaCodecAdapterFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Factory;


# static fields
.field private static final MODE_DEFAULT:I = 0x0

.field private static final MODE_DISABLED:I = 0x2

.field private static final MODE_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DMCodecAdapterFactory"


# instance fields
.field private asynchronousMode:I

.field private enableSynchronizeCodecInteractionsWithQueueing:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-void
.end method


# virtual methods
.method public createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    sget v0, Lcom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    .line 103
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v0, v0, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result v0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating an asynchronous MediaCodec adapter for track type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getTrackTypeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DMCodecAdapterFactory"

    .line 104
    invoke-static {v2, v1}, Lcom/google/android/exoplayer2/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    invoke-direct {v1, v0, p0}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;-><init>(IZ)V

    .line 111
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecAdapter;

    move-result-object p0

    return-object p0

    .line 113
    :cond_1
    new-instance p0, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/SynchronousMediaCodecAdapter$Factory;->createAdapter(Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter$Configuration;)Lcom/google/android/exoplayer2/mediacodec/MediaCodecAdapter;

    move-result-object p0

    return-object p0
.end method

.method public experimentalSetSynchronizeCodecInteractionsWithQueueingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->enableSynchronizeCodecInteractionsWithQueueing:Z

    return-void
.end method

.method public forceDisableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method

.method public forceEnableAsynchronous()Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/DefaultMediaCodecAdapterFactory;->asynchronousMode:I

    return-object p0
.end method
