.class public final Landroidx/media3/common/util/TimestampAdjuster;
.super Ljava/lang/Object;
.source "TimestampAdjuster.java"


# static fields
.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L

.field public static final MODE_NO_OFFSET:J = 0x7fffffffffffffffL

.field public static final MODE_SHARED:J = 0x7ffffffffffffffeL


# instance fields
.field private firstSampleTimestampUs:J

.field private lastUnadjustedTimestampUs:J

.field private final nextSampleTimestampUs:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 87
    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->reset(J)V

    return-void
.end method

.method public static ptsToUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    const-wide/32 v0, 0x15f90

    .line 247
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToNonWrappedPts(J)J
    .locals 2

    const-wide/32 v0, 0x15f90

    mul-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    .line 271
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static usToWrappedPts(J)J
    .locals 2

    .line 258
    invoke-static {p0, p1}, Landroidx/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide p0

    const-wide v0, 0x200000000L

    rem-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized adjustSampleTimestamp(J)J
    .locals 4

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 220
    monitor-exit p0

    return-wide v0

    .line 222
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    iget-object v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 225
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_1
    sub-long/2addr v0, p1

    iput-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr p1, v0

    .line 232
    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized adjustTsTimestamp(J)J
    .locals 8

    monitor-enter p0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 195
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_0
    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_1

    .line 200
    invoke-static {v2, v3}, Landroidx/media3/common/util/TimestampAdjuster;->usToNonWrappedPts(J)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    add-long/2addr v2, v0

    const-wide v4, 0x200000000L

    .line 201
    div-long/2addr v2, v4

    const-wide/16 v6, 0x1

    sub-long v6, v2, v6

    mul-long/2addr v6, v4

    add-long/2addr v6, p1

    mul-long/2addr v2, v4

    add-long/2addr p1, v2

    sub-long v2, v6, v0

    .line 205
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    move-wide p1, v6

    .line 209
    :cond_1
    invoke-static {p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->ptsToUs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFirstSampleTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 151
    :cond_1
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastAdjustedTimestampUs()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v0, v2

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->getFirstSampleTimestampUs()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTimestampOffsetUs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isInitialized()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p1, p1, v0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-nez p1, :cond_0

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->timestampOffsetUs:J

    iput-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->lastUnadjustedTimestampUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized sharedInitializeOrWait(ZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroidx/media3/common/util/TimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v2, 0x7ffffffffffffffeL

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 118
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 119
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 120
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    iget-object p1, p0, Landroidx/media3/common/util/TimestampAdjuster;->nextSampleTimestampUs:Ljava/lang/ThreadLocal;

    .line 122
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_4

    :cond_2
    const-wide/16 p1, 0x0

    move-wide v5, p1

    move-wide v3, p4

    .line 127
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result p3

    if-nez p3, :cond_7

    cmp-long p3, p4, p1

    if-nez p3, :cond_3

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :cond_3
    cmp-long p3, v3, p1

    if-lez p3, :cond_4

    move p3, v1

    goto :goto_2

    :cond_4
    move p3, v2

    .line 131
    :goto_2
    invoke-static {p3}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 132
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 133
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v7

    add-long/2addr v5, v3

    cmp-long p3, v5, p4

    if-ltz p3, :cond_6

    .line 135
    invoke-virtual {p0}, Landroidx/media3/common/util/TimestampAdjuster;->isInitialized()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_3

    .line 136
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TimestampAdjuster failed to initialize in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " milliseconds"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance p2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p2, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :goto_3
    sub-long v3, p4, v5

    goto :goto_1

    .line 144
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
