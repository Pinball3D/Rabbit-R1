.class Landroidx/work/impl/utils/SerialExecutorImpl$Task;
.super Ljava/lang/Object;
.source "SerialExecutorImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/utils/SerialExecutorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Task"
.end annotation


# instance fields
.field final mRunnable:Ljava/lang/Runnable;

.field final mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;


# direct methods
.method constructor <init>(Landroidx/work/impl/utils/SerialExecutorImpl;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialExecutor",
            "runnable"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    iput-object p2, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mRunnable:Ljava/lang/Runnable;

    .line 96
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 98
    iget-object v0, v0, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object p0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 99
    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 98
    iget-object v1, v1, Landroidx/work/impl/utils/SerialExecutorImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, Landroidx/work/impl/utils/SerialExecutorImpl$Task;->mSerialExecutor:Landroidx/work/impl/utils/SerialExecutorImpl;

    .line 99
    invoke-virtual {p0}, Landroidx/work/impl/utils/SerialExecutorImpl;->scheduleNext()V

    .line 100
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 101
    throw v0

    :catchall_2
    move-exception p0

    .line 100
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method
