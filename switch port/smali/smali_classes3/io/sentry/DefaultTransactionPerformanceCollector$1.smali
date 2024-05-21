.class Lio/sentry/DefaultTransactionPerformanceCollector$1;
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

    iput-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$1;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 91
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector$1;->this$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    .line 94
    invoke-static {p0}, Lio/sentry/DefaultTransactionPerformanceCollector;->access$000(Lio/sentry/DefaultTransactionPerformanceCollector;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/IPerformanceSnapshotCollector;

    .line 95
    invoke-interface {v0}, Lio/sentry/IPerformanceSnapshotCollector;->setup()V

    goto :goto_0

    :cond_0
    return-void
.end method
