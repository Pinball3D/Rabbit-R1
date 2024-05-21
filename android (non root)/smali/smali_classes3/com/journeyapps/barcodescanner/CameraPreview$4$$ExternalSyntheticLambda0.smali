.class public final synthetic Lcom/journeyapps/barcodescanner/CameraPreview$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/journeyapps/barcodescanner/CameraPreview$4;


# direct methods
.method public synthetic constructor <init>(Lcom/journeyapps/barcodescanner/CameraPreview$4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4$$ExternalSyntheticLambda0;->f$0:Lcom/journeyapps/barcodescanner/CameraPreview$4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$4$$ExternalSyntheticLambda0;->f$0:Lcom/journeyapps/barcodescanner/CameraPreview$4;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/CameraPreview$4;->lambda$onRotationChanged$0$com-journeyapps-barcodescanner-CameraPreview$4()V

    return-void
.end method
