.class public final Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;
.super Landroid/app/Activity;
.source "ScanQrCodeActivity.kt"

# interfaces
.implements Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScanQrCodeActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScanQrCodeActivity.kt\ntech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,189:1\n329#2,2:190\n331#2,2:200\n329#2,2:202\n331#2,2:212\n142#3,8:192\n142#3,8:204\n*S KotlinDebug\n*F\n+ 1 ScanQrCodeActivity.kt\ntech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity\n*L\n98#1:190,2\n98#1:200,2\n105#1:202,2\n105#1:212,2\n99#1:192,8\n106#1:204,8\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0082@\u00a2\u0006\u0002\u0010\u000eJ\u0008\u0010\u000f\u001a\u00020\u0005H\u0002J\u0012\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0014J\u0008\u0010\u0019\u001a\u00020\u0016H\u0014J\u001a\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u001a\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0016J\u0008\u0010 \u001a\u00020\u0016H\u0014J-\u0010!\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u001c2\u000e\u0010#\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010%0$2\u0006\u0010&\u001a\u00020\'H\u0016\u00a2\u0006\u0002\u0010(J\u0008\u0010)\u001a\u00020\u0016H\u0014J\u0012\u0010*\u001a\u00020\u00162\u0008\u0010+\u001a\u0004\u0018\u00010,H\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;",
        "Landroid/app/Activity;",
        "Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;",
        "()V",
        "barcodeScannerView",
        "Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;",
        "capture",
        "Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;",
        "tvTip",
        "Landroid/widget/TextView;",
        "fetchLinkAccount",
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
        "url",
        "Lokhttp3/HttpUrl;",
        "(Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "initializeContent",
        "isNoNetworkException",
        "",
        "throwable",
        "",
        "isTimeoutException",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroy",
        "onKeyDown",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onKeyUp",
        "onPause",
        "onRequestPermissionsResult",
        "requestCode",
        "permissions",
        "",
        "",
        "grantResults",
        "",
        "(I[Ljava/lang/String;[I)V",
        "onResume",
        "onScanResult",
        "rawResult",
        "Lcom/journeyapps/barcodescanner/BarcodeResult;",
        "app_productionEnvRelease"
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
.field public static final $stable:I = 0x8


# instance fields
.field private barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

.field private capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

