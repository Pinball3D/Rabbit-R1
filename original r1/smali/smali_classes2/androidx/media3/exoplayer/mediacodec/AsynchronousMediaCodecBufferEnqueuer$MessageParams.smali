.class Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageParams"
.end annotation


# instance fields
.field public final cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

.field public flags:I

.field public index:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Landroid/media/MediaCodec$CryptoInfo;

    return-void
.end method


# virtual methods
.method public setQueueParams(IIIJI)V
    .locals 0

    iput p1, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iput p2, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iput p3, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iput-wide p4, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iput p6, p0, Landroidx/media3/exoplayer/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    return-void
.end method
