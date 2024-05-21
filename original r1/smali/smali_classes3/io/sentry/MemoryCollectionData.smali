.class public final Lio/sentry/MemoryCollectionData;
.super Ljava/lang/Object;
.source "MemoryCollectionData.java"


# instance fields
.field final timestampMillis:J

.field final usedHeapMemory:J

.field final usedNativeMemory:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 7

    const-wide/16 v5, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 19
    invoke-direct/range {v0 .. v6}, Lio/sentry/MemoryCollectionData;-><init>(JJJ)V

    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/sentry/MemoryCollectionData;->timestampMillis:J

    iput-wide p3, p0, Lio/sentry/MemoryCollectionData;->usedHeapMemory:J

    iput-wide p5, p0, Lio/sentry/MemoryCollectionData;->usedNativeMemory:J

    return-void
.end method


# virtual methods
.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/MemoryCollectionData;->timestampMillis:J

    return-wide v0
.end method

.method public getUsedHeapMemory()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/MemoryCollectionData;->usedHeapMemory:J

    return-wide v0
.end method

.method public getUsedNativeMemory()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/MemoryCollectionData;->usedNativeMemory:J

    return-wide v0
.end method