.field private tvTip:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static final synthetic access$fetchLinkAccount(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->fetchLinkAccount(Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCapture$p(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;)Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;
    .locals 0

    .line 40
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    return-object p0
.end method

.method public static final synthetic access$isNoNetworkException(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Ljava/lang/Throwable;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->isNoNetworkException(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isTimeoutException(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Ljava/lang/Throwable;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->isTimeoutException(Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private final fetchLinkAccount(Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 146
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$fetchLinkAccount$2;-><init>(Lokhttp3/HttpUrl;Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final initializeContent()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
    .locals 1

    .line 48
    sget v0, Ltech/rabbit/r1launcher/R$layout;->activity_scan_qrcode:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->setContentView(I)V

    .line 49
    sget v0, Ltech/rabbit/r1launcher/R$id;->zxing_barcode_scanner:I

    invoke-virtual {p0, v0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    return-object p0
.end method

.method private final isNoNetworkException(Ljava/lang/Throwable;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 186
    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-nez p0, :cond_0

    .line 187
    instance-of p0, p1, Ljava/net/SocketException;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isTimeoutException(Ljava/lang/Throwable;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 180
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-nez p0, :cond_0

    .line 181
    instance-of p0, p1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-direct {p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->initializeContent()Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 56
    new-instance v0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "barcodeScannerView"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    .line 57
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->initializeFromIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez p1, :cond_1

    const-string p1, "capture"

    .line 58
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    invoke-virtual {p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->decode()V

    .line 59
    sget-object p1, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ltech/rabbit/r1launcher/utils/CameraController;->isNeedRotate(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 60
    sget-object p1, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {p1}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToBack()V

    .line 63
    :cond_2
    sget p1, Ltech/rabbit/r1launcher/R$id;->tv_tip:I

    invoke-virtual {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "findViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_3

    const-string p0, "tvTip"

    .line 64
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p1

    :goto_0
    sget p0, Ltech/rabbit/r1launcher/R$string;->text_scan_qr_code:I

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez v0, :cond_0

    const-string v0, "capture"

    .line 78
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->onDestroy()V

    .line 79
    sget-object v0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Ltech/rabbit/r1launcher/utils/CameraController;->isNeedRotate(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Ltech/rabbit/r1launcher/utils/CameraController;->INSTANCE:Ltech/rabbit/r1launcher/utils/CameraController;

    invoke-virtual {v0}, Ltech/rabbit/r1launcher/utils/CameraController;->rotateToPrivacy()V

    .line 82
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->barcodeScannerView:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    if-nez v0, :cond_0

    const-string v0, "barcodeScannerView"

    .line 117
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 p2, 0x14

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const/4 v1, 0x0

    const-string v2, "tvTip"

    const/4 v3, 0x0

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_0

    .line 95
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_0
    sget p2, Ltech/rabbit/r1launcher/R$drawable;->shape_ff4d00_r10:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_1

    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_1
    sget p2, Ltech/rabbit/r1launcher/R$string;->text_cancel:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_2

    .line 97
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_2
    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_3

    .line 98
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, p0

    :goto_0
    check-cast v3, Landroid/view/View;

    .line 190
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 191
    move-object p1, p0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 193
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 194
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 195
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 198
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 200
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 190
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    const/16 p2, 0x13

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_6

    .line 102
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_6
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_7

    .line 103
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_7
    sget p2, Ltech/rabbit/r1launcher/R$string;->text_scan_qr_code:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_8

    .line 104
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_8
    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p0, :cond_9

    .line 105
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    move-object v3, p0

    :goto_1
    check-cast v3, Landroid/view/View;

    .line 202
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_a

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$LayoutParams;

    .line 203
    move-object p1, p0

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 106
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 p2, 0x12

    invoke-static {p2}, Ltech/rabbit/r1launcher/initstep/utils/UiExtensionsKt;->getDp(I)I

    move-result p2

    .line 205
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 206
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 207
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 210
    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 212
    invoke-virtual {v3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 202
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_b
    sget-object p2, Ltech/rabbit/r1launcher/initstep/utils/Constants;->INSTANCE:Ltech/rabbit/r1launcher/initstep/utils/Constants;

    invoke-virtual {p2, p1}, Ltech/rabbit/r1launcher/initstep/utils/Constants;->isSideButtonKeyCode(I)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    if-nez p1, :cond_c

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v3

    :cond_c
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_d

    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_d
    if-eqz v3, :cond_e

    iget p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-nez p1, :cond_e

    .line 109
    invoke-virtual {p0, v1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->finish()V

    :cond_e
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez v0, :cond_0

    const-string v0, "capture"

    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->onPause()V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez p0, :cond_0

    const-string p0, "capture"

    .line 90
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez p0, :cond_0

    const-string p0, "capture"

    .line 69
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->onResume()V

    return-void
.end method

.method public onScanResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 9

    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->tvTip:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "tvTip"

    .line 122
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    sget v2, Ltech/rabbit/r1launcher/R$string;->text_linking:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Lcom/journeyapps/barcodescanner/BarcodeResult;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 125
    :goto_0
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, "capture"

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_3

    .line 130
    :cond_2
    sget-object v0, Lokhttp3/HttpUrl;->Companion:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Companion;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "https"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 136
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;

    invoke-direct {v0, p0, p1, v1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity$onScanResult$1;-><init>(Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;Lokhttp3/HttpUrl;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void

    :cond_4
    :goto_1
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez p0, :cond_5

    .line 132
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v1, p0

    :goto_2
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->IllegalQrCodeError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->finish(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;)V

    return-void

    :cond_6
    :goto_3
    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanQrCodeActivity;->capture:Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;

    if-nez p0, :cond_7

    .line 126
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    move-object v1, p0

    :goto_4
    new-instance p0, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;->IllegalQrCodeError:Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult$ErrorType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v1, p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->finish(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;)V

    return-void
.end method
