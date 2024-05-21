.class final Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Configuration"
.end annotation


# instance fields
.field public final audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

.field public final bufferSize:I

.field public final enableAudioTrackPlaybackParams:Z

.field public final inputFormat:Landroidx/media3/common/Format;

.field public final inputPcmFrameSize:I

.field public final outputChannelConfig:I

.field public final outputEncoding:I

.field public final outputMode:I

.field public final outputPcmFrameSize:I

.field public final outputSampleRate:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;Z)V
    .locals 0

    .line 2051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iput p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iput p3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iput p4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iput p5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iput p6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iput p7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iput p8, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iput-object p9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iput-boolean p10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    return-void
.end method

.method private createAudioTrack(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 2

    .line 2135
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 2136
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->createAudioTrackV29(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0

    .line 2137
    :cond_0
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 2138
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->createAudioTrackV21(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0

    .line 2140
    :cond_1
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->createAudioTrackV9(Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private createAudioTrackV21(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 7

    .line 2164
    new-instance v6, Landroid/media/AudioTrack;

    .line 2165
    invoke-static {p2, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object v1

    iget p1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget p2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2166
    invoke-static {p1, p2, v0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$1600(III)Landroid/media/AudioFormat;

    move-result-object v2

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v4, 0x1

    move-object v0, v6

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v6
.end method

.method private createAudioTrackV29(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    .line 2148
    invoke-static {v0, v1, v2}, Landroidx/media3/exoplayer/audio/DefaultAudioSink;->access$1600(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 2150
    invoke-static {p2, p1}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;

    move-result-object p1

    .line 2151
    new-instance p2, Landroid/media/AudioTrack$Builder;

    invoke-direct {p2}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 2152
    invoke-virtual {p2, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 2153
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 2154
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    .line 2155
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 2156
    invoke-virtual {p1, p3}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 2157
    :goto_0
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setOffloadedPlayback(Z)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 2158
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private createAudioTrackV9(Landroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 8

    .line 2174
    iget p1, p1, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-static {p1}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    if-nez p2, :cond_0

    .line 2176
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v6, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object p1

    .line 2185
    :cond_0
    new-instance p1, Landroid/media/AudioTrack;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    const/4 v6, 0x1

    move-object v0, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-object p1
.end method

.method private static getAudioTrackAttributesV21(Landroidx/media3/common/AudioAttributes;Z)Landroid/media/AudioAttributes;
    .locals 0

    if-eqz p1, :cond_0

    .line 2200
    invoke-static {}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0

    .line 2202
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object p0

    iget-object p0, p0, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method private static getAudioTrackTunnelingAttributesV21()Landroid/media/AudioAttributes;
    .locals 2

    .line 2208
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x3

    .line 2209
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 2210
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 2211
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 2212
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public buildAudioTrack(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 2101
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->createAudioTrack(ZLandroidx/media3/common/AudioAttributes;I)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2113
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    const/4 p2, 0x1

    if-ne v1, p2, :cond_0

    return-object p1

    .line 2116
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2121
    :catch_0
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    .line 2127
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v6

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p1

    move-object v7, p1

    .line 2103
    new-instance p1, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;

    const/4 v1, 0x0

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->bufferSize:I

    iget-object v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    .line 2109
    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputModeIsOffload()Z

    move-result v6

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroidx/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILandroidx/media3/common/Format;ZLjava/lang/Exception;)V

    throw p1
.end method

.method public canReuseAudioTrack(Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;)Z
    .locals 2

    .line 2080
    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    iget-boolean p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copyWithBufferSize(I)Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;
    .locals 12

    .line 2065
    new-instance v11, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;

    iget-object v1, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    iget v2, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputPcmFrameSize:I

    iget v3, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    iget v4, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputPcmFrameSize:I

    iget v5, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    iget v6, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputChannelConfig:I

    iget v7, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputEncoding:I

    iget-object v9, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->audioProcessingPipeline:Landroidx/media3/common/audio/AudioProcessingPipeline;

    iget-boolean v10, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->enableAudioTrackPlaybackParams:Z

    move-object v0, v11

    move v8, p1

    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;-><init>(Landroidx/media3/common/Format;IIIIIIILandroidx/media3/common/audio/AudioProcessingPipeline;Z)V

    return-object v11
.end method

.method public framesToDurationUs(J)J
    .locals 0

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputSampleRate:I

    .line 2093
    invoke-static {p1, p2, p0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public inputFramesToDurationUs(J)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->inputFormat:Landroidx/media3/common/Format;

    .line 2089
    iget p0, p0, Landroidx/media3/common/Format;->sampleRate:I

    invoke-static {p1, p2, p0}, Landroidx/media3/common/util/Util;->sampleCountToDurationUs(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public outputModeIsOffload()Z
    .locals 1

    iget p0, p0, Landroidx/media3/exoplayer/audio/DefaultAudioSink$Configuration;->outputMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
