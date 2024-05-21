.class Lorg/webrtc/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Camera2Session;


# direct methods
.method private constructor <init>(Lorg/webrtc/Camera2Session;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 142
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/Camera2Session;Lorg/webrtc/Camera2Session$1;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;-><init>(Lorg/webrtc/Camera2Session;)V

    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 5

    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 249
    invoke-static {p0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 250
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const-string v2, "Camera2Session"

    if-ge v1, v0, :cond_1

    aget v3, p0, v1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 252
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 253
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 252
    invoke-virtual {p1, p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p0, "Using continuous video auto-focus."

    .line 254
    invoke-static {v2, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Auto-focus is not available."

    .line 258
    invoke-static {v2, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 217
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    const/4 v2, 0x0

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 220
    array-length v6, v0

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v0, v7

    if-ne v8, v4, :cond_0

    .line 222
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 224
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p0, "Using optical stabilization."

    .line 226
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 232
    invoke-static {p0}, Lorg/webrtc/Camera2Session;->access$1500(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    .line 234
    array-length v0, p0

    :goto_1
    if-ge v2, v0, :cond_3

    aget v6, p0, v2

    if-ne v6, v4, :cond_2

    .line 236
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 238
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, p0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p0, "Using video stabilization."

    .line 240
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "Stabilization not available."

    .line 244
    invoke-static {v1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onConfigured$0$org-webrtc-Camera2Session$CaptureSessionCallback(Lorg/webrtc/VideoFrame;)V
    .locals 5

    .line 0
    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 184
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 186
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$200(Lorg/webrtc/Camera2Session;)Lorg/webrtc/Camera2Session$SessionState;

    move-result-object v0

    sget-object v1, Lorg/webrtc/Camera2Session$SessionState;->RUNNING:Lorg/webrtc/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p0, "Camera2Session"

    const-string p1, "Texture frame captured but camera is no longer running."

    .line 187
    invoke-static {p0, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 191
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$1600(Lorg/webrtc/Camera2Session;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const/4 v1, 0x1

    .line 192
    invoke-static {v0, v1}, Lorg/webrtc/Camera2Session;->access$1602(Lorg/webrtc/Camera2Session;Z)Z

    .line 193
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1700(Lorg/webrtc/Camera2Session;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    .line 195
    invoke-static {}, Lorg/webrtc/Camera2Session;->access$1800()Lorg/webrtc/Histogram;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/webrtc/Histogram;->addSample(I)V

    .line 201
    :cond_1
    new-instance v0, Lorg/webrtc/VideoFrame;

    .line 203
    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getBuffer()Lorg/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lorg/webrtc/TextureBufferImpl;

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 204
    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$1900(Lorg/webrtc/Camera2Session;)Z

    move-result v2

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 205
    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$2000(Lorg/webrtc/Camera2Session;)I

    move-result v3

    neg-int v3, v3

    .line 202
    invoke-static {v1, v2, v3}, Lorg/webrtc/CameraSession;->createTextureBufferWithModifiedTransformMatrix(Lorg/webrtc/TextureBufferImpl;ZI)Lorg/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 206
    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$2100(Lorg/webrtc/Camera2Session;)I

    move-result v2

    invoke-virtual {p1}, Lorg/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/webrtc/VideoFrame;-><init>(Lorg/webrtc/VideoFrame$Buffer;IJ)V

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 207
    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$500(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$Events;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-interface {p1, p0, v0}, Lorg/webrtc/CameraSession$Events;->onFrameCaptured(Lorg/webrtc/CameraSession;Lorg/webrtc/VideoFrame;)V

    .line 208
    invoke-virtual {v0}, Lorg/webrtc/VideoFrame;->release()V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 145
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    .line 146
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    const-string p1, "Failed to configure capture session."

    .line 147
    invoke-static {p0, p1}, Lorg/webrtc/Camera2Session;->access$600(Lorg/webrtc/Camera2Session;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 152
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$000(Lorg/webrtc/Camera2Session;)V

    const-string v0, "Camera capture session configured."

    const-string v1, "Camera2Session"

    .line 153
    invoke-static {v1, v0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 154
    invoke-static {v0, p1}, Lorg/webrtc/Camera2Session;->access$102(Lorg/webrtc/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object v0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 164
    invoke-static {v0}, Lorg/webrtc/Camera2Session;->access$700(Lorg/webrtc/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 166
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v3, Landroid/util/Range;

    iget-object v4, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 167
    invoke-static {v4}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v4

    iget-object v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v4, v4, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$1300(Lorg/webrtc/Camera2Session;)I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 168
    invoke-static {v5}, Lorg/webrtc/Camera2Session;->access$800(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget-object v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;->framerate:Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v5, v5, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget-object v6, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v6}, Lorg/webrtc/Camera2Session;->access$1300(Lorg/webrtc/Camera2Session;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 166
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 169
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 169
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 171
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 172
    invoke-direct {p0, v0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 173
    invoke-direct {p0, v0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v2, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 175
    invoke-static {v2}, Lorg/webrtc/Camera2Session;->access$1000(Lorg/webrtc/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 177
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v2, Lorg/webrtc/Camera2Session$CameraCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/webrtc/Camera2Session$CameraCaptureCallback;-><init>(Lorg/webrtc/Camera2Session$1;)V

    iget-object v3, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-static {v3}, Lorg/webrtc/Camera2Session;->access$1200(Lorg/webrtc/Camera2Session;)Landroid/os/Handler;

    move-result-object v3

    .line 176
    invoke-virtual {p1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 183
    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$900(Lorg/webrtc/Camera2Session;)Lorg/webrtc/SurfaceTextureHelper;

    move-result-object p1

    new-instance v0, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/webrtc/Camera2Session$CaptureSessionCallback$$ExternalSyntheticLambda0;-><init>(Lorg/webrtc/Camera2Session$CaptureSessionCallback;)V

    invoke-virtual {p1, v0}, Lorg/webrtc/SurfaceTextureHelper;->startListening(Lorg/webrtc/VideoSink;)V

    const-string p1, "Camera device successfully started."

    .line 210
    invoke-static {v1, p1}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 211
    invoke-static {p1}, Lorg/webrtc/Camera2Session;->access$400(Lorg/webrtc/Camera2Session;)Lorg/webrtc/CameraSession$CreateSessionCallback;

    move-result-object p1

    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    invoke-interface {p1, p0}, Lorg/webrtc/CameraSession$CreateSessionCallback;->onDone(Lorg/webrtc/CameraSession;)V

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/webrtc/Camera2Session$CaptureSessionCallback;->this$0:Lorg/webrtc/Camera2Session;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to start capture request. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/webrtc/Camera2Session;->access$600(Lorg/webrtc/Camera2Session;Ljava/lang/String;)V

    return-void
.end method
