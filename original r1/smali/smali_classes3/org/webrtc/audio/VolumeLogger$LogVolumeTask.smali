.class Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;
.super Ljava/util/TimerTask;
.source "VolumeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/audio/VolumeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogVolumeTask"
.end annotation


# instance fields
.field private final maxRingVolume:I

.field private final maxVoiceCallVolume:I

.field final synthetic this$0:Lorg/webrtc/audio/VolumeLogger;


# direct methods
.method constructor <init>(Lorg/webrtc/audio/VolumeLogger;II)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lorg/webrtc/audio/VolumeLogger;

    .line 55
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput p2, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->maxRingVolume:I

    iput p3, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lorg/webrtc/audio/VolumeLogger;

    .line 62
    invoke-static {v0}, Lorg/webrtc/audio/VolumeLogger;->access$000(Lorg/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, " (max="

    const-string v4, "VolumeLogger"

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "STREAM_RING stream volume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lorg/webrtc/audio/VolumeLogger;

    .line 65
    invoke-static {v1}, Lorg/webrtc/audio/VolumeLogger;->access$000(Lorg/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->maxRingVolume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {v4, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VOICE_CALL stream volume: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->this$0:Lorg/webrtc/audio/VolumeLogger;

    .line 70
    invoke-static {v1}, Lorg/webrtc/audio/VolumeLogger;->access$000(Lorg/webrtc/audio/VolumeLogger;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/webrtc/audio/VolumeLogger$LogVolumeTask;->maxVoiceCallVolume:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {v4, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
