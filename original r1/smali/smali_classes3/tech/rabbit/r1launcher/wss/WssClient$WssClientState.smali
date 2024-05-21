.class public final enum Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;
.super Ljava/lang/Enum;
.source "WssClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1launcher/wss/WssClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WssClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum CLOSED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum CLOSING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum CONNECTING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum Failure:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

.field public static final enum NO_CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;


# direct methods
.method private static synthetic $values()[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;
    .locals 6

    sget-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->NO_CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    sget-object v1, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CONNECTING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    sget-object v2, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    sget-object v3, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    sget-object v4, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    sget-object v5, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->Failure:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    filled-new-array/range {v0 .. v5}, [Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 231
    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "NO_CONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->NO_CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "CONNECTING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CONNECTING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CONNECTED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSING:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->CLOSED:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    new-instance v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    const-string v1, "Failure"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->Failure:Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    .line 230
    invoke-static {}, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->$values()[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->$VALUES:[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    .line 230
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->$VALUES:[Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    .line 230
    invoke-virtual {v0}, [Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/wss/WssClient$WssClientState;

    return-object v0
.end method
