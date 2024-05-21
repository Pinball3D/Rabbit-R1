.class public final Lio/sentry/SendFireAndForgetOutboxSender;
.super Ljava/lang/Object;
.source "SendFireAndForgetOutboxSender.java"

# interfaces
.implements Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;


# instance fields
.field private final sendFireAndForgetDirPath:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;


# direct methods
.method public constructor <init>(Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SendFireAndForgetDirPath is required"

    .line 19
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;

    iput-object p1, p0, Lio/sentry/SendFireAndForgetOutboxSender;->sendFireAndForgetDirPath:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;

    return-void
.end method


# virtual methods
.method public create(Lio/sentry/IHub;Lio/sentry/SentryOptions;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;
    .locals 10

    const-string v0, "Hub is required"

    .line 25
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "SentryOptions is required"

    .line 26
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lio/sentry/SendFireAndForgetOutboxSender;->sendFireAndForgetDirPath:Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;

    .line 28
    invoke-interface {v0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetDirPath;->getDirPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/sentry/SendFireAndForgetOutboxSender;->hasValidPath(Ljava/lang/String;Lio/sentry/ILogger;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    new-instance v1, Lio/sentry/OutboxSender;

    .line 37
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getEnvelopeReader()Lio/sentry/IEnvelopeReader;

    move-result-object v4

    .line 38
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v5

    .line 39
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v6

    .line 40
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getFlushTimeoutMillis()J

    move-result-wide v7

    .line 41
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getMaxQueueSize()I

    move-result v9

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lio/sentry/OutboxSender;-><init>(Lio/sentry/IHub;Lio/sentry/IEnvelopeReader;Lio/sentry/ISerializer;Lio/sentry/ILogger;JI)V

    .line 43
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p1

    invoke-virtual {p0, v1, v0, p1}, Lio/sentry/SendFireAndForgetOutboxSender;->processDir(Lio/sentry/DirectoryProcessor;Ljava/lang/String;Lio/sentry/ILogger;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;

    move-result-object p0

    return-object p0

    .line 30
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "No outbox dir path is defined in options."

    invoke-interface {p0, p1, v0, p2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method
