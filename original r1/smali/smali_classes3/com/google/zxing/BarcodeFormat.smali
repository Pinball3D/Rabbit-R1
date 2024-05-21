.class public final enum Lcom/google/zxing/BarcodeFormat;
.super Ljava/lang/Enum;
.source "BarcodeFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/BarcodeFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/BarcodeFormat;

.field public static final enum AZTEC:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODABAR:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_128:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_39:Lcom/google/zxing/BarcodeFormat;

.field public static final enum CODE_93:Lcom/google/zxing/BarcodeFormat;

.field public static final enum DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_13:Lcom/google/zxing/BarcodeFormat;

.field public static final enum EAN_8:Lcom/google/zxing/BarcodeFormat;

.field public static final enum ITF:Lcom/google/zxing/BarcodeFormat;

.field public static final enum MAXICODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum PDF_417:Lcom/google/zxing/BarcodeFormat;

.field public static final enum QR_CODE:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_14:Lcom/google/zxing/BarcodeFormat;

.field public static final enum RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_A:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_E:Lcom/google/zxing/BarcodeFormat;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 27
    new-instance v1, Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    const-string v2, "AZTEC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    .line 30
    new-instance v2, Lcom/google/zxing/BarcodeFormat;

    move-object v1, v2

    const-string v3, "CODABAR"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    .line 33
    new-instance v3, Lcom/google/zxing/BarcodeFormat;

    move-object v2, v3

    const-string v4, "CODE_39"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    .line 36
    new-instance v4, Lcom/google/zxing/BarcodeFormat;

    move-object v3, v4

    const-string v5, "CODE_93"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    .line 39
    new-instance v5, Lcom/google/zxing/BarcodeFormat;

    move-object v4, v5

    const-string v6, "CODE_128"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    .line 42
    new-instance v6, Lcom/google/zxing/BarcodeFormat;

    move-object v5, v6

    const-string v7, "DATA_MATRIX"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    .line 45
    new-instance v7, Lcom/google/zxing/BarcodeFormat;

    move-object v6, v7

    const-string v8, "EAN_8"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    .line 48
    new-instance v8, Lcom/google/zxing/BarcodeFormat;

    move-object v7, v8

    const-string v9, "EAN_13"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    .line 51
    new-instance v9, Lcom/google/zxing/BarcodeFormat;

    move-object v8, v9

    const-string v10, "ITF"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    .line 54
    new-instance v10, Lcom/google/zxing/BarcodeFormat;

    move-object v9, v10

    const-string v11, "MAXICODE"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    .line 57
    new-instance v11, Lcom/google/zxing/BarcodeFormat;

    move-object v10, v11

    const-string v12, "PDF_417"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    .line 60
    new-instance v12, Lcom/google/zxing/BarcodeFormat;

    move-object v11, v12

    const-string v13, "QR_CODE"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    .line 63
    new-instance v13, Lcom/google/zxing/BarcodeFormat;

    move-object v12, v13

    const-string v14, "RSS_14"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    .line 66
    new-instance v14, Lcom/google/zxing/BarcodeFormat;

    move-object v13, v14

    const-string v15, "RSS_EXPANDED"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    .line 69
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    move-object v14, v0

    const-string v15, "UPC_A"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    .line 72
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    move-object v15, v0

    const-string v1, "UPC_E"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    .line 75
    new-instance v0, Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v16, v0

    const-string v1, "UPC_EAN_EXTENSION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/BarcodeFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lcom/google/zxing/BarcodeFormat;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/BarcodeFormat;
    .locals 1

    const-class v0, Lcom/google/zxing/BarcodeFormat;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/BarcodeFormat;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->$VALUES:[Lcom/google/zxing/BarcodeFormat;

    .line 24
    invoke-virtual {v0}, [Lcom/google/zxing/BarcodeFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
