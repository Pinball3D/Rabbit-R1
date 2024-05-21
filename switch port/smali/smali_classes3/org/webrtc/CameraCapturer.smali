.class abstract Lorg/webrtc/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lorg/webrtc/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lorg/webrtc/CameraEnumerator;

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

.field private cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

.field private cameraThreadHandler:Landroid/os/Handler;

.field private capturerObserver:Lorg/webrtc/CapturerObserver;

.field private final createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

.field private currentSession:Lorg/webrtc/CameraSession;

.field private final eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

.field private firstFrameObserved:Z

.field private framerate:I

.field private height:I

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private pendingCameraName:Ljava/lang/String;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

.field private switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

.field private switchState:Lorg/webrtc/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/webrtc/CameraCapturer$1;

    invoke-direct {v0, p0}, Lorg/webrtc/CameraCapturer$1;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    .line 102
    new-instance v0, Lorg/webrtc/CameraCapturer$2;

    invoke-direct {v0, p0}, Lorg/webrtc/CameraCapturer$2;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    .line 172
    new-instance v0, Lorg/webrtc/CameraCapturer$3;

    invoke-direct {v0, p0}, Lorg/webrtc/CameraCapturer$3;-><init>(Lorg/webrtc/CameraCapturer;)V

    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 195
    sget-object v0, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object v0, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    if-nez p2, :cond_0

    .line 204
    new-instance p2, Lorg/webrtc/CameraCapturer$4;

    invoke-direct {p2, p0}, Lorg/webrtc/CameraCapturer$4;-><init>(Lorg/webrtc/CameraCapturer;)V

    :cond_0
    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 223
    invoke-interface {p3}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 224
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 226
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 229
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 230
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Camera name "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " does not match any known camera device."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 227
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No cameras attached."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lorg/webrtc/CameraCapturer;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lorg/webrtc/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->eventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;

    return-object p0
.end method

.method static synthetic access$102(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraCapturer$SwitchState;)Lorg/webrtc/CameraCapturer$SwitchState;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/webrtc/CameraCapturer;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return p0
.end method

