.class public final synthetic Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/sentry/DefaultTransactionPerformanceCollector;

.field public final synthetic f$1:Lio/sentry/ITransaction;


# direct methods
.method public synthetic constructor <init>(Lio/sentry/DefaultTransactionPerformanceCollector;Lio/sentry/ITransaction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    iput-object p2, p0, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ITransaction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;->f$0:Lio/sentry/DefaultTransactionPerformanceCollector;

    iget-object p0, p0, Lio/sentry/DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0;->f$1:Lio/sentry/ITransaction;

    invoke-virtual {v0, p0}, Lio/sentry/DefaultTransactionPerformanceCollector;->lambda$start$0$io-sentry-DefaultTransactionPerformanceCollector(Lio/sentry/ITransaction;)V

    return-void
.end method
