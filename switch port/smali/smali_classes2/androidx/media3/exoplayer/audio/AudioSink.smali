.class public interface abstract Landroidx/media3/exoplayer/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/audio/AudioSink$SinkFormatSupport;,
        Landroidx/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;,
        Landroidx/media3/exoplayer/audio/AudioSink$WriteException;,
        Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;,
        Landroidx/media3/exoplayer/audio/AudioSink$Listener;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field public static final SINK_FORMAT_SUPPORTED_DIRECTLY:I = 0x2

.field public static final SINK_FORMAT_SUPPORTED_WITH_TRANSCODING:I = 0x1

.field public static final SINK_FORMAT_UNSUPPORTED:I


# virtual methods
.method public abstract configure(Landroidx/media3/common/Format;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract experimentalFlushWithoutAudioTrackRelease()V
.end method

.method public abstract flush()V
.end method

.method public abstract getAudioAttributes()Landroidx/media3/common/AudioAttributes;
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getFormatSupport(Landroidx/media3/common/Format;)I
.end method

.method public abstract getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
.end method

.method public abstract setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
.end method

.method public setOutputStreamOffsetUs(J)V
    .locals 0

    return-void
.end method

.method public abstract setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    return-void
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Landroidx/media3/common/Format;)Z
.end method
