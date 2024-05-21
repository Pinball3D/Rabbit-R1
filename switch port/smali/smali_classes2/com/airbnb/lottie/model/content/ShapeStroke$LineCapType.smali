.class public final enum Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
.super Ljava/lang/Enum;
.source "ShapeStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

.field public static final enum UNKNOWN:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 3

    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    sget-object v1, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->UNKNOWN:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    filled-new-array {v0, v1, v2}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "BUTT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 21
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "ROUND"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ROUND:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 22
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->UNKNOWN:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 19
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->$values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 19
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->$VALUES:[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    .line 19
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    return-object v0
.end method


# virtual methods
.method public toPaintCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 25
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeStroke$1;->$SwitchMap$com$airbnb$lottie$model$content$ShapeStroke$LineCapType:[I

    invoke-virtual {p0}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 32
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object p0

    .line 27
    :cond_1
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object p0
.end method
