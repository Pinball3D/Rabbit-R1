.class public final Lio/sentry/SentryTracer;
.super Ljava/lang/Object;
.source "SentryTracer.java"

# interfaces
.implements Lio/sentry/ITransaction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/SentryTracer$FinishStatus;
    }
.end annotation


# instance fields
.field private final baggage:Lio/sentry/Baggage;

.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation
.end field

.field private final contexts:Lio/sentry/protocol/Contexts;

.field private volatile deadlineTimeoutTask:Ljava/util/TimerTask;

.field private final eventId:Lio/sentry/protocol/SentryId;

.field private finishStatus:Lio/sentry/SentryTracer$FinishStatus;

.field private final hub:Lio/sentry/IHub;

.field private volatile idleTimeoutTask:Ljava/util/TimerTask;

.field private final instrumenter:Lio/sentry/Instrumenter;

.field private final isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private name:Ljava/lang/String;

.field private final root:Lio/sentry/Span;

.field private volatile timer:Ljava/util/Timer;

.field private final timerLock:Ljava/lang/Object;

.field private transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

.field private final transactionOptions:Lio/sentry/TransactionOptions;

.field private final transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;


# direct methods
.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;)V
    .locals 2

    .line 56
    new-instance v0, Lio/sentry/TransactionOptions;

    invoke-direct {v0}, Lio/sentry/TransactionOptions;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;-><init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V

    return-void
.end method

.method constructor <init>(Lio/sentry/TransactionContext;Lio/sentry/IHub;Lio/sentry/TransactionOptions;Lio/sentry/TransactionPerformanceCollector;)V
    .locals 7

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lio/sentry/protocol/SentryId;

    invoke-direct {v0}, Lio/sentry/protocol/SentryId;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 37
    sget-object v0, Lio/sentry/SentryTracer$FinishStatus;->NOT_FINISHED:Lio/sentry/SentryTracer$FinishStatus;

    iput-object v0, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    const-string v0, "context is required"

    .line 71
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "hub is required"

    .line 72
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 74
    new-instance v0, Lio/sentry/Span;

    .line 75
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getStartTimestamp()Lio/sentry/SentryDate;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lio/sentry/Span;-><init>(Lio/sentry/TransactionContext;Lio/sentry/SentryTracer;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;)V

    iput-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 77
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getInstrumenter()Lio/sentry/Instrumenter;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    iput-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    iput-object p4, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    .line 81
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    iput-object p3, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 84
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Lio/sentry/TransactionContext;->getBaggage()Lio/sentry/Baggage;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    goto :goto_0

    .line 87
    :cond_0
    new-instance p1, Lio/sentry/Baggage;

    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p2

    invoke-direct {p1, p2}, Lio/sentry/Baggage;-><init>(Lio/sentry/ILogger;)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    :goto_0
    if-eqz p4, :cond_1

    .line 92
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-interface {p4, p0}, Lio/sentry/TransactionPerformanceCollector;->start(Lio/sentry/ITransaction;)V

    .line 96
    :cond_1
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_2

    .line 97
    invoke-virtual {p3}, Lio/sentry/TransactionOptions;->getDeadlineTimeout()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 98
    :cond_2
    new-instance p1, Ljava/util/Timer;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/Timer;-><init>(Z)V

    iput-object p1, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 100
    invoke-direct {p0}, Lio/sentry/SentryTracer;->scheduleDeadlineTimeout()V

    .line 101
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    :cond_3
    return-void
.end method

