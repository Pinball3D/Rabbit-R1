.class public final Lio/sentry/DeduplicateMultithreadedEventProcessor;
.super Ljava/lang/Object;
.source "DeduplicateMultithreadedEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final processedEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    iput-object p1, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 3

    .line 30
    const-class v0, Lio/sentry/UncaughtExceptionHandlerIntegration$UncaughtExceptionHint;

    invoke-static {p2, v0}, Lio/sentry/util/HintUtils;->hasType(Lio/sentry/Hint;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 36
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getUnhandledException()Lio/sentry/protocol/SentryException;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p1

    .line 41
    :cond_1
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-object p1

    .line 46
    :cond_2
    invoke-virtual {v0}, Lio/sentry/protocol/SentryException;->getThreadId()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_3

    return-object p1

    :cond_3
    iget-object v2, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    .line 51
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_4

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object p0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->options:Lio/sentry/SentryOptions;

    .line 54
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    .line 58
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Event %s has been dropped due to multi-threaded deduplication"

    .line 55
    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    sget-object p0, Lio/sentry/hints/EventDropReason;->MULTITHREADED_DEDUPLICATION:Lio/sentry/hints/EventDropReason;

    invoke-static {p2, p0}, Lio/sentry/util/HintUtils;->setEventDropReason(Lio/sentry/Hint;Lio/sentry/hints/EventDropReason;)V

    const/4 p0, 0x0

    return-object p0

    :cond_4
    iget-object p0, p0, Lio/sentry/DeduplicateMultithreadedEventProcessor;->processedEvents:Ljava/util/Map;

    .line 62
    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
