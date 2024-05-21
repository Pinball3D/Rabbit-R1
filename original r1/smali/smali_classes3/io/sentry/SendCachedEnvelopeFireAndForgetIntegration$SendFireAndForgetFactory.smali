.class public interface abstract Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory;
.super Ljava/lang/Object;
.source "SendCachedEnvelopeFireAndForgetIntegration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendFireAndForgetFactory"
.end annotation


# direct methods
.method public static synthetic lambda$processDir$0(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/DirectoryProcessor;Ljava/io/File;)V
    .locals 3

    .line 54
    sget-object v0, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v1, "Started processing cached files from %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v0, v1, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p2, p3}, Lio/sentry/DirectoryProcessor;->processDirectory(Ljava/io/File;)V

    .line 58
    sget-object p2, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string p3, "Finished processing cached files from %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p3, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract create(Lio/sentry/IHub;Lio/sentry/SentryOptions;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;
.end method

.method public hasValidPath(Ljava/lang/String;Lio/sentry/ILogger;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 42
    :cond_1
    :goto_0
    sget-object p0, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string p1, "No cached dir path is defined in options."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-interface {p2, p0, p1, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public processDir(Lio/sentry/DirectoryProcessor;Ljava/lang/String;Lio/sentry/ILogger;)Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForget;
    .locals 1

    .line 52
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p2, p1, p0}, Lio/sentry/SendCachedEnvelopeFireAndForgetIntegration$SendFireAndForgetFactory$$ExternalSyntheticLambda0;-><init>(Lio/sentry/ILogger;Ljava/lang/String;Lio/sentry/DirectoryProcessor;Ljava/io/File;)V

    return-object v0
.end method
