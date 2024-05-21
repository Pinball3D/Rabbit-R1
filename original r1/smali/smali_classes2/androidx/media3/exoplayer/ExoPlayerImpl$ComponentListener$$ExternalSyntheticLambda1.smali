.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;

    check-cast p1, Landroidx/media3/common/Player$Listener;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/ExoPlayerImpl$ComponentListener;->lambda$onMetadata$4$androidx-media3-exoplayer-ExoPlayerImpl$ComponentListener(Landroidx/media3/common/Player$Listener;)V

    return-void
.end method
