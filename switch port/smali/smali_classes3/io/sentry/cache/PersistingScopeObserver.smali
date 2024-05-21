.class public final Lio/sentry/cache/PersistingScopeObserver;
.super Lio/sentry/ScopeObserverAdapter;
.source "PersistingScopeObserver.java"


# static fields
.field public static final BREADCRUMBS_FILENAME:Ljava/lang/String; = "breadcrumbs.json"

.field public static final CONTEXTS_FILENAME:Ljava/lang/String; = "contexts.json"

.field public static final EXTRAS_FILENAME:Ljava/lang/String; = "extras.json"

.field public static final FINGERPRINT_FILENAME:Ljava/lang/String; = "fingerprint.json"

.field public static final LEVEL_FILENAME:Ljava/lang/String; = "level.json"

.field public static final REQUEST_FILENAME:Ljava/lang/String; = "request.json"

.field public static final SCOPE_CACHE:Ljava/lang/String; = ".scope-cache"

.field public static final TAGS_FILENAME:Ljava/lang/String; = "tags.json"

.field public static final TRACE_FILENAME:Ljava/lang/String; = "trace.json"

.field public static final TRANSACTION_FILENAME:Ljava/lang/String; = "transaction.json"

.field public static final USER_FILENAME:Ljava/lang/String; = "user.json"


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lio/sentry/ScopeObserverAdapter;-><init>()V

    iput-object p1, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    return-void
.end method

.method private delete(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v0, ".scope-cache"

    .line 147
    invoke-static {p0, v0, p1}, Lio/sentry/cache/CacheUtils;->delete(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 154
    invoke-static {p0, p1, p2, v0}, Lio/sentry/cache/PersistingScopeObserver;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/sentry/SentryOptions;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lio/sentry/JsonDeserializer<",
            "TR;>;)TT;"
        }
    .end annotation

    const-string v0, ".scope-cache"

    .line 162
    invoke-static {p0, v0, p1, p2, p3}, Lio/sentry/cache/CacheUtils;->read(Lio/sentry/SentryOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lio/sentry/JsonDeserializer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private serializeToDisk(Ljava/lang/Runnable;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 128
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getExecutorService()Lio/sentry/ISentryExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda4;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/lang/Runnable;)V

    .line 129
    invoke-interface {v0, v1}, Lio/sentry/ISentryExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 138
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Serialization task could not be scheduled"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private store(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    const-string v0, ".scope-cache"

    .line 143
    invoke-static {p0, p1, v0, p2}, Lio/sentry/cache/CacheUtils;->store(Lio/sentry/SentryOptions;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$serializeToDisk$10$io-sentry-cache-PersistingScopeObserver(Ljava/lang/Runnable;)V
    .locals 2

    .line 132
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lio/sentry/cache/PersistingScopeObserver;->options:Lio/sentry/SentryOptions;

    .line 134
    invoke-virtual {p0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p0

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Serialization task failed"

    invoke-interface {p0, v0, v1, p1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setBreadcrumbs$1$io-sentry-cache-PersistingScopeObserver(Ljava/util/Collection;)V
    .locals 1

    .line 0
    const-string v0, "breadcrumbs.json"

    .line 53
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setContexts$9$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/Contexts;)V
    .locals 1

    .line 0
    const-string v0, "contexts.json"

    .line 121
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setExtras$3$io-sentry-cache-PersistingScopeObserver(Ljava/util/Map;)V
    .locals 1

    .line 0
    const-string v0, "extras.json"

    .line 63
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setFingerprint$5$io-sentry-cache-PersistingScopeObserver(Ljava/util/Collection;)V
    .locals 1

    .line 0
    const-string v0, "fingerprint.json"

    .line 80
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setLevel$6$io-sentry-cache-PersistingScopeObserver(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 0
    const-string v0, "level.json"

    if-nez p1, :cond_0

    .line 88
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setRequest$4$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/Request;)V
    .locals 1

    .line 0
    const-string v0, "request.json"

    if-nez p1, :cond_0

    .line 71
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setTags$2$io-sentry-cache-PersistingScopeObserver(Ljava/util/Map;)V
    .locals 1

    .line 0
    const-string v0, "tags.json"

    .line 58
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$setTrace$8$io-sentry-cache-PersistingScopeObserver(Lio/sentry/SpanContext;)V
    .locals 1

    .line 0
    const-string v0, "trace.json"

    if-nez p1, :cond_0

    .line 112
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setTransaction$7$io-sentry-cache-PersistingScopeObserver(Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "transaction.json"

    if-nez p1, :cond_0

    .line 100
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic lambda$setUser$0$io-sentry-cache-PersistingScopeObserver(Lio/sentry/protocol/User;)V
    .locals 1

    .line 0
    const-string v0, "user.json"

    if-nez p1, :cond_0

    .line 44
    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->delete(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-direct {p0, p1, v0}, Lio/sentry/cache/PersistingScopeObserver;->store(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBreadcrumbs(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 53
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda10;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContexts(Lio/sentry/protocol/Contexts;)V
    .locals 1

    .line 121
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda8;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/Contexts;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 63
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda2;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFingerprint(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda5;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 1

    .line 85
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda0;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/SentryLevel;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 1

    .line 68
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda6;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/Request;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda3;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;)V
    .locals 1

    .line 109
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda7;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/SpanContext;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1

    .line 97
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda1;-><init>(Lio/sentry/cache/PersistingScopeObserver;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 1

    .line 41
    new-instance v0, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lio/sentry/cache/PersistingScopeObserver$$ExternalSyntheticLambda9;-><init>(Lio/sentry/cache/PersistingScopeObserver;Lio/sentry/protocol/User;)V

    invoke-direct {p0, v0}, Lio/sentry/cache/PersistingScopeObserver;->serializeToDisk(Ljava/lang/Runnable;)V

    return-void
.end method
