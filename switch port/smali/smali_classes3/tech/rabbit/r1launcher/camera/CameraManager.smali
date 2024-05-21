.class public final Ltech/rabbit/r1launcher/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001-B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0018\u001a\u00020\u0019H\u0007J\u0008\u0010\u001a\u001a\u00020\u0019H\u0003J\u0010\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000fH\u0003J\u001a\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eH\u0003J\u0008\u0010\u001f\u001a\u00020\u000fH\u0002J\u0010\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0017H\u0007J\u0016\u0010\"\u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u00172\u0006\u0010#\u001a\u00020$J\u0010\u0010%\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\u0004H\u0007J\u0010\u0010\'\u001a\u00020\u00192\u0006\u0010(\u001a\u00020)H\u0002J\u0010\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006."
    }
    d2 = {
        "Ltech/rabbit/r1launcher/camera/CameraManager;",
        "",
        "()V",
        "TAG",
        "",
        "cameraCaptureSession",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "cameraDevice",
        "Landroid/hardware/camera2/CameraDevice;",
        "dstHeight",
        "",
        "dstWidth",
        "imageReader",
        "Landroid/media/ImageReader;",
        "isFront",
        "",
        "needReopenCamera",
        "getNeedReopenCamera",
        "()Z",
        "setNeedReopenCamera",
        "(Z)V",
        "textureViewRef",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/TextureView;",
        "close",
        "",
        "createCameraPreviewSession",
        "flipTextureView",
        "flipTextureViewWithDelay",
        "delay",
        "",
        "isOpened",
        "open",
        "textureView",
        "openCamera",
        "cameraManager",
        "Landroid/hardware/camera2/CameraManager;",
        "rotateWithName",
        "name",
        "showImage",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "takePictureIfOpened",
        "callback",
        "Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;",
        "TakePictureCallback",
        "base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession; = null

.field private static cameraDevice:Landroid/hardware/camera2/CameraDevice; = null

.field private static final dstHeight:I = 0x2d0

.field private static final dstWidth:I = 0x438

.field private static imageReader:Landroid/media/ImageReader;

.field private static isFront:Z

.field private static volatile needReopenCamera:Z

.field private static textureViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/TextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1launcher/camera/CameraManager;

    invoke-direct {v0}, Ltech/rabbit/r1launcher/camera/CameraManager;-><init>()V

    sput-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->INSTANCE:Ltech/rabbit/r1launcher/camera/CameraManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$createCameraPreviewSession(Ltech/rabbit/r1launcher/camera/CameraManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->createCameraPreviewSession()V

    return-void
.end method

.method public static final synthetic access$flipTextureView(Ltech/rabbit/r1launcher/camera/CameraManager;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureView(Z)V

    return-void
.end method

.method public static final synthetic access$getImageReader$p()Landroid/media/ImageReader;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method public static final synthetic access$isFront$p()Z
    .locals 1

    sget-boolean v0, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    return v0
.end method

.method public static final synthetic access$setCameraCaptureSession$p(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method public static final synthetic access$setCameraDevice$p(Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method private final createCameraPreviewSession()V
    .locals 5

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    .line 162
    invoke-virtual {p0, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 163
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 164
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    const-string v2, "createCaptureRequest(...)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v2, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 166
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/Surface;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ltech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1;

    invoke-direct {v1, p0}, Ltech/rabbit/r1launcher/camera/CameraManager$createCameraPreviewSession$1;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const/4 p0, 0x0

    invoke-virtual {v2, v0, v1, p0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final flipTextureView(Z)V
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    sget-object p1, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 143
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, -0x40800000    # -1.0f

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleY(F)V

    goto :goto_0

    :cond_2
    sget-object p1, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    .line 145
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/TextureView;

    :cond_3
    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setScaleY(F)V

    :goto_0
    return-void
.end method

.method private final flipTextureViewWithDelay(ZJ)V
    .locals 1

    .line 151
    new-instance p0, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, p1, v0}, Ltech/rabbit/r1launcher/camera/CameraManager$flipTextureViewWithDelay$1;-><init>(JZLkotlin/coroutines/Continuation;)V

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x1

    invoke-static {v0, p0, p1, v0}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic flipTextureViewWithDelay$default(Ltech/rabbit/r1launcher/camera/CameraManager;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x320

    .line 150
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureViewWithDelay(ZJ)V

    return-void
.end method

.method private final isOpened()Z
    .locals 0

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final showImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 184
    new-instance p0, Landroid/widget/LinearLayout;

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 185
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 188
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    new-instance p1, Landroid/app/AlertDialog$Builder;

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u786e\u5b9a"

    .line 197
    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string p1, "\u53d6\u6d88"

    .line 198
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 199
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 200
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p0, :cond_0

    .line 110
    invoke-virtual {p0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_1
    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    :cond_2
    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public final getNeedReopenCamera()Z
    .locals 0

    sget-boolean p0, Ltech/rabbit/r1launcher/camera/CameraManager;->needReopenCamera:Z

    return p0
.end method

.method public final open(Landroid/view/TextureView;)V
    .locals 10

    const-string v0, "textureView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraManager"

    const-string p1, "camera in use, open failed."

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.camera2.CameraManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 58
    invoke-virtual {p0, p1, v0}, Ltech/rabbit/r1launcher/camera/CameraManager;->openCamera(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;)V

    .line 60
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 61
    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    const-string v0, "getCameraCharacteristics(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v0, 0x100

    const/16 v1, 0x438

    const/16 v2, 0x2d0

    const v3, 0x7fffffff

    if-eqz p0, :cond_3

    .line 66
    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    .line 67
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v4, p0

    move v5, v3

    move v6, v5

    :goto_0
    if-ge p1, v4, :cond_4

    aget-object v7, p0, p1

    .line 68
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    mul-int/2addr v8, v2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v9, v1

    if-ne v8, v9, :cond_2

    .line 69
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-gt v5, v8, :cond_1

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-le v6, v8, :cond_2

    :cond_1
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v8

    if-lt v8, v1, :cond_2

    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v8

    if-lt v8, v2, :cond_2

    .line 70
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v5

    .line 71
    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v6

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    move v6, v5

    :cond_4
    if-eq v6, v3, :cond_6

    if-ne v5, v3, :cond_5

    goto :goto_1

    :cond_5
    move v2, v5

    move v1, v6

    :cond_6
    :goto_1
    const/4 p0, 0x1

    .line 80
    invoke-static {v1, v2, v0, p0}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p0

    sput-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    return-void
.end method

.method public final openCamera(Landroid/view/TextureView;Landroid/hardware/camera2/CameraManager;)V
    .locals 2

    const-string v0, "textureView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cameraManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CAMERA"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CameraManager"

    const-string p1, "no camera permission, open failed."

    .line 85
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->textureViewRef:Ljava/lang/ref/WeakReference;

    sget-boolean p1, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    .line 89
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureView(Z)V

    .line 90
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aget-object p0, p0, p1

    .line 91
    new-instance p1, Ltech/rabbit/r1launcher/camera/CameraManager$openCamera$1;

    invoke-direct {p1}, Ltech/rabbit/r1launcher/camera/CameraManager$openCamera$1;-><init>()V

    check-cast p1, Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, p1, v0}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final rotateWithName(Ljava/lang/String;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "front"

    .line 125
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean p1, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    if-nez p1, :cond_1

    const/4 v1, 0x1

    sput-boolean v1, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 128
    invoke-static/range {v0 .. v5}, Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureViewWithDelay$default(Ltech/rabbit/r1launcher/camera/CameraManager;ZJILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "back"

    .line 131
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    sput-boolean v1, Ltech/rabbit/r1launcher/camera/CameraManager;->isFront:Z

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    .line 134
    invoke-static/range {v0 .. v5}, Ltech/rabbit/r1launcher/camera/CameraManager;->flipTextureViewWithDelay$default(Ltech/rabbit/r1launcher/camera/CameraManager;ZJILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setNeedReopenCamera(Z)V
    .locals 0

    sput-boolean p1, Ltech/rabbit/r1launcher/camera/CameraManager;->needReopenCamera:Z

    return-void
.end method

.method public final takePictureIfOpened(Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;)V
    .locals 2

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Ltech/rabbit/r1launcher/camera/CameraManager;->isOpened()Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    if-eqz p0, :cond_1

    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 210
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    const-string v0, "createCaptureRequest(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->imageReader:Landroid/media/ImageReader;

    .line 211
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    sget-object v0, Ltech/rabbit/r1launcher/camera/CameraManager;->cameraCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 213
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    .line 215
    new-instance v1, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;

    invoke-direct {v1, p1}, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;-><init>(Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;)V

    check-cast v1, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 p1, 0x0

    .line 213
    invoke-virtual {v0, p0, v1, p1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    return-void

    :cond_1
    :goto_0
    const-string p0, ""

    .line 206
    invoke-interface {p1, p0}, Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
