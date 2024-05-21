.class public Lcom/journeyapps/barcodescanner/ScanOptions;
.super Ljava/lang/Object;
.source "ScanOptions.java"


# static fields
.field public static final ALL_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_128:Ljava/lang/String; = "CODE_128"

.field public static final CODE_39:Ljava/lang/String; = "CODE_39"

.field public static final CODE_93:Ljava/lang/String; = "CODE_93"

.field public static final DATA_MATRIX:Ljava/lang/String; = "DATA_MATRIX"

.field public static final EAN_13:Ljava/lang/String; = "EAN_13"

.field public static final EAN_8:Ljava/lang/String; = "EAN_8"

.field public static final ITF:Ljava/lang/String; = "ITF"

.field public static final ONE_D_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PDF_417:Ljava/lang/String; = "PDF_417"

.field public static final PRODUCT_CODE_TYPES:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final QR_CODE:Ljava/lang/String; = "QR_CODE"

.field public static final RSS_14:Ljava/lang/String; = "RSS_14"

.field public static final RSS_EXPANDED:Ljava/lang/String; = "RSS_EXPANDED"

.field public static final UPC_A:Ljava/lang/String; = "UPC_A"

.field public static final UPC_E:Ljava/lang/String; = "UPC_E"


# instance fields
.field private captureActivity:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private desiredBarcodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final moreExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "EAN_13"

    const-string v1, "RSS_14"

    const-string v2, "UPC_A"

    const-string v3, "UPC_E"

    const-string v4, "EAN_8"

    .line 44
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->PRODUCT_CODE_TYPES:Ljava/util/Collection;

    const-string v1, "UPC_A"

    const-string v2, "UPC_E"

    const-string v3, "EAN_8"

    const-string v4, "EAN_13"

    const-string v5, "RSS_14"

    const-string v6, "CODE_39"

    const-string v7, "CODE_93"

    const-string v8, "CODE_128"

    const-string v9, "ITF"

    const-string v10, "RSS_14"

    const-string v11, "RSS_EXPANDED"

    .line 45
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->list([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->ONE_D_CODE_TYPES:Ljava/util/Collection;

    const/4 v0, 0x0

    sput-object v0, Lcom/journeyapps/barcodescanner/ScanOptions;->ALL_CODE_TYPES:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    return-void
.end method

.method private attachMoreExtras(Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 229
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 231
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 233
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 234
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 235
    :cond_0
    instance-of v2, v0, Ljava/lang/Long;

    if-eqz v2, :cond_1

    .line 236
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 237
    :cond_1
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 238
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 239
    :cond_2
    instance-of v2, v0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 240
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 241
    :cond_3
    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 242
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 243
    :cond_4
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_5

    .line 244
    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0

    .line 245
    :cond_5
    instance-of v2, v0, [I

    if-eqz v2, :cond_6

    .line 246
    check-cast v0, [I

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_0

    .line 247
    :cond_6
    instance-of v2, v0, [J

    if-eqz v2, :cond_7

    .line 248
    check-cast v0, [J

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto :goto_0

    .line 249
    :cond_7
    instance-of v2, v0, [Z

    if-eqz v2, :cond_8

    .line 250
    check-cast v0, [Z

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    goto :goto_0

    .line 251
    :cond_8
    instance-of v2, v0, [D

    if-eqz v2, :cond_9

    .line 252
    check-cast v0, [D

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    goto :goto_0

    .line 253
    :cond_9
    instance-of v2, v0, [F

    if-eqz v2, :cond_a

    .line 254
    check-cast v0, [F

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0

    .line 255
    :cond_a
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 256
    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 258
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method private static varargs list([Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    .line 90
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public createScanIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ScanOptions;->getCaptureActivity()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.google.zxing.client.android.SCAN"

    .line 203
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    if-eqz p1, :cond_2

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    .line 209
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    .line 211
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "SCAN_FORMATS"

    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const/high16 p1, 0x4000000

    .line 218
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x80000

    .line 219
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    invoke-direct {p0, v0}, Lcom/journeyapps/barcodescanner/ScanOptions;->attachMoreExtras(Landroid/content/Intent;)V

    return-object v0
.end method

.method public getCaptureActivity()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/ScanOptions;->getDefaultCaptureActivity()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    return-object p0
.end method

.method protected getDefaultCaptureActivity()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 59
    const-class p0, Lcom/journeyapps/barcodescanner/CaptureActivity;

    return-object p0
.end method

.method public getMoreExtras()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->moreExtras:Ljava/util/Map;

    return-object p0
.end method

.method public setBarcodeImageEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    const-string v0, "BARCODE_IMAGE_ENABLED"

    .line 159
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    return-object p0
.end method

.method public setBeepEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    const-string v0, "BEEP_ENABLED"

    .line 148
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    return-object p0
.end method

.method public setCameraId(I)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    if-ltz p1, :cond_0

    const-string v0, "SCAN_CAMERA_ID"

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    :cond_0
    return-object p0
.end method

.method public setCaptureActivity(Ljava/lang/Class;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/journeyapps/barcodescanner/ScanOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->captureActivity:Ljava/lang/Class;

    return-object p0
.end method

.method public setDesiredBarcodeFormats(Ljava/util/Collection;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/journeyapps/barcodescanner/ScanOptions;"
        }
    .end annotation

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public varargs setDesiredBarcodeFormats([Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 0

    .line 181
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ScanOptions;->desiredBarcodeFormats:Ljava/util/Collection;

    return-object p0
.end method

.method public setOrientationLocked(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    const-string v0, "SCAN_ORIENTATION_LOCKED"

    .line 112
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    return-object p0
.end method

.method public final setPrompt(Ljava/lang/String;)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "PROMPT_MESSAGE"

    .line 101
    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    :cond_0
    return-object p0
.end method

.method public setTimeout(J)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    const-string v0, "TIMEOUT"

    .line 192
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    return-object p0
.end method

.method public setTorchEnabled(Z)Lcom/journeyapps/barcodescanner/ScanOptions;
    .locals 1

    const-string v0, "TORCH_ENABLED"

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/journeyapps/barcodescanner/ScanOptions;->addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/journeyapps/barcodescanner/ScanOptions;

    return-object p0
.end method
