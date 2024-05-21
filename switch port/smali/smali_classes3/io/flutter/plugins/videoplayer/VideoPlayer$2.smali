.class Lio/flutter/plugins/videoplayer/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/Player$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugins/videoplayer/VideoPlayer;->setUpVideoPlayer(Lcom/google/android/exoplayer2/ExoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private isBuffering:Z

.field final synthetic this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

.field final synthetic val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

.field final synthetic val$exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;


# direct methods
.method constructor <init>(Lio/flutter/plugins/videoplayer/VideoPlayer;Lio/flutter/plugins/videoplayer/QueuingEventSink;Lcom/google/android/exoplayer2/ExoPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    iput-object p2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    iput-object p3, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    return-void
.end method


# virtual methods
.method public onIsPlayingChanged(Z)V
    .locals 3

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "event"

    const-string v2, "isPlayingStateUpdate"

    .line 243
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isPlaying"

    .line 244
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 245
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 209
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 210
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendBufferingUpdate()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 212
    iget-boolean v2, v2, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 213
    iput-boolean v0, v2, Lio/flutter/plugins/videoplayer/VideoPlayer;->isInitialized:Z

    iget-object v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->this$0:Lio/flutter/plugins/videoplayer/VideoPlayer;

    .line 214
    invoke-virtual {v0}, Lio/flutter/plugins/videoplayer/VideoPlayer;->sendInitialized()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "event"

    const-string v3, "completed"

    .line 218
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 219
    invoke-virtual {v2, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    if-eq p1, v1, :cond_3

    const/4 p1, 0x0

    .line 223
    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    :cond_3
    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplayer2/PlaybackException;)V
    .locals 2

    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->setBuffering(Z)V

    .line 230
    iget v0, p1, Lcom/google/android/exoplayer2/PlaybackException;->errorCode:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 232
    invoke-interface {p1}, Lcom/google/android/exoplayer2/ExoPlayer;->seekToDefaultPosition()V

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$exoPlayer:Lcom/google/android/exoplayer2/ExoPlayer;

    .line 233
    invoke-interface {p0}, Lcom/google/android/exoplayer2/ExoPlayer;->prepare()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    if-eqz p0, :cond_1

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Video player had error "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "VideoError"

    invoke-virtual {p0, v1, p1, v0}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBuffering(Z)V
    .locals 2

    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    .line 200
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iget-boolean v0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->isBuffering:Z

    if-eqz v0, :cond_0

    const-string v0, "bufferingStart"

    goto :goto_0

    :cond_0
    const-string v0, "bufferingEnd"

    :goto_0
    const-string v1, "event"

    .line 201
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/flutter/plugins/videoplayer/VideoPlayer$2;->val$eventSink:Lio/flutter/plugins/videoplayer/QueuingEventSink;

    .line 202
    invoke-virtual {p0, p1}, Lio/flutter/plugins/videoplayer/QueuingEventSink;->success(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
