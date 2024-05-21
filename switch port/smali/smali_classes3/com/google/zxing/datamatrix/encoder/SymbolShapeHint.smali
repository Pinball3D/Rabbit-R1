.class public final enum Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
.super Ljava/lang/Enum;
.source "SymbolShapeHint.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

.field public static final enum FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 26
    new-instance v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const-string v2, "FORCE_SQUARE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 27
    new-instance v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const-string v3, "FORCE_RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    filled-new-array {v0, v1, v2}, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    const-class v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 23
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-object p0
.end method

.method public static values()[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;
    .locals 1

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->$VALUES:[Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    .line 23
    invoke-virtual {v0}, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    return-object v0
.end method
