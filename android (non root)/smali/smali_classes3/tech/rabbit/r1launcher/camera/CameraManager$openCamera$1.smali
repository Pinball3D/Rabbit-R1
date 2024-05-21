.class public final Ltech/rabbit/r1launcher/camera/CameraManager$openCamera$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CameraManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/camera/CameraManager;->openCamera(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0018\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "tech/rabbit/r1launcher/camera/CameraManager$openCamera$1",
        "Landroid/hardware/camera2/CameraDevice$StateCallback;",
        "onDisconnected",
        "",
        "camera",
        "Landroid/hardware/camera2/CameraDevice;",
        "onError",
        "error",
        "",
        "onOpened",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    const-string p0, "camera"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 0

    const-string p0, "camera"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 103
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->setNeedReopenCamera(Z)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    const-string p0, "camera"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-static {p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$setCameraDevice$p(Landroid/hardware/camera2/CameraDevice;)V

    .line 94
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-static {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$createCameraPreviewSession(Ltech/rabbit/r1launcher/camera/CameraManager;)V

    return-void
.end method
