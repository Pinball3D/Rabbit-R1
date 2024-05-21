.class Lcom/journeyapps/barcodescanner/ViewfinderView$1;
.super Ljava/lang/Object;
.source "ViewfinderView.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/journeyapps/barcodescanner/ViewfinderView;->setCameraPreview(Lcom/journeyapps/barcodescanner/CameraPreview;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/ViewfinderView;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .locals 0

    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public previewSized()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 102
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->refreshSizes()V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView$1;->this$0:Lcom/journeyapps/barcodescanner/ViewfinderView;

    .line 103
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ViewfinderView;->invalidate()V

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
