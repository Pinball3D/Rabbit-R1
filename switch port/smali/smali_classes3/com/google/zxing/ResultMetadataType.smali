.class public final enum Lcom/google/zxing/ResultMetadataType;
.super Ljava/lang/Enum;
.source "ResultMetadataType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/ResultMetadataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/ResultMetadataType;

.field public static final enum BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum ORIENTATION:Lcom/google/zxing/ResultMetadataType;

.field public static final enum OTHER:Lcom/google/zxing/ResultMetadataType;

.field public static final enum PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

.field public static final enum POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 30
    new-instance v0, Lcom/google/zxing/ResultMetadataType;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->OTHER:Lcom/google/zxing/ResultMetadataType;

    .line 39
    new-instance v1, Lcom/google/zxing/ResultMetadataType;

    const-string v2, "ORIENTATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    .line 50
    new-instance v2, Lcom/google/zxing/ResultMetadataType;

    const-string v3, "BYTE_SEGMENTS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    .line 56
    new-instance v3, Lcom/google/zxing/ResultMetadataType;

    const-string v4, "ERROR_CORRECTION_LEVEL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    .line 61
    new-instance v4, Lcom/google/zxing/ResultMetadataType;

    const-string v5, "ISSUE_NUMBER"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    .line 67
    new-instance v5, Lcom/google/zxing/ResultMetadataType;

    const-string v6, "SUGGESTED_PRICE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    .line 73
    new-instance v6, Lcom/google/zxing/ResultMetadataType;

    const-string v7, "POSSIBLE_COUNTRY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 78
    new-instance v7, Lcom/google/zxing/ResultMetadataType;

    const-string v8, "UPC_EAN_EXTENSION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 83
    new-instance v8, Lcom/google/zxing/ResultMetadataType;

    const-string v9, "PDF417_EXTRA_METADATA"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/ResultMetadataType;->PDF417_EXTRA_METADATA:Lcom/google/zxing/ResultMetadataType;

    .line 89
    new-instance v9, Lcom/google/zxing/ResultMetadataType;

    const-string v10, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/zxing/ResultMetadataType;

    .line 95
    new-instance v10, Lcom/google/zxing/ResultMetadataType;

    const-string v11, "STRUCTURED_APPEND_PARITY"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultMetadataType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/ResultMetadataType;->STRUCTURED_APPEND_PARITY:Lcom/google/zxing/ResultMetadataType;

    filled-new-array/range {v0 .. v10}, [Lcom/google/zxing/ResultMetadataType;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/ResultMetadataType;
    .locals 1

    const-class v0, Lcom/google/zxing/ResultMetadataType;

    .line 25
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/ResultMetadataType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/ResultMetadataType;
    .locals 1

    sget-object v0, Lcom/google/zxing/ResultMetadataType;->$VALUES:[Lcom/google/zxing/ResultMetadataType;

    .line 25
    invoke-virtual {v0}, [Lcom/google/zxing/ResultMetadataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultMetadataType;

    return-object v0
.end method
