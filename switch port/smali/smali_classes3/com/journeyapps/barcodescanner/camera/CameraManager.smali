.class public final Lcom/journeyapps/barcodescanner/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManager"


# instance fields
.field private ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

.field private autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private cameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private final cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

.field private context:Landroid/content/Context;

.field private defaultParameters:Ljava/lang/String;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private previewSize:Lcom/journeyapps/barcodescanner/Size;

.field private previewing:Z

.field private requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

.field private rotationDegrees:I

.field private settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    const/4 v0, -0x1

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    .line 134
    new-instance p1, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/journeyapps/barcodescanner/camera/CameraManager;)Landroid/hardware/Camera$CameraInfo;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calculateDisplayRotation()I
    .locals 4

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 329
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x10e

    goto :goto_0

    :cond_1
    const/16 v2, 0xb4

    goto :goto_0

    :cond_2
    const/16 v2, 0x5a

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 347
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 348
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr p0, v2

    rem-int/lit16 p0, p0, 0x168

    rsub-int p0, p0, 0x168

    .line 349
    rem-int/lit16 p0, p0, 0x168

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 351
    iget p0, p0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr p0, v2

    add-int/lit16 p0, p0, 0x168

    rem-int/lit16 p0, p0, 0x168

    :goto_1
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera Display Orientation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 245
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->defaultParameters:Ljava/lang/String;

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List<",
            "Lcom/journeyapps/barcodescanner/Size;",
            ">;"
        }
    .end annotation

    .line 311
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    .line 314
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 316
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget v3, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, v3}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    .line 317
    new-instance v0, Lcom/journeyapps/barcodescanner/Size;

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    iget p0, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v2, p0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    .line 321
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 322
    new-instance v2, Lcom/journeyapps/barcodescanner/Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private setCameraDisplayOrientation(I)V
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 358
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method private setDesiredParameters(Z)V
    .locals 4

    .line 255
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getDefaultCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string p1, "Device error: no camera parameters are available. Proceeding without configuration."

    .line 259
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initial camera parameters: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const-string v2, "In camera config safe mode -- most settings will not be honored"

    .line 266
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 269
    invoke-virtual {v2}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getFocusMode()Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setFocus(Landroid/hardware/Camera$Parameters;Lcom/journeyapps/barcodescanner/camera/CameraSettings$FocusMode;Z)V

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 272
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 274
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isScanInverted()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setInvertColor(Landroid/hardware/Camera$Parameters;)V

    :cond_2
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 278
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isBarcodeSceneModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 279
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBarcodeSceneMode(Landroid/hardware/Camera$Parameters;)V

    :cond_3
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 282
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isMeteringEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 283
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setVideoStabilization(Landroid/hardware/Camera$Parameters;)V

    .line 284
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setFocusArea(Landroid/hardware/Camera$Parameters;)V

    .line 285
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setMetering(Landroid/hardware/Camera$Parameters;)V

    .line 290
    :cond_4
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_5

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    .line 294
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;->getBestPreviewSize(Ljava/util/List;Z)Lcom/journeyapps/barcodescanner/Size;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 296
    iget p1, p1, Lcom/journeyapps/barcodescanner/Size;->width:I

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    iget v2, v2, Lcom/journeyapps/barcodescanner/Size;->height:I

    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 299
    :goto_0
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "glass-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 302
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestPreviewFPS(Landroid/hardware/Camera$Parameters;)V

    .line 305
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Final camera parameters: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 307
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method private setParameters()V
    .locals 3

    .line 363
    :try_start_0
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->calculateDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    .line 364
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to set rotation."

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 369
    :try_start_1
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x1

    .line 373
    :try_start_2
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDesiredParameters(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "Camera rejected even safe-mode parameters! No configuration"

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 380
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestedPreviewSize:Lcom/journeyapps/barcodescanner/Size;

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    goto :goto_2

    .line 384
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/journeyapps/barcodescanner/Size;-><init>(II)V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    :goto_2
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 386
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setResolution(Lcom/journeyapps/barcodescanner/Size;)V

    return-void
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz p0, :cond_0

    .line 488
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;->changeCameraParameters(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to change camera parameters"

    .line 491
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    :cond_0
    return-void
.end method

.method public configure()V
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setParameters()V

    return-void

    .line 160
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Camera not open"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method public getCameraRotation()I
    .locals 0

    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    return p0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-object p0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object p0
.end method

.method public getNaturalPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    return-object p0
.end method

.method public getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 414
    :cond_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isCameraRotated()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    .line 415
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/Size;->rotate()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewSize:Lcom/journeyapps/barcodescanner/Size;

    return-object p0
.end method

.method public isCameraRotated()Z
    .locals 1

    iget p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->rotationDegrees:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    .line 232
    rem-int/lit16 p0, p0, 0xb4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 230
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Rotation not calculated yet. Call configure() first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isOpen()Z
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTorchOn()Z
    .locals 2

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 502
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 504
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v1, "on"

    .line 506
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "torch"

    .line 507
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public open()V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 141
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 146
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->getRequestedCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->getCameraId(I)I

    move-result v0

    .line 147
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 148
    invoke-static {v0, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    return-void

    .line 143
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to open camera"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 432
    invoke-virtual {v1, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 433
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_0
    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void
.end method

.method public setPreviewDisplay(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 173
    invoke-virtual {p1, p0}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;->setPreview(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setTorch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->isTorchOn()Z

    move-result v0

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 462
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 463
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setTorch(Landroid/hardware/Camera$Parameters;Z)V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 464
    invoke-virtual {v1}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;->isExposureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    invoke-static {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraConfigurationUtils;->setBestExposure(Landroid/hardware/Camera$Parameters;Z)V

    :cond_1
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 467
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    if-eqz p0, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/journeyapps/barcodescanner/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string v0, "Failed to set torch"

    .line 475
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 184
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    .line 186
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, v2}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;-><init>(Landroid/hardware/Camera;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    .line 187
    new-instance v0, Lcom/google/zxing/client/android/AmbientLightManager;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->settings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0, v1, p0, v2}, Lcom/google/zxing/client/android/AmbientLightManager;-><init>(Landroid/content/Context;Lcom/journeyapps/barcodescanner/camera/CameraManager;Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    .line 188
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->start()V

    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;->stop()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->autoFocusManager:Lcom/journeyapps/barcodescanner/camera/AutoFocusManager;

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0}, Lcom/google/zxing/client/android/AmbientLightManager;->stop()V

    iput-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->ambientLightManager:Lcom/google/zxing/client/android/AmbientLightManager;

    :cond_1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    if-eqz v2, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->cameraPreviewCallback:Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;

    .line 208
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraManager$CameraPreviewCallback;->setCallback(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraManager;->previewing:Z

    :cond_2
    return-void
.end method
