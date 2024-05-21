.class public Lcom/journeyapps/barcodescanner/camera/CameraInstance;
.super Ljava/lang/Object;
.source "CameraInstance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraInstance"


# instance fields
.field private cameraClosed:Z

.field private cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

.field private cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

.field private cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

.field private closer:Ljava/lang/Runnable;

.field private configure:Ljava/lang/Runnable;

.field private displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

.field private mainHandler:Landroid/os/Handler;

.field private open:Z

.field private opener:Ljava/lang/Runnable;

.field private previewStarter:Ljava/lang/Runnable;

.field private readyHandler:Landroid/os/Handler;

.field private surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 30
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 195
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 40
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 42
    invoke-static {}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->getInstance()Lcom/journeyapps/barcodescanner/camera/CameraThread;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 43
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraManager;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 44
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    .line 45
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/journeyapps/barcodescanner/camera/CameraManager;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    .line 30
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    invoke-direct {v0}, Lcom/journeyapps/barcodescanner/camera/CameraSettings;-><init>()V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    .line 195
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 224
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;

    invoke-direct {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$4;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 54
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Ljava/lang/Exception;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->notifyError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$300(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    return p1
.end method

.method static synthetic access$700(Lcom/journeyapps/barcodescanner/camera/CameraInstance;)Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object p0
.end method

.method private getPreviewSize()Lcom/journeyapps/barcodescanner/Size;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 102
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getPreviewSize()Lcom/journeyapps/barcodescanner/Size;

    move-result-object p0

    return-object p0
.end method

.method private notifyError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    .line 259
    sget v0, Lcom/google/zxing/client/android/R$id;->zxing_camera_error:I

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private validateOpen()V
    .locals 1

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz p0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "CameraInstance is not open"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 2

    .line 151
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 154
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda0;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    .line 159
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->closer:Ljava/lang/Runnable;

    .line 162
    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    return-void
.end method

.method public configureCamera()V
    .locals 1

    .line 124
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 125
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->configure:Ljava/lang/Runnable;

    .line 127
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getCameraManager()Lcom/journeyapps/barcodescanner/camera/CameraManager;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    return-object p0
.end method

.method public getCameraRotation()I
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 111
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->getCameraRotation()I

    move-result p0

    return p0
.end method

.method public getCameraSettings()Lcom/journeyapps/barcodescanner/camera/CameraSettings;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    return-object p0
.end method

.method protected getCameraThread()Lcom/journeyapps/barcodescanner/camera/CameraThread;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    return-object p0
.end method

.method public getDisplayConfiguration()Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    return-object p0
.end method

.method protected getSurface()Lcom/journeyapps/barcodescanner/camera/CameraSurface;
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-object p0
.end method

.method public isCameraClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    return p0
.end method

.method public isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    return p0
.end method

.method synthetic lambda$changeCameraParameters$1$com-journeyapps-barcodescanner-camera-CameraInstance(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 154
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->changeCameraParameters(Lcom/journeyapps/barcodescanner/camera/CameraParametersCallback;)V

    return-void
.end method

.method synthetic lambda$requestPreview$2$com-journeyapps-barcodescanner-camera-CameraInstance(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 185
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->requestPreviewFrame(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    return-void
.end method

.method synthetic lambda$requestPreview$3$com-journeyapps-barcodescanner-camera-CameraInstance(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    .line 0
    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->TAG:Ljava/lang/String;

    const-string p1, "Camera is closed, not requesting preview"

    .line 181
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 185
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda2;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$setTorch$0$com-journeyapps-barcodescanner-camera-CameraInstance(Z)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 141
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setTorch(Z)V

    return-void
.end method

.method public open()V
    .locals 1

    .line 115
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraClosed:Z

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->opener:Ljava/lang/Runnable;

    .line 120
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->incrementAndEnqueue(Ljava/lang/Runnable;)V

    return-void
.end method

.method public requestPreview(Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->mainHandler:Landroid/os/Handler;

    .line 179
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda3;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Lcom/journeyapps/barcodescanner/camera/PreviewCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V
    .locals 1

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraSettings:Lcom/journeyapps/barcodescanner/camera/CameraSettings;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 92
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setCameraSettings(Lcom/journeyapps/barcodescanner/camera/CameraSettings;)V

    :cond_0
    return-void
.end method

.method public setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->displayConfiguration:Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraManager:Lcom/journeyapps/barcodescanner/camera/CameraManager;

    .line 61
    invoke-virtual {p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraManager;->setDisplayConfiguration(Lcom/journeyapps/barcodescanner/camera/DisplayConfiguration;)V

    return-void
.end method

.method public setReadyHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->readyHandler:Landroid/os/Handler;

    return-void
.end method

.method public setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->surface:Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 73
    new-instance v0, Lcom/journeyapps/barcodescanner/camera/CameraSurface;

    invoke-direct {v0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraSurface;-><init>(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p0, v0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->setSurface(Lcom/journeyapps/barcodescanner/camera/CameraSurface;)V

    return-void
.end method

.method public setTorch(Z)V
    .locals 2

    .line 138
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    iget-boolean v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->open:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    .line 141
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/camera/CameraInstance$$ExternalSyntheticLambda1;-><init>(Lcom/journeyapps/barcodescanner/camera/CameraInstance;Z)V

    invoke-virtual {v0, v1}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 131
    invoke-static {}, Lcom/journeyapps/barcodescanner/Util;->validateMainThread()V

    .line 132
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->validateOpen()V

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->cameraThread:Lcom/journeyapps/barcodescanner/camera/CameraThread;

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/camera/CameraInstance;->previewStarter:Ljava/lang/Runnable;

    .line 134
    invoke-virtual {v0, p0}, Lcom/journeyapps/barcodescanner/camera/CameraThread;->enqueue(Ljava/lang/Runnable;)V

    return-void
.end method
