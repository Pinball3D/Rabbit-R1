.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Api23;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setPreferredDeviceOnAudioTrack(Landroid/media/AudioTrack;Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioDeviceInfoApi23;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2271
    :cond_0
    iget-object p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$AudioDeviceInfoApi23;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    .line 2270
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    return-void
.end method
