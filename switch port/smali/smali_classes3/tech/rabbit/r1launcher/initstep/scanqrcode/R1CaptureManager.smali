.class public final Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;
.super Lcom/journeyapps/barcodescanner/CaptureManager;
.source "R1CaptureManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0012\u0010\r\u001a\u00020\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;",
        "Lcom/journeyapps/barcodescanner/CaptureManager;",
        "activity",
        "Landroid/app/Activity;",
        "barcodeView",
        "Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;",
        "(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "finish",
        "",
        "result",
        "Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;",
        "returnResult",
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
.field private final activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "barcodeView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/CaptureManager;-><init>(Landroid/app/Activity;Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)V

    iput-object p1, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final finish(Ltech/rabbit/r1launcher/initstep/model/ScanQrCodeResult;)V
    .locals 3

    if-nez p1, :cond_0

    .line 24
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/CaptureManager;->returnResultTimeout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->activity:Landroid/app/Activity;

    .line 28
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "EXTRA_SCAN_QR_CODE_RESULT"

    .line 30
    check-cast p1, Ljava/io/Serializable;

    .line 28
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->closeAndFinish()V

    :goto_0
    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method protected returnResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 1

    iget-object p0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/R1CaptureManager;->activity:Landroid/app/Activity;

    .line 16
    instance-of v0, p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;

    if-eqz v0, :cond_0

    .line 17
    check-cast p0, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;

    invoke-interface {p0, p1}, Ltech/rabbit/r1launcher/initstep/scanqrcode/ScanInterface;->onScanResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    :cond_0
    return-void
.end method
