.class Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;


# direct methods
.method constructor <init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "Acquiring operation wake lock ("

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 264
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 265
    iget-object v3, v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    .line 266
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 268
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 269
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 270
    iget-object v2, v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    const-string v3, "KEY_START_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 272
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v3

    sget-object v4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Processing command "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v6, v6, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 274
    iget-object v3, v3, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroidx/work/impl/utils/WakeLocks;->newWakeLock(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 278
    :try_start_1
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v4

    sget-object v5, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ") "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 281
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Landroidx/work/impl/background/systemalarm/CommandHandler;

    iget-object v4, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    iget-object v4, v4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Landroid/content/Intent;

    iget-object v5, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0, v4, v2, v5}, Landroidx/work/impl/background/systemalarm/CommandHandler;->onHandleIntent(Landroid/content/Intent;ILandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Releasing operation wake lock ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 294
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v1, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 284
    :try_start_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v5, "Unexpected error in onHandleIntent"

    invoke-virtual {v2, v4, v5, v0}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 289
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v0

    sget-object v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Releasing operation wake lock ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 294
    iget-object v0, v0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v1, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 289
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v4, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Releasing operation wake lock ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 294
    iget-object v1, v1, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;

    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;->this$0:Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-direct {v2, p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;-><init>(Landroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    throw v0

    :cond_0
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    .line 266
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