.method static synthetic access$000(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onIdleTimeoutReached()V

    return-void
.end method

.method static synthetic access$200(Lio/sentry/SentryTracer;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onDeadlineTimeoutReached()V

    return-void
.end method

.method private cancelDeadlineTimer()V
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 308
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;

    .line 310
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    iget-object v1, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 311
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;

    .line 314
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

.method private cancelIdleTimer()V
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 269
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;

    .line 271
    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    iget-object v1, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    .line 272
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;

    .line 275
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

.method private createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 9

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 413
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    .line 417
    invoke-virtual {v0, p5}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_1

    .line 418
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p5, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 421
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v0

    if-ge p5, v0, :cond_4

    const-string p5, "parentSpanId is required"

    .line 422
    invoke-static {p1, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p5, "operation is required"

    .line 423
    invoke-static {p2, p5}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    .line 425
    new-instance p5, Lio/sentry/Span;

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 427
    invoke-virtual {v0}, Lio/sentry/Span;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    iget-object v5, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    new-instance v8, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda1;-><init>(Lio/sentry/SentryTracer;)V

    move-object v0, p5

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lio/sentry/Span;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SentryTracer;Ljava/lang/String;Lio/sentry/IHub;Lio/sentry/SentryDate;Lio/sentry/SpanOptions;Lio/sentry/SpanFinishedCallback;)V

    .line 450
    invoke-virtual {p5, p3}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "thread.id"

    invoke-virtual {p5, p2, p1}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 454
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMainThreadChecker()Lio/sentry/util/thread/IMainThreadChecker;

    move-result-object p1

    invoke-interface {p1}, Lio/sentry/util/thread/IMainThreadChecker;->isMainThread()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "main"

    goto :goto_0

    .line 456
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "thread.name"

    .line 452
    invoke-virtual {p5, p2, p1}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 457
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    if-eqz p0, :cond_3

    .line 459
    invoke-interface {p0, p5}, Lio/sentry/TransactionPerformanceCollector;->onSpanStarted(Lio/sentry/ISpan;)V

    :cond_3
    return-object p5

    :cond_4
    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 463
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 464
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 465
    invoke-interface {p0, p1, p4, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method private createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 7

    const/4 v4, 0x0

    .line 402
    sget-object v5, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method private createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 8

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 524
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->instrumenter:Lio/sentry/Instrumenter;

    .line 528
    invoke-virtual {v0, p4}, Lio/sentry/Instrumenter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 529
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 532
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getMaxSpans()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 533
    invoke-virtual/range {v2 .. v7}, Lio/sentry/Span;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 535
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 536
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string p4, "Span operation: %s, description: %s dropped due to limit reached. Returning NoOpSpan."

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 537
    invoke-interface {p0, p3, p4, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method private hasAllChildrenFinished()Z
    .locals 1

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 606
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 607
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/Span;

    .line 608
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$updateBaggageValues$3(Ljava/util/concurrent/atomic/AtomicReference;Lio/sentry/IScope;)V
    .locals 0

    .line 584
    invoke-interface {p1}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private onDeadlineTimeoutReached()V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->DEADLINE_EXCEEDED:Lio/sentry/SpanStatus;

    :goto_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 147
    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const/4 v3, 0x0

    .line 145
    invoke-virtual {p0, v0, v1, v3}, Lio/sentry/SentryTracer;->forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V

    iget-object p0, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 149
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private onIdleTimeoutReached()V
    .locals 1

    .line 138
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    sget-object v0, Lio/sentry/SpanStatus;->OK:Lio/sentry/SpanStatus;

    :goto_0
    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    iget-object p0, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private scheduleDeadlineTimeout()V
    .locals 6

    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 279
    invoke-virtual {v0}, Lio/sentry/TransactionOptions;->getDeadlineTimeout()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 281
    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 283
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelDeadlineTimer()V

    iget-object v2, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 284
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 285
    new-instance v2, Lio/sentry/SentryTracer$2;

    invoke-direct {v2, p0}, Lio/sentry/SentryTracer$2;-><init>(Lio/sentry/SentryTracer;)V

    iput-object v2, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;

    .line 293
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 295
    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 296
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to schedule finish timer"

    .line 297
    invoke-interface {v2, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onDeadlineTimeoutReached()V

    .line 303
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_1
    :goto_1
    return-void
.end method

.method private updateBaggageValues()V
    .locals 4

    .line 579
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 580
    invoke-virtual {v0}, Lio/sentry/Baggage;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 582
    new-instance v2, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v1, v2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    iget-object v1, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 587
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/User;

    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v3

    .line 586
    invoke-virtual {v1, p0, v0, v2, v3}, Lio/sentry/Baggage;->setValuesFromTransaction(Lio/sentry/ITransaction;Lio/sentry/protocol/User;Lio/sentry/SentryOptions;Lio/sentry/TracesSamplingDecision;)V

    iget-object v0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 588
    invoke-virtual {v0}, Lio/sentry/Baggage;->freeze()V

    .line 590
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 553
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 1

    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    invoke-virtual {p0, p1, p2, v0, v1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 180
    invoke-virtual {v0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    if-nez p2, :cond_1

    iget-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 189
    invoke-interface {p2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object p2

    invoke-interface {p2}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 193
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 194
    invoke-virtual {v1}, Lio/sentry/Span;->getOptions()Lio/sentry/SpanOptions;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/SpanOptions;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_3

    move-object v2, p1

    goto :goto_2

    .line 195
    :cond_3
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    iget-object v2, v2, Lio/sentry/SpanContext;->status:Lio/sentry/SpanStatus;

    :goto_2
    invoke-virtual {v1, v2, p2}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_1

    .line 199
    :cond_4
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->finishing(Lio/sentry/SpanStatus;)Lio/sentry/SentryTracer$FinishStatus;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    iget-object p1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 200
    invoke-virtual {p1}, Lio/sentry/Span;->isFinished()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 201
    invoke-virtual {p1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result p1

    if-eqz p1, :cond_d

    :cond_5
    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 204
    invoke-interface {p1, p0}, Lio/sentry/TransactionPerformanceCollector;->stop(Lio/sentry/ITransaction;)Ljava/util/List;

    move-result-object p1

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 208
    :goto_3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isSampled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 210
    invoke-interface {v1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getTransactionProfiler()Lio/sentry/ITransactionProfiler;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 212
    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-interface {v1, p0, p1, v2}, Lio/sentry/ITransactionProfiler;->onTransactionFinish(Lio/sentry/ITransaction;Ljava/util/List;Lio/sentry/SentryOptions;)Lio/sentry/ProfilingTraceData;

    move-result-object v1

    goto :goto_4

    :cond_7
    move-object v1, v0

    :goto_4
    if-eqz p1, :cond_8

    .line 215
    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_8
    iget-object p1, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    iget-object v2, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    .line 223
    invoke-static {v2}, Lio/sentry/SentryTracer$FinishStatus;->access$100(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    iget-object p1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 225
    new-instance p2, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda0;-><init>(Lio/sentry/SentryTracer;)V

    invoke-interface {p1, p2}, Lio/sentry/IHub;->configureScope(Lio/sentry/ScopeCallback;)V

    .line 234
    new-instance p1, Lio/sentry/protocol/SentryTransaction;

    invoke-direct {p1, p0}, Lio/sentry/protocol/SentryTransaction;-><init>(Lio/sentry/SentryTracer;)V

    iget-object p2, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 236
    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getTransactionFinishedCallback()Lio/sentry/TransactionFinishedCallback;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 238
    invoke-interface {p2, p0}, Lio/sentry/TransactionFinishedCallback;->execute(Lio/sentry/ITransaction;)V

    :cond_9
    iget-object p2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz p2, :cond_b

    iget-object p2, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 242
    monitor-enter p2

    :try_start_0
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz v2, :cond_a

    .line 244
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    .line 245
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelDeadlineTimer()V

    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 246
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    iput-object v0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    .line 249
    :cond_a
    monitor-exit p2

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_b
    :goto_5
    if-eqz p3, :cond_c

    iget-object p2, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 252
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    invoke-virtual {p2}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object p2

    if-eqz p2, :cond_c

    iget-object p1, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 254
    invoke-interface {p1}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p3, "Dropping idle transaction %s because it has no child spans"

    iget-object p0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 256
    invoke-interface {p1, p2, p3, p0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 263
    :cond_c
    invoke-virtual {p1}, Lio/sentry/protocol/SentryTransaction;->getMeasurements()Ljava/util/Map;

    move-result-object p2

    iget-object p3, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    invoke-virtual {p3}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 264
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->traceContext()Lio/sentry/TraceContext;

    move-result-object p0

    invoke-interface {p2, p1, p0, p4, v1}, Lio/sentry/IHub;->captureTransaction(Lio/sentry/protocol/SentryTransaction;Lio/sentry/TraceContext;Lio/sentry/Hint;Lio/sentry/ProfilingTraceData;)Lio/sentry/protocol/SentryId;

    :cond_d
    return-void
.end method

.method public forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
    .locals 4

    .line 155
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 159
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDateProvider()Lio/sentry/SentryDateProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/SentryDateProvider;->now()Lio/sentry/SentryDate;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    .line 164
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 165
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Span;

    const/4 v3, 0x0

    .line 167
    invoke-virtual {v2, v3}, Lio/sentry/Span;->setSpanFinishedCallback(Lio/sentry/SpanFinishedCallback;)V

    .line 168
    invoke-virtual {v2, p1, v0}, Lio/sentry/Span;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0, p1, v0, p2, p3}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object p0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    return-object p0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 735
    invoke-virtual {p0, p1}, Lio/sentry/Span;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 771
    invoke-virtual {p0}, Lio/sentry/Span;->getData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method getDeadlineTimeoutTask()Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->deadlineTimeoutTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 653
    invoke-virtual {p0}, Lio/sentry/Span;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->eventId:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 328
    invoke-virtual {p0}, Lio/sentry/Span;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object p0

    return-object p0
.end method

.method getIdleTimeoutTask()Ljava/util/TimerTask;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method public getLatestActiveSpan()Lio/sentry/Span;
    .locals 2

    .line 828
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 829
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 830
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    .line 831
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    invoke-virtual {v1}, Lio/sentry/Span;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 832
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/Span;

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 903
    invoke-virtual {p0}, Lio/sentry/Span;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 633
    invoke-virtual {p0}, Lio/sentry/Span;->getOperation()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getRoot()Lio/sentry/Span;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    return-object p0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 786
    invoke-virtual {p0}, Lio/sentry/Span;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object p0

    return-object p0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 695
    invoke-virtual {p0}, Lio/sentry/Span;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object p0

    return-object p0
.end method

.method public getSpans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryTracer;->children:Ljava/util/List;

    return-object p0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 323
    invoke-virtual {p0}, Lio/sentry/Span;->getStartDate()Lio/sentry/SentryDate;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 673
    invoke-virtual {p0}, Lio/sentry/Span;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p0

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 712
    invoke-virtual {p0, p1}, Lio/sentry/Span;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 690
    invoke-virtual {p0}, Lio/sentry/Span;->getThrowable()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0
.end method

.method getTimer()Ljava/util/Timer;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-object p0
.end method

.method isDeadlineTimerRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->isDeadlineTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method isFinishTimerRunning()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 717
    invoke-virtual {p0}, Lio/sentry/Span;->isFinished()Z

    move-result p0

    return p0
.end method

.method public isNoOp()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 781
    invoke-virtual {p0}, Lio/sentry/Span;->isProfileSampled()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 776
    invoke-virtual {p0}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$createChild$2$io-sentry-SentryTracer(Lio/sentry/Span;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionPerformanceCollector:Lio/sentry/TransactionPerformanceCollector;

    if-eqz v0, :cond_0

    .line 436
    invoke-interface {v0, p1}, Lio/sentry/TransactionPerformanceCollector;->onSpanFinished(Lio/sentry/ISpan;)V

    :cond_0
    iget-object p1, p0, Lio/sentry/SentryTracer;->finishStatus:Lio/sentry/SentryTracer$FinishStatus;

    iget-object v0, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 439
    invoke-virtual {v0}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 443
    invoke-virtual {p1}, Lio/sentry/TransactionOptions;->isWaitForChildren()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lio/sentry/SentryTracer;->hasAllChildrenFinished()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 444
    :cond_1
    invoke-virtual {p0}, Lio/sentry/SentryTracer;->scheduleFinish()V

    goto :goto_0

    .line 446
    :cond_2
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->access$300(Lio/sentry/SentryTracer$FinishStatus;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 447
    invoke-static {p1}, Lio/sentry/SentryTracer$FinishStatus;->access$100(Lio/sentry/SentryTracer$FinishStatus;)Lio/sentry/SpanStatus;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/SentryTracer;->finish(Lio/sentry/SpanStatus;)V

    :cond_3
    :goto_0
    return-void
.end method

.method synthetic lambda$finish$0$io-sentry-SentryTracer(Lio/sentry/IScope;Lio/sentry/ITransaction;)V
    .locals 0

    .line 0
    if-ne p2, p0, :cond_0

    .line 230
    invoke-interface {p1}, Lio/sentry/IScope;->clearTransaction()V

    :cond_0
    return-void
.end method

.method synthetic lambda$finish$1$io-sentry-SentryTracer(Lio/sentry/IScope;)V
    .locals 1

    .line 227
    new-instance v0, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/SentryTracer$$ExternalSyntheticLambda2;-><init>(Lio/sentry/SentryTracer;Lio/sentry/IScope;)V

    invoke-interface {p1, v0}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    return-void
.end method

.method public scheduleFinish()V
    .locals 6

    iget-object v0, p0, Lio/sentry/SentryTracer;->timerLock:Ljava/lang/Object;

    .line 107
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/SentryTracer;->transactionOptions:Lio/sentry/TransactionOptions;

    .line 109
    invoke-virtual {v1}, Lio/sentry/TransactionOptions;->getIdleTimeout()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0}, Lio/sentry/SentryTracer;->cancelIdleTimer()V

    iget-object v2, p0, Lio/sentry/SentryTracer;->isIdleFinishTimerRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 113
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 114
    new-instance v2, Lio/sentry/SentryTracer$1;

    invoke-direct {v2, p0}, Lio/sentry/SentryTracer$1;-><init>(Lio/sentry/SentryTracer;)V

    iput-object v2, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lio/sentry/SentryTracer;->timer:Ljava/util/Timer;

    iget-object v3, p0, Lio/sentry/SentryTracer;->idleTimeoutTask:Ljava/util/TimerTask;

    .line 123
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 125
    invoke-interface {v2}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v4, "Failed to schedule finish timer"

    .line 127
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    invoke-direct {p0}, Lio/sentry/SentryTracer;->onIdleTimeoutReached()V

    .line 134
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->contexts:Lio/sentry/protocol/Contexts;

    .line 882
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 722
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 723
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 724
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "The transaction is already finished. Data %s cannot be set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 725
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 730
    invoke-virtual {p0, p1, p2}, Lio/sentry/Span;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 638
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 639
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 640
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "The transaction is already finished. Description %s cannot be set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 641
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 648
    invoke-virtual {p0, p1}, Lio/sentry/Span;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 759
    invoke-virtual {p0, p1, p2}, Lio/sentry/Span;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 767
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/Span;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    return-void
.end method

.method public setMeasurementFromChild(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 741
    invoke-virtual {v0}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0, p1, p2}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V

    :cond_0
    return-void
.end method

.method public setMeasurementFromChild(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 752
    invoke-virtual {v0}, Lio/sentry/Span;->getMeasurements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/SentryTracer;->setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 791
    sget-object v0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 797
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 798
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 799
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "The transaction is already finished. Name %s cannot be set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 800
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iput-object p1, p0, Lio/sentry/SentryTracer;->name:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/SentryTracer;->transactionNameSource:Lio/sentry/protocol/TransactionNameSource;

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 618
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 619
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 620
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "The transaction is already finished. Operation %s cannot be set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 621
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 628
    invoke-virtual {p0, p1}, Lio/sentry/Span;->setOperation(Ljava/lang/String;)V

    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 658
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 659
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 660
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SpanStatus;->name()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "The transaction is already finished. Status %s cannot be set"

    .line 661
    invoke-interface {p0, v0, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 668
    invoke-virtual {p0, p1}, Lio/sentry/Span;->setStatus(Lio/sentry/SpanStatus;)V

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 700
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 701
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 702
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v0, "The transaction is already finished. Tag %s cannot be set"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 703
    invoke-interface {p0, p2, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 707
    invoke-virtual {p0, p1, p2}, Lio/sentry/Span;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 678
    invoke-virtual {v0}, Lio/sentry/Span;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 679
    invoke-interface {p0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object p0

    .line 680
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "The transaction is already finished. Throwable cannot be set"

    .line 681
    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 685
    invoke-virtual {p0, p1}, Lio/sentry/Span;->setThrowable(Ljava/lang/Throwable;)V

    return-void
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 1

    .line 344
    new-instance v0, Lio/sentry/SpanOptions;

    invoke-direct {v0}, Lio/sentry/SpanOptions;-><init>()V

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/sentry/SentryTracer;->startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 7

    .line 372
    new-instance v6, Lio/sentry/SpanOptions;

    invoke-direct {v6}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 384
    invoke-direct/range {p0 .. p6}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method startChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 362
    invoke-direct {p0, p1, p2, p3, p4}, Lio/sentry/SentryTracer;->createChild(Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 2

    const/4 v0, 0x0

    .line 476
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 6

    const/4 v3, 0x0

    .line 509
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 6

    .line 503
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 6

    .line 485
    new-instance v5, Lio/sentry/SpanOptions;

    invoke-direct {v5}, Lio/sentry/SpanOptions;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/sentry/SentryTracer;->startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 495
    invoke-direct/range {p0 .. p5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 6

    const/4 v3, 0x0

    .line 515
    sget-object v4, Lio/sentry/Instrumenter;->SENTRY:Lio/sentry/Instrumenter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryTracer;->createChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;

    move-result-object p0

    return-object p0
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 595
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0}, Lio/sentry/SentryTracer;->updateBaggageValues()V

    iget-object p0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 598
    invoke-static {p0, p1}, Lio/sentry/BaggageHeader;->fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 548
    invoke-virtual {p0}, Lio/sentry/Span;->toSentryTrace()Lio/sentry/SentryTraceHeader;

    move-result-object p0

    return-object p0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryTracer;->hub:Lio/sentry/IHub;

    .line 570
    invoke-interface {v0}, Lio/sentry/IHub;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTraceSampling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-direct {p0}, Lio/sentry/SentryTracer;->updateBaggageValues()V

    iget-object p0, p0, Lio/sentry/SentryTracer;->baggage:Lio/sentry/Baggage;

    .line 572
    invoke-virtual {p0}, Lio/sentry/Baggage;->toTraceContext()Lio/sentry/TraceContext;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 0

    iget-object p0, p0, Lio/sentry/SentryTracer;->root:Lio/sentry/Span;

    .line 893
    invoke-virtual {p0, p1}, Lio/sentry/Span;->updateEndDate(Lio/sentry/SentryDate;)Z

    move-result p0

    return p0
.end method
