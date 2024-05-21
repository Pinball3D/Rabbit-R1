.class public final synthetic Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-wide v2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->lambda$renderedFirstFrame$6$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V

    return-void
.end method
