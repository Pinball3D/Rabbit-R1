.class Lio/sentry/DefaultTransactionPerformanceCollector$2;
.super Ljava/util/TimerTask;
.source "DefaultTransactionPerformanceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/DefaultTransactionPerformanceCollector;->start(Lio/sentry/ITransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/DefaultTransactionPerformanceCollector;


# direct methods
.method constructor <init>(Lio/sentry/DefaultTransactionPerformanceCollector;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 105
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 112
    invoke-static {v2}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$100(Lio/sentry/DefaultTransactionPerformanceCollector;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 115
    invoke-static {v2, v0, v1}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$102(Lio/sentry/DefaultTransactionPerformanceCollector;J)J

    .line 116
    new-instance v0, Lio/sentry/PerformanceCollectionData;

    invoke-direct {v0}, Lio/sentry/PerformanceCollectionData;-><init>()V

    iget-object v1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 118
    invoke-static {v1}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$000(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IPerformanceSnapshotCollector;

    .line 119
    invoke-interface {v2, v0}, Lio/sentry/IPerformanceSnapshotCollector;->collect(Lio/sentry/PerformanceCollectionData;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector$2;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 122
    invoke-static {p0}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$200(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 123
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method
