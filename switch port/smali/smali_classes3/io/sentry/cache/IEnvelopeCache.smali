.class public interface abstract Lio/sentry/cache/IEnvelopeCache;
.super Ljava/lang/Object;
.source "IEnvelopeCache.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/sentry/SentryEnvelope;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract discard(Lio/sentry/SentryEnvelope;)V
.end method

.method public store(Lio/sentry/SentryEnvelope;)V
    .locals 1

    .line 12
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/cache/IEnvelopeCache;->store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    return-void
.end method

.method public abstract store(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
.end method
