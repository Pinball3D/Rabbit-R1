.class public final Lio/sentry/transport/StdoutTransport;
.super Ljava/lang/Object;
.source "StdoutTransport.java"

# interfaces
.implements Lio/sentry/transport/ITransport;


# instance fields
.field private final serializer:Lio/sentry/ISerializer;


# direct methods
.method public constructor <init>(Lio/sentry/ISerializer;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Serializer is required"

    .line 16
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/ISerializer;

    iput-object p1, p0, Lio/sentry/transport/StdoutTransport;->serializer:Lio/sentry/ISerializer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public close(Z)V
    .locals 0

    return-void
.end method

.method public flush(J)V
    .locals 0

    .line 34
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Flushing"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getRateLimiter()Lio/sentry/transport/RateLimiter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public send(Lio/sentry/SentryEnvelope;Lio/sentry/Hint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "SentryEnvelope is required"

    .line 22
    invoke-static {p1, p2}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_0
    iget-object p0, p0, Lio/sentry/transport/StdoutTransport;->serializer:Lio/sentry/ISerializer;

    .line 25
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {p0, p1, p2}, Lio/sentry/ISerializer;->serialize(Lio/sentry/SentryEnvelope;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
