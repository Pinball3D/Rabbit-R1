.class final Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer$Api23;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAudioSinkPreferredDevice(Landroidx/media3/exoplayer/audio/AudioSink;Ljava/lang/Object;)V
    .locals 0

    .line 973
    check-cast p1, Landroid/media/AudioDeviceInfo;

    .line 974
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method
