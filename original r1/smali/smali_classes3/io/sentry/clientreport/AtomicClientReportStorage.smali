.class final Lio/sentry/clientreport/AtomicClientReportStorage;
.super Ljava/lang/Object;
.source "AtomicClientReportStorage.java"

# interfaces
.implements Lio/sentry/clientreport/IClientReportStorage;


# instance fields
.field private final lostEventCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/sentry/clientreport/ClientReportKey;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    invoke-static {}, Lio/sentry/clientreport/DiscardReason;->values()[Lio/sentry/clientreport/DiscardReason;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 23
    invoke-static {}, Lio/sentry/DataCategory;->values()[Lio/sentry/DataCategory;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 24
    new-instance v10, Lio/sentry/clientreport/ClientReportKey;

    .line 25
    invoke-virtual {v5}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v11, v9}, Lio/sentry/clientreport/ClientReportKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v11, 0x0

    invoke-direct {v9, v11, v12}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 24
    invoke-interface {v0, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCount(Lio/sentry/clientreport/ClientReportKey;Ljava/lang/Long;)V
    .locals 0

    iget-object p0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Ljava/util/Map;

    .line 35
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    :cond_0
    return-void
.end method

.method public resetCountsAndGet()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/clientreport/DiscardedEvent;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lio/sentry/clientreport/AtomicClientReportStorage;->lostEventCounts:Ljava/util/Map;

    .line 46
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 47
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 48
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v3, v5, v3

    if-lez v3, :cond_0

    .line 49
    new-instance v3, Lio/sentry/clientreport/DiscardedEvent;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/clientreport/ClientReportKey;

    invoke-virtual {v4}, Lio/sentry/clientreport/ClientReportKey;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/clientreport/ClientReportKey;

    invoke-virtual {v1}, Lio/sentry/clientreport/ClientReportKey;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v1, v2}, Lio/sentry/clientreport/DiscardedEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method
