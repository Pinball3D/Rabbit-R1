.class public final Lio/sentry/Scope;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Lio/sentry/IScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Scope$IWithSession;,
        Lio/sentry/Scope$SessionPair;,
        Lio/sentry/Scope$IWithTransaction;,
        Lio/sentry/Scope$IWithPropagationContext;
    }
.end annotation


# instance fields
.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final breadcrumbs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private contexts:Lio/sentry/protocol/Contexts;

.field private eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level:Lio/sentry/SentryLevel;

.field private final options:Lio/sentry/SentryOptions;

.field private propagationContext:Lio/sentry/PropagationContext;

.field private final propagationContextLock:Ljava/lang/Object;

.field private request:Lio/sentry/protocol/Request;

.field private screen:Ljava/lang/String;

.field private volatile session:Lio/sentry/Session;

.field private final sessionLock:Ljava/lang/Object;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transaction:Lio/sentry/ITransaction;

.field private final transactionLock:Ljava/lang/Object;

.field private transactionName:Ljava/lang/String;

.field private user:Lio/sentry/protocol/User;


# direct methods
.method private constructor <init>(Lio/sentry/Scope;)V
    .locals 6

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 95
    iget-object v0, p1, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    iput-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 96
    iget-object v0, p1, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 97
    iget-object v0, p1, Lio/sentry/Scope;->session:Lio/sentry/Session;

    iput-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 98
    iget-object v0, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 99
    iget-object v0, p1, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 101
    iget-object v0, p1, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    new-instance v2, Lio/sentry/protocol/User;

    invoke-direct {v2, v0}, Lio/sentry/protocol/User;-><init>(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 103
    iget-object v0, p1, Lio/sentry/Scope;->screen:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    if-eqz v0, :cond_1

    .line 106
    new-instance v1, Lio/sentry/protocol/Request;

    invoke-direct {v1, v0}, Lio/sentry/protocol/Request;-><init>(Lio/sentry/protocol/Request;)V

    :cond_1
    iput-object v1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 109
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 111
    iget-object v0, p1, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    const/4 v1, 0x0

    new-array v2, v1, [Lio/sentry/Breadcrumb;

    invoke-interface {v0, v2}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/sentry/Breadcrumb;

    .line 113
    iget-object v2, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v2

    invoke-direct {p0, v2}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v2

    .line 115
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 116
    new-instance v5, Lio/sentry/Breadcrumb;

    invoke-direct {v5, v4}, Lio/sentry/Breadcrumb;-><init>(Lio/sentry/Breadcrumb;)V

    .line 117
    invoke-interface {v2, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 121
    iget-object v0, p1, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 123
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 125
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_3

    .line 127
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    iput-object v1, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 133
    iget-object v0, p1, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 135
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 137
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_5

    .line 139
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-object v1, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 145
    new-instance v0, Lio/sentry/protocol/Contexts;

    iget-object v1, p1, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-direct {v0, v1}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 147
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p1, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 149
    new-instance v0, Lio/sentry/PropagationContext;

    iget-object p1, p1, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {v0, p1}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    const-string v0, "SentryOptions is required."

    .line 89
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 90
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result p1

    invoke-direct {p0, p1}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 91
    new-instance p1, Lio/sentry/PropagationContext;

    invoke-direct {p1}, Lio/sentry/PropagationContext;-><init>()V

    iput-object p1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method private createBreadcrumbsList(I)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance p0, Lio/sentry/CircularFifoQueue;

    invoke-direct {p0, p1}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    invoke-static {p0}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object p0

    return-object p0
.end method

.method private executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;
    .locals 1

    .line 393
    :try_start_0
    invoke-interface {p1, p2, p3}, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;->execute(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 396
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v0, "The BeforeBreadcrumbCallback callback threw an exception. Exception details will be added to the breadcrumb."

    .line 397
    invoke-interface {p0, p3, v0, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "sentry:message"

    .line 403
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lio/sentry/Breadcrumb;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-object p2
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 722
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1

    const/4 v0, 0x0

    .line 449
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 422
    new-instance p2, Lio/sentry/Hint;

    invoke-direct {p2}, Lio/sentry/Hint;-><init>()V

    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 425
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 427
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/Scope;->executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    iget-object p2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 430
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 432
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 433
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    iget-object v1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 434
    invoke-interface {v0, v1}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 437
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Breadcrumb was dropped by beforeBreadcrumb"

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 760
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    iput-object v0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    iput-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    iget-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 494
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 495
    invoke-virtual {p0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 496
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 497
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 498
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 499
    invoke-virtual {p0}, Lio/sentry/Scope;->clearTransaction()V

    .line 500
    invoke-virtual {p0}, Lio/sentry/Scope;->clearAttachments()V

    return-void
.end method

.method public clearAttachments()V
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 728
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 455
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 457
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    iget-object v2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 458
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearTransaction()V
    .locals 2

    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 465
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 470
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 471
    invoke-interface {v0, v1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 472
    invoke-interface {v0, v1}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 467
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public clone()Lio/sentry/IScope;
    .locals 1

    .line 945
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lio/sentry/Scope;->clone()Lio/sentry/IScope;

    move-result-object p0

    return-object p0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 880
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 882
    invoke-virtual {v1}, Lio/sentry/Session;->end()V

    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 883
    invoke-virtual {v1}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v1

    iput-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    move-object v2, v1

    .line 886
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 711
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object p0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getBreadcrumbs()Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    return-object p0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    return-object p0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
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

    iget-object p0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    return-object p0
.end method

.method public getFingerprint()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    return-object p0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    return-object p0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    return-object p0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-object p0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    return-object p0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    return-object p0
.end method

.method public getSession()Lio/sentry/Session;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    return-object p0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    iget-object p0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz p0, :cond_0

    .line 219
    invoke-interface {p0}, Lio/sentry/ITransaction;->getLatestActiveSpan()Lio/sentry/Span;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public getTags()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 512
    invoke-static {p0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    return-object p0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 184
    invoke-interface {v0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    :goto_0
    return-object p0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    return-object p0
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 699
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 581
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 583
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 584
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeExtra(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 585
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 538
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 540
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 541
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeTag(Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 542
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 623
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2

    .line 687
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 688
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2

    .line 648
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 649
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 607
    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 609
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/IScopeObserver;

    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 610
    invoke-interface {p2, v0}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 635
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 636
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 661
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 662
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 674
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "value"

    .line 675
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 566
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 568
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 569
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 570
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 361
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 363
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 364
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->setFingerprint(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 171
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 172
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->setLevel(Lio/sentry/SentryLevel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 334
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 335
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->setRequest(Lio/sentry/protocol/Request;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lio/sentry/Scope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v1

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Lio/sentry/protocol/App;

    invoke-direct {v1}, Lio/sentry/protocol/App;-><init>()V

    .line 299
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 303
    invoke-virtual {v1, p1}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto :goto_0

    .line 305
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v1, v2}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    :goto_0
    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 310
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/IScopeObserver;

    .line 311
    invoke-interface {p1, v0}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 523
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 525
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 526
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 527
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 3

    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 235
    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 238
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    if-eqz p1, :cond_0

    .line 240
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 241
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 243
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 244
    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_0

    .line 247
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    if-eqz v0, :cond_0

    .line 197
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-interface {v0, p1, v1}, Lio/sentry/ITransaction;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    :cond_0
    iput-object p1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 201
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 202
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 205
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Transaction cannot be null"

    invoke-interface {p0, p1, v1, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 269
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IScopeObserver;

    .line 270
    invoke-interface {v0, p1}, Lio/sentry/IScopeObserver;->setUser(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 8

    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 806
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 809
    invoke-virtual {v1}, Lio/sentry/Session;->end()V

    :cond_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    iget-object v2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 813
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 814
    new-instance v2, Lio/sentry/Session;

    iget-object v4, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 816
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    iget-object v6, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v4, v5, v6, v7}, Lio/sentry/Session;-><init>(Ljava/lang/String;Lio/sentry/protocol/User;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v1, :cond_1

    .line 818
    invoke-virtual {v1}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v3

    .line 819
    :cond_1
    new-instance v1, Lio/sentry/Scope$SessionPair;

    iget-object p0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {p0}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object p0

    invoke-direct {v1, p0, v3}, Lio/sentry/Scope$SessionPair;-><init>(Lio/sentry/Session;Lio/sentry/Session;)V

    move-object v3, v1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 822
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Release is not set on SentryOptions. Session could not be started"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 823
    invoke-interface {p0, v1, v2, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 827
    :goto_0
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 2

    iget-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Ljava/lang/Object;

    .line 932
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    .line 933
    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithPropagationContext;->accept(Lio/sentry/PropagationContext;)V

    .line 934
    new-instance p1, Lio/sentry/PropagationContext;

    iget-object p0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {p1, p0}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    .line 935
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 2

    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Ljava/lang/Object;

    .line 774
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 775
    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithSession;->accept(Lio/sentry/Session;)V

    iget-object p1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 778
    invoke-virtual {p0}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 780
    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Ljava/lang/Object;

    .line 898
    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 899
    invoke-interface {p1, p0}, Lio/sentry/Scope$IWithTransaction;->accept(Lio/sentry/ITransaction;)V

    .line 900
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
