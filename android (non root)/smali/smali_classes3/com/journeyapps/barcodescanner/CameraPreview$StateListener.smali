.class public interface abstract Lcom/journeyapps/barcodescanner/CameraPreview$StateListener;
.super Ljava/lang/Object;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateListener"
.end annotation


# virtual methods
.method public abstract cameraClosed()V
.end method

.method public abstract cameraError(Ljava/lang/Exception;)V
.end method

.method public abstract previewSized()V
.end method

.method public abstract previewStarted()V
.end method

.method public abstract previewStopped()V
.end method
