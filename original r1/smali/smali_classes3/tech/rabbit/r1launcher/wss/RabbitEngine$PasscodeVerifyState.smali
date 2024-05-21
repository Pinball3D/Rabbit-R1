.class public final enum Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;
.super Ljava/lang/Enum;
.source "RabbitEngine.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/RabbitEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PasscodeVerifyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;",
        "",
        "(Ljava/lang/String;I)V",
        "Succeed",
        "Failed",
        "Cancel",
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

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

.field public static final enum Cancel:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

.field public static final enum Failed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

.field public static final enum Succeed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;
    .locals 3

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Succeed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    sget-object v1, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Failed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    sget-object v2, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Cancel:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    filled-new-array {v0, v1, v2}, [Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 521
    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    const-string v1, "Succeed"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Succeed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    const-string v1, "Failed"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Failed:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    const-string v1, "Cancel"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->Cancel:Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    invoke-static {}, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->$values()[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->$VALUES:[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 520
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;->$VALUES:[Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/wss/RabbitEngine$PasscodeVerifyState;

    return-object v0
.end method
