.class final Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;
.super Ljava/lang/Object;
.source "EnvelopeFileObserver.java"

# interfaces
.implements Lio/sentry/hints/Cached;
.implements Lio/sentry/hints/Retryable;
.implements Lio/sentry/hints/SubmissionResult;
.implements Lio/sentry/hints/Flushable;
.implements Lio/sentry/hints/ApplyScopeData;
.implements Lio/sentry/hints/Resettable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/EnvelopeFileObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedEnvelopeHint"
.end annotation


# instance fields
.field private final flushTimeoutMillis:J

.field private latch:Ljava/util/concurrent/CountDownLatch;

.field private final logger:Lio/sentry/ILogger;

.field retry:Z

.field succeeded:Z


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p0}, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->reset()V

    iput-wide p1, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->flushTimeoutMillis:J

    const-string p1, "ILogger is required."

    .line 79
    invoke-static {p3, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public isRetry()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->retry:Z

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->succeeded:Z

    return p0
.end method

.method public reset()V
    .locals 2

    .line 116
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->retry:Z

    iput-boolean v0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->succeeded:Z

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->succeeded:Z

    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 106
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->retry:Z

    return-void
.end method

.method public waitFlush()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->flushTimeoutMillis:J

    .line 85
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 87
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object p0, p0, Lio/sentry/android/core/EnvelopeFileObserver$CachedEnvelopeHint;->logger:Lio/sentry/ILogger;

    .line 88
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Exception while awaiting on lock."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
