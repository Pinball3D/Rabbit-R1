.class public final Lio/sentry/DiagnosticLogger;
.super Ljava/lang/Object;
.source "DiagnosticLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# instance fields
.field private final logger:Lio/sentry/ILogger;

.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;Lio/sentry/ILogger;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SentryOptions is required."

    .line 22
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/SentryOptions;

    iput-object p1, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    iput-object p2, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    return-void
.end method


# virtual methods
.method public getLogger()Lio/sentry/ILogger;
    .locals 0

    iget-object p0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    return-object p0
.end method

.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 2

    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    .line 34
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getDiagnosticLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lio/sentry/DiagnosticLogger;->options:Lio/sentry/SentryOptions;

    .line 38
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryLevel;->ordinal()I

    move-result p0

    invoke-virtual {v0}, Lio/sentry/SentryLevel;->ordinal()I

    move-result p1

    if-lt p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    .line 71
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    .line 54
    invoke-interface {p0, p1, p2, p3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lio/sentry/DiagnosticLogger;->isEnabled(Lio/sentry/SentryLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/sentry/DiagnosticLogger;->logger:Lio/sentry/ILogger;

    .line 90
    invoke-interface {p0, p1, p2, p3, p4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
