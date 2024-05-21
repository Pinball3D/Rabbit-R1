.class public final synthetic Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

.field public final synthetic f$1:Landroidx/media3/exoplayer/PlayerMessage;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/ExoPlayerImplInternal;Landroidx/media3/exoplayer/PlayerMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iput-object p2, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/exoplayer/PlayerMessage;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$0:Landroidx/media3/exoplayer/ExoPlayerImplInternal;

    iget-object p0, p0, Landroidx/media3/exoplayer/ExoPlayerImplInternal$$ExternalSyntheticLambda2;->f$1:Landroidx/media3/exoplayer/PlayerMessage;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/ExoPlayerImplInternal;->lambda$sendMessageToTargetThread$1$androidx-media3-exoplayer-ExoPlayerImplInternal(Landroidx/media3/exoplayer/PlayerMessage;)V

    return-void
.end method
