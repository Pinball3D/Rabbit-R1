.class public Landroidx/work/impl/utils/WorkTimer;
.super Ljava/lang/Object;
.source "WorkTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;,
        Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field final mRunnableScheduler:Landroidx/work/RunnableScheduler;

.field final mTimerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkTimer"

    .line 39
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/utils/WorkTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/RunnableScheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scheduler"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/work/impl/utils/WorkTimer;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    return-void
.end method


# virtual methods
.method public getListeners()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    .line 105
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/Map;

    .line 106
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTimerMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroidx/work/impl/model/WorkGenerationalId;",
            "Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    .line 97
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 98
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTimer(Landroidx/work/impl/model/WorkGenerationalId;JLandroidx/work/impl/utils/WorkTimer$TimeLimitExceededListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "id",
            "processingTimeMillis",
            "listener"
        }
    .end annotation

    const-string v0, "Starting timer for "

    iget-object v1, p0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    .line 68
    monitor-enter v1

    .line 69
    :try_start_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/WorkTimer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Landroidx/work/impl/utils/WorkTimer;->stopTimer(Landroidx/work/impl/model/WorkGenerationalId;)V

    .line 72
    new-instance v0, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;

    invoke-direct {v0, p0, p1}, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;-><init>(Landroidx/work/impl/utils/WorkTimer;Landroidx/work/impl/model/WorkGenerationalId;)V

    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 73
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/Map;

    .line 74
    invoke-interface {v2, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer;->mRunnableScheduler:Landroidx/work/RunnableScheduler;

    .line 75
    invoke-interface {p0, p2, p3, v0}, Landroidx/work/RunnableScheduler;->scheduleWithDelay(JLjava/lang/Runnable;)V

    .line 76
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public stopTimer(Landroidx/work/impl/model/WorkGenerationalId;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "Stopping timer for "

    iget-object v1, p0, Landroidx/work/impl/utils/WorkTimer;->mLock:Ljava/lang/Object;

    .line 85
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroidx/work/impl/utils/WorkTimer;->mTimerMap:Ljava/util/Map;

    .line 86
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/work/impl/utils/WorkTimer$WorkTimerRunnable;

    if-eqz v2, :cond_0

    .line 88
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    move-result-object v2

    sget-object v3, Landroidx/work/impl/utils/WorkTimer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/utils/WorkTimer;->mListeners:Ljava/util/Map;

    .line 89
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
