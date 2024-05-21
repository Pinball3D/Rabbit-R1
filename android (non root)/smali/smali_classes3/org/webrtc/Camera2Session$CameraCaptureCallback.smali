.class Lorg/webrtc/Camera2Session$CameraCaptureCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CameraCaptureCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/webrtc/Camera2Session$1;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lorg/webrtc/Camera2Session$CameraCaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 266
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Capture failed: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Camera2Session"

    invoke-static {p1, p0}, Lorg/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