.method static synthetic access$1102(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->firstFrameObserved:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object p0
.end method

.method static synthetic access$1202(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraEnumerator;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    return-object p0
.end method

.method static synthetic access$1500(Lorg/webrtc/CameraCapturer;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1502(Lorg/webrtc/CameraCapturer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/webrtc/CameraCapturer;->switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lorg/webrtc/CameraCapturer;)I
    .locals 0

    .line 21
    iget p0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return p0
.end method

.method static synthetic access$1710(Lorg/webrtc/CameraCapturer;)I
    .locals 2

    .line 21
    iget v0, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1800(Lorg/webrtc/CameraCapturer;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    return-void
.end method

.method static synthetic access$1900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$CreateSessionCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->createSessionCallback:Lorg/webrtc/CameraSession$CreateSessionCallback;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/CameraCapturer;)Ljava/lang/Runnable;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2000(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession$Events;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraSessionEventsHandler:Lorg/webrtc/CameraSession$Events;

    return-object p0
.end method

.method static synthetic access$2100(Lorg/webrtc/CameraCapturer;)Landroid/content/Context;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2200(Lorg/webrtc/CameraCapturer;)I
    .locals 0

    .line 21
    iget p0, p0, Lorg/webrtc/CameraCapturer;->width:I

    return p0
.end method

.method static synthetic access$2300(Lorg/webrtc/CameraCapturer;)I
    .locals 0

    .line 21
    iget p0, p0, Lorg/webrtc/CameraCapturer;->height:I

    return p0
.end method

.method static synthetic access$2400(Lorg/webrtc/CameraCapturer;)I
    .locals 0

    .line 21
    iget p0, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    return p0
.end method

.method static synthetic access$2500(Lorg/webrtc/CameraCapturer;Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/CameraCapturer;)Landroid/os/Handler;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/CameraCapturer;)Ljava/lang/Object;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CapturerObserver;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/CapturerObserver;

    return-object p0
.end method

.method static synthetic access$602(Lorg/webrtc/CameraCapturer;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    return p1
.end method

.method static synthetic access$700(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraSession;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object p0
.end method

.method static synthetic access$702(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)Lorg/webrtc/CameraSession;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    return-object p1
.end method

.method static synthetic access$800(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object p0
.end method

.method static synthetic access$802(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraStatistics;)Lorg/webrtc/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 21
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    return-object p1
.end method

.method static synthetic access$900(Lorg/webrtc/CameraCapturer;)Lorg/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 21
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method private checkIsOnCameraThread()V
    .locals 1

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "CameraCapturer"

    const-string v0, "Check is on camera thread failed."

    .line 443
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not on camera thread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createSessionInternal(I)V
    .locals 4

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 v2, p1, 0x2710

    int-to-long v2, v2

    .line 268
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 269
    new-instance v1, Lorg/webrtc/CameraCapturer$5;

    invoke-direct {v1, p0}, Lorg/webrtc/CameraCapturer$5;-><init>(Lorg/webrtc/CameraCapturer;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    const-string p0, "CameraCapturer"

    .line 384
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 386
    invoke-interface {p2, p1}, Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 4

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera internal"

    .line 392
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraEnumerator:Lorg/webrtc/CameraEnumerator;

    .line 393
    invoke-interface {v0}, Lorg/webrtc/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 395
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attempted to switch to unknown camera device "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 401
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    .line 402
    sget-object v2, Lorg/webrtc/CameraCapturer$SwitchState;->IDLE:Lorg/webrtc/CameraCapturer$SwitchState;

    if-eq v1, v2, :cond_1

    const-string p2, "Camera switch already in progress."

    .line 403
    invoke-direct {p0, p2, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 404
    monitor-exit v0

    return-void

    :cond_1
    iget-boolean v1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v1, :cond_2

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-nez v2, :cond_2

    const-string p2, "switchCamera: camera is not running."

    .line 407
    invoke-direct {p0, p2, p1}, Lorg/webrtc/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 408
    monitor-exit v0

    return-void

    :cond_2
    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchEventsHandler:Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;

    if-eqz v1, :cond_3

    .line 413
    sget-object p1, Lorg/webrtc/CameraCapturer$SwitchState;->PENDING:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->pendingCameraName:Ljava/lang/String;

    .line 415
    monitor-exit v0

    return-void

    .line 417
    :cond_3
    sget-object p1, Lorg/webrtc/CameraCapturer$SwitchState;->IN_PROGRESS:Lorg/webrtc/CameraCapturer$SwitchState;

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->switchState:Lorg/webrtc/CameraCapturer$SwitchState;

    const-string p1, "CameraCapturer"

    const-string v1, "switchCamera: Stopping session"

    .line 420
    invoke-static {p1, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 421
    invoke-virtual {p1}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 424
    new-instance v3, Lorg/webrtc/CameraCapturer$9;

    invoke-direct {v3, p0, v1}, Lorg/webrtc/CameraCapturer$9;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    iput p1, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 436
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 437
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "CameraCapturer"

    const-string p1, "switchCamera done"

    .line 438
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 437
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public changeCaptureFormat(III)V
    .locals 3

    const-string v0, "CameraCapturer"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeCaptureFormat: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 318
    monitor-enter v0

    .line 319
    :try_start_0
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->startCapture(III)V

    .line 321
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected abstract createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
.end method

.method public dispose()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "dispose"

    .line 326
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 449
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 450
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 451
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V
    .locals 0

    iput-object p2, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/CapturerObserver;

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->surfaceHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 241
    invoke-virtual {p1}, Lorg/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public isScreencast()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public printStackTrace()V
    .locals 4

    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 372
    invoke-virtual {p0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    .line 373
    array-length v0, p0

    if-lez v0, :cond_1

    const-string v0, "CameraCapturer stack trace:"

    const-string v1, "CameraCapturer"

    .line 374
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    array-length v0, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 376
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startCapture(III)V
    .locals 3

    const-string v0, "CameraCapturer"

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startCapture: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 251
    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lorg/webrtc/CameraCapturer;->width:I

    iput p2, p0, Lorg/webrtc/CameraCapturer;->height:I

    iput p3, p0, Lorg/webrtc/CameraCapturer;->framerate:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    const/4 p1, 0x3

    iput p1, p0, Lorg/webrtc/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 263
    invoke-direct {p0, p1}, Lorg/webrtc/CameraCapturer;->createSessionInternal(I)V

    .line 264
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const-string p0, "CameraCapturer"

    const-string p1, "Session already open"

    .line 253
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 248
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "CameraCapturer must be initialized before calling startCapture."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopCapture()V
    .locals 5

    const-string v0, "CameraCapturer"

    const-string v1, "Stop capture"

    .line 280
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 282
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lorg/webrtc/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: Waiting for session to open"

    .line 284
    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->stateLock:Ljava/lang/Object;

    .line 286
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string p0, "CameraCapturer"

    const-string v1, "Stop capture interrupted while waiting for the session to open."

    .line 288
    invoke-static {p0, v1}, Lorg/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 290
    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    if-eqz v1, :cond_1

    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: Nulling session"

    .line 295
    invoke-static {v1, v2}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    .line 296
    invoke-virtual {v1}, Lorg/webrtc/CameraVideoCapturer$CameraStatistics;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->cameraStatistics:Lorg/webrtc/CameraVideoCapturer$CameraStatistics;

    iget-object v2, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    iget-object v3, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 299
    new-instance v4, Lorg/webrtc/CameraCapturer$6;

    invoke-direct {v4, p0, v2}, Lorg/webrtc/CameraCapturer$6;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-object v1, p0, Lorg/webrtc/CameraCapturer;->currentSession:Lorg/webrtc/CameraSession;

    iget-object p0, p0, Lorg/webrtc/CameraCapturer;->capturerObserver:Lorg/webrtc/CapturerObserver;

    .line 306
    invoke-interface {p0}, Lorg/webrtc/CapturerObserver;->onCapturerStopped()V

    goto :goto_1

    :cond_1
    const-string p0, "CameraCapturer"

    const-string v1, "Stop capture: No session open"

    .line 308
    invoke-static {p0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p0, "CameraCapturer"

    const-string v0, "Stop capture done"

    .line 312
    invoke-static {p0, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 310
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    .line 332
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 333
    new-instance v1, Lorg/webrtc/CameraCapturer$7;

    invoke-direct {v1, p0, p1}, Lorg/webrtc/CameraCapturer$7;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    .line 352
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    .line 353
    new-instance v1, Lorg/webrtc/CameraCapturer$8;

    invoke-direct {v1, p0, p1, p2}, Lorg/webrtc/CameraCapturer$8;-><init>(Lorg/webrtc/CameraCapturer;Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
