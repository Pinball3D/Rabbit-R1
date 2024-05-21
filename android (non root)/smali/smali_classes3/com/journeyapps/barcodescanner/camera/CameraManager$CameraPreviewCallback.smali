.class final Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/camera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field private callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

.field private resolution:Lcom/journeyapps/barcodescanner/Size;

.field final synthetic this$0:Lcom/journeyapps/barcodescanner/camera/CameraManager;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->resolution:Lcom/journeyapps/barcodescanner/Size;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 102
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v6

    .line 103
    new-instance p2, Lcom/journeyapps/barcodescanner/SourceData;

    iget v4, v0, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget v5, v0, Lcom/journeyapps/barcodescanner/Size;->height:I

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getCameraRotation()I

    move-result v7

    move-object v2, p2

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/journeyapps/barcodescanner/SourceData;-><init>([BIIII)V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->this$0:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 105
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->access$000(Lcom/journeyapps/barcodescanner/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;

    move-result-object p0

    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    invoke-virtual {p2, p1}, Lcom/journeyapps/barcodescanner/SourceData;->setPreviewMirrored(Z)V

    .line 108
    :cond_0
    invoke-interface {v1, p2}, Lcom/journeyapps/barcodescanner/camera/PreviewCallback;->onPreview(Lcom/journeyapps/barcodescanner/SourceData;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "No preview data received"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Camera preview failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    invoke-interface {v1, p0}, Lcom/journeyapps/barcodescanner/camera/PreviewCallback;->onPreviewError(Ljava/lang/Exception;)V

    goto :goto_1

    .line 117
    :cond_2
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Got preview callback, but no handler or resolution available"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 120
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "No resolution available"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, p0}, Lcom/journeyapps/barcodescanner/camera/PreviewCallback;->onPreviewError(Ljava/lang/Exception;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->callback:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    return-void
.end method

.method public setResolution(Lcom/journeyapps/barcodescanner/Size;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->resolution:Lcom/journeyapps/barcodescanner/Size;

    return-void
.end method
