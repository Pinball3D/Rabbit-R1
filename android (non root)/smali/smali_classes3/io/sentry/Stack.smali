.class final Lio/sentry/Stack;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Stack$StackItem;
    }
.end annotation


# instance fields
.field private final items:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/sentry/Stack$StackItem;",
            ">;"
        }
    .end annotation
.end field

.field private final logger:Lio/sentry/ILogger;


# direct methods
.method public constructor <init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    const-string v1, "logger is required"

    .line 52
    invoke-static {p1, v1}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ILogger;

    iput-object p1, p0, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    const-string p0, "rootStackItem is required"

    .line 53
    invoke-static {p2, p0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/Stack$StackItem;

    invoke-interface {v0, p0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/Stack;)V
    .locals 3

    .line 57
    iget-object v0, p1, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    new-instance v1, Lio/sentry/Stack$StackItem;

    iget-object v2, p1, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Stack$StackItem;

    invoke-direct {v1, v2}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/Stack$StackItem;)V

    invoke-direct {p0, v0, v1}, Lio/sentry/Stack;-><init>(Lio/sentry/ILogger;Lio/sentry/Stack$StackItem;)V

    .line 58
    iget-object p1, p1, Lio/sentry/Stack;->items:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object p1

    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    new-instance v0, Lio/sentry/Stack$StackItem;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Stack$StackItem;

    invoke-direct {v0, v1}, Lio/sentry/Stack$StackItem;-><init>(Lio/sentry/Stack$StackItem;)V

    invoke-virtual {p0, v0}, Lio/sentry/Stack;->push(Lio/sentry/Stack$StackItem;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method peek()Lio/sentry/Stack$StackItem;
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 72
    invoke-interface {p0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/Stack$StackItem;

    return-object p0
.end method

.method pop()V
    .locals 4

    iget-object v0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 76
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 77
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object p0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 78
    invoke-interface {p0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/sentry/Stack;->logger:Lio/sentry/ILogger;

    .line 80
    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v2, "Attempt to pop the root scope."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v1, v2, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method push(Lio/sentry/Stack$StackItem;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 86
    invoke-interface {p0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-void
.end method

.method size()I
    .locals 0

    iget-object p0, p0, Lio/sentry/Stack;->items:Ljava/util/Deque;

    .line 90
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    return p0
.end method
