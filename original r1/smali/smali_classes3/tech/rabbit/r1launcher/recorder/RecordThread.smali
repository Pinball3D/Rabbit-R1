.class Ltech/rabbit/r1launcher/recorder/RecordThread;
.super Ljava/lang/Thread;
.source "AudioRecordManger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordThread"


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mStopRecord:Z

.field private mStopRun:Z


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord;)V
    .locals 1

    const-string v0, "RecordThread"

    .line 39
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRun:Z

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRecord:Z

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private convertToWav([BI)[B
    .locals 4

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    const-string v1, "RIFF"

    .line 142
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v1, p2, 0x24

    .line 143
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->intToBytes(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "WAVE"

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "fmt "

    .line 145
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v1, 0x10

    .line 146
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/4 v2, 0x1

    .line 147
    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->shortToBytes(S)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 148
    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 149
    sget v2, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 150
    sget v2, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-direct {p0, v2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->intToBytes(I)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 151
    invoke-direct {p0, v3}, Ltech/rabbit/r1launcher/recorder/RecordThread;->shortToBytes(S)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 152
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->shortToBytes(S)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const-string v1, "data"

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 154
    invoke-direct {p0, p2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->intToBytes(I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 155
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Error converting PCM to WAV: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordThread"

    invoke-static {p1, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private generateSendString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 117
    new-instance p0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;-><init>()V

    .line 118
    new-instance v0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;-><init>()V

    .line 119
    new-instance v1, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;

    invoke-direct {v1}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;-><init>()V

    .line 120
    invoke-virtual {v1, p1}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->setState(Ljava/lang/String;)V

    .line 122
    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;->voiceActivity:Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;

    .line 123
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;->setKernel(Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;)V

    .line 124
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private generateSendStringWithImg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 128
    new-instance p0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;

    invoke-direct {p0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;-><init>()V

    .line 129
    new-instance v0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;-><init>()V

    .line 130
    new-instance v1, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;

    invoke-direct {v1}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;-><init>()V

    .line 131
    invoke-virtual {v1, p1}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->setState(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1, p2}, Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;->setImageBase64(Ljava/lang/String;)V

    .line 133
    iput-object v1, v0, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;->voiceActivity:Lcom/r/l/wss/request/emit_start_end_utterance/VoiceActivity;

    .line 134
    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/RequestUtterance;->setKernel(Ltech/rabbit/r1launcher/wss/request/emit_start_end_utterance/Kernel;)V

    .line 135
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private intToBytes(I)[B
    .locals 2

    const/4 p0, 0x4

    new-array p0, p0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p0, v1

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p0, v1

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x3

    aput-byte p1, p0, v0

    return-object p0
.end method

.method private processWavData([B)V
    .locals 0

    .line 163
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-static {p1}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Lokio/ByteString;)Z

    return-void
.end method

.method private shortToBytes(S)[B
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [B

    and-int/lit16 v0, p1, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p0, v1

    shr-int/lit8 p1, p1, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v0, 0x1

    aput-byte p1, p0, v0

    return-object p0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRun:Z

    iget-boolean p0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRecord:Z

    or-int/2addr p0, v0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method synthetic lambda$run$0$tech-rabbit-r1launcher-recorder-RecordThread(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "pttButtonReleased"

    .line 102
    invoke-direct {p0, v0, p2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->generateSendStringWithImg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 103
    sget-object p2, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p2, p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    .line 104
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    return-void
.end method

.method synthetic lambda$run$1$tech-rabbit-r1launcher-recorder-RecordThread(Ljava/lang/String;)V
    .locals 2

    .line 101
    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    new-instance v1, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda1;-><init>(Ltech/rabbit/r1launcher/recorder/RecordThread;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ltech/rabbit/r1launcher/camera/CameraManager;->takePictureIfOpened(Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;)V

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, "inactive"

    const/16 v1, -0x13

    .line 61
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 63
    sget v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    int-to-double v1, v1

    const-wide v3, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x4020000000000000L    # 8.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 64
    new-array v2, v1, [B

    const-string v3, "pttButtonPressed"

    .line 66
    invoke-direct {p0, v3}, Ltech/rabbit/r1launcher/recorder/RecordThread;->generateSendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendByteArray: startkString:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecordThread"

    invoke-static {v5, v4}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v4, :cond_4

    .line 69
    invoke-virtual {v4}, Landroid/media/AudioRecord;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 73
    :cond_0
    sget-object v4, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {v4, v3}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    :try_start_0
    iget-object v3, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mAudioRecord:Landroid/media/AudioRecord;

    .line 75
    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    :cond_1
    :goto_0
    iget-boolean v3, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRun:Z

    iget-boolean v4, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRecord:Z

    or-int/2addr v3, v4

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iget-object v3, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mAudioRecord:Landroid/media/AudioRecord;

    .line 77
    invoke-virtual {v3, v2, v4, v1}, Landroid/media/AudioRecord;->read([BII)I

    move-result v3

    const/4 v5, -0x3

    if-eq v3, v5, :cond_1

    const/4 v5, -0x2

    if-ne v3, v5, :cond_2

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 83
    invoke-direct {p0, v2, v3}, Ltech/rabbit/r1launcher/recorder/RecordThread;->convertToWav([BI)[B

    move-result-object v3

    .line 85
    invoke-direct {p0, v3}, Ltech/rabbit/r1launcher/recorder/RecordThread;->processWavData([B)V

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRun:Z

    if-nez v3, :cond_4

    .line 93
    invoke-static {v2, v4}, Ljava/util/Arrays;->fill([BB)V

    .line 94
    invoke-direct {p0, v2, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->convertToWav([BI)[B

    move-result-object v1

    .line 96
    invoke-direct {p0, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->processWavData([B)V

    .line 99
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->generateSendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {}, Ltech/rabbit/common/utils/KotlinUtilKt;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1}, Ltech/rabbit/r1launcher/recorder/RecordThread$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1launcher/recorder/RecordThread;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    invoke-direct {p0, v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->generateSendString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pttButtonReleased"

    const-string v2, ""

    .line 110
    invoke-direct {p0, v1, v2}, Ltech/rabbit/r1launcher/recorder/RecordThread;->generateSendStringWithImg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 111
    sget-object v1, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    .line 112
    sget-object p0, Ltech/rabbit/r1launcher/wss/WebSocketManager;->INSTANCE:Ltech/rabbit/r1launcher/wss/WebSocketManager;

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/wss/WebSocketManager;->send(Ljava/lang/String;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public stopRecord()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRecord:Z

    return-void
.end method

.method public stopRun()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/RecordThread;->mStopRun:Z

    return-void
.end method
