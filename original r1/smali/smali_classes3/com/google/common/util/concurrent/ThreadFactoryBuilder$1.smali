.class Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;
.super Ljava/lang/Object;
.source "ThreadFactoryBuilder.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->doBuild(Lcom/google/common/util/concurrent/ThreadFactoryBuilder;)Ljava/util/concurrent/ThreadFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

.field final synthetic val$count:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic val$daemon:Ljava/lang/Boolean;

.field final synthetic val$nameFormat:Ljava/lang/String;

.field final synthetic val$priority:Ljava/lang/Integer;

.field final synthetic val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    iput-object p2, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p4, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    iput-object p5, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    iput-object p6, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$backingThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 166
    invoke-interface {v0, p1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$nameFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$count:Ljava/util/concurrent/atomic/AtomicLong;

    .line 169
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/ThreadFactoryBuilder;->access$000(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$daemon:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$priority:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    :cond_2
    iget-object p0, p0, Lcom/google/common/util/concurrent/ThreadFactoryBuilder$1;->val$uncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz p0, :cond_3

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_3
    return-object p1
.end method
