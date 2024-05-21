.class public final synthetic Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field public final synthetic f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;->f$1:Lcom/journeyapps/barcodescanner/camera/PreviewCallback;

    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$requestPreview$2$com-journeyapps-barcodescanner-camera-CameraInstance(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method
