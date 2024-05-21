.class public interface abstract Lio/sentry/transport/ITransport;
.super Ljava/lang/Object;
.source "ITransport.java"

# interfaces
.implements Ljava/io/Closeable;


# virtual methods
.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush(J)V
.end method

.method public abstract getRateLimiter()Lio/sentry/transport/RateLimiter;
.end method

.method public isHealthy()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public send(Lio/sentry/SentryEnvelope;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    invoke-interface {p0, p1, v0}, Lio/sentry/transport/ITransport;->send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V

    return-void
.end method

.method public abstract send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
