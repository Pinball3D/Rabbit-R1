.class public interface abstract Lio/sentry/IPerformanceContinuousCollector;
.super Ljava/lang/Object;
.source "IPerformanceContinuousCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceCollector;


# virtual methods
.method public abstract clear()V
.end method

.method public abstract onSpanFinished(Lio/sentry/ISpan;)V
.end method

.method public abstract onSpanStarted(Lio/sentry/ISpan;)V
.end method
