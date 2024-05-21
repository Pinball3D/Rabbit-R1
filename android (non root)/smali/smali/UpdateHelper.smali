.class public final LUpdateHelper;
.super Ljava/lang/Object;
.source "UpdateHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u0012\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J(\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\u0018\u0008\u0002\u0010\u0014\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "LUpdateHelper;",
        "",
        "()V",
        "TAG",
        "",
        "UPDATE_CONFIG_KEY",
        "afterCheckRunnable",
        "Ljava/lang/Runnable;",
        "isChecking",
        "",
        "threadPoolExecutor",
        "Ljava/util/concurrent/ExecutorService;",
        "executeIfNoUpdate",
        "",
        "runnable",
        "initUpdateChecker",
        "context",
        "Landroid/content/Context;",
        "triggerOnceCheck",
        "triggerOnceCheckInSubThread",
        "listener",
        "Lkotlin/Function1;",
        "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
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
.field public static final INSTANCE:LUpdateHelper;

.field private static final TAG:Ljava/lang/String; = "UpdateHelper"

.field public static final UPDATE_CONFIG_KEY:Ljava/lang/String; = "update_config"

.field private static afterCheckRunnable:Ljava/lang/Runnable;

.field private static volatile isChecking:Z

.field private static final threadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$m0scCyt_YAqtVj2zejq23_9ehnQ(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-static {p0, p1}, LUpdateHelper;->triggerOnceCheckInSubThread$lambda$1(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xjC1eRSOwxWPT-t7hKZvxM03DGg(Lkotlin/jvm/functions/Function1;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 0

    invoke-static {p0, p1}, LUpdateHelper;->triggerOnceCheckInSubThread$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LUpdateHelper;

    invoke-direct {v0}, LUpdateHelper;-><init>()V

    sput-object v0, LUpdateHelper;->INSTANCE:LUpdateHelper;

    .line 26
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3c

    .line 28
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 29
    new-instance v1, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v1}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    move-object v1, v0

    .line 26
    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    sput-object v0, LUpdateHelper;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic triggerOnceCheckInSubThread$default(LUpdateHelper;Landroid/content/Context;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 64
    :cond_0
    invoke-virtual {p0, p1, p2}, LUpdateHelper;->triggerOnceCheckInSubThread(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final triggerOnceCheckInSubThread$lambda$1(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "UpdateHelper"

    const-string v1, "checking update"

    .line 70
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    sget-object v1, Ltech/rabbit/r1systemupdater/OtaState;->CHECKING:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->getInstance(Landroid/content/Context;)Ltech/rabbit/r1systemupdater/SystemUpdater;

    move-result-object p0

    new-instance v0, LUpdateHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, LUpdateHelper$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0}, Ltech/rabbit/r1systemupdater/SystemUpdater;->check(Ltech/rabbit/r1systemupdater/SystemUpdater$CheckCallback;)V

    return-void
.end method

.method private static final triggerOnceCheckInSubThread$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V
    .locals 3

    .line 73
    sget-object v0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v0, p1}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->setUpdateConfig(Ltech/rabbit/r1systemupdater/model/UpdateConfig;)V

    const-string v0, "UpdateHelper"

    if-nez p1, :cond_0

    const-string v1, "check update no config "

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v1, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v1}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    sget-object v2, Ltech/rabbit/r1systemupdater/OtaState;->NO_UPDATES:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check update config: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v1, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {v1}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getLiveState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    sget-object v2, Ltech/rabbit/r1systemupdater/OtaState;->PREPARE_UPDATE:Ltech/rabbit/r1systemupdater/OtaState;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_0
    if-eqz p0, :cond_1

    .line 85
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x0

    sput-boolean p0, LUpdateHelper;->isChecking:Z

    sget-object p0, LUpdateHelper;->afterCheckRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_3

    .line 89
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "run afterCheckRunnable"

    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object p1, LUpdateHelper;->afterCheckRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p0, 0x0

    sput-object p0, LUpdateHelper;->afterCheckRunnable:Ljava/lang/Runnable;

    :cond_3
    return-void
.end method


# virtual methods
.method public final executeIfNoUpdate(Ljava/lang/Runnable;)V
    .locals 0

    const-string p0, "runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, LUpdateHelper;->isChecking:Z

    if-eqz p0, :cond_0

    sput-object p1, LUpdateHelper;->afterCheckRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 103
    :cond_0
    sget-object p0, Ltech/rabbit/r1systemupdater/OtaStateHelper;->INSTANCE:Ltech/rabbit/r1systemupdater/OtaStateHelper;

    invoke-virtual {p0}, Ltech/rabbit/r1systemupdater/OtaStateHelper;->getUpdateConfig()Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    move-result-object p0

    if-nez p0, :cond_1

    .line 104
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final initUpdateChecker(Landroid/content/Context;)V
    .locals 5

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    new-instance p0, Landroidx/work/Constraints$Builder;

    invoke-direct {p0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 38
    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {p0, v0}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object p0

    .line 40
    new-instance v0, Landroidx/work/PeriodicWorkRequest$Builder;

    const-class v1, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 41
    invoke-virtual {v0, p0}, Landroidx/work/PeriodicWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 42
    sget-object v0, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/work/PeriodicWorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest$Builder;

    .line 43
    invoke-virtual {p0}, Landroidx/work/PeriodicWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/PeriodicWorkRequest;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    const-string v0, "CheckUpdateWorker"

    .line 47
    sget-object v1, Landroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Landroidx/work/ExistingPeriodicWorkPolicy;

    .line 45
    invoke-virtual {p1, v0, v1, p0}, Landroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Landroidx/work/ExistingPeriodicWorkPolicy;Landroidx/work/PeriodicWorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final triggerOnceCheck(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance p0, Landroidx/work/Constraints$Builder;

    invoke-direct {p0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 55
    sget-object v0, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    invoke-virtual {p0, v0}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    move-result-object p0

    .line 56
    new-instance v0, Landroidx/work/OneTimeWorkRequest$Builder;

    const-class v1, Ltech/rabbit/r1systemupdater/CheckUpdateWorker;

    invoke-direct {v0, v1}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, p0}, Landroidx/work/OneTimeWorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 58
    sget-object v0, Landroidx/work/OutOfQuotaPolicy;->RUN_AS_NON_EXPEDITED_WORK_REQUEST:Landroidx/work/OutOfQuotaPolicy;

    invoke-virtual {p0, v0}, Landroidx/work/OneTimeWorkRequest$Builder;->setExpedited(Landroidx/work/OutOfQuotaPolicy;)Landroidx/work/WorkRequest$Builder;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 59
    invoke-virtual {p0}, Landroidx/work/OneTimeWorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    move-result-object p0

    check-cast p0, Landroidx/work/OneTimeWorkRequest;

    const-string v0, ""

    const-string/jumbo v1, "start CheckUpdateWorker"

    .line 60
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object p1

    check-cast p0, Landroidx/work/WorkRequest;

    invoke-virtual {p1, p0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    return-void
.end method

.method public final triggerOnceCheckInSubThread(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean p0, LUpdateHelper;->isChecking:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, LUpdateHelper;->isChecking:Z

    sget-object p0, LUpdateHelper;->threadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 69
    new-instance v0, LUpdateHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, LUpdateHelper$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
