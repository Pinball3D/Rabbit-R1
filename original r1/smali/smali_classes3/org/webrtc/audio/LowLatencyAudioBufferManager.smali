.class Lorg/webrtc/audio/LowLatencyAudioBufferManager;
.super Ljava/lang/Object;
.source "LowLatencyAudioBufferManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LowLatencyAudioBufferManager"


# instance fields
.field private bufferIncreaseCounter:I

.field private keepLoweringBufferSize:Z

.field private prevUnderrunCount:I

.field private ticksUntilNextDecrease:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    const/16 v1, 0xa

    iput v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    return-void
.end method


# virtual methods
.method public maybeAdjustBufferSize(Landroid/media/AudioTrack;)V
    .locals 8

    .line 43
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v0

    iget v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    const-string v2, " to "

    const-string v3, "LowLatencyAudioBufferManager"

    const/16 v4, 0xa

    if-le v0, v1, :cond_1

    iget v1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    const/4 v5, 0x5

    if-ge v1, v5, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    .line 51
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v5

    div-int/lit8 v5, v5, 0x64

    add-int/2addr v5, v1

    .line 52
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Underrun detected! Increasing AudioTrack buffer size from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v5}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    iget p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->bufferIncreaseCounter:I

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->prevUnderrunCount:I

    iput v4, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->keepLoweringBufferSize:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    if-gtz v0, :cond_3

    .line 66
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackRate()I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 68
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    sub-int v5, v1, v0

    .line 69
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Lowering AudioTrack buffer size from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setBufferSizeInFrames(I)I

    :cond_2
    iput v4, p0, Lorg/webrtc/audio/LowLatencyAudioBufferManager;->ticksUntilNextDecrease:I

    :cond_3
    :goto_0
    return-void
.end method
