.class public Lorg/webrtc/MediaStream;
.super Ljava/lang/Object;
.source "MediaStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaStream"


# instance fields
.field public final audioTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/AudioTrack;",
            ">;"
        }
    .end annotation
.end field

.field private nativeStream:J

.field public final preservedVideoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/VideoTrack;",
            ">;"
        }
    .end annotation
.end field

.field public final videoTracks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/VideoTrack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/List;

    iput-wide p1, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    return-void
.end method

.method private checkMediaStreamExists()V
    .locals 4

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 134
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "MediaStream has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static native nativeAddAudioTrackToNativeStream(JJ)Z
.end method

.method private static native nativeAddVideoTrackToNativeStream(JJ)Z
.end method

.method private static native nativeGetId(J)Ljava/lang/String;
.end method

.method private static native nativeRemoveAudioTrack(JJ)Z
.end method

.method private static native nativeRemoveVideoTrack(JJ)Z
.end method

.method private static removeMediaStreamTrack(Ljava/util/List;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/webrtc/MediaStreamTrack;",
            ">;J)V"
        }
    .end annotation

    .line 140
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 141
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/MediaStreamTrack;

    .line 143
    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->getNativeMediaStreamTrack()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/webrtc/MediaStreamTrack;->dispose()V

    .line 145
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string p0, "MediaStream"

    const-string p1, "Couldn\'t not find track"

    .line 149
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method addNativeAudioTrack(J)V
    .locals 1

    iget-object p0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 108
    new-instance v0, Lorg/webrtc/AudioTrack;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/AudioTrack;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addNativeVideoTrack(J)V
    .locals 1

    iget-object p0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 113
    new-instance v0, Lorg/webrtc/VideoTrack;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/VideoTrack;-><init>(J)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreservedTrack(Lorg/webrtc/VideoTrack;)Z
    .locals 4

    .line 53
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 54
    invoke-virtual {p1}, Lorg/webrtc/VideoTrack;->getNativeVideoTrack()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddVideoTrackToNativeStream(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/List;

    .line 55
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addTrack(Lorg/webrtc/AudioTrack;)Z
    .locals 4

    .line 32
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 33
    invoke-virtual {p1}, Lorg/webrtc/AudioTrack;->getNativeAudioTrack()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddAudioTrackToNativeStream(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 34
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addTrack(Lorg/webrtc/VideoTrack;)Z
    .locals 4

    .line 41
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 42
    invoke-virtual {p1}, Lorg/webrtc/VideoTrack;->getNativeVideoTrack()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/MediaStream;->nativeAddVideoTrackToNativeStream(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 43
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public dispose()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    :goto_0
    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/AudioTrack;

    .line 80
    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/AudioTrack;)Z

    .line 81
    invoke-virtual {v0}, Lorg/webrtc/AudioTrack;->dispose()V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    .line 85
    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/VideoTrack;)Z

    .line 86
    invoke-virtual {v0}, Lorg/webrtc/VideoTrack;->dispose()V

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/List;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/webrtc/VideoTrack;

    invoke-virtual {p0, v0}, Lorg/webrtc/MediaStream;->removeTrack(Lorg/webrtc/VideoTrack;)Z

    goto :goto_2

    :cond_2
    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 92
    invoke-static {v0, v1}, Lorg/webrtc/JniCommon;->nativeReleaseRef(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 97
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 98
    invoke-static {v0, v1}, Lorg/webrtc/MediaStream;->nativeGetId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getNativeMediaStream()J
    .locals 2

    .line 128
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    return-wide v0
.end method

.method removeAudioTrack(J)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 118
    invoke-static {p0, p1, p2}, Lorg/webrtc/MediaStream;->removeMediaStreamTrack(Ljava/util/List;J)V

    return-void
.end method

.method public removeTrack(Lorg/webrtc/AudioTrack;)Z
    .locals 2

    .line 62
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-object v0, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    .line 63
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 64
    invoke-virtual {p1}, Lorg/webrtc/AudioTrack;->getNativeAudioTrack()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/webrtc/MediaStream;->nativeRemoveAudioTrack(JJ)Z

    move-result p0

    return p0
.end method

.method public removeTrack(Lorg/webrtc/VideoTrack;)Z
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/webrtc/MediaStream;->checkMediaStreamExists()V

    iget-object v0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 69
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/webrtc/MediaStream;->preservedVideoTracks:Ljava/util/List;

    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lorg/webrtc/MediaStream;->nativeStream:J

    .line 71
    invoke-virtual {p1}, Lorg/webrtc/VideoTrack;->getNativeVideoTrack()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Lorg/webrtc/MediaStream;->nativeRemoveVideoTrack(JJ)Z

    move-result p0

    return p0
.end method

.method removeVideoTrack(J)V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    .line 123
    invoke-static {p0, p1, p2}, Lorg/webrtc/MediaStream;->removeMediaStreamTrack(Ljava/util/List;J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/webrtc/MediaStream;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/MediaStream;->audioTracks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/webrtc/MediaStream;->videoTracks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
