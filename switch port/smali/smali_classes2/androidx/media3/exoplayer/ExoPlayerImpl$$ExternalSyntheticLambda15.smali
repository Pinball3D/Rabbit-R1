.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

.field public final synthetic f$1:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImpl;Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$1:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$0:Landroidx/media3/exoplayer/ExoPlayerImpl;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImpl$$ExternalSyntheticLambda15;->f$1:Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImpl;->lambda$new$1$androidx-media3-exoplayer-ExoPlayerImpl(Landroidx/media3/exoplayer/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method
