.class public final Lio/sentry/JavaMemoryCollector;
.super Ljava/lang/Object;
.source "JavaMemoryCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# instance fields
.field private final runtime:Ljava/lang/Runtime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/JavaMemoryCollector;->runtime:Ljava/lang/Runtime;

    return-void
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 6

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lio/sentry/JavaMemoryCollector;->runtime:Ljava/lang/Runtime;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    iget-object p0, p0, Lio/sentry/JavaMemoryCollector;->runtime:Ljava/lang/Runtime;

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 18
    new-instance p0, Lio/sentry/MemoryCollectionData;

    invoke-direct {p0, v0, v1, v2, v3}, Lio/sentry/MemoryCollectionData;-><init>(JJ)V

    .line 19
    invoke-virtual {p1, p0}, Lio/sentry/PerformanceCollectionData;->addMemoryData(Lio/sentry/MemoryCollectionData;)V

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method
