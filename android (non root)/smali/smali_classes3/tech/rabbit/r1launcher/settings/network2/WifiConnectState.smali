.class public final enum Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;
.super Ljava/lang/Enum;
.source "SettingsNetwork2ViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
        "",
        "(Ljava/lang/String;I)V",
        "Connecting",
        "Connected",
        "Disconnecting",
        "NoConnect",
        "ConnectFailure",
        "Forget",
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

.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum ConnectFailure:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum Disconnecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum Forget:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

.field public static final enum NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;
    .locals 6

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    sget-object v1, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    sget-object v2, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Disconnecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    sget-object v3, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    sget-object v4, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->ConnectFailure:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    sget-object v5, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Forget:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    filled-new-array/range {v0 .. v5}, [Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 303
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "Connecting"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 304
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "Connected"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Connected:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 305
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "Disconnecting"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Disconnecting:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 306
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "NoConnect"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->NoConnect:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 307
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "ConnectFailure"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->ConnectFailure:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    .line 308
    new-instance v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    const-string v1, "Forget"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->Forget:Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {}, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->$values()[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->$VALUES:[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;->$VALUES:[Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/settings/network2/WifiConnectState;

    return-object v0
.end method
