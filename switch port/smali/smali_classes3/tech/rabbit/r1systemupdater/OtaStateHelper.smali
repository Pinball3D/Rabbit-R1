.class public final Ltech/rabbit/r1systemupdater/OtaStateHelper;
.super Ljava/lang/Object;
.source "OtaStateHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Ltech/rabbit/r1systemupdater/OtaStateHelper;",
        "",
        "()V",
        "liveState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Ltech/rabbit/r1systemupdater/OtaState;",
        "getLiveState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "updateConfig",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "getUpdateConfig",
        "()Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "setUpdateConfig",
        "(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V",
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
.field public static final INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

.field private static final liveState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/rabbit/r1systemupdater/OtaState;",
            ">;"
        }
    .end annotation
.end field

.field private static updateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-direct {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;-><init>()V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->liveState:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLiveState()Landroidx/lifecycle/MutableLiveData;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ltech/rabbit/r1systemupdater/OtaState;",
            ">;"
        }
    .end annotation

    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->liveState:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public final getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;
    .locals 0

    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->updateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    return-object p0
.end method

.method public final setUpdateConfig(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    sput-object p1, Ltech/rabbit/r1systemupdater/OtaStateHelper;->updateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    return-void
.end method
