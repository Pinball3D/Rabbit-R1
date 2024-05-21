.class public Lorg/webrtc/AudioSource;
.super Lorg/webrtc/MediaSource;
.source "AudioSource.java"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lorg/webrtc/MediaSource;-><init>(J)V

    return-void
.end method


# virtual methods
.method getNativeAudioSource()J
    .locals 2

    .line 24
    invoke-virtual {p0}, Lorg/webrtc/AudioSource;->getNativeMediaSource()J

    move-result-wide v0

    return-wide v0
.end method
