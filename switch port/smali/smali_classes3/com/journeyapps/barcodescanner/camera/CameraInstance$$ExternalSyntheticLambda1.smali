.class public final synthetic Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iput-boolean p2, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;->f$0:Lcom/journeyapps/barcodescanner/camera/CameraInstance;

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->lambda$setTorch$0$com-journeyapps-barcodescanner-camera-CameraInstance(Z)V

    return-void
.end method
