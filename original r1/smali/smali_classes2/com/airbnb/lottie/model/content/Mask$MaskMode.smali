.class public final enum Lcom/airbnb/lottie/model/content/Mask$MaskMode;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/Mask$MaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

.field public static final enum MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 4

    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v1, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    sget-object v3, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    filled-new-array {v0, v1, v2, v3}, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 8
    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_ADD:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 9
    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_SUBTRACT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_SUBTRACT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_INTERSECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_INTERSECT:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 11
    new-instance v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    const-string v1, "MASK_MODE_NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MASK_MODE_NONE:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    invoke-static {}, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->$values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 7
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    return-object v0
.end method
