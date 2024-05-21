.class public final synthetic Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$0:Landroidx/media3/exoplayer/source/CompositeMediaSource;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/CompositeMediaSource$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/media3/exoplayer/source/CompositeMediaSource;->lambda$prepareChildSource$0$androidx-media3-exoplayer-source-CompositeMediaSource(Ljava/lang/Object;Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V

    return-void
.end method
