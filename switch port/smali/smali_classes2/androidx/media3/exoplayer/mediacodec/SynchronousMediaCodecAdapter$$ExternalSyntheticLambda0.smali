.class public final synthetic Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaCodec$OnFrameRenderedListener;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

.field public final synthetic f$1:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    iput-object p2, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    return-void
.end method


# virtual methods
.method public final onFrameRendered(Landroid/media/MediaCodec;JJ)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;

    iget-object v1, p0, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/exoplayer/mediacodec/SynchronousMediaCodecAdapter;->lambda$setOnFrameRenderedListener$0$androidx-media3-exoplayer-mediacodec-SynchronousMediaCodecAdapter(Landroidx/media3/exoplayer/mediacodec/MediaCodecAdapter$OnFrameRenderedListener;Landroid/media/MediaCodec;JJ)V

    return-void
.end method
