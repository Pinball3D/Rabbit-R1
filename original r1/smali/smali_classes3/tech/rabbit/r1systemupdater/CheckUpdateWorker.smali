.class public final Ltech/rabbit/r1systemupdater/CheckUpdateWorker;
.super Landroidx/work/Worker;
.source "CheckUpdateWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/CheckUpdateWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\t\u001a\u00020\nH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Ltech/rabbit/r1systemupdater/CheckUpdateWorker;",
        "Landroidx/work/Worker;",
        "context",
        "Landroid/content/Context;",
        "workerParams",
        "Landroidx/work/WorkerParameters;",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "mUpdateConfig",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
        "doWork",
        "Landroidx/work/ListenableWorker$Result;",
        "Companion",
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
.field public static final Companion:Ltech/rabbit/r1systemupdater/CheckUpdateWorker$Companion;

.field private static final TAG:Ljava/lang/String; = "CheckUpdateWorker"


# instance fields
.field private mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;


# direct methods
.method public static synthetic $r8$lambda$rXL8BvGh_EvqETBjs09Gd3aowdw(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    invoke-static {p0, p1, p2}, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->doWork$lambda$0(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->Companion:Ltech/rabbit/r1systemupdater/CheckUpdateWorker$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static final doWork$lambda$0(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$latch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p2, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    .line 21
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 5

    const-string v0, "doWork"

    const-string v1, "CheckUpdateWorker"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 18
    sget-object v2, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v2}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    sget-object v3, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ltech/rabbit/r1systemupdater/SystemUpdater;->getInstance(Landroid/content/Context;)Ltech/rabbit/r1systemupdater/SystemUpdater;

    move-result-object v2

    new-instance v3, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Ltech/rabbit/r1systemupdater/CheckUpdateWorker$$ExternalSyntheticLambda0;-><init>(Ltech/rabbit/r1systemupdater/CheckUpdateWorker;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Ltech/rabbit/r1systemupdater/SystemUpdater;->check(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V

    .line 24
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    if-nez v0, :cond_0

    const-string p0, "check update no config "

    .line 29
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->NO_UPDATES:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "check update config: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;->mUpdateConfig:Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-virtual {v0, p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->setUpdateConfig(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    .line 37
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    sget-object v0, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_1
    const-string p0, "result success"

    .line 39
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    const-string v0, "success(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
