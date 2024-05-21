.class public final Ltech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CameraManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/camera/CameraManager;->createCameraPreviewSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "tech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1",
        "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
        "onConfigureFailed",
        "",
        "session",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "onConfigured",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1;->$captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 166
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    const-string p0, "session"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-static {p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$setCameraCaptureSession$p(Landroid/hardware/camera2/CameraCaptureSession;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1;->$captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 169
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void
.end method
