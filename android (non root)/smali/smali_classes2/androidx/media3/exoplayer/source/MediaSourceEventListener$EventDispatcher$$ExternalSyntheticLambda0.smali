.class public final synthetic Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda0;->f$2:Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-virtual {v0, v1, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->lambda$downstreamFormatChanged$5$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method
