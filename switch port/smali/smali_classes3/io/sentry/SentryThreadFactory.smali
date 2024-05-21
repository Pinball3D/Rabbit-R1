.class public final Lio/sentry/SentryThreadFactory;
.super Ljava/lang/Object;
.source "SentryThreadFactory.java"


# instance fields
.field private final options:Lio/sentry/SentryOptions;

.field private final sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryStackTraceFactory;Lio/sentry/SentryOptions;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The SentryStackTraceFactory is required."

    .line 36
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryStackTraceFactory;

    iput-object p1, p0, Lio/sentry/SentryThreadFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    const-string p1, "The SentryOptions is required"

    .line 37
    invoke-static {p2, p1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/SentryThreadFactory;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method private getSentryThread(Z[Ljava/lang/StackTraceElement;Ljava/lang/Thread;)Lio/sentry/protocol/SentryThread;
    .locals 3

    .line 129
    new-instance v0, Lio/sentry/protocol/SentryThread;

    invoke-direct {v0}, Lio/sentry/protocol/SentryThread;-><init>()V

    .line 131
    invoke-virtual {p3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setName(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p3}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setPriority(Ljava/lang/Integer;)V

    .line 133
    invoke-virtual {p3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setId(Ljava/lang/Long;)V

    .line 134
    invoke-virtual {p3}, Ljava/lang/Thread;->isDaemon()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryThread;->setDaemon(Ljava/lang/Boolean;)V

    .line 135
    invoke-virtual {p3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread$State;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lio/sentry/protocol/SentryThread;->setState(Ljava/lang/String;)V

    .line 136
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/sentry/protocol/SentryThread;->setCrashed(Ljava/lang/Boolean;)V

    iget-object p1, p0, Lio/sentry/SentryThreadFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    const/4 p3, 0x0

    .line 139
    invoke-virtual {p1, p2, p3}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lio/sentry/SentryThreadFactory;->options:Lio/sentry/SentryOptions;

    .line 141
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isAttachStacktrace()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 142
    new-instance p0, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {p0, p1}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 144
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    .line 146
    invoke-virtual {v0, p0}, Lio/sentry/protocol/SentryThread;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method getCurrentThread()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCurrentThreads(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 72
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCurrentThreads(Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 67
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/sentry/SentryThreadFactory;->getCurrentThreads(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getCurrentThreads(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryThread;",
            ">;"
        }
    .end annotation

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 95
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    if-ne v3, v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    .line 110
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    invoke-direct {p0, v3, v4, v2}, Lio/sentry/SentryThreadFactory;->getSentryThread(Z[Ljava/lang/StackTraceElement;Ljava/lang/Thread;)Lio/sentry/protocol/SentryThread;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    return-object v1
.end method
