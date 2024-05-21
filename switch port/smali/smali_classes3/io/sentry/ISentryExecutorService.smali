.class public interface abstract Lio/sentry/ISentryExecutorService;
.super Ljava/lang/Object;
.source "ISentryExecutorService.java"


# virtual methods
.method public abstract close(J)V
.end method

.method public abstract isClosed()Z
.end method

.method public abstract schedule(Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method

.method public abstract submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method

.method public abstract submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method
