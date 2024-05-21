.class Lorg/webrtc/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lorg/webrtc/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static final camera1ResolutionHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

.field private static final camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lorg/webrtc/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private state:Lorg/webrtc/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "WebRTC.Android.Camera1.StartTimeMs"

    const/4 v1, 0x1

    const/16 v2, 0x2710

    const/16 v3, 0x32

    .line 28
    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    const-string v0, "WebRTC.Android.Camera1.StopTimeMs"

    .line 30
    invoke-static {v0, v1, v2, v3}, Lorg/webrtc/Histogram;->createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 31
    sget-object v0, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "WebRTC.Android.Camera1.Resolution"

    .line 31
    invoke-static {v1, v0}, Lorg/webrtc/Histogram;->createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;

    move-result-object v0

    sput-object v0, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    return-void
.end method

.method private constructor <init>(Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create new camera1 session on camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    iput-object p1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    iput-boolean p2, p0, Lorg/webrtc/Camera1Session;->captureToTexture:Z

    iput-object p3, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    iput-object p4, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    iput p5, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    iput-object p6, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    iput-object p7, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iput-object p8, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iput-wide p9, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    .line 174
    iget p1, p8, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget p2, p8, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p4, p1, p2}, Lorg/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 176
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->startCapturing()V

    return-void
.end method

