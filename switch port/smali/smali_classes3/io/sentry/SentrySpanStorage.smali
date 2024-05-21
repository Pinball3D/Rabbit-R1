.class public final Lio/sentry/SentrySpanStorage;
.super Ljava/lang/Object;
.source "SentrySpanStorage.java"


# static fields
.field private static volatile INSTANCE:Lio/sentry/SentrySpanStorage;


# instance fields
.field private final spans:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lio/sentry/SentrySpanStorage;
    .locals 2

    sget-object v0, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    if-nez v0, :cond_1

    const-class v0, Lio/sentry/SentrySpanStorage;

    .line 19
    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lio/sentry/SentrySpanStorage;

    invoke-direct {v1}, Lio/sentry/SentrySpanStorage;-><init>()V

    sput-object v1, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    .line 23
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
    sget-object v0, Lio/sentry/SentrySpanStorage;->INSTANCE:Lio/sentry/SentrySpanStorage;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    .line 38
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/ISpan;

    return-object p0
.end method

.method public removeAndGet(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    .line 42
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/sentry/ISpan;

    return-object p0
.end method

.method public store(Ljava/lang/String;Lio/sentry/ISpan;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/SentrySpanStorage;->spans:Ljava/util/Map;

    .line 34
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
