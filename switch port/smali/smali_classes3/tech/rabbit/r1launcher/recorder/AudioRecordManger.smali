.class public Ltech/rabbit/r1launcher/recorder/AudioRecordManger;
.super Ljava/lang/Object;
.source "AudioRecordManger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordManager"

.field private static mInstance:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;


# instance fields
.field private mAudioRecord:Landroid/media/AudioRecord;

.field private recordThread:Ltech/rabbit/r1launcher/recorder/RecordThread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/recorder/AudioRecordManger;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    .line 201
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    if-nez v1, :cond_0

    .line 203
    new-instance v1, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;-><init>()V

    sput-object v1, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    .line 205
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    return-object v0
.end method

.method private prepareAudioRecord(Landroid/content/Context;)V
    .locals 8

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 256
    invoke-static {p1, v0}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    check-cast p1, Landroid/app/Activity;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {p1, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 261
    :cond_0
    sget p1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    const/16 v0, 0x10

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v7

    .line 264
    new-instance p1, Landroid/media/AudioRecord;

    const/4 v3, 0x7

    sget v4, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    const/16 v5, 0x10

    const/4 v6, 0x2

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    :cond_1
    return-void
.end method


# virtual methods
.method public startRecord(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->recordThread:Ltech/rabbit/r1launcher/recorder/RecordThread;

    const-string v1, "AudioRecordManager"

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "\u5df2\u7ecf\u5728\u5f55\u97f3\u4e86..."

    .line 215
    invoke-static {v1, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 220
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->prepareAudioRecord(Landroid/content/Context;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_1

    .line 221
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 222
    new-instance p1, Ltech/rabbit/r1launcher/recorder/RecordThread;

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-direct {p1, v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;-><init>(Landroid/media/AudioRecord;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->recordThread:Ltech/rabbit/r1launcher/recorder/RecordThread;

    .line 223
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/recorder/RecordThread;->start()V

    goto :goto_0

    :cond_1
    const-string p0, "mAudioRecord is NULL !!"

    .line 225
    invoke-static {v1, p0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 228
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopRecord()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->recordThread:Ltech/rabbit/r1launcher/recorder/RecordThread;

    if-eqz v0, :cond_1

    .line 237
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->recordThread:Ltech/rabbit/r1launcher/recorder/RecordThread;

    .line 238
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/recorder/RecordThread;->stopRecord()V

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    .line 242
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;

    .line 244
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;->mAudioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
