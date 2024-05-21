.class public Lcom/journeyapps/barcodescanner/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    }
.end annotation


# instance fields
.field private autoFocusEnabled:Z

.field private autoTorchEnabled:Z

.field private barcodeSceneModeEnabled:Z

.field private continuousFocusEnabled:Z

.field private exposureEnabled:Z

.field private focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

.field private meteringEnabled:Z

.field private requestedCameraId:I

.field private scanInverted:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    .line 17
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method


# virtual methods
.method public getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-object p0
.end method

.method public getRequestedCameraId()I
    .locals 0

    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return p0
.end method

.method public isAutoFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    return p0
.end method

.method public isAutoTorchEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    return p0
.end method

.method public isBarcodeSceneModeEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    return p0
.end method

.method public isContinuousFocusEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    return p0
.end method

.method public isExposureEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    return p0
.end method

.method public isMeteringEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    return p0
.end method

.method public isScanInverted()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    return p0
.end method

.method public setAutoFocusEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    if-eqz v0, :cond_0

    .line 109
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 111
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    :goto_0
    return-void
.end method

.method public setAutoTorchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoTorchEnabled:Z

    return-void
.end method

.method public setBarcodeSceneModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->barcodeSceneModeEnabled:Z

    return-void
.end method

.method public setContinuousFocusEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->continuousFocusEnabled:Z

    if-eqz p1, :cond_0

    .line 130
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->CONTINUOUS:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->autoFocusEnabled:Z

    if-eqz p1, :cond_1

    .line 132
    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;->AUTO:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    :goto_0
    return-void
.end method

.method public setExposureEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->exposureEnabled:Z

    return-void
.end method

.method public setFocusMode(Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->focusMode:Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    return-void
.end method

.method public setMeteringEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->meteringEnabled:Z

    return-void
.end method

.method public setRequestedCameraId(I)V
    .locals 0

    iput p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->requestedCameraId:I

    return-void
.end method

.method public setScanInverted(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->scanInverted:Z

    return-void
.end method
