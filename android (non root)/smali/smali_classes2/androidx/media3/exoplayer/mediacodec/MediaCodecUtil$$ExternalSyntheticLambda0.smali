.class public final synthetic Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$ScoreProvider;


# instance fields
.field public final synthetic f$0:Landroidx/media3/common/Format;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/common/Format;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final getScore(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/common/Format;

    check-cast p1, Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/mediacodec/MediaCodecUtil;->lambda$getDecoderInfosSortedByFormatSupport$0(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/mediacodec/MediaCodecInfo;)I

    move-result p0

    return p0
.end method
