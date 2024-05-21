.class public final Lio/sentry/SentryExceptionFactory;
.super Ljava/lang/Object;
.source "SentryExceptionFactory.java"


# instance fields
.field private final sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;


# direct methods
.method public constructor <init>(Lio/sentry/SentryStackTraceFactory;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The SentryStackTraceFactory is required."

    .line 35
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryStackTraceFactory;

    iput-object p1, p0, Lio/sentry/SentryExceptionFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    return-void
.end method

.method private getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lio/sentry/protocol/Mechanism;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryStackFrame;",
            ">;Z)",
            "Lio/sentry/protocol/SentryException;"
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 99
    new-instance v1, Lio/sentry/protocol/SentryException;

    invoke-direct {v1}, Lio/sentry/protocol/SentryException;-><init>()V

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz p0, :cond_1

    .line 109
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p4, :cond_3

    .line 111
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    new-instance v2, Lio/sentry/protocol/SentryStackTrace;

    invoke-direct {v2, p4}, Lio/sentry/protocol/SentryStackTrace;-><init>(Ljava/util/List;)V

    if-eqz p5, :cond_2

    const/4 p4, 0x1

    .line 114
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {v2, p4}, Lio/sentry/protocol/SentryStackTrace;->setSnapshot(Ljava/lang/Boolean;)V

    .line 116
    :cond_2
    invoke-virtual {v1, v2}, Lio/sentry/protocol/SentryException;->setStacktrace(Lio/sentry/protocol/SentryStackTrace;)V

    .line 119
    :cond_3
    invoke-virtual {v1, p3}, Lio/sentry/protocol/SentryException;->setThreadId(Ljava/lang/Long;)V

    .line 120
    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryException;->setType(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, p2}, Lio/sentry/protocol/SentryException;->setMechanism(Lio/sentry/protocol/Mechanism;)V

    .line 122
    invoke-virtual {v1, p0}, Lio/sentry/protocol/SentryException;->setModule(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1, p1}, Lio/sentry/protocol/SentryException;->setValue(Ljava/lang/String;)V

    return-object v1
.end method

.method private getSentryExceptions(Ljava/util/Deque;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;)",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method extractExceptionQueue(Ljava/lang/Throwable;)Ljava/util/Deque;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Deque<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 140
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    :goto_0
    if-eqz p1, :cond_2

    .line 147
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    instance-of v2, p1, Lio/sentry/exception/ExceptionMechanismException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 151
    check-cast p1, Lio/sentry/exception/ExceptionMechanismException;

    .line 153
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getExceptionMechanism()Lio/sentry/protocol/Mechanism;

    move-result-object v2

    .line 154
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getThrowable()Ljava/lang/Throwable;

    move-result-object v4

    .line 155
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->getThread()Ljava/lang/Thread;

    move-result-object v5

    .line 156
    invoke-virtual {p1}, Lio/sentry/exception/ExceptionMechanismException;->isSnapshot()Z

    move-result p1

    move v11, p1

    move-object v8, v2

    move-object p1, v4

    goto :goto_1

    .line 159
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    const/4 v2, 0x0

    move-object v8, v2

    move v11, v3

    :goto_1
    if-eqz v8, :cond_1

    .line 162
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    invoke-virtual {v8}, Lio/sentry/protocol/Mechanism;->isHandled()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v2, p0, Lio/sentry/SentryExceptionFactory;->sentryStackTraceFactory:Lio/sentry/SentryStackTraceFactory;

    .line 166
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    .line 165
    invoke-virtual {v2, v4, v3}, Lio/sentry/SentryStackTraceFactory;->getStackFrames([Ljava/lang/StackTraceElement;Z)Ljava/util/List;

    move-result-object v10

    .line 169
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v6, p0

    move-object v7, p1

    .line 168
    invoke-direct/range {v6 .. v11}, Lio/sentry/SentryExceptionFactory;->getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;

    move-result-object v2

    .line 170
    invoke-interface {v0, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getSentryExceptions(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Lio/sentry/SentryExceptionFactory;->extractExceptionQueue(Ljava/lang/Throwable;)Ljava/util/Deque;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/sentry/SentryExceptionFactory;->getSentryExceptions(Ljava/util/Deque;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSentryExceptionsFromThread(Lio/sentry/protocol/SentryThread;Lio/sentry/protocol/Mechanism;Ljava/lang/Throwable;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/protocol/SentryThread;",
            "Lio/sentry/protocol/Mechanism;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentryException;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getStacktrace()Lio/sentry/protocol/SentryStackTrace;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 47
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-virtual {p1}, Lio/sentry/protocol/SentryThread;->getId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0}, Lio/sentry/protocol/SentryStackTrace;->getFrames()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p2

    .line 49
    invoke-direct/range {v3 .. v8}, Lio/sentry/SentryExceptionFactory;->getSentryException(Ljava/lang/Throwable;Lio/sentry/protocol/Mechanism;Ljava/lang/Long;Ljava/util/List;Z)Lio/sentry/protocol/SentryException;

    move-result-object p0

    .line 48
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
