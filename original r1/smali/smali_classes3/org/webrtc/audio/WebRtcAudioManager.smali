.class Lorg/webrtc/audio/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final DEFAULT_SAMPLE_RATE_HZ:I = 0x3e80

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioManagerExternal"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1

    const-string v0, "audio"

    .line 39
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method static getInputBufferSize(Landroid/content/Context;Landroid/media/AudioManager;II)I
    .locals 0

    .line 53
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioManager;->isLowLatencyInputSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 54
    invoke-static {p1}, Lorg/webrtc/audio/WebRtcAudioManager;->getLowLatencyFramesPerBuffer(Landroid/media/AudioManager;)I

    move-result p0

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {p2, p3}, Lorg/webrtc/audio/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getLowLatencyFramesPerBuffer(Landroid/media/AudioManager;)I
    .locals 1

    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 101
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x100

    goto :goto_0

    .line 102
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static getMinInputFrameSize(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    const/4 v1, 0x2

    .line 124
    invoke-static {p0, p1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    const/4 v1, 0x2

    .line 112
    invoke-static {p0, p1, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method static getOutputBufferSize(Landroid/content/Context;Landroid/media/AudioManager;II)I
    .locals 0

    .line 45
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioManager;->isLowLatencyOutputSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    invoke-static {p1}, Lorg/webrtc/audio/WebRtcAudioManager;->getLowLatencyFramesPerBuffer(Landroid/media/AudioManager;)I

    move-result p0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p2, p3}, Lorg/webrtc/audio/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result p0

    :goto_0
    return p0
.end method

.method static getSampleRate(Landroid/media/AudioManager;)I
    .locals 3

    .line 77
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v0

    const-string v1, "WebRtcAudioManagerExternal"

    if-eqz v0, :cond_0

    const-string p0, "Running emulator, overriding sample rate to 8 kHz."

    .line 78
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x1f40

    return p0

    .line 82
    :cond_0
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioManager;->getSampleRateForApiLevel(Landroid/media/AudioManager;)I

    move-result p0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Sample rate is set to "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private static getSampleRateForApiLevel(Landroid/media/AudioManager;)I
    .locals 1

    const-string v0, "android.media.property.OUTPUT_SAMPLE_RATE"

    .line 91
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private static isLowLatencyInputSupported(Landroid/content/Context;)Z
    .locals 0

    .line 67
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioManager;->isLowLatencyOutputSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isLowLatencyOutputSupported(Landroid/content/Context;)Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.audio.low_latency"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
