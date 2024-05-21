.class public final Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;
.super Lcom/google/android/exoplayer2/SimpleBasePlayer;
.source "LegacyMediaPlayerWrapper.java"


# instance fields
.field private playWhenReady:Z

.field private final player:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/SimpleBasePlayer;-><init>(Landroid/os/Looper;)V

    .line 37
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method protected getState()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;
    .locals 4

    .line 42
    new-instance v0, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;-><init>()V

    new-instance v1, Lcom/google/android/exoplayer2/Player$Commands$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;-><init>()V

    const/4 v2, 0x1

    filled-new-array {v2}, [I

    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplayer2/Player$Commands$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Player$Commands$Builder;->build()Lcom/google/android/exoplayer2/Player$Commands;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setAvailableCommands(Lcom/google/android/exoplayer2/Player$Commands;)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;->playWhenReady:Z

    .line 44
    invoke-virtual {v0, p0, v2}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->setPlayWhenReady(ZI)Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/SimpleBasePlayer$State$Builder;->build()Lcom/google/android/exoplayer2/SimpleBasePlayer$State;

    move-result-object p0

    return-object p0
.end method

.method protected handleSetPlayWhenReady(Z)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;->playWhenReady:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    .line 53
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplayer2/LegacyMediaPlayerWrapper;->player:Landroid/media/MediaPlayer;

    .line 55
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    .line 57
    :goto_0
    invoke-static {}, Lcom/google/common/util/concurrent/Futures;->immediateVoidFuture()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
