.class public final synthetic Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Landroidx/media3/exoplayer/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;Landroidx/media3/exoplayer/DecoderCounters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$0:Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;->f$1:Landroidx/media3/exoplayer/DecoderCounters;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/audio/AudioRendererEventListener$EventDispatcher;->lambda$disabled$6$androidx-media3-exoplayer-audio-AudioRendererEventListener$EventDispatcher(Landroidx/media3/exoplayer/DecoderCounters;)V

    return-void
.end method
