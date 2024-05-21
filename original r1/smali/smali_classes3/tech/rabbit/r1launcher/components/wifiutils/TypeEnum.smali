.class public final enum Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;
.super Ljava/lang/Enum;
.source "TypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

.field public static final enum EAP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

.field public static final enum OPEN:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

.field public static final enum PSK:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

.field public static final enum WEP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;


# direct methods
.method private static synthetic $values()[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;
    .locals 4

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->OPEN:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->WEP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    sget-object v2, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->PSK:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    sget-object v3, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->EAP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    filled-new-array {v0, v1, v2, v3}, [Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->OPEN:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 10
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    const-string v1, "WEP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->WEP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 11
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    const-string v1, "PSK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->PSK:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 12
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    const-string v1, "EAP"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->EAP:Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 8
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->$values()[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->$VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 8
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->$VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    .line 8
    invoke-virtual {v0}, [Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/components/wifiutils/TypeEnum;

    return-object v0
.end method
