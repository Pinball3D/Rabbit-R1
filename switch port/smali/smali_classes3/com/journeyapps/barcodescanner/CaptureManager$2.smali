.class Lcom/journeyapps/barcodescanner/CaptureManager$2;
.super Ljava/lang/Object;
.source "CaptureManager.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CaptureManager;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CaptureManager;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 116
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$400(Lcom/journeyapps/barcodescanner/CaptureManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-static {}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera closed; finishing activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 118
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$600(Lcom/journeyapps/barcodescanner/CaptureManager;)V

    :cond_0
    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CaptureManager$2;->this$0:Lcom/journeyapps/barcodescanner/CaptureManager;

    .line 110
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->access$300(Lcom/journeyapps/barcodescanner/CaptureManager;)Landroid/app/Activity;

    move-result-object p1

    sget v0, Lcom/google/zxing/client/android/R$string;->zxing_msg_camera_framework_bug:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/CaptureManager;->displayFrameworkBugMessageAndExit(Ljava/lang/String;)V

    return-void
.end method

.method public previewSized()V
    .locals 0

    return-void
.end method

.method public previewStarted()V
    .locals 0

    return-void
.end method

.method public previewStopped()V
    .locals 0

    return-void
.end method
