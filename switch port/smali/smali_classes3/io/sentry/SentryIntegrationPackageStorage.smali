.class public final Lio/sentry/SentryIntegrationPackageStorage;
.super Ljava/lang/Object;
.source "SentryIntegrationPackageStorage.java"


# static fields
.field private static volatile INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;


# instance fields
.field private final integrations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final packages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    return-void
.end method

.method public static getInstance()Lio/sentry/SentryIntegrationPackageStorage;
    .locals 2

    sget-object v0, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    if-nez v0, :cond_1

    const-class v0, Lio/sentry/SentryIntegrationPackageStorage;

    .line 18
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lio/sentry/SentryIntegrationPackageStorage;

    invoke-direct {v1}, Lio/sentry/SentryIntegrationPackageStorage;-><init>()V

    sput-object v1, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lio/sentry/SentryIntegrationPackageStorage;->INSTANCE:Lio/sentry/SentryIntegrationPackageStorage;

    return-object v0
.end method


# virtual methods
.method public addIntegration(Ljava/lang/String;)V
    .locals 1

    const-string v0, "integration is required."

    .line 50
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    .line 51
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name is required."

    .line 59
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "version is required."

    .line 60
    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 62
    new-instance v0, Lio/sentry/protocol/SentryPackage;

    invoke-direct {v0, p1, p2}, Lio/sentry/protocol/SentryPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    .line 63
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearStorage()V
    .locals 1

    iget-object v0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    .line 73
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public getIntegrations()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->integrations:Ljava/util/Set;

    return-object p0
.end method

.method public getPackages()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/sentry/protocol/SentryPackage;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/SentryIntegrationPackageStorage;->packages:Ljava/util/Set;

    return-object p0
.end method
