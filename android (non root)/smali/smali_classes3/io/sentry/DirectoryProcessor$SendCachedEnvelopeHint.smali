.class final Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;
.super Ljava/lang/Object;
.source "DirectoryProcessor.java"

# interfaces
.implements Lio/sentry/hints/Cached;
.implements Lio/sentry/hints/Retryable;
.implements Lio/sentry/hints/SubmissionResult;
.implements Lio/sentry/hints/Flushable;
.implements Lio/sentry/hints/Enqueable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/DirectoryProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SendCachedEnvelopeHint"
.end annotation


# instance fields
.field private final filePath:Ljava/lang/String;

.field private final flushTimeoutMillis:J

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final logger:Lio/sentry/ILogger;

.field private final processedEnvelopes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field retry:Z

.field succeeded:Z


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;Ljava/lang/String;Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lio/sentry/ILogger;",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->retry:Z

    iput-boolean v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->succeeded:Z

    iput-wide p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->flushTimeoutMillis:J

    iput-object p4, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->filePath:Ljava/lang/String;

    iput-object p5, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->processedEnvelopes:Ljava/util/Queue;

    .line 136
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public isRetry()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->retry:Z

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->succeeded:Z

    return p0
.end method

.method public markEnqueued()V
    .locals 1

    iget-object v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->processedEnvelopes:Ljava/util/Queue;

    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->filePath:Ljava/lang/String;

    .line 174
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->succeeded:Z

    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 164
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public setRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->retry:Z

    return-void
.end method

.method public waitFlush()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->latch:Ljava/util/concurrent/CountDownLatch;

    iget-wide v1, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->flushTimeoutMillis:J

    .line 153
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    iget-object p0, p0, Lio/sentry/DirectoryProcessor$SendCachedEnvelopeHint;->logger:Lio/sentry/ILogger;

    .line 156
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Exception while awaiting on lock."

    invoke-interface {p0, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method
