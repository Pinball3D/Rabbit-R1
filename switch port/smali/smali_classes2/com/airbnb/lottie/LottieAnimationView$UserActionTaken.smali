.class final enum Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
.super Ljava/lang/Enum;
.source "LottieAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UserActionTaken"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

.field public static final enum SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;


# direct methods
.method private static synthetic $values()[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
    .locals 6

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    sget-object v1, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    sget-object v2, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    sget-object v3, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    sget-object v4, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    sget-object v5, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    filled-new-array/range {v0 .. v5}, [Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1326
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "SET_ANIMATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_ANIMATION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1327
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "SET_PROGRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_PROGRESS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1328
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "SET_REPEAT_MODE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_MODE:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1329
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "SET_REPEAT_COUNT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_REPEAT_COUNT:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1330
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "SET_IMAGE_ASSETS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->SET_IMAGE_ASSETS:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1331
    new-instance v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    const-string v1, "PLAY_OPTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->PLAY_OPTION:Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1325
    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->$values()[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->$VALUES:[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1325
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
    .locals 1

    const-class v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1325
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->$VALUES:[Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    .line 1325
    invoke-virtual {v0}, [Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/LottieAnimationView$UserActionTaken;

    return-object v0
.end method
