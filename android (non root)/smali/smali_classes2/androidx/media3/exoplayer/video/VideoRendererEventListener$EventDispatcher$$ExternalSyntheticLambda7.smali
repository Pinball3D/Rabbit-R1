.class public final synthetic Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/common/Format;

.field public final synthetic f$2:Landroidx/media3/exoplayer/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/common/Format;

    iput-object p3, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$2:Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$1:Landroidx/media3/common/Format;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;->f$2:Landroidx/media3/exoplayer/DecoderReuseEvaluation;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->lambda$inputFormatChanged$2$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/common/Format;Landroidx/media3/exoplayer/DecoderReuseEvaluation;)V

    return-void
.end method
