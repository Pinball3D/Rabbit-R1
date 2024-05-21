.class public Lio/sentry/android/core/AndroidMemoryCollector;
.super Ljava/lang/Object;
.source "AndroidMemoryCollector.java"

# interfaces
.implements Lio/sentry/IPerformanceSnapshotCollector;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Lio/sentry/PerformanceCollectionData;)V
    .locals 9

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 20
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v5

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 21
    new-instance p0, Lio/sentry/MemoryCollectionData;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lio/sentry/MemoryCollectionData;-><init>(JJJ)V

    .line 22
    invoke-virtual {p1, p0}, Lio/sentry/PerformanceCollectionData;->addMemoryData(Lio/sentry/MemoryCollectionData;)V

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method
