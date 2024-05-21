.class public final Landroidx/media3/common/PriorityTaskManager;
.super Ljava/lang/Object;
.source "PriorityTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;
    }
.end annotation


# instance fields
.field private highestPriority:I

.field private final lock:Ljava/lang/Object;

.field private final queue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    const/high16 v0, -0x80000000

    iput v0, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 62
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    iget v1, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    .line 64
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    .line 65
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public proceed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 75
    monitor-enter v0

    :goto_0
    :try_start_0
    iget v1, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 79
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public proceedNonBlocking(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 89
    monitor-enter v0

    :try_start_0
    iget p0, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 90
    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public proceedOrThrow(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 101
    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    if-ne v1, p1, :cond_0

    .line 105
    monitor-exit v0

    return-void

    .line 103
    :cond_0
    new-instance v1, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;

    iget p0, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    invoke-direct {v1, p1, p0}, Landroidx/media3/common/PriorityTaskManager$PriorityTooLowException;-><init>(II)V

    throw v1

    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 114
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/common/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/common/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    .line 116
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x80000000

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/common/PriorityTaskManager;->queue:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iput p1, p0, Landroidx/media3/common/PriorityTaskManager;->highestPriority:I

    iget-object p0, p0, Landroidx/media3/common/PriorityTaskManager;->lock:Ljava/lang/Object;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 118
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
