.class public final enum Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
.super Ljava/lang/Enum;
.source "ConnectionErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum COULD_NOT_ENABLE_WIFI:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum COULD_NOT_SCAN:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum DID_NOT_FIND_NETWORK_BY_SCANNING:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum TIMEOUT_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

.field public static final enum USER_CANCELLED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;


# direct methods
.method private static synthetic $values()[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
    .locals 8

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_ENABLE_WIFI:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v1, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_SCAN:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v2, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->DID_NOT_FIND_NETWORK_BY_SCANNING:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v3, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v4, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->TIMEOUT_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v5, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v6, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->USER_CANCELLED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    sget-object v7, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    filled-new-array/range {v0 .. v7}, [Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "COULD_NOT_ENABLE_WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_ENABLE_WIFI:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 16
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "COULD_NOT_SCAN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_SCAN:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 21
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "DID_NOT_FIND_NETWORK_BY_SCANNING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->DID_NOT_FIND_NETWORK_BY_SCANNING:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 27
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "AUTHENTICATION_ERROR_OCCURRED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->AUTHENTICATION_ERROR_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 31
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "TIMEOUT_OCCURRED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->TIMEOUT_OCCURRED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 36
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->ANDROID_10_IMMEDIATELY_DROPPED_CONNECTION:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 40
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "USER_CANCELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->USER_CANCELLED:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 41
    new-instance v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    const-string v1, "COULD_NOT_CONNECT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->COULD_NOT_CONNECT:Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 6
    invoke-static {}, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->$values()[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->$VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
    .locals 1

    const-class v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;
    .locals 1

    sget-object v0, Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->$VALUES:[Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    .line 6
    invoke-virtual {v0}, [Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1launcher/components/wifiutils/wifiConnect/ConnectionErrorCode;

    return-object v0
.end method
