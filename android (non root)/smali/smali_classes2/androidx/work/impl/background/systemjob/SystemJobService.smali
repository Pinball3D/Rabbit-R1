.class public Landroidx/work/impl/background/systemjob/SystemJobService;
.super Landroid/app/job/JobService;
.source "SystemJobService.java"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemjob/SystemJobService$Api24Impl;,
        Landroidx/work/impl/background/systemjob/SystemJobService$Api28Impl;,
        Landroidx/work/impl/background/systemjob/SystemJobService$Api31Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mJobParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartStopTokens:Landroidx/work/impl/StartStopTokens;

.field private mWorkLauncher:Landroidx/work/impl/WorkLauncher;

.field private mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemJobService"

    .line 75
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 78
    new-instance v0, Landroidx/work/impl/StartStopTokens;

    invoke-direct {v0}, Landroidx/work/impl/StartStopTokens;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    return-void
.end method

.method static stopReason(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jobReason"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/16 p0, -0x200

    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static workGenerationalIdFromJobParameters(Landroid/app/job/JobParameters;)Landroidx/work/impl/model/WorkGenerationalId;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    const-string v0, "EXTRA_WORK_SPEC_ID"

    .line 231
    :try_start_0
    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Landroidx/work/impl/model/WorkGenerationalId;

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EXTRA_WORK_SPEC_GENERATION"

    .line 234
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v0, p0}, Landroidx/work/impl/model/WorkGenerationalId;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 83
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 85
    :try_start_0
    invoke-virtual {p0}, Landroidx/work/impl/background/systemjob/SystemJobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 86
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    .line 87
    new-instance v1, Landroidx/work/impl/WorkLauncherImpl;

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 88
    invoke-virtual {v2}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroidx/work/impl/WorkLauncherImpl;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    iput-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkLauncher:Landroidx/work/impl/WorkLauncher;

    .line 89
    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 100
    const-class v1, Landroid/app/Application;

    invoke-virtual {p0}, Landroidx/work/impl/background/systemjob/SystemJobService;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object v0, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v1, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {p0, v0, v1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {p0, v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public onDestroy()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/app/job/JobService;->onDestroy()V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    :cond_0
    return-void
.end method

.method public onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "needsReschedule"
        }
    .end annotation

    .line 214
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " executed on JobScheduler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 216
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 217
    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobParameters;

    .line 218
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 219
    invoke-virtual {v0, p1}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {p0, v1, p2}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 218
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    const-string v0, "Job is already being executed by SystemJobService: "

    const-string v1, "onStartJob for "

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 125
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v2, "WorkManager is not initialized; requesting retry."

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1, v3}, Landroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return v4

    .line 130
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->workGenerationalIdFromJobParameters(Landroid/app/job/JobParameters;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v2

    if-nez v2, :cond_1

    .line 132
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v0, "WorkSpec id not found!"

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    iget-object v5, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 136
    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 137
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 140
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    monitor-exit v5

    return v4

    .line 149
    :cond_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v4, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 150
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    new-instance v0, Landroidx/work/WorkerParameters$RuntimeExtras;

    invoke-direct {v0}, Landroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    .line 156
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api24Impl;->getTriggeredContentUris(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 158
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api24Impl;->getTriggeredContentUris(Landroid/app/job/JobParameters;)[Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    .line 160
    :cond_3
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api24Impl;->getTriggeredContentAuthorities(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 162
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api24Impl;->getTriggeredContentAuthorities(Landroid/app/job/JobParameters;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    .line 165
    :cond_4
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api28Impl;->getNetwork(Landroid/app/job/JobParameters;)Landroid/net/Network;

    move-result-object p1

    iput-object p1, v0, Landroidx/work/WorkerParameters$RuntimeExtras;->network:Landroid/net/Network;

    iget-object p1, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkLauncher:Landroidx/work/impl/WorkLauncher;

    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 176
    invoke-virtual {p0, v2}, Landroidx/work/impl/StartStopTokens;->tokenFor(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroidx/work/impl/WorkLauncher;->startWork(Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V

    return v3

    :catchall_0
    move-exception p0

    .line 151
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v0, "WorkManager is not initialized; requesting retry."

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 187
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService;->workGenerationalIdFromJobParameters(Landroid/app/job/JobParameters;)Landroidx/work/impl/model/WorkGenerationalId;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v0, "WorkSpec id not found!"

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 193
    :cond_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStopJob for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 195
    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    .line 196
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    .line 198
    invoke-virtual {v2, v0}, Landroidx/work/impl/StartStopTokens;->remove(Landroidx/work/impl/model/WorkGenerationalId;)Landroidx/work/impl/StartStopToken;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 202
    invoke-static {p1}, Landroidx/work/impl/background/systemjob/SystemJobService$Api31Impl;->getStopReason(Landroid/app/job/JobParameters;)I

    move-result p1

    iget-object v3, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkLauncher:Landroidx/work/impl/WorkLauncher;

    .line 207
    invoke-interface {v3, v2, p1}, Landroidx/work/impl/WorkLauncher;->stopWorkWithReason(Landroidx/work/impl/StartStopToken;I)V

    :cond_2
    iget-object p0, p0, Landroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Landroidx/work/impl/WorkManagerImpl;

    .line 209
    invoke-virtual {p0}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object p0

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkGenerationalId;->getWorkSpecId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/work/impl/Processor;->isCancelled(Ljava/lang/String;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :catchall_0
    move-exception p0

    .line 197
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
