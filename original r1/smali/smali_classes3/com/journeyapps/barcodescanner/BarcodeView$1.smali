.class Lcom/journeyapps/barcodescanner/BarcodeView$1;
.super Ljava/lang/Object;
.source "BarcodeView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/BarcodeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/journeyapps/barcodescanner/BarcodeView;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V
    .locals 0

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_succeeded:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/journeyapps/barcodescanner/BarcodeResult;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 51
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$100(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v0

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 52
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->barcodeResult(Lcom/journeyapps/barcodescanner/BarcodeResult;)V

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 53
    invoke-static {p1}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$100(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object p1

    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->SINGLE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 54
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->stopDecoding()V

    :cond_0
    return v2

    .line 59
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_decode_failed:I

    if-ne v0, v1, :cond_2

    return v2

    .line 62
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/google/zxing/client/android/R$id;->zxing_possible_result_points:I

    if-ne v0, v1, :cond_4

    .line 64
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 65
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$100(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    move-result-object v0

    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;->NONE:Lcom/journeyapps/barcodescanner/BarcodeView$DecodeMode;

    if-eq v0, v1, :cond_3

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView$1;->this$0:Lcom/journeyapps/barcodescanner/BarcodeView;

    .line 66
    invoke-static {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->access$000(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeCallback;->possibleResultPoints(Ljava/util/List;)V

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
