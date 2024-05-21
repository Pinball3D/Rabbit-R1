.class public final synthetic Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:I

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget v1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:I

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->lambda$droppedFrames$3$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(IJ)V

    return-void
.end method
