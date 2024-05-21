.class public Landroidx/media3/exoplayer/audio/ForwardingAudioSink;
.super Ljava/lang/Object;
.source "ForwardingAudioSink.java"

# interfaces
.implements Landroidx/media3/exoplayer/audio/AudioSink;


# instance fields
.field private final sink:Landroidx/media3/exoplayer/audio/AudioSink;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/audio/AudioSink;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    return-void
.end method


# virtual methods
.method public configure(Landroidx/media3/common/Format;I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 67
    invoke-interface {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/AudioSink;->configure(Landroidx/media3/common/Format;I[I)V

    return-void
.end method

.method public disableTunneling()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 161
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->disableTunneling()V

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 156
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->enableTunnelingV21()V

    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 181
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 176
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->flush()V

    return-void
.end method

.method public getAudioAttributes()Landroidx/media3/common/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 130
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->getAudioAttributes()Landroidx/media3/common/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 61
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public getFormatSupport(Landroidx/media3/common/Format;)I
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 56
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->getFormatSupport(Landroidx/media3/common/Format;)I

    move-result p0

    return p0
.end method

.method public getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 109
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->getPlaybackParameters()Landroidx/media3/common/PlaybackParameters;

    move-result-object p0

    return-object p0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 119
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->getSkipSilenceEnabled()Z

    move-result p0

    return p0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;,
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 84
    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p0

    return p0
.end method

.method public handleDiscontinuity()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 77
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method public hasPendingData()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 99
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->hasPendingData()Z

    move-result p0

    return p0
.end method

.method public isEnded()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 94
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->isEnded()Z

    move-result p0

    return p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 171
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->pause()V

    return-void
.end method

.method public play()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 72
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->play()V

    return-void
.end method

.method public playToEndOfStream()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 89
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->playToEndOfStream()V

    return-void
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 186
    invoke-interface {p0}, Landroidx/media3/exoplayer/audio/AudioSink;->reset()V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 124
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 135
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 140
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setAuxEffectInfo(Landroidx/media3/common/AuxEffectInfo;)V

    return-void
.end method

.method public setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 41
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setListener(Landroidx/media3/exoplayer/audio/AudioSink$Listener;)V

    return-void
.end method

.method public setOutputStreamOffsetUs(J)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 151
    invoke-interface {p0, p1, p2}, Landroidx/media3/exoplayer/audio/AudioSink;->setOutputStreamOffsetUs(J)V

    return-void
.end method

.method public setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 104
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPlaybackParameters(Landroidx/media3/common/PlaybackParameters;)V

    return-void
.end method

.method public setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 46
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPlayerId(Landroidx/media3/exoplayer/analytics/PlayerId;)V

    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 146
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 114
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 166
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->setVolume(F)V

    return-void
.end method

.method public supportsFormat(Landroidx/media3/common/Format;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/ForwardingAudioSink;->sink:Landroidx/media3/exoplayer/audio/AudioSink;

    .line 51
    invoke-interface {p0, p1}, Landroidx/media3/exoplayer/audio/AudioSink;->supportsFormat(Landroidx/media3/common/Format;)Z

    move-result p0

    return p0
.end method
