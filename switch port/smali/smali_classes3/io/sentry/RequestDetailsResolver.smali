.class final Lio/sentry/RequestDetailsResolver;
.super Ljava/lang/Object;
.source "RequestDetailsResolver.java"


# static fields
.field private static final SENTRY_AUTH:Ljava/lang/String; = "X-Sentry-Auth"

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "options is required"

    .line 19
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/RequestDetailsResolver;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method resolve()Lio/sentry/RequestDetails;
    .locals 5

    .line 24
    new-instance v0, Lio/sentry/Dsn;

    iget-object v1, p0, Lio/sentry/RequestDetailsResolver;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDsn()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/Dsn;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lio/sentry/Dsn;->getSentryUri()Ljava/net/URI;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/envelope/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v0}, Lio/sentry/Dsn;->getPublicKey()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lio/sentry/Dsn;->getSecretKey()Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Sentry sentry_version=7,sentry_client="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lio/sentry/RequestDetailsResolver;->options:Lio/sentry/SentryOptions;

    .line 36
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getSentryClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",sentry_key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ",sentry_secret="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lio/sentry/RequestDetailsResolver;->options:Lio/sentry/SentryOptions;

    .line 41
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getSentryClientName()Ljava/lang/String;

    move-result-object p0

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "User-Agent"

    .line 44
    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "X-Sentry-Auth"

    .line 45
    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance p0, Lio/sentry/RequestDetails;

    invoke-direct {p0, v1, v2}, Lio/sentry/RequestDetails;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method
