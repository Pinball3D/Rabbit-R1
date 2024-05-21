.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamEventCallbackV29"
.end annotation


# instance fields
.field private final callback:Landroid/media/AudioTrack$StreamEventCallback;

.field private final handler:Landroid/os/Handler;

.field final synthetic this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;


# direct methods
.method public static synthetic $r8$lambda$xMC8M6LLEeW997bBmO6BCC6GGAM(Landroid/os/Handler;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 2

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->this$0:Landroidx/media3/exoplayer/audio/DefaultAudioSink;

    .line 1873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1874
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    .line 1878
    new-instance v0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;

    invoke-direct {v0, p0, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$1;-><init>(Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;Landroidx/media3/exoplayer/audio/DefaultAudioSink;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    return-void
.end method


# virtual methods
.method public register(Landroid/media/AudioTrack;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    .line 1911
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29$$ExternalSyntheticLambda0;-><init>(Landroid/os/Handler;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    invoke-virtual {p1, v1, p0}, Landroid/media/AudioTrack;->registerStreamEventCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioTrack$StreamEventCallback;)V

    return-void
.end method

.method public unregister(Landroid/media/AudioTrack;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->callback:Landroid/media/AudioTrack$StreamEventCallback;

    .line 1915
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->unregisterStreamEventCallback(Landroid/media/AudioTrack$StreamEventCallback;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$StreamEventCallbackV29;->handler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 1916
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
