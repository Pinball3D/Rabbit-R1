.class public final Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;
.super Ljava/lang/Object;
.source "CameraPreviewView.kt"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;-><init>(Landroid/content/Context;ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\'\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "tech/rabbit/r1launcher/platform_views/CameraPreviewView$1",
        "Landroid/view/TextureView$SurfaceTextureListener;",
        "onSurfaceTextureAvailable",
        "",
        "surface",
        "Landroid/graphics/SurfaceTexture;",
        "width",
        "",
        "height",
        "onSurfaceTextureDestroyed",
        "",
        "onSurfaceTextureSizeChanged",
        "onSurfaceTextureUpdated",
        "app_productionEnvRelease"
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
.field final synthetic this$0:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;->this$0:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p2, "surface"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object p1, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;->this$0:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;

    invoke-static {p0}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->access$getTextureView$p(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p1, p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->open(Landroid/view/TextureView;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-virtual {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p0, "surface"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    const-string v0, "surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object p1, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->getNeedReopenCamera()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;->this$0:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;

    .line 44
    invoke-static {p1}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->access$getTextureView$p(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    .line 45
    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    iget-object p0, p0, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView$1;->this$0:Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;

    invoke-static {p0}, Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;->access$getTextureView$p(Ltech/rabbit/r1launcher/platform_views/CameraPreviewView;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->openCamera(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;)V

    .line 46
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->setNeedReopenCamera(Z)V

    :cond_0
    return-void
.end method
