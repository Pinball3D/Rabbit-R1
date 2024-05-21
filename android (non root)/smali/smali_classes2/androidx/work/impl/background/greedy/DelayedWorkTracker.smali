.class public Landroidx/work/impl/background/greedy/DelayedWorkTracker;
.super Ljava/lang/Object;
.source "DelayedWorkTracker.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private final mClock:Landroidx/work/Clock;

.field final mImmediateScheduler:Landroidx/work/impl/Scheduler;

.field private final mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field private final mRunnables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DelayedWorkTracker"

    .line 41
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/Scheduler;Landroidx/work/RunnableScheduler;Landroidx/work/Clock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "immediateScheduler",
            "runnableScheduler",
            "clock"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mImmediateScheduler:Landroidx/work/impl/Scheduler;

    iput-object p2, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    iput-object p3, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mClock:Landroidx/work/Clock;

    .line 58
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public schedule(Landroidx/work/impl/model/WorkSpec;J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "workSpec",
            "nextRunTime"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    .line 70
    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 72
    invoke-interface {v1, v0}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    new-instance v0, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/background/greedy/DelayedWorkTracker$1;-><init>(Landroidx/work/impl/background/greedy/DelayedWorkTracker;Landroidx/work/impl/model/WorkSpec;)V

    iget-object v1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    .line 83
    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mClock:Landroidx/work/Clock;

    .line 84
    invoke-interface {p1}, Landroidx/work/Clock;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr p2, v1

    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 86
    invoke-interface {p0, p2, p3, v0}, Landroidx/work/RunnableScheduler;->scheduleWithDelay(JLjava/lang/Runnable;)V

    return-void
.end method

.method public unschedule(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "workSpecId"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnables:Ljava/util/Map;

    .line 95
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/work/impl/background/greedy/DelayedWorkTracker;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 97
    invoke-interface {p0, p1}, Landroidx/work/RunnableScheduler;->cancel(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
