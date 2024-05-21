.class public final Lio/sentry/NoOpTransactionPerformanceCollector;
.super Ljava/lang/Object;
.source "NoOpTransactionPerformanceCollector.java"

# interfaces
.implements Lio/sentry/TransactionPerformanceCollector;


# static fields
.field private static final instance:Lio/sentry/NoOpTransactionPerformanceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/NoOpTransactionPerformanceCollector;

    invoke-direct {v0}, Lio/sentry/NoOpTransactionPerformanceCollector;-><init>()V

    sput-object v0, Lio/sentry/NoOpTransactionPerformanceCollector;->instance:Lio/sentry/NoOpTransactionPerformanceCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpTransactionPerformanceCollector;
    .locals 1

    sget-object v0, Lio/sentry/NoOpTransactionPerformanceCollector;->instance:Lio/sentry/NoOpTransactionPerformanceCollector;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public onSpanFinished(Lio/sentry/ISpan;)V
    .locals 0

    return-void
.end method

.method public onSpanStarted(Lio/sentry/ISpan;)V
    .locals 0

    return-void
.end method

.method public start(Lio/sentry/ITransaction;)V
    .locals 0

    return-void
.end method

.method public stop(Lio/sentry/ITransaction;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/ITransaction;",
            ")",
            "Ljava/util/List<",
            "Lio/sentry/PerformanceCollectionData;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