.method static synthetic access$000(Lorg/webrtc/Camera1Session;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$100(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraSession$Events;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    return-object p0
.end method

.method static synthetic access$1000(Lorg/webrtc/Camera1Session;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lorg/webrtc/Camera1Session;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$300(Lorg/webrtc/Camera1Session;)Landroid/hardware/Camera;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$400(Lorg/webrtc/Camera1Session;)Lorg/webrtc/Camera1Session$SessionState;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    return-object p0
.end method

.method static synthetic access$500(Lorg/webrtc/Camera1Session;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return p0
.end method

.method static synthetic access$502(Lorg/webrtc/Camera1Session;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$600(Lorg/webrtc/Camera1Session;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    return-wide v0
.end method

.method static synthetic access$700()Lorg/webrtc/Histogram;
    .locals 1

    sget-object v0, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    return-object v0
.end method

.method static synthetic access$800(Lorg/webrtc/Camera1Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    .line 23
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->captureFormat:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    return-object p0
.end method

.method static synthetic access$900(Lorg/webrtc/Camera1Session;)I
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method private checkIsOnCameraThread()V
    .locals 1

    .line 324
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object p0, p0, Lorg/webrtc/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Wrong thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;IIII)V
    .locals 14

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v7, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Open camera "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Camera1Session"

    invoke-static {v5, v4}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-interface {p1}, Lorg/webrtc/CameraSession$Events;->onCameraOpening()V

    .line 63
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v8, :cond_0

    .line 70
    sget-object v0, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.hardware.Camera.open returned null for camera id = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_0
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    new-instance v9, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v9}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 84
    invoke-static {v7, v9}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 88
    :try_start_2
    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    move/from16 v5, p8

    .line 89
    invoke-static {v4, v2, v3, v5}, Lorg/webrtc/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v10

    .line 90
    invoke-static {v4, v2, v3}, Lorg/webrtc/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;

    move-result-object v2

    .line 91
    invoke-static {v8, v4, v10, v2, v0}, Lorg/webrtc/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {v10}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v3

    move v4, v2

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 101
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 102
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v8, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 109
    new-instance v13, Lorg/webrtc/Camera1Session;

    move-object v2, v13

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v12}, Lorg/webrtc/Camera1Session;-><init>(Lorg/webrtc/CameraSession$Events;ZLandroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;J)V

    invoke-interface {p0, v13}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/CameraSession;)V

    return-void

    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 94
    sget-object v2, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 78
    invoke-virtual {v8}, Landroid/hardware/Camera;->release()V

    .line 79
    sget-object v2, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 65
    sget-object v0, Lorg/webrtc/CameraSession$FailureType;->ERROR:Lorg/webrtc/CameraSession$FailureType;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onFailure(Lorg/webrtc/CameraSession$FailureType;Ljava/lang/String;)V

    return-void
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    .locals 3

    .line 138
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/webrtc/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Available fps ranges: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera1Session"

    invoke-static {v2, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {v0, p3}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object p3

    .line 145
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 144
    invoke-static {p0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object p0

    sget-object p1, Lorg/webrtc/Camera1Session;->camera1ResolutionHistogram:Lorg/webrtc/Histogram;

    .line 146
    invoke-static {p1, p0}, Lorg/webrtc/CameraEnumerationAndroid;->reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V

    .line 148
    new-instance p1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    iget p2, p0, Lorg/webrtc/Size;->width:I

    iget p0, p0, Lorg/webrtc/Size;->height:I

    invoke-direct {p1, p2, p0, p3}, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;-><init>(IILorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    return-object p1
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lorg/webrtc/Size;
    .locals 0

    .line 154
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/webrtc/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 153
    invoke-static {p0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;

    move-result-object p0

    return-object p0
.end method

.method private getFrameOrientation()I
    .locals 2

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 316
    invoke-static {v0}, Lorg/webrtc/CameraSession;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 317
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    :cond_0
    iget-object p0, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 320
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v0

    rem-int/lit16 p0, p0, 0x168

    return p0
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 278
    new-instance v1, Lorg/webrtc/Camera1Session$2;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$2;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 249
    new-instance v1, Lorg/webrtc/Camera1Session$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method private startCapturing()V
    .locals 2

    const-string v0, "Camera1Session"

    const-string v1, "Start capturing"

    .line 192
    invoke-static {v0, v1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    .line 195
    sget-object v0, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 197
    new-instance v1, Lorg/webrtc/Camera1Session$1;

    invoke-direct {v1, p0}, Lorg/webrtc/Camera1Session$1;-><init>(Lorg/webrtc/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->captureToTexture:Z

    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForTextureFrames()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->listenForBytebufferFrames()V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 222
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 224
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    iget-object v1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 225
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lorg/webrtc/CameraSession$Events;->onCameraError(Lorg/webrtc/CameraSession;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private stopInternal()V
    .locals 3

    const-string v0, "Stop internal"

    const-string v1, "Camera1Session"

    .line 230
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 232
    sget-object v2, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    if-ne v0, v2, :cond_0

    const-string p0, "Camera is already stopped"

    .line 233
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_0
    sget-object v0, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    iput-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->surfaceTextureHelper:Lorg/webrtc/SurfaceTextureHelper;

    .line 238
    invoke-virtual {v0}, Lorg/webrtc/SurfaceTextureHelper;->stopListening()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 242
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 243
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 244
    invoke-interface {v0, p0}, Lorg/webrtc/CameraSession$Events;->onCameraClosed(Lorg/webrtc/CameraSession;)V

    const-string p0, "Stop done"

    .line 245
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;Lorg/webrtc/Size;Z)V
    .locals 3

    .line 116
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 118
    iget-object v1, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v2, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 119
    iget v1, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p2, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 120
    iget v1, p3, Lorg/webrtc/Size;->width:I

    iget p3, p3, Lorg/webrtc/Size;->height:I

    invoke-virtual {p1, v1, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    if-nez p4, :cond_0

    .line 122
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 125
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 126
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_1
    const-string p2, "continuous-video"

    .line 128
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 129
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 131
    :cond_2
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$listenForTextureFrames$0$org-webrtc-Camera1Session(Lorg/webrtc/VideoFrame;)V
    .locals 6

    .line 250
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 252
    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->RUNNING:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p0, "Camera1Session"

    const-string p1, "Texture frame captured but camera is no longer running."

    .line 253
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 258
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 259
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/webrtc/Camera1Session;->constructionTimeNs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    sget-object v2, Lorg/webrtc/Camera1Session;->camera1StartTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 260
    invoke-virtual {v2, v0}, Lorg/webrtc/Histogram;->addSample(I)V

    iput-boolean v1, p0, Lorg/webrtc/Camera1Session;->firstFrameReported:Z

    .line 266
    :cond_1
    new-instance v0, Lorg/webrtc/VideoFrame;

    .line 268
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v2

    check-cast v2, Lorg/webrtc/TextureBufferImpl;

    iget-object v3, p0, Lorg/webrtc/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    .line 267
    :goto_0
    invoke-static {v2, v1, v4}, Lorg/webrtc/CameraSession;->createTextureBufferWithModifiedTransformMatrix(Lorg/webrtc/TextureBufferImpl;ZI)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    .line 271
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->getFrameOrientation()I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p1, p0, Lorg/webrtc/Camera1Session;->events:Lorg/webrtc/CameraSession$Events;

    .line 272
    invoke-interface {p1, p0, v0}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 273
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    return-void
.end method

.method public stop()V
    .locals 4

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Stop camera1 session on camera "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/webrtc/Camera1Session;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->checkIsOnCameraThread()V

    iget-object v0, p0, Lorg/webrtc/Camera1Session;->state:Lorg/webrtc/Camera1Session$SessionState;

    .line 183
    sget-object v1, Lorg/webrtc/Camera1Session$SessionState;->STOPPED:Lorg/webrtc/Camera1Session$SessionState;

    if-eq v0, v1, :cond_0

    .line 184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 185
    invoke-direct {p0}, Lorg/webrtc/Camera1Session;->stopInternal()V

    .line 186
    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int p0, v0

    sget-object v0, Lorg/webrtc/Camera1Session;->camera1StopTimeMsHistogram:Lorg/webrtc/Histogram;

    .line 187
    invoke-virtual {v0, p0}, Lorg/webrtc/Histogram;->addSample(I)V

    :cond_0
    return-void
.end method
