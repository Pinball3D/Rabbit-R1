.class public abstract Lcom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation runtime Lcom/google/common/util/concurrent/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    }
.end annotation


# instance fields
.field private volatile mutexDoNotUseDirectly:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    iput-object p1, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    return-void
.end method

.method private canAcquire(JJ)Z
    .locals 2

    .line 365
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter;->queryEarliestAvailable(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long p0, v0, p1

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static checkPermits(I)V
    .locals 2

    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requested permits (%s) must be positive"

    .line 433
    invoke-static {v0, v1, p0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    return-void
.end method

.method public static create(D)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 1

    .line 128
    invoke-static {}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/common/util/concurrent/RateLimiter;->create(DLcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object p0

    return-object p0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "warmupPeriod must not be negative: %s"

    .line 164
    invoke-static {v0, v1, p2, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 166
    invoke-static {}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v9

    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    .line 165
    invoke-static/range {v2 .. v9}, Lcom/google/common/util/concurrent/RateLimiter;->create(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lcom/google/common/util/concurrent/RateLimiter;

    move-result-object p0

    return-object p0
.end method

.method static create(DJLjava/util/concurrent/TimeUnit;DLcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 8

    .line 176
    new-instance v7, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V

    .line 177
    invoke-virtual {v7, p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    return-object v7
.end method

.method static create(DLcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lcom/google/common/util/concurrent/RateLimiter;
    .locals 3

    .line 133
    new-instance v0, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;-><init>(Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V

    .line 134
    invoke-virtual {v0, p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    return-object v0
.end method

.method private mutex()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    .line 198
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public acquire()D
    .locals 2

    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/RateLimiter;->acquire(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public acquire(I)D
    .locals 4

    .line 274
    invoke-virtual {p0, p1}, Lcom/google/common/util/concurrent/RateLimiter;->reserve(I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    long-to-double v0, v0

    mul-double/2addr v0, p0

    .line 276
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method abstract doGetRate()D
.end method

.method abstract doSetRate(DJ)V
.end method

.method public final getRate()D
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/util/concurrent/RateLimiter;->doGetRate()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 244
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method abstract queryEarliestAvailable(J)J
.end method

.method final reserve(I)J
    .locals 3

    .line 286
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 287
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 288
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method final reserveAndGetWaitLength(IJ)J
    .locals 0

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->reserveEarliestAvailable(IJ)J

    move-result-wide p0

    sub-long/2addr p0, p2

    const-wide/16 p2, 0x0

    .line 375
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method abstract reserveEarliestAvailable(IJ)J
.end method

.method public final setRate(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 227
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rate must be positive"

    .line 226
    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 228
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 229
    invoke-virtual {v1}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->doSetRate(DJ)V

    .line 230
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 397
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/google/common/util/concurrent/RateLimiter;->getRate()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryAcquire()Z
    .locals 4

    const-wide/16 v0, 0x0

    .line 333
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public tryAcquire(I)Z
    .locals 3

    const-wide/16 v0, 0x0

    .line 320
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    .line 349
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p2

    const-wide/16 v0, 0x0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 350
    invoke-static {p1}, Lcom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 352
    invoke-direct {p0}, Lcom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object p4

    monitor-enter p4

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 353
    invoke-virtual {v0}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v0

    .line 354
    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->canAcquire(JJ)Z

    move-result p2

    if-nez p2, :cond_0

    .line 355
    monitor-exit p4

    const/4 p0, 0x0

    return p0

    .line 357
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide p1

    .line 359
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/RateLimiter;->stopwatch:Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 360
    invoke-virtual {p0, p1, p2}, Lcom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    .line 359
    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1

    const/4 v0, 0x1

    .line 306
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result p0

    return p0
.end method
