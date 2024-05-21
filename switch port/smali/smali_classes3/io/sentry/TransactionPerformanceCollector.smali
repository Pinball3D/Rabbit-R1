.class public interface abstract Lio/sentry/TransactionPerformanceCollector;
.super Ljava/lang/Object;
.source "TransactionPerformanceCollector.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract onSpanFinished(Lio/sentry/ISpan;)V
.end method

.method public abstract onSpanStarted(Lio/sentry/ISpan;)V
.end method

.method public abstract start(Lio/sentry/ITransaction;)V
.end method

.method public abstract stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation
.end method
