.class public Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;
.super Ljava/lang/Object;
.source "AcousticEchoCancelerManager.java"


# static fields
.field private static TAG:Ljava/lang/String; = "AcousticEchoTAG"

.field private static acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

.field private static mInstance:Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;
    .locals 2

    sget-object v0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;

    if-nez v0, :cond_1

    .line 19
    const-class v0, Ltech/rabbit/r1launcher/recorder/AudioRecordManger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;

    invoke-direct {v1}, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;-><init>()V

    sput-object v1, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;

    .line 23
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
    sget-object v0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->mInstance:Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;

    return-object v0
.end method


# virtual methods
.method public getAcousticEchoCanceler(ILandroid/content/Context;)Landroid/media/audiofx/AcousticEchoCanceler;
    .locals 1

    .line 30
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez p0, :cond_1

    .line 32
    invoke-static {p1}, Landroid/media/audiofx/AcousticEchoCanceler;->create(I)Landroid/media/audiofx/AcousticEchoCanceler;

    move-result-object p0

    sput-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    sget-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->TAG:Ljava/lang/String;

    .line 33
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "initAEC: ----->"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\t"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ltech/rabbit/common/utils/RLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    if-nez p0, :cond_0

    sget-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->TAG:Ljava/lang/String;

    const-string p1, "initAEC: ----->AcousticEchoCanceler create fail."

    .line 35
    invoke-static {p0, p1}, Ltech/rabbit/common/utils/RLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroid/media/audiofx/AcousticEchoCanceler;->setEnabled(Z)I

    :cond_1
    :goto_0
    sget-object p0, Ltech/rabbit/r1launcher/recorder/AcousticEchoCancelerManager;->acousticEchoCanceler:Landroid/media/audiofx/AcousticEchoCanceler;

    return-object p0
.end method
