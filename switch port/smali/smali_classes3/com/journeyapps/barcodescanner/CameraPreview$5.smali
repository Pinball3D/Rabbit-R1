.class Lcom/journeyapps/barcodescanner/CameraPreview$5;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;


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

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cameraClosed()V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 355
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$700(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 356
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->cameraClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public cameraError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 348
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$700(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 349
    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->cameraError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public previewSized()V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 326
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$700(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 327
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->previewSized()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public previewStarted()V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 333
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$700(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 334
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->previewStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public previewStopped()V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/CameraPreview$5;->this$0:Lcom/journeyapps/barcodescanner/CameraPreview;

    .line 341
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/CameraPreview;->access$700(Lcom/journeyapps/barcodescanner/CameraPreview;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;

    .line 342
    invoke-interface {v0}, Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;->previewStopped()V

    goto :goto_0

    :cond_0
    return-void
.end method
