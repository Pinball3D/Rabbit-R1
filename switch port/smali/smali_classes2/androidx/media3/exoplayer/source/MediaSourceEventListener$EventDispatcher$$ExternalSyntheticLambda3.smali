.class public final synthetic Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

.field public final synthetic f$3:Landroidx/media3/exoplayer/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$2:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget-object p0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda3;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->lambda$upstreamDiscarded$4$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/MediaLoadData;)V

    return-void
.end method
