.class public Lorg/webrtc/Camera2Capturer;
.super Lorg/webrtc/CameraCapturer;
.source "Camera2Capturer.java"


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 1

    .line 24
    new-instance v0, Lorg/webrtc/Camera2Enumerator;

    invoke-direct {v0, p1}, Lorg/webrtc/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lorg/webrtc/CameraCapturer;-><init>(Ljava/lang/String;Lorg/webrtc/CameraVideoCapturer$CameraEventsHandler;Lorg/webrtc/CameraEnumerator;)V

    iput-object p1, p0, Lorg/webrtc/Camera2Capturer;->context:Landroid/content/Context;

    const-string p2, "camera"

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lorg/webrtc/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public bridge synthetic changeCaptureFormat(III)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->changeCaptureFormat(III)V

    return-void
.end method

.method protected createCameraSession(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 9

    move-object v0, p0

    iget-object v3, v0, Lorg/webrtc/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 35
    invoke-static/range {v0 .. v8}, Lorg/webrtc/Camera2Session;->create(Lorg/webrtc/CameraSession$CreateSessionCallback;Lorg/webrtc/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lorg/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method

.method public bridge synthetic dispose()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/webrtc/CameraCapturer;->dispose()V

    return-void
.end method

.method public bridge synthetic initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->initialize(Lorg/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lorg/webrtc/CapturerObserver;)V

    return-void
.end method

.method public bridge synthetic isScreencast()Z
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/webrtc/CameraCapturer;->isScreencast()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic printStackTrace()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/webrtc/CameraCapturer;->printStackTrace()V

    return-void
.end method

.method public bridge synthetic startCapture(III)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2, p3}, Lorg/webrtc/CameraCapturer;->startCapture(III)V

    return-void
.end method

.method public bridge synthetic stopCapture()V
    .locals 0

    .line 18
    invoke-super {p0}, Lorg/webrtc/CameraCapturer;->stopCapture()V

    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lorg/webrtc/CameraCapturer;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method public bridge synthetic switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-super {p0, p1, p2}, Lorg/webrtc/CameraCapturer;->switchCamera(Lorg/webrtc/CameraVideoCapturer$CameraSwitchHandler;Ljava/lang/String;)V

    return-void
.end method
