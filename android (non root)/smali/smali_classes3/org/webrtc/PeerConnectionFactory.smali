.class public Lorg/webrtc/PeerConnectionFactory;
.super Ljava/lang/Object;
.source "PeerConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/PeerConnectionFactory$Builder;,
        Lorg/webrtc/PeerConnectionFactory$Options;,
        Lorg/webrtc/PeerConnectionFactory$InitializationOptions;,
        Lorg/webrtc/PeerConnectionFactory$ThreadInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PeerConnectionFactory"

.field public static final TRIAL_ENABLED:Ljava/lang/String; = "Enabled"

.field private static final VIDEO_CAPTURER_THREAD_NAME:Ljava/lang/String; = "VideoCapturerThread"

.field public static final VIDEO_FRAME_EMIT_TRIAL:Ljava/lang/String; = "VideoFrameEmit"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static volatile internalTracerInitialized:Z

.field private static staticNetworkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

.field private static staticSignalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

.field private static staticWorkerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;


# instance fields
.field private nativeFactory:J

.field private volatile networkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

.field private volatile signalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

.field private volatile workerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;


# direct methods
.method constructor <init>(J)V
    .locals 2

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->checkInitializeHasBeenCalled()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-void

    .line 361
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to initialize PeerConnectionFactory!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 26
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->checkInitializeHasBeenCalled()V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Lorg/webrtc/PeerConnectionFactory$Options;JJJLorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;JJJJJ)Lorg/webrtc/PeerConnectionFactory;
    .locals 1

    .line 26
    invoke-static/range {p0 .. p19}, Lorg/webrtc/PeerConnectionFactory;->nativeCreatePeerConnectionFactory(Landroid/content/Context;Lorg/webrtc/PeerConnectionFactory$Options;JJJLorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;JJJJJ)Lorg/webrtc/PeerConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public static builder()Lorg/webrtc/PeerConnectionFactory$Builder;
    .locals 2

    .line 284
    new-instance v0, Lorg/webrtc/PeerConnectionFactory$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/webrtc/PeerConnectionFactory$Builder;-><init>(Lorg/webrtc/PeerConnectionFactory$1;)V

    return-object v0
.end method

