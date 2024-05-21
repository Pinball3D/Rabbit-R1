.class public final synthetic Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

.field public final synthetic f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

.field public final synthetic f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

.field public final synthetic f$4:Ljava/io/IOException;

.field public final synthetic f$5:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iput-object p3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iput-object p4, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    iput-object p5, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$4:Ljava/io/IOException;

    iput-boolean p6, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$5:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$2:Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v3, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$3:Landroidx/media3/exoplayer/source/MediaLoadData;

    iget-object v4, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$4:Ljava/io/IOException;

    iget-boolean v5, p0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher$$ExternalSyntheticLambda2;->f$5:Z

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->lambda$loadError$3$androidx-media3-exoplayer-source-MediaSourceEventListener$EventDispatcher(Landroidx/media3/exoplayer/source/MediaSourceEventListener;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method
