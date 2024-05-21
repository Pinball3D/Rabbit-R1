.class public final Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltech/rabbit/r1launcher/camera/CameraManager;->takePictureIfOpened(Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "tech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1",
        "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
        "onCaptureCompleted",
        "",
        "session",
        "Landroid/hardware/camera2/CameraCaptureSession;",
        "request",
        "Landroid/hardware/camera2/CaptureRequest;",
        "result",
        "Landroid/hardware/camera2/TotalCaptureResult;",
        "onCaptureFailed",
        "failure",
        "Landroid/hardware/camera2/CaptureFailure;",
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


# instance fields
.field final synthetic $callback:Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;


# direct methods
.method constructor <init>(Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;)V
    .locals 0

    iput-object p1, p0, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;->$callback:Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;

    .line 215
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "result"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$getImageReader$p()Landroid/media/ImageReader;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;->$callback:Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;

    const-string p1, ""

    .line 224
    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;->onResult(Ljava/lang/String;)V

    return-void

    .line 227
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object p2

    const/4 p3, 0x0

    aget-object p2, p2, p3

    invoke-virtual {p2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 228
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v1, v0, [B

    .line 229
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 230
    invoke-static {v1, p3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 231
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 232
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 233
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/16 v2, 0x2d0

    const/16 v3, 0x438

    if-ne v0, v3, :cond_1

    if-ne v1, v2, :cond_1

    .line 234
    invoke-static {}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$isFront$p()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 237
    invoke-static {}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$isFront$p()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    int-to-float v1, v1

    mul-float/2addr v3, v1

    invoke-static {}, Ltech/rabbit/r1launcher/camera/CameraManager;->access$isFront$p()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    int-to-float v1, v2

    mul-float/2addr v0, v1

    invoke-virtual {v7, v3, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    :cond_4
    const/high16 v0, 0x42b40000    # 90.0f

    .line 239
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x438

    const/16 v6, 0x2d0

    const/4 v8, 0x1

    move-object v2, p2

    .line 240
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    .line 242
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 243
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    move-object v3, p2

    check-cast v3, Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 244
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v1, "toByteArray(...)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data:image/jpeg;base64,"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, p3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 246
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 247
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;->$callback:Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;

    .line 248
    invoke-interface {p0, p2}, Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    const-string v0, "session"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "failure"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/camera/CameraManager$takePictureIfOpened$1;->$callback:Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;

    const-string p1, ""

    .line 256
    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/camera/CameraManager$TakePictureCallback;->onResult(Ljava/lang/String;)V

    return-void
.end method