.method private static checkInitializeHasBeenCalled()V
    .locals 2

    .line 313
    invoke-static {}, Lorg/webrtc/NativeLibrary;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PeerConnectionFactory.initialize was not called before creating a PeerConnectionFactory."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkPeerConnectionFactoryExists()V
    .locals 4

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    return-void

    .line 510
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "PeerConnectionFactory has been disposed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 346
    invoke-static {}, Lorg/webrtc/NativeLibrary;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->nativeFindFieldTrialsFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static initialize(Lorg/webrtc/PeerConnectionFactory$InitializationOptions;)V
    .locals 2

    .line 293
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/webrtc/ContextUtils;->initialize(Landroid/content/Context;)V

    .line 294
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryLoader:Lorg/webrtc/NativeLibraryLoader;

    iget-object v1, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->nativeLibraryName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/webrtc/NativeLibrary;->initialize(Lorg/webrtc/NativeLibraryLoader;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativeInitializeAndroidGlobals()V

    .line 296
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->fieldTrials:Ljava/lang/String;

    invoke-static {v0}, Lorg/webrtc/PeerConnectionFactory;->nativeInitializeFieldTrials(Ljava/lang/String;)V

    .line 297
    iget-boolean v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->enableInternalTracer:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    if-nez v0, :cond_0

    .line 298
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->initializeInternalTracer()V

    .line 300
    :cond_0
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lorg/webrtc/Loggable;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lorg/webrtc/Loggable;

    iget-object v1, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->loggableSeverity:Lorg/webrtc/Logging$Severity;

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->injectLoggable(Lorg/webrtc/Loggable;Lorg/webrtc/Logging$Severity;)V

    .line 302
    new-instance v0, Lorg/webrtc/JNILogging;

    iget-object v1, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->loggable:Lorg/webrtc/Loggable;

    invoke-direct {v0, v1}, Lorg/webrtc/JNILogging;-><init>(Lorg/webrtc/Loggable;)V

    iget-object p0, p0, Lorg/webrtc/PeerConnectionFactory$InitializationOptions;->loggableSeverity:Lorg/webrtc/Logging$Severity;

    invoke-virtual {p0}, Lorg/webrtc/Logging$Severity;->ordinal()I

    move-result p0

    invoke-static {v0, p0}, Lorg/webrtc/PeerConnectionFactory;->nativeInjectLoggable(Lorg/webrtc/JNILogging;I)V

    goto :goto_0

    :cond_1
    const-string p0, "PeerConnectionFactory"

    const-string v0, "PeerConnectionFactory was initialized without an injected Loggable. Any existing Loggable will be deleted."

    .line 304
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lorg/webrtc/Logging;->deleteInjectedLoggable()V

    .line 308
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativeDeleteLoggable()V

    :goto_0
    return-void
.end method

.method public static initializeFieldTrials(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 335
    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->nativeInitializeFieldTrials(Ljava/lang/String;)V

    return-void
.end method

.method private static initializeInternalTracer()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    .line 322
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativeInitializeInternalTracer()V

    return-void
.end method

.method private static native nativeCreateAudioSource(JLorg/webrtc/MediaConstraints;)J
.end method

.method private static native nativeCreateAudioTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeCreateLocalMediaStream(JLjava/lang/String;)J
.end method

.method private static native nativeCreatePeerConnection(JLorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;JLorg/webrtc/SSLCertificateVerifier;)J
.end method

.method private static native nativeCreatePeerConnectionFactory(Landroid/content/Context;Lorg/webrtc/PeerConnectionFactory$Options;JJJLorg/webrtc/VideoEncoderFactory;Lorg/webrtc/VideoDecoderFactory;JJJJJ)Lorg/webrtc/PeerConnectionFactory;
.end method

.method private static native nativeCreateVideoSource(JZZ)J
.end method

.method private static native nativeCreateVideoTrack(JLjava/lang/String;J)J
.end method

.method private static native nativeDeleteLoggable()V
.end method

.method private static native nativeFindFieldTrialsFullName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeFreeFactory(J)V
.end method

.method private static native nativeGetNativePeerConnectionFactory(J)J
.end method

.method private static native nativeInitializeAndroidGlobals()V
.end method

.method private static native nativeInitializeFieldTrials(Ljava/lang/String;)V
.end method

.method private static native nativeInitializeInternalTracer()V
.end method

.method private static native nativeInjectLoggable(Lorg/webrtc/JNILogging;I)V
.end method

.method private static native nativePrintStackTrace(I)V
.end method

.method private static native nativePrintStackTracesOfRegisteredThreads()V
.end method

.method private static native nativeShutdownInternalTracer()V
.end method

.method private static native nativeStartAecDump(JII)Z
.end method

.method private static native nativeStartInternalTracingCapture(Ljava/lang/String;)Z
.end method

.method private static native nativeStopAecDump(J)V
.end method

.method private static native nativeStopInternalTracingCapture()V
.end method

.method private onNetworkThreadReady()V
    .locals 1

    .line 563
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    iget-object p0, p0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object p0, Lorg/webrtc/PeerConnectionFactory;->staticNetworkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string p0, "PeerConnectionFactory"

    const-string v0, "onNetworkThreadReady"

    .line 565
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSignalingThreadReady()V
    .locals 1

    .line 577
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    iget-object p0, p0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object p0, Lorg/webrtc/PeerConnectionFactory;->staticSignalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string p0, "PeerConnectionFactory"

    const-string v0, "onSignalingThreadReady"

    .line 579
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onWorkerThreadReady()V
    .locals 1

    .line 570
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->getCurrent()Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    iget-object p0, p0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    sput-object p0, Lorg/webrtc/PeerConnectionFactory;->staticWorkerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    const-string p0, "PeerConnectionFactory"

    const-string v0, "onWorkerThreadReady"

    .line 572
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 521
    iget-object v1, p0, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 522
    array-length v2, v1

    const-string v3, "PeerConnectionFactory"

    if-lez v2, :cond_1

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " stacktrace:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 525
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "*** *** *** *** *** *** *** *** *** *** *** *** *** *** *** ***"

    .line 531
    invoke-static {v3, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "pid: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", tid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->tid:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  >>> WebRTC <<<"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-static {v3, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget p0, p0, Lorg/webrtc/PeerConnectionFactory$ThreadInfo;->tid:I

    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->nativePrintStackTrace(I)V

    :cond_2
    return-void
.end method

.method public static printStackTraces()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->staticNetworkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    const/4 v1, 0x0

    .line 542
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->staticWorkerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 543
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    sget-object v0, Lorg/webrtc/PeerConnectionFactory;->staticSignalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 544
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    return-void
.end method

.method public static shutdownInternalTracer()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/webrtc/PeerConnectionFactory;->internalTracerInitialized:Z

    .line 327
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativeShutdownInternalTracer()V

    return-void
.end method

.method public static startInternalTracingCapture(Ljava/lang/String;)Z
    .locals 0

    .line 350
    invoke-static {p0}, Lorg/webrtc/PeerConnectionFactory;->nativeStartInternalTracingCapture(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static stopInternalTracingCapture()V
    .locals 0

    .line 354
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativeStopInternalTracingCapture()V

    return-void
.end method


# virtual methods
.method public createAudioSource(Lorg/webrtc/MediaConstraints;)Lorg/webrtc/AudioSource;
    .locals 3

    .line 463
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 464
    new-instance v0, Lorg/webrtc/AudioSource;

    iget-wide v1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateAudioSource(JLorg/webrtc/MediaConstraints;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/webrtc/AudioSource;-><init>(J)V

    return-object v0
.end method

.method public createAudioTrack(Ljava/lang/String;Lorg/webrtc/AudioSource;)Lorg/webrtc/AudioTrack;
    .locals 5

    .line 468
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 469
    new-instance v0, Lorg/webrtc/AudioTrack;

    iget-wide v1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-virtual {p2}, Lorg/webrtc/AudioSource;->getNativeAudioSource()J

    move-result-wide v3

    invoke-static {v1, v2, p1, v3, v4}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateAudioTrack(JLjava/lang/String;J)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/webrtc/AudioTrack;-><init>(J)V

    return-object v0
.end method

.method public createLocalMediaStream(Ljava/lang/String;)Lorg/webrtc/MediaStream;
    .locals 3

    .line 431
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 432
    new-instance v0, Lorg/webrtc/MediaStream;

    iget-wide v1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateLocalMediaStream(JLjava/lang/String;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/webrtc/MediaStream;-><init>(J)V

    return-object v0
.end method

.method public createPeerConnection(Ljava/util/List;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;",
            "Lorg/webrtc/MediaConstraints;",
            "Lorg/webrtc/PeerConnection$Observer;",
            ")",
            "Lorg/webrtc/PeerConnection;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 406
    new-instance v0, Lorg/webrtc/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 407
    invoke-virtual {p0, v0, p2, p3}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object p0

    return-object p0
.end method

.method public createPeerConnection(Ljava/util/List;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;",
            "Lorg/webrtc/PeerConnection$Observer;",
            ")",
            "Lorg/webrtc/PeerConnection;"
        }
    .end annotation

    .line 413
    new-instance v0, Lorg/webrtc/PeerConnection$RTCConfiguration;

    invoke-direct {v0, p1}, Lorg/webrtc/PeerConnection$RTCConfiguration;-><init>(Ljava/util/List;)V

    .line 414
    invoke-virtual {p0, v0, p2}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object p0

    return-object p0
.end method

.method public createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 394
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnectionInternal(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;)Lorg/webrtc/PeerConnection;

    move-result-object p0

    return-object p0
.end method

.method public createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, p1, v0, p2}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;)Lorg/webrtc/PeerConnection;

    move-result-object p0

    return-object p0
.end method

.method public createPeerConnection(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/PeerConnectionDependencies;)Lorg/webrtc/PeerConnection;
    .locals 2

    .line 427
    invoke-virtual {p2}, Lorg/webrtc/PeerConnectionDependencies;->getObserver()Lorg/webrtc/PeerConnection$Observer;

    move-result-object v0

    invoke-virtual {p2}, Lorg/webrtc/PeerConnectionDependencies;->getSSLCertificateVerifier()Lorg/webrtc/SSLCertificateVerifier;

    move-result-object p2

    const/4 v1, 0x0

    .line 426
    invoke-virtual {p0, p1, v1, v0, p2}, Lorg/webrtc/PeerConnectionFactory;->createPeerConnectionInternal(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;)Lorg/webrtc/PeerConnection;

    move-result-object p0

    return-object p0
.end method

.method createPeerConnectionInternal(Lorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;Lorg/webrtc/PeerConnection$Observer;Lorg/webrtc/SSLCertificateVerifier;)Lorg/webrtc/PeerConnection;
    .locals 10

    .line 373
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 374
    invoke-static {p3}, Lorg/webrtc/PeerConnection;->createNativePeerConnectionObserver(Lorg/webrtc/PeerConnection$Observer;)J

    move-result-wide v4

    const-wide/16 v7, 0x0

    cmp-long p3, v4, v7

    const/4 v9, 0x0

    if-nez p3, :cond_0

    return-object v9

    :cond_0
    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    move-object v2, p1

    move-object v3, p2

    move-object v6, p4

    .line 378
    invoke-static/range {v0 .. v6}, Lorg/webrtc/PeerConnectionFactory;->nativeCreatePeerConnection(JLorg/webrtc/PeerConnection$RTCConfiguration;Lorg/webrtc/MediaConstraints;JLorg/webrtc/SSLCertificateVerifier;)J

    move-result-wide p0

    cmp-long p2, p0, v7

    if-nez p2, :cond_1

    return-object v9

    .line 383
    :cond_1
    new-instance p2, Lorg/webrtc/PeerConnection;

    invoke-direct {p2, p0, p1}, Lorg/webrtc/PeerConnection;-><init>(J)V

    return-object p2
.end method

.method public createVideoSource(Z)Lorg/webrtc/VideoSource;
    .locals 1

    const/4 v0, 0x1

    .line 453
    invoke-virtual {p0, p1, v0}, Lorg/webrtc/PeerConnectionFactory;->createVideoSource(ZZ)Lorg/webrtc/VideoSource;

    move-result-object p0

    return-object p0
.end method

.method public createVideoSource(ZZ)Lorg/webrtc/VideoSource;
    .locals 3

    .line 443
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 444
    new-instance v0, Lorg/webrtc/VideoSource;

    iget-wide v1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    invoke-static {v1, v2, p1, p2}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateVideoSource(JZZ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/webrtc/VideoSource;-><init>(J)V

    return-object v0
.end method

.method public createVideoTrack(Ljava/lang/String;Lorg/webrtc/VideoSource;)Lorg/webrtc/VideoTrack;
    .locals 5

    .line 457
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    .line 458
    new-instance v0, Lorg/webrtc/VideoTrack;

    iget-wide v1, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 459
    invoke-virtual {p2}, Lorg/webrtc/VideoSource;->getNativeVideoTrackSource()J

    move-result-wide v3

    invoke-static {v1, v2, p1, v3, v4}, Lorg/webrtc/PeerConnectionFactory;->nativeCreateVideoTrack(JLjava/lang/String;J)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/webrtc/VideoTrack;-><init>(J)V

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 488
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 489
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeFreeFactory(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    iput-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-void
.end method

.method public getNativeOwnedFactoryAndThreads()J
    .locals 2

    .line 504
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    return-wide v0
.end method

.method public getNativePeerConnectionFactory()J
    .locals 2

    .line 498
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 499
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeGetNativePeerConnectionFactory(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public printInternalStackTraces(Z)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->signalingThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 553
    invoke-static {v0, p1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    iget-object v0, p0, Lorg/webrtc/PeerConnectionFactory;->workerThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 554
    invoke-static {v0, p1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    iget-object p0, p0, Lorg/webrtc/PeerConnectionFactory;->networkThread:Lorg/webrtc/PeerConnectionFactory$ThreadInfo;

    .line 555
    invoke-static {p0, p1}, Lorg/webrtc/PeerConnectionFactory;->printStackTrace(Lorg/webrtc/PeerConnectionFactory$ThreadInfo;Z)V

    if-eqz p1, :cond_0

    .line 557
    invoke-static {}, Lorg/webrtc/PeerConnectionFactory;->nativePrintStackTracesOfRegisteredThreads()V

    :cond_0
    return-void
.end method

.method public startAecDump(II)Z
    .locals 2

    .line 476
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 477
    invoke-static {v0, v1, p1, p2}, Lorg/webrtc/PeerConnectionFactory;->nativeStartAecDump(JII)Z

    move-result p0

    return p0
.end method

.method public stopAecDump()V
    .locals 2

    .line 483
    invoke-direct {p0}, Lorg/webrtc/PeerConnectionFactory;->checkPeerConnectionFactoryExists()V

    iget-wide v0, p0, Lorg/webrtc/PeerConnectionFactory;->nativeFactory:J

    .line 484
    invoke-static {v0, v1}, Lorg/webrtc/PeerConnectionFactory;->nativeStopAecDump(J)V

    return-void
.end method
