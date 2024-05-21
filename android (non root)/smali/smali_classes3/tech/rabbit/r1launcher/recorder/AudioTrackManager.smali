.class public Ltech/rabbit/r1launcher/recorder/AudioTrackManager;
.super Ljava/lang/Object;
.source "AudioTrackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT:I = 0x2

.field public static final CHANNEL_CONFIG:I = 0x10

.field private static DATA_PACKAGE:Ljava/lang/String; = "data/data/"

.field static SAMPLE_RATE_INHZ:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrackManager"

.field private static volatile mInstance:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

.field public static pcmFileName:Ljava/lang/String;

.field public static wavFileName:Ljava/lang/String;


# instance fields
.field private final bufferSize:I

.field private isPlaying:Z

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private offset:I

.field private playThread:Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->DATA_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/AudioDemo.pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->pcmFileName:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->DATA_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/wavAudio.wav"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->wavFileName:Ljava/lang/String;

    const/16 v0, 0x3e80

    sput v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    sget v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    const/16 v1, 0x10

    const/4 v2, 0x2

    .line 52
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->bufferSize:I

    return-void
.end method

.method static synthetic access$000(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I
    .locals 0

    .line 16
    iget p0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->bufferSize:I

    return p0
.end method

.method static synthetic access$100(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    return p0
.end method

.method static synthetic access$200(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)I
    .locals 0

    .line 16
    iget p0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->offset:I

    return p0
.end method

.method static synthetic access$300(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;)Landroid/media/AudioTrack;
    .locals 0

    .line 16
    iget-object p0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method public static getDataPackage()Ljava/lang/String;
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->DATA_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ltech/rabbit/common/utils/RabbitCommon;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/recorder/AudioTrackManager;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    if-nez v0, :cond_1

    const-class v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 71
    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    if-nez v1, :cond_0

    .line 73
    new-instance v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;-><init>()V

    sput-object v1, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    .line 75
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
    sget-object v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AudioTrackManager;

    return-object v0
.end method


# virtual methods
.method public initAudioTrack(I)V
    .locals 9

    .line 59
    new-instance v8, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    sget v2, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->SAMPLE_RATE_INHZ:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    iget v5, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->bufferSize:I

    const/4 v6, 0x1

    move-object v0, v8

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v8, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method public startPlay(Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    if-eqz v0, :cond_0

    const-string p0, "AudioTrackManager"

    const-string p1, "\u5df2\u7ecf\u5f00\u59cb\u64ad\u653e\u4e86..."

    .line 83
    invoke-static {p0, p1}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    iget-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 86
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 87
    new-instance v0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;

    invoke-direct {v0, p0, p1}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;-><init>(Ltech/rabbit/r1launcher/recorder/AudioTrackManager;Landroid/content/Context;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->playThread:Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;

    .line 88
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/recorder/AudioTrackManager$PlayThread;->start()V

    :goto_0
    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    if-nez v0, :cond_0

    const-string p0, "AudioTrackManager"

    const-string v0, "\u8fd8\u6ca1\u6709\u64ad\u653e!!!"

    .line 94
    invoke-static {p0, v0}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->isPlaying:Z

    iget-object p0, p0, Ltech/rabbit/r1launcher/recorder/AudioTrackManager;->mAudioTrack:Landroid/media/AudioTrack;

    .line 97
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    :goto_0
    return-void
.end method
