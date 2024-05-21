.class public final enum Ltech/rabbit/r1launcher/constant/Service;
.super Ljava/lang/Enum;
.source "Service.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/constant/Service;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/constant/Service;",
        "",
        "tag",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTag",
        "()Ljava/lang/String;",
        "UBER",
        "DOORDASH",
        "FOOD_DELIVERY",
        "SPOTIFY",
        "VISION",
        "GLOBAL",
        "KERNEL",
        "MEETING_ASSISTANT",
        "DEVICE_STATE",
        "MIDJOURNEY",
        "TRANSLATOR",
        "SPEECH",
        "app_productionEnvRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum DEVICE_STATE:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum DOORDASH:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum FOOD_DELIVERY:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum GLOBAL:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum KERNEL:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum MEETING_ASSISTANT:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum MIDJOURNEY:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum SPEECH:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum TRANSLATOR:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum UBER:Ltech/rabbit/r1launcher/constant/Service;

.field public static final enum VISION:Ltech/rabbit/r1launcher/constant/Service;


# instance fields
.field private final tag:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/constant/Service;
    .locals 12

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->UBER:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v1, Ltech/rabbit/r1launcher/constant/Service;->DOORDASH:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v2, Ltech/rabbit/r1launcher/constant/Service;->FOOD_DELIVERY:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v3, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v4, Ltech/rabbit/r1launcher/constant/Service;->VISION:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v5, Ltech/rabbit/r1launcher/constant/Service;->GLOBAL:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v6, Ltech/rabbit/r1launcher/constant/Service;->KERNEL:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v7, Ltech/rabbit/r1launcher/constant/Service;->MEETING_ASSISTANT:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v8, Ltech/rabbit/r1launcher/constant/Service;->DEVICE_STATE:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v9, Ltech/rabbit/r1launcher/constant/Service;->MIDJOURNEY:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v10, Ltech/rabbit/r1launcher/constant/Service;->TRANSLATOR:Ltech/rabbit/r1launcher/constant/Service;

    sget-object v11, Ltech/rabbit/r1launcher/constant/Service;->SPEECH:Ltech/rabbit/r1launcher/constant/Service;

    filled-new-array/range {v0 .. v11}, [Ltech/rabbit/r1launcher/constant/Service;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 4
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x0

    const-string v2, "uber"

    const-string v3, "UBER"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->UBER:Ltech/rabbit/r1launcher/constant/Service;

    .line 5
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x1

    const-string v2, "doorDash"

    const-string v3, "DOORDASH"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->DOORDASH:Ltech/rabbit/r1launcher/constant/Service;

    .line 6
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x2

    const-string v2, "foodDelivery"

    const-string v3, "FOOD_DELIVERY"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->FOOD_DELIVERY:Ltech/rabbit/r1launcher/constant/Service;

    .line 7
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x3

    const-string v2, "spotify"

    const-string v3, "SPOTIFY"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPOTIFY:Ltech/rabbit/r1launcher/constant/Service;

    .line 8
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x4

    const-string v2, "vision"

    const-string v3, "VISION"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->VISION:Ltech/rabbit/r1launcher/constant/Service;

    .line 9
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x5

    const-string v2, "global"

    const-string v3, "GLOBAL"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->GLOBAL:Ltech/rabbit/r1launcher/constant/Service;

    .line 10
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x6

    const-string v2, "kernel"

    const-string v3, "KERNEL"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->KERNEL:Ltech/rabbit/r1launcher/constant/Service;

    .line 11
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/4 v1, 0x7

    const-string v2, "meetingAssistant"

    const-string v3, "MEETING_ASSISTANT"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->MEETING_ASSISTANT:Ltech/rabbit/r1launcher/constant/Service;

    .line 12
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/16 v1, 0x8

    const-string v2, "deviceState"

    const-string v3, "DEVICE_STATE"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->DEVICE_STATE:Ltech/rabbit/r1launcher/constant/Service;

    .line 13
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/16 v1, 0x9

    const-string v2, "midjourney"

    const-string v3, "MIDJOURNEY"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->MIDJOURNEY:Ltech/rabbit/r1launcher/constant/Service;

    .line 14
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/16 v1, 0xa

    const-string v2, "translator"

    const-string v3, "TRANSLATOR"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->TRANSLATOR:Ltech/rabbit/r1launcher/constant/Service;

    .line 15
    new-instance v0, Ltech/rabbit/r1launcher/constant/Service;

    const/16 v1, 0xb

    const-string v2, "speechRecognized"

    const-string v3, "SPEECH"

    invoke-direct {v0, v3, v1, v2}, Ltech/rabbit/r1launcher/constant/Service;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->SPEECH:Ltech/rabbit/r1launcher/constant/Service;

    invoke-static {}, Ltech/rabbit/r1launcher/constant/Service;->$values()[Ltech/rabbit/r1launcher/constant/Service;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->$VALUES:[Ltech/rabbit/r1launcher/constant/Service;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/constant/Service;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ltech/rabbit/r1launcher/constant/Service;->tag:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/constant/Service;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/constant/Service;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/constant/Service;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/constant/Service;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/constant/Service;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/constant/Service;->$VALUES:[Ltech/rabbit/r1launcher/constant/Service;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/constant/Service;

    return-object v0
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1launcher/constant/Service;->tag:Ljava/lang/String;

    return-object p0
.end method
