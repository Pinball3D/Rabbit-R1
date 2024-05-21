.class Lcom/journeyapps/barcodescanner/CameraPreview$4;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/RotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/CameraPreview;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRotationChanged$0$com-journeyapps-barcodescanner-CameraPreview$4()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 223
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$600(Lcom/journeyapps/barcodescanner/CameraPreview;)V

    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 223
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$500(Lcom/journeyapps/barcodescanner/CameraPreview;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/journeyapps/barcodescanner/CameraPreview$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4$$ExternalSyntheticLambda0;-><init>(Lcom/journeyapps/barcodescanner/CameraPreview$4;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
