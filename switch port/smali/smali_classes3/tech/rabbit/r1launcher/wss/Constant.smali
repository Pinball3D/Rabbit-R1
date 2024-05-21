.class public Ltech/rabbit/r1launcher/wss/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field static LOGIN_TOKEN:Ljava/lang/String; = "login_token"

.field static LOST_MODE:Ljava/lang/String; = "lost_mode"

.field static PASSCODE:Ljava/lang/String; = "passcode"

.field static USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLoginToken()Ljava/lang/String;
    .locals 3

    .line 18
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->LOGIN_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltech/rabbit/common/utils/SPUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getLostMode()Ljava/lang/String;
    .locals 3

    .line 35
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->LOST_MODE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltech/rabbit/common/utils/SPUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPasscode()Ljava/lang/String;
    .locals 3

    .line 39
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->PASSCODE:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltech/rabbit/common/utils/SPUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getUserId()Ljava/lang/String;
    .locals 3

    .line 52
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->USER_ID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ltech/rabbit/common/utils/SPUtils;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static hasLoginToken()Z
    .locals 1

    .line 14
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->getLoginToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static hasPasscode()Z
    .locals 1

    .line 26
    invoke-static {}, Ltech/rabbit/r1launcher/wss/Constant;->getPasscode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static saveLoginToken(Ljava/lang/String;)V
    .locals 2

    .line 22
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->LOGIN_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ltech/rabbit/common/utils/SPUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static saveLostMode(Ljava/lang/String;)V
    .locals 2

    .line 31
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->LOST_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ltech/rabbit/common/utils/SPUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static savePasscode(Ljava/lang/String;)V
    .locals 2

    .line 43
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->PASSCODE:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ltech/rabbit/common/utils/SPUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 2

    .line 48
    sget-object v0, Ltech/rabbit/common/utils/SPUtils;->INSTANCE:Ltech/rabbit/common/utils/SPUtils;

    sget-object v1, Ltech/rabbit/r1launcher/wss/Constant;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ltech/rabbit/common/utils/SPUtils;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
