.class public final enum Ltech/rabbit/r1systemupdater/OtaState;
.super Ljava/lang/Enum;
.source "OtaStateHelper.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltech/rabbit/r1systemupdater/OtaState;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0010\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Ltech/rabbit/r1systemupdater/OtaState;",
        "",
        "(Ljava/lang/String;I)V",
        "CHECKING",
        "PREPARE_UPDATE",
        "START_UPDATE",
        "CHECKING_PKG",
        "DOWNLOADING",
        "DOWNLOAD_COMPLETE",
        "VERIFYING",
        "FINALIZING",
        "PREPARE_REBOOT",
        "NO_UPDATES",
        "CHECKING_PKG_FAILED",
        "DOWNLOAD_PKG_FAILED",
        "VERIFY_PKG_FAILED",
        "PREPARE_UPDATE_FAILED",
        "ota_release"
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

.field private static final synthetic $VALUES:[Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum CHECKING:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum CHECKING_PKG:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum CHECKING_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum DOWNLOADING:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum DOWNLOAD_COMPLETE:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum DOWNLOAD_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum FINALIZING:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum NO_UPDATES:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum PREPARE_REBOOT:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum PREPARE_UPDATE_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum START_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum VERIFYING:Ltech/rabbit/r1systemupdater/OtaState;

.field public static final enum VERIFY_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;


# direct methods
.method private static final synthetic $values()[Ltech/rabbit/r1systemupdater/OtaState;
    .locals 14

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v1, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v2, Ltech/rabbit/r1systemupdater/OtaState;->START_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v3, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING_PKG:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v4, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOADING:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v5, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOAD_COMPLETE:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v6, Ltech/rabbit/r1systemupdater/OtaState;->VERIFYING:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v7, Ltech/rabbit/r1systemupdater/OtaState;->FINALIZING:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v8, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_REBOOT:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v9, Ltech/rabbit/r1systemupdater/OtaState;->NO_UPDATES:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v10, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v11, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOAD_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v12, Ltech/rabbit/r1systemupdater/OtaState;->VERIFY_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    sget-object v13, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    filled-new-array/range {v0 .. v13}, [Ltech/rabbit/r1systemupdater/OtaState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 7
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "CHECKING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING:Ltech/rabbit/r1systemupdater/OtaState;

    .line 8
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "PREPARE_UPDATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    .line 9
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "START_UPDATE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->START_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    .line 10
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "CHECKING_PKG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING_PKG:Ltech/rabbit/r1systemupdater/OtaState;

    .line 11
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOADING:Ltech/rabbit/r1systemupdater/OtaState;

    .line 12
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "DOWNLOAD_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOAD_COMPLETE:Ltech/rabbit/r1systemupdater/OtaState;

    .line 13
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "VERIFYING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->VERIFYING:Ltech/rabbit/r1systemupdater/OtaState;

    .line 14
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "FINALIZING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->FINALIZING:Ltech/rabbit/r1systemupdater/OtaState;

    .line 15
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "PREPARE_REBOOT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_REBOOT:Ltech/rabbit/r1systemupdater/OtaState;

    .line 17
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "NO_UPDATES"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->NO_UPDATES:Ltech/rabbit/r1systemupdater/OtaState;

    .line 18
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "CHECKING_PKG_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    .line 19
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "DOWNLOAD_PKG_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->DOWNLOAD_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    .line 20
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "VERIFY_PKG_FAILED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->VERIFY_PKG_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    .line 21
    new-instance v0, Ltech/rabbit/r1systemupdater/OtaState;

    const-string v1, "PREPARE_UPDATE_FAILED"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Ltech/rabbit/r1systemupdater/OtaState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE_FAILED:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-static {}, Ltech/rabbit/r1systemupdater/OtaState;->$values()[Ltech/rabbit/r1systemupdater/OtaState;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->$VALUES:[Ltech/rabbit/r1systemupdater/OtaState;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaState;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Ltech/rabbit/r1systemupdater/OtaState;",
            ">;"
        }
    .end annotation

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ltech/rabbit/r1systemupdater/OtaState;
    .locals 1

    const-class v0, Ltech/rabbit/r1systemupdater/OtaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltech/rabbit/r1systemupdater/OtaState;

    return-object p0
.end method

.method public static values()[Ltech/rabbit/r1systemupdater/OtaState;
    .locals 1

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->$VALUES:[Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1systemupdater/OtaState;

    return-object v0
.end method
