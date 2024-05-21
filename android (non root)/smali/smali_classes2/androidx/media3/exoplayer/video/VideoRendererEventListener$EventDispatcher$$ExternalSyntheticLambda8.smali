.class public final synthetic Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/common/VideoSize;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;Landroidx/media3/common/VideoSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$1:Landroidx/media3/common/VideoSize;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$0:Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;->f$1:Landroidx/media3/common/VideoSize;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/video/VideoRendererEventListener$EventDispatcher;->lambda$videoSizeChanged$5$androidx-media3-exoplayer-video-VideoRendererEventListener$EventDispatcher(Landroidx/media3/common/VideoSize;)V

    return-void
.end method
