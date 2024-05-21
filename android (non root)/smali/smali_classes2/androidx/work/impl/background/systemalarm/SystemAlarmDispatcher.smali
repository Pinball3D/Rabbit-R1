.class public Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Landroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;,
        Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;,
        Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;
    }
.end annotation


# static fields
.field private static final DEFAULT_START_ID:I = 0x0

.field private static final KEY_START_ID:Ljava/lang/String; = "KEY_START_ID"

.field private static final PROCESS_COMMAND_TAG:Ljava/lang/String; = "ProcessCommand"

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mCommandHandler:Landroidx/work/impl/background/systemalarm/CommandHandler;

.field private mCompletedListener:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

.field final mContext:Landroid/content/Context;

.field mCurrentIntent:Landroid/content/Intent;

.field final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessor:Landroidx/work/impl/Processor;

.field private mStartStopTokens:Landroidx/work/impl/StartStopTokens;

.field final mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private final mWorkLauncher:Landroidx/work/impl/WorkLauncher;

.field private final mWorkManager:Landroidx/work/impl/WorkManagerImpl;

.field private final mWorkTimer:Landroidx/work/impl/utils/WorkTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SystemAlarmDispatcher"

    .line 55
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0, v0, v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Landroid/content/Context;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/impl/WorkLauncher;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/work/impl/Processor;Landroidx/work/impl/WorkManagerImpl;Landroidx/work/impl/WorkLauncher;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "processor",
            "workManager",
            "launcher"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Landroid/content/Context;

    .line 92
    new-instance v1, Landroidx/work/impl/StartStopTokens;

    invoke-direct {v1}, Landroidx/work/impl/StartStopTokens;-><init>()V

    iput-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {p1}, Landroidx/work/impl/WorkManagerImpl;->getInstance(Landroid/content/Context;)Landroidx/work/impl/WorkManagerImpl;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 94
    new-instance p1, Landroidx/work/impl/background/systemalarm/CommandHandler;

    .line 95
    invoke-virtual {p3}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/work/Configuration;->getClock()Landroidx/work/Clock;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mStartStopTokens:Landroidx/work/impl/StartStopTokens;

    invoke-direct {p1, v0, v1, v2}, Landroidx/work/impl/background/systemalarm/CommandHandler;-><init>(Landroid/content/Context;Landroidx/work/Clock;Landroidx/work/impl/StartStopTokens;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Landroidx/work/impl/background/systemalarm/CommandHandler;

    .line 96
    new-instance p1, Landroidx/work/impl/utils/WorkTimer;

    invoke-virtual {p3}, Landroidx/work/impl/WorkManagerImpl;->getConfiguration()Landroidx/work/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/work/Configuration;->getRunnableScheduler()Landroidx/work/RunnableScheduler;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/work/impl/utils/WorkTimer;-><init>(Landroidx/work/RunnableScheduler;)V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 97
    :cond_1
    invoke-virtual {p3}, Landroidx/work/impl/WorkManagerImpl;->getProcessor()Landroidx/work/impl/Processor;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Landroidx/work/impl/Processor;

    .line 98
    invoke-virtual {p3}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p1

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    if-eqz p4, :cond_2

    goto :goto_2

    .line 100
    :cond_2
    new-instance p4, Landroidx/work/impl/WorkLauncherImpl;

    invoke-direct {p4, p2, p1}, Landroidx/work/impl/WorkLauncherImpl;-><init>(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    :goto_2
    iput-object p4, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkLauncher:Landroidx/work/impl/WorkLauncher;

    .line 101
    invoke-virtual {p2, p0}, Landroidx/work/impl/Processor;->addExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    return-void
.end method

.method private assertMainThread()V
    .locals 1

    .line 320
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-void

    .line 321
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Needs to be invoked on the main thread."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private hasIntentWithAction(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 309
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 310
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 311
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 315
    :cond_1
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private processCommand()V
    .locals 3

    .line 255
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Landroid/content/Context;

    const-string v1, "ProcessCommand"

    .line 257
    invoke-static {v0, v1}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 259
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    .line 261
    invoke-virtual {v1}, Landroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-interface {v1, v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnTaskThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 303
    throw p0
.end method


# virtual methods
.method public add(Landroid/content/Intent;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "intent",
            "startId"
        }
    .end annotation

    .line 144
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding command "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 148
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    const-string p1, "Unknown command. Ignoring"

    invoke-virtual {p0, v1, p1}, Landroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 156
    invoke-direct {p0, v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->hasIntentWithAction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const-string v0, "KEY_START_ID"

    .line 160
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 161
    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 162
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 163
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    .line 168
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V

    .line 170
    :cond_2
    monitor-exit p2

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method dequeueAndCheckForCompletion()V
    .locals 5

    const-string v0, "Removing command "

    .line 207
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v1

    sget-object v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v3, "Checking if commands are complete."

    invoke-virtual {v1, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 210
    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    .line 228
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    const/4 v3, 0x0

    .line 229
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    goto :goto_0

    .line 230
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Dequeue-d command is not the first."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 234
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object v0

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Landroidx/work/impl/background/systemalarm/CommandHandler;

    .line 235
    invoke-virtual {v3}, Landroidx/work/impl/background/systemalarm/CommandHandler;->hasPendingCommands()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 236
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/SerialExecutor;->hasPendingTasks()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    const-string v3, "No more commands & intents."

    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    if-eqz p0, :cond_3

    .line 243
    invoke-interface {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;->onAllCommandsCompleted()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 245
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 247
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V

    .line 249
    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getProcessor()Landroidx/work/impl/Processor;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Landroidx/work/impl/Processor;

    return-object p0
.end method

.method getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object p0
.end method

.method getWorkManager()Landroidx/work/impl/WorkManagerImpl;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Landroidx/work/impl/WorkManagerImpl;

    return-object p0
.end method

.method getWorkTimer()Landroidx/work/impl/utils/WorkTimer;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Landroidx/work/impl/utils/WorkTimer;

    return-object p0
.end method

.method getWorkerLauncher()Landroidx/work/impl/WorkLauncher;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkLauncher:Landroidx/work/impl/WorkLauncher;

    return-object p0
.end method

.method onDestroy()V
    .locals 3

    .line 113
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Destroying SystemAlarmDispatcher"

    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Landroidx/work/impl/Processor;

    .line 114
    invoke-virtual {v0, p0}, Landroidx/work/impl/Processor;->removeExecutionListener(Landroidx/work/impl/ExecutionListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    return-void
.end method

.method public onExecuted(Landroidx/work/impl/model/WorkGenerationalId;Z)V
    .locals 3
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

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 125
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {v2, p1, p2}, Landroidx/work/impl/background/systemalarm/CommandHandler;->createExecutionCompletedIntent(Landroid/content/Context;Landroidx/work/impl/model/WorkGenerationalId;Z)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p0, p1, p2}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Landroid/content/Intent;I)V

    .line 125
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method setCompletedListener(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object p0

    sget-object p1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v0, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {p0, p1, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    return-void
.end method
