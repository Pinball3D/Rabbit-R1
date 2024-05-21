.class public final synthetic Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iput-boolean p2, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;->f$1:Z

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->lambda$skipSilenceEnabledChanged$7$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher(Z)V

    return-void
.end method
