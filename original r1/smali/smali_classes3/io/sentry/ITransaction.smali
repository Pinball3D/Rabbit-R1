.class public interface abstract Lio/sentry/ITransaction;
.super Ljava/lang/Object;
.source "ITransaction.java"

# interfaces
.implements Lio/sentry/ISpan;


# virtual methods
.method public abstract finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
.end method

.method public abstract forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
.end method

.method public abstract getContexts()Lio/sentry/protocol/Contexts;
.end method

.method public abstract getEventId()Lio/sentry/protocol/SentryId;
.end method

.method public abstract getLatestActiveSpan()Lio/sentry/Span;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getSamplingDecision()Lio/sentry/TracesSamplingDecision;
.end method

.method public abstract getSpans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
.end method

.method public abstract isProfileSampled()Ljava/lang/Boolean;
.end method

.method public abstract isSampled()Ljava/lang/Boolean;
.end method

.method public abstract scheduleFinish()V
.end method

.method public abstract setContext(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
.end method
