.class final Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroidx/media3/exoplayer/offline/DownloadManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DownloadManagerHelper"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

.field private downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

.field private final foregroundAllowed:Z

.field private scheduledRequirements:Landroidx/media3/exoplayer/scheduler/Requirements;

.field private final scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

.field private final serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLandroidx/media3/exoplayer/scheduler/Scheduler;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/media3/exoplayer/offline/DownloadManager;",
            "Z",
            "Landroidx/media3/exoplayer/scheduler/Scheduler;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    .line 951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    iput-boolean p3, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

    iput-object p5, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    .line 957
    invoke-virtual {p2, p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->addListener(Landroidx/media3/exoplayer/offline/DownloadManager$Listener;)V

    .line 958
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLandroidx/media3/exoplayer/scheduler/Scheduler;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$1;)V
    .locals 0

    .line 935
    invoke-direct/range {p0 .. p5}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLandroidx/media3/exoplayer/scheduler/Scheduler;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;)Landroidx/media3/exoplayer/offline/DownloadManager;
    .locals 0

    .line 935
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    return-object p0
.end method

.method private cancelScheduler()V
    .locals 2
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "scheduler"
        }
    .end annotation

    .line 1096
    new-instance v0, Landroidx/media3/exoplayer/scheduler/Requirements;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/scheduler/Requirements;-><init>(I)V

    .line 1097
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Landroidx/media3/exoplayer/scheduler/Requirements;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

    .line 1098
    invoke-interface {v1}, Landroidx/media3/exoplayer/scheduler/Scheduler;->cancel()Z

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    :cond_0
    return-void
.end method

.method private restartService()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->foregroundAllowed:Z

    const-string v1, "DownloadService"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "androidx.media3.exoplayer.downloadService.action.RESTART"

    .line 1110
    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    .line 1111
    invoke-static {p0, v0}, Landroidx/media3/common/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Failed to restart (foreground launch restriction)"

    .line 1116
    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->serviceClass:Ljava/lang/Class;

    const-string v3, "androidx.media3.exoplayer.downloadService.action.INIT"

    .line 1122
    invoke-static {v0, v2, v3}, Landroidx/media3/exoplayer/offline/DownloadService;->access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    .line 1123
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "Failed to restart (process is idle)"

    .line 1127
    invoke-static {v1, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private schedulerNeedsUpdate(Landroidx/media3/exoplayer/scheduler/Requirements;)Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    .line 1091
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private serviceMayNeedRestart()Z
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p0, :cond_1

    .line 1104
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->access$800(Landroidx/media3/exoplayer/offline/DownloadService;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public attachService(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 962
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 964
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 970
    invoke-static {}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;Landroidx/media3/exoplayer/offline/DownloadService;)V

    .line 971
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public detachService(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 1

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 977
    :goto_0
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    return-void
.end method

.method synthetic lambda$attachService$0$androidx-media3-exoplayer-offline-DownloadService$DownloadManagerHelper(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .locals 0

    .line 0
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 972
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadService;->access$300(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V

    return-void
.end method

.method public onDownloadChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;Ljava/lang/Exception;)V
    .locals 0

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p1, :cond_0

    .line 1035
    invoke-static {p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->access$400(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/Download;)V

    .line 1037
    :cond_0
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p2, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->access$500(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "DownloadService"

    const-string p2, "DownloadService wasn\'t running. Restarting."

    .line 1042
    invoke-static {p1, p2}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->restartService()V

    :cond_1
    return-void
.end method

.method public onDownloadRemoved(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/offline/Download;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p0, :cond_0

    .line 1050
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->access$600(Landroidx/media3/exoplayer/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public final onIdle(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p0, :cond_0

    .line 1057
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->access$700(Landroidx/media3/exoplayer/offline/DownloadService;)V

    :cond_0
    return-void
.end method

.method public onInitialized(Landroidx/media3/exoplayer/offline/DownloadManager;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadService:Landroidx/media3/exoplayer/offline/DownloadService;

    if-eqz p0, :cond_0

    .line 1027
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->access$300(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onRequirementsStateChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Landroidx/media3/exoplayer/scheduler/Requirements;I)V
    .locals 0

    .line 1066
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    return-void
.end method

.method public onWaitingForRequirementsChanged(Landroidx/media3/exoplayer/offline/DownloadManager;Z)V
    .locals 1

    if-nez p2, :cond_1

    .line 1073
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->getDownloadsPaused()Z

    move-result p2

    if-nez p2, :cond_1

    .line 1074
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->serviceMayNeedRestart()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1078
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->getCurrentDownloads()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    .line 1079
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 1080
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/Download;

    iget v0, v0, Landroidx/media3/exoplayer/offline/Download;->state:I

    if-nez v0, :cond_0

    .line 1081
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->restartService()V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateScheduler()Z
    .locals 6

    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 990
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->isWaitingForRequirements()Z

    move-result v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_0
    if-nez v0, :cond_1

    .line 996
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v2

    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->downloadManager:Landroidx/media3/exoplayer/offline/DownloadManager;

    .line 1000
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadManager;->getRequirements()Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

    .line 1001
    invoke-interface {v1, v0}, Landroidx/media3/exoplayer/scheduler/Scheduler;->getSupportedRequirements(Landroidx/media3/exoplayer/scheduler/Requirements;)Landroidx/media3/exoplayer/scheduler/Requirements;

    move-result-object v1

    .line 1002
    invoke-virtual {v1, v0}, Landroidx/media3/exoplayer/scheduler/Requirements;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 1003
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v3

    .line 1007
    :cond_2
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->schedulerNeedsUpdate(Landroidx/media3/exoplayer/scheduler/Requirements;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->context:Landroid/content/Context;

    .line 1011
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduler:Landroidx/media3/exoplayer/scheduler/Scheduler;

    const-string v5, "androidx.media3.exoplayer.downloadService.action.RESTART"

    .line 1012
    invoke-interface {v4, v0, v1, v5}, Landroidx/media3/exoplayer/scheduler/Scheduler;->schedule(Landroidx/media3/exoplayer/scheduler/Requirements;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->scheduledRequirements:Landroidx/media3/exoplayer/scheduler/Requirements;

    return v2

    :cond_4
    const-string v0, "DownloadService"

    const-string v1, "Failed to schedule restart"

    .line 1016
    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->cancelScheduler()V

    return v3
.end method
