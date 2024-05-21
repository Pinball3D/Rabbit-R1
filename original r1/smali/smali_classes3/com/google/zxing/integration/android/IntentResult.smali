.class public final Lcom/google/zxing/integration/android/IntentResult;
.super Ljava/lang/Object;
.source "IntentResult.java"


# instance fields
.field private final barcodeImagePath:Ljava/lang/String;

.field private final contents:Ljava/lang/String;

.field private final errorCorrectionLevel:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;

.field private final orientation:Ljava/lang/Integer;

.field private final originalIntent:Landroid/content/Intent;

.field private final rawBytes:[B


# direct methods
.method constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    .line 37
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v7, p1

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/integration/android/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    iput-object p4, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getBarcodeImagePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    return-object p0
.end method

.method public getContents()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorCorrectionLevel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    return-object p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    return-object p0
.end method

.method public getOrientation()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    return-object p0
.end method

.method public getOriginalIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getRawBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/zxing/integration/android/IntentResult;->rawBytes:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    array-length v0, v0

    .line 112
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->formatName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nContents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/zxing/integration/android/IntentResult;->contents:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nRaw bytes: ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)\nOrientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentResult;->orientation:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nEC level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentResult;->errorCorrectionLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nBarcode image: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/integration/android/IntentResult;->barcodeImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nOriginal intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/google/zxing/integration/android/IntentResult;->originalIntent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
