.class Lorg/webrtc/audio/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_START:I = 0x0

.field private static final AUDIO_TRACK_STOP:I = 0x1

.field private static final AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEFAULT_USAGE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrackExternal"


# instance fields
.field private final audioAttributes:Landroid/media/AudioAttributes;

.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

.field private audioTrack:Landroid/media/AudioTrack;

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private final context:Landroid/content/Context;

.field private emptyBytes:[B

.field private final errorCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

.field private initialBufferSizeInFrames:I

.field private nativeAudioTrack:J

.field private volatile speakerMute:Z

.field private final stateCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

.field private final threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

.field private useLowLatency:Z

.field private final volumeLogger:Lorg/webrtc/audio/VolumeLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioTrack;->getDefaultUsageAttribute()I

    move-result v0

    sput v0, Lorg/webrtc/audio/WebRtcAudioTrack;->DEFAULT_USAGE:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 173
    invoke-direct/range {v0 .. v6}, Lorg/webrtc/audio/WebRtcAudioTrack;-><init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroid/media/AudioAttributes;Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;Z)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 180
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iput-object p2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    iput-object p4, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    iput-object p5, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->stateCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    .line 186
    new-instance p1, Lorg/webrtc/audio/VolumeLogger;

    invoke-direct {p1, p2}, Lorg/webrtc/audio/VolumeLogger;-><init>(Landroid/media/AudioManager;)V

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/webrtc/audio/VolumeLogger;

    iput-boolean p6, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    .line 188
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "ctor"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/webrtc/audio/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WebRtcAudioTrackExternal"

    invoke-static {p1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private GetPlayoutUnderrunCount()I
    .locals 0

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic access$000(Lorg/webrtc/audio/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 31
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$200(Lorg/webrtc/audio/WebRtcAudioTrack;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/audio/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/audio/WebRtcAudioTrack;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static synthetic access$500(JI)V
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lorg/webrtc/audio/WebRtcAudioTrack;->nativeGetPlayoutData(JI)V

    return-void
.end method

.method static synthetic access$600(Lorg/webrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    return p0
.end method

.method static synthetic access$700(Lorg/webrtc/audio/WebRtcAudioTrack;)[B
    .locals 0

    .line 31
    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$800(Lorg/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lorg/webrtc/audio/WebRtcAudioTrack;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    return p0
.end method

.method private static applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 489
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllowedCapturePolicy()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setAllowedCapturePolicy(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private channelCountToConfiguration(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/16 p0, 0xc

    :goto_0
    return p0
.end method

.method private static createAudioTrackOnLollipopOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 8

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "createAudioTrackOnLollipopOrHigher"

    .line 447
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(I)V

    .line 451
    new-instance v0, Landroid/media/AudioTrack;

    invoke-static {p3}, Lorg/webrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    move-result-object v3

    new-instance p3, Landroid/media/AudioFormat$Builder;

    invoke-direct {p3}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 453
    invoke-virtual {p3, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object p3

    .line 454
    invoke-virtual {p3, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 455
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, v0

    move v5, p2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private static createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;
    .locals 8

    .line 495
    new-instance v7, Landroid/media/AudioTrack;

    const/4 v1, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object v0, v7

    move v2, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v7
.end method

.method private static createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "createAudioTrackOnOreoOrHigher"

    .line 468
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logNativeOutputSampleRate(I)V

    .line 472
    new-instance v0, Landroid/media/AudioTrack$Builder;

    invoke-direct {v0}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 473
    invoke-static {p3}, Lorg/webrtc/audio/WebRtcAudioTrack;->getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p3

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x2

    .line 475
    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 477
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p0

    .line 474
    invoke-virtual {p3, p0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 479
    invoke-virtual {p0, p2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 480
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setPerformanceMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 481
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 482
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p0

    .line 483
    invoke-virtual {p0}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p0

    return-object p0
.end method

.method private doAudioTrackStateCallback(I)V
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "doAudioTrackStateCallback: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->stateCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    .line 607
    invoke-interface {p0}, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStart()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 609
    invoke-interface {p0}, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStateCallback;->onWebRtcAudioTrackStop()V

    goto :goto_0

    :cond_1
    const-string p0, "Invalid audio state"

    .line 611
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static getAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 2

    .line 419
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget v1, Lorg/webrtc/audio/WebRtcAudioTrack;->DEFAULT_USAGE:I

    .line 421
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 422
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    if-eqz p0, :cond_2

    .line 425
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 428
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    .line 432
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    .line 435
    invoke-static {v0, p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->applyAttributesOnQOrHigher(Landroid/media/AudioAttributes$Builder;Landroid/media/AudioAttributes;)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 438
    :cond_2
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p0

    return-object p0
.end method

.method private getBufferSizeInFrames()I
    .locals 0

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 511
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    return p0
.end method

.method private static getDefaultUsageAttribute()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method private getInitialBufferSizeInFrames()I
    .locals 0

    iget p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    return p0
.end method

.method private getStreamMaxVolume()I
    .locals 2

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 353
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "getStreamMaxVolume"

    .line 354
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 355
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    return p0
.end method

.method private getStreamVolume()I
    .locals 2

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 380
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "getStreamVolume"

    .line 381
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    .line 382
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method private initPlayout(IID)I
    .locals 5

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 198
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initPlayout(sampleRate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bufferSizeFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, p2, 0x2

    .line 203
    div-int/lit8 v2, p1, 0x64

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "byteBuffer.capacity: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->emptyBytes:[B

    iget-wide v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 209
    invoke-static {v2, v3, v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V

    .line 214
    invoke-direct {p0, p2}, Lorg/webrtc/audio/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    move-result p2

    const/4 v0, 0x2

    .line 215
    invoke-static {p1, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    int-to-double v2, v0

    mul-double/2addr v2, p3

    double-to-int v0, v2

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minBufferSizeInBytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 224
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    const-string p1, "AudioTrack.getMinBufferSize returns an invalid value."

    .line 225
    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v2

    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double p3, p3, v3

    if-lez p3, :cond_1

    const/4 p3, 0x0

    iput-boolean p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    :cond_1
    iget-object p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p3, :cond_2

    const-string p1, "Conflict with existing AudioTrack."

    .line 239
    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    return v2

    :cond_2
    :try_start_0
    iget-boolean p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->useLowLatency:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 248
    invoke-static {p1, p2, v0, p3}, Lorg/webrtc/audio/WebRtcAudioTrack;->createAudioTrackOnOreoOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioAttributes:Landroid/media/AudioAttributes;

    .line 256
    invoke-static {p1, p2, v0, p3}, Lorg/webrtc/audio/WebRtcAudioTrack;->createAudioTrackOnLollipopOrHigher(IIILandroid/media/AudioAttributes;)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_5

    .line 272
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 278
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p1

    iput p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->initialBufferSizeInFrames:I

    .line 282
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logMainParameters()V

    .line 283
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logMainParametersExtended()V

    return v0

    :cond_5
    :goto_1
    const-string p1, "Initialization of audio track failed."

    .line 273
    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 274
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2

    :catch_0
    move-exception p1

    .line 264
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 265
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method

.method private isVolumeFixed()Z
    .locals 0

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 374
    invoke-virtual {p0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result p0

    return p0
.end method

.method private logBufferCapacityInFrames()V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioTrack: buffer capacity in frames: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 526
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebRtcAudioTrackExternal"

    .line 523
    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logBufferSizeInFrames()V
    .locals 2

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioTrack: buffer size in frames: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 504
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebRtcAudioTrackExternal"

    .line 501
    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParameters()V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioTrack: session ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 401
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 402
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 403
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", max gain: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 406
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebRtcAudioTrackExternal"

    .line 399
    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 0

    .line 531
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logBufferSizeInFrames()V

    .line 532
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logBufferCapacityInFrames()V

    return-void
.end method

.method private static logNativeOutputSampleRate(I)V
    .locals 3

    const/4 v0, 0x0

    .line 411
    invoke-static {v0}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v0

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nativeOutputSampleRate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioTrackExternal"

    invoke-static {v2, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p0, v0, :cond_0

    const-string p0, "Unable to use fast mode since requested sample rate is not native"

    .line 414
    invoke-static {v2, p0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logUnderrunCount()V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "underrun count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p0}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WebRtcAudioTrackExternal"

    invoke-static {v0, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeCacheDirectBufferAddress(JLjava/nio/ByteBuffer;)V
.end method

.method private static native nativeGetPlayoutData(JI)V
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "releaseAudioResources"

    .line 571
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 3

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Run-time playback error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 597
    invoke-static {v1, v0, v2}, Lorg/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz p0, :cond_0

    .line 599
    invoke-interface {p0, p1}, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 3

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init playout error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 580
    invoke-static {v1, v0, v2}, Lorg/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz p0, :cond_0

    .line 582
    invoke-interface {p0, p1}, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 3

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Start playout error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v2, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 589
    invoke-static {v1, v0, v2}, Lorg/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->errorCallback:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;

    if-eqz p0, :cond_0

    .line 591
    invoke-interface {p0, p1, p2}, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackErrorCallback;->onWebRtcAudioTrackStartError(Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 3

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 361
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setStreamVolume("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "The device implements a fixed volume policy."

    .line 364
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object p0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 367
    invoke-virtual {p0, v2, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 p0, 0x1

    return p0
.end method

.method private startPlayout()Z
    .locals 5

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 289
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/webrtc/audio/VolumeLogger;

    .line 290
    invoke-virtual {v0}, Lorg/webrtc/audio/VolumeLogger;->start()V

    const-string v0, "WebRtcAudioTrackExternal"

    const-string v1, "startPlayout"

    .line 291
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 292
    :goto_0
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 293
    :goto_1
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 297
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 304
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 305
    sget-object v0, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "AudioTrack.play failed - incorrect state :"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 306
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-direct {p0, v0, v1}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2

    .line 314
    :cond_2
    new-instance v0, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const-string v2, "AudioTrackJavaThread"

    invoke-direct {v0, p0, v2}, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;-><init>(Lorg/webrtc/audio/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 315
    invoke-virtual {v0}, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->start()V

    return v1

    :catch_0
    move-exception v0

    .line 299
    sget-object v1, Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack.play failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-direct {p0, v1, v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lorg/webrtc/audio/JavaAudioDeviceModule$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 301
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method

.method private stopPlayout()Z
    .locals 5

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->threadChecker:Lorg/webrtc/ThreadUtils$ThreadChecker;

    .line 321
    invoke-virtual {v0}, Lorg/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->volumeLogger:Lorg/webrtc/audio/VolumeLogger;

    .line 322
    invoke-virtual {v0}, Lorg/webrtc/audio/VolumeLogger;->stop()V

    const-string v0, "stopPlayout"

    const-string v1, "WebRtcAudioTrackExternal"

    .line 323
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 324
    :goto_0
    invoke-static {v0}, Lorg/webrtc/audio/WebRtcAudioTrack;->assertTrue(Z)V

    .line 325
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->logUnderrunCount()V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 326
    invoke-virtual {v0}, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->stopThread()V

    const-string v0, "Stopping the AudioTrackThread..."

    .line 328
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    .line 329
    invoke-virtual {v0}, Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;->interrupt()V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    const-wide/16 v3, 0x7d0

    .line 330
    invoke-static {v0, v3, v4}, Lorg/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Join of AudioTrackThread timed out."

    .line 331
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    .line 332
    invoke-static {v1, v0, v3}, Lorg/webrtc/audio/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;Landroid/content/Context;Landroid/media/AudioManager;)V

    :cond_1
    const-string v0, "AudioTrackThread has now been stopped."

    .line 334
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioThread:Lorg/webrtc/audio/WebRtcAudioTrack$AudioTrackThread;

    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    const-string v0, "Calling AudioTrack.stop..."

    .line 337
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 339
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    const-string v0, "AudioTrack.stop is done."

    .line 340
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0, v2}, Lorg/webrtc/audio/WebRtcAudioTrack;->doAudioTrackStateCallback(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AudioTrack.stop failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/webrtc/audio/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method


# virtual methods
.method public setNativeAudioTrack(J)V
    .locals 0

    iput-wide p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->nativeAudioTrack:J

    return-void
.end method

.method public setSpeakerMute(Z)V
    .locals 2

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSpeakerMute("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrackExternal"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lorg/webrtc/audio/WebRtcAudioTrack;->speakerMute:Z

    return-void
.end method
