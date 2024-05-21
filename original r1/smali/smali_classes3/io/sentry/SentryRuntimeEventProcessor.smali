.class final Lio/sentry/SentryRuntimeEventProcessor;
.super Ljava/lang/Object;
.source "SentryRuntimeEventProcessor.java"

# interfaces
.implements Lio/sentry/EventProcessor;


# instance fields
.field private final javaVendor:Ljava/lang/String;

.field private final javaVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "java.version"

    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/sentry/SentryRuntimeEventProcessor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryRuntimeEventProcessor;->javaVersion:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/SentryRuntimeEventProcessor;->javaVendor:Ljava/lang/String;

    return-void
.end method

.method private process(Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryBaseEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/sentry/SentryBaseEvent;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 35
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/SentryRuntime;

    move-result-object v0

    if-nez v0, :cond_0

    .line 36
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    new-instance v1, Lio/sentry/protocol/SentryRuntime;

    invoke-direct {v1}, Lio/sentry/protocol/SentryRuntime;-><init>()V

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    .line 38
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryBaseEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getRuntime()Lio/sentry/protocol/SentryRuntime;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lio/sentry/protocol/SentryRuntime;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lio/sentry/protocol/SentryRuntime;->getVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lio/sentry/SentryRuntimeEventProcessor;->javaVendor:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Lio/sentry/protocol/SentryRuntime;->setName(Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/SentryRuntimeEventProcessor;->javaVersion:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, p0}, Lio/sentry/protocol/SentryRuntime;->setVersion(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method


# virtual methods
.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lio/sentry/SentryRuntimeEventProcessor;->process(Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryBaseEvent;

    move-result-object p0

    check-cast p0, Lio/sentry/SentryEvent;

    return-object p0
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/sentry/SentryRuntimeEventProcessor;->process(Lio/sentry/SentryBaseEvent;)Lio/sentry/SentryBaseEvent;

    move-result-object p0

    check-cast p0, Lio/sentry/protocol/SentryTransaction;

    return-object p0
.end method
