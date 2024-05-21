.class Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;
.super Ljava/lang/Object;
.source "DecoratedBarcodeView.java"

# interfaces
.implements Lcom/journeyapps/barcodescanner/BarcodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedCallback"
.end annotation


# instance fields
.field private delegate:Lcom/journeyapps/barcodescanner/BarcodeCallback;

.field final synthetic this$0:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;


# direct methods
.method public constructor <init>(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;Lcom/journeyapps/barcodescanner/BarcodeCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->this$0:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->delegate:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    return-void
.end method


# virtual methods
.method public barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V
    .locals 0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->delegate:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 50
    invoke-interface {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    return-void
.end method

.method public possibleResultPoints(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/zxing/ResultPoint;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/ResultPoint;

    iget-object v2, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->this$0:Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 56
    invoke-static {v2}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->access$000(Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;)Lcom/journeyapps/barcodescanner/ViewfinderView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/journeyapps/barcodescanner/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView$WrappedCallback;->delegate:Lcom/journeyapps/barcodescanner/BarcodeCallback;

    .line 58
    invoke-interface {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->possibleResultPoints(Ljava/util/List;)V

    return-void
.end method
