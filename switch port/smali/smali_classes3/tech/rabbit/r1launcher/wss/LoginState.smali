.class public final enum Ltech/rabbit/r1launcher/wss/LoginState;
.super Ljava/lang/Enum;
.source "RabbitEngine.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/wss/LoginState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/wss/LoginState;",
        "",
        "(Ljava/lang/String;I)V",
        "NoNetwork",
        "Connecting",
        "Connected",
        "Disconnected",
        "LoginSuccess",
        "LoginFailed",
        "Error",
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

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum Connected:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum Connecting:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum Disconnected:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum Error:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum LoginFailed:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum LoginSuccess:Ltech/rabbit/r1launcher/wss/LoginState;

.field public static final enum NoNetwork:Ltech/rabbit/r1launcher/wss/LoginState;


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/wss/LoginState;
    .locals 7

    sget-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->NoNetwork:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v1, Ltech/rabbit/r1launcher/wss/LoginState;->Connecting:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v2, Ltech/rabbit/r1launcher/wss/LoginState;->Connected:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v3, Ltech/rabbit/r1launcher/wss/LoginState;->Disconnected:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v4, Ltech/rabbit/r1launcher/wss/LoginState;->LoginSuccess:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v5, Ltech/rabbit/r1launcher/wss/LoginState;->LoginFailed:Ltech/rabbit/r1launcher/wss/LoginState;

    sget-object v6, Ltech/rabbit/r1launcher/wss/LoginState;->Error:Ltech/rabbit/r1launcher/wss/LoginState;

    filled-new-array/range {v0 .. v6}, [Ltech/rabbit/r1launcher/wss/LoginState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "NoNetwork"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->NoNetwork:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "Connecting"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->Connecting:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "Connected"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->Connected:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "Disconnected"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->Disconnected:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "LoginSuccess"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->LoginSuccess:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "LoginFailed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->LoginFailed:Ltech/rabbit/r1launcher/wss/LoginState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/LoginState;

    const-string v1, "Error"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/LoginState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->Error:Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-static {}, Ltech/rabbit/r1launcher/wss/LoginState;->$values()[Ltech/rabbit/r1launcher/wss/LoginState;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->$VALUES:[Ltech/rabbit/r1launcher/wss/LoginState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/wss/LoginState;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/wss/LoginState;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/wss/LoginState;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/wss/LoginState;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/LoginState;->$VALUES:[Ltech/rabbit/r1launcher/wss/LoginState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/wss/LoginState;

    return-object v0
.end method
