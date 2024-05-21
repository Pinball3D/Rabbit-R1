.class public final enum Lcom/google/zxing/EncodeHintType;
.super Ljava/lang/Enum;
.source "EncodeHintType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/EncodeHintType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/EncodeHintType;

.field public static final enum AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

.field public static final enum CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

.field public static final enum DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

.field public static final enum ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

.field public static final enum MARGIN:Lcom/google/zxing/EncodeHintType;

.field public static final enum MAX_SIZE:Lcom/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MIN_SIZE:Lcom/google/zxing/EncodeHintType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

.field public static final enum PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

.field public static final enum QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

.field public static final enum QR_VERSION:Lcom/google/zxing/EncodeHintType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 35
    new-instance v0, Lcom/google/zxing/EncodeHintType;

    const-string v1, "ERROR_CORRECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    .line 40
    new-instance v1, Lcom/google/zxing/EncodeHintType;

    const-string v2, "CHARACTER_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    .line 45
    new-instance v2, Lcom/google/zxing/EncodeHintType;

    const-string v3, "DATA_MATRIX_SHAPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/EncodeHintType;->DATA_MATRIX_SHAPE:Lcom/google/zxing/EncodeHintType;

    .line 53
    new-instance v3, Lcom/google/zxing/EncodeHintType;

    const-string v4, "MIN_SIZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/zxing/EncodeHintType;->MIN_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 61
    new-instance v4, Lcom/google/zxing/EncodeHintType;

    const-string v5, "MAX_SIZE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/zxing/EncodeHintType;->MAX_SIZE:Lcom/google/zxing/EncodeHintType;

    .line 69
    new-instance v5, Lcom/google/zxing/EncodeHintType;

    const-string v6, "MARGIN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    .line 75
    new-instance v6, Lcom/google/zxing/EncodeHintType;

    const-string v7, "PDF417_COMPACT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    .line 82
    new-instance v7, Lcom/google/zxing/EncodeHintType;

    const-string v8, "PDF417_COMPACTION"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    .line 88
    new-instance v8, Lcom/google/zxing/EncodeHintType;

    const-string v9, "PDF417_DIMENSIONS"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    .line 97
    new-instance v9, Lcom/google/zxing/EncodeHintType;

    const-string v10, "AZTEC_LAYERS"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/zxing/EncodeHintType;->AZTEC_LAYERS:Lcom/google/zxing/EncodeHintType;

    .line 103
    new-instance v10, Lcom/google/zxing/EncodeHintType;

    const-string v11, "QR_VERSION"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/zxing/EncodeHintType;->QR_VERSION:Lcom/google/zxing/EncodeHintType;

    .line 111
    new-instance v11, Lcom/google/zxing/EncodeHintType;

    const-string v12, "QR_MASK_PATTERN"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/zxing/EncodeHintType;->QR_MASK_PATTERN:Lcom/google/zxing/EncodeHintType;

    .line 117
    new-instance v12, Lcom/google/zxing/EncodeHintType;

    const-string v13, "GS1_FORMAT"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/EncodeHintType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/zxing/EncodeHintType;->GS1_FORMAT:Lcom/google/zxing/EncodeHintType;

    filled-new-array/range {v0 .. v12}, [Lcom/google/zxing/EncodeHintType;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/EncodeHintType;
    .locals 1

    const-class v0, Lcom/google/zxing/EncodeHintType;

    .line 24
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/EncodeHintType;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/EncodeHintType;
    .locals 1

    sget-object v0, Lcom/google/zxing/EncodeHintType;->$VALUES:[Lcom/google/zxing/EncodeHintType;

    .line 24
    invoke-virtual {v0}, [Lcom/google/zxing/EncodeHintType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/EncodeHintType;

    return-object v0
.end method
