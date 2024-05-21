.class Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;
.super Ljava/lang/Thread;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioRecordThread"
.end annotation


# instance fields
.field private volatile keepAlive:Z

.field final synthetic this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;


# direct methods
.method public constructor <init>(Lorg/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 143
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v0, -0x13

    .line 150
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioRecordThread"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 152
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$100(Z)V

    .line 154
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 156
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v0

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 157
    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ne v0, v2, :cond_4

    .line 158
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$300()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 159
    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 160
    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v4}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$400(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_2
    iget-boolean v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 166
    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$500(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)J

    move-result-wide v4

    invoke-static {v2, v0, v4, v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$600(Lorg/webrtc/voiceengine/WebRtcAudioRecord;IJ)V

    .line 168
    :cond_3
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$700()Lorg/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 171
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget-object v2, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    invoke-static {v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$200(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 172
    invoke-static {}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$700()Lorg/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    move-result-object v2

    new-instance v4, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;

    iget-object v5, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 173
    invoke-static {v5}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;-><init>(Landroid/media/AudioRecord;[BLorg/webrtc/voiceengine/WebRtcAudioRecord$1;)V

    .line 172
    invoke-interface {v2, v4}, Lorg/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;->onWebRtcAudioRecordSamplesReady(Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;)V

    goto/16 :goto_1

    .line 176
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AudioRecord.read failed: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x3

    if-ne v0, v4, :cond_1

    iput-boolean v3, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 180
    invoke-static {v0, v2}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$900(Lorg/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 192
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->this$0:Lorg/webrtc/voiceengine/WebRtcAudioRecord;

    .line 193
    invoke-static {p0}, Lorg/webrtc/voiceengine/WebRtcAudioRecord;->access$000(Lorg/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "AudioRecord.stop failed: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public stopThread()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "stopThread"

    .line 203
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->keepAlive:Z

    return-void
.end method
