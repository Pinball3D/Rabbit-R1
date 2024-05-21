.class public final Lio/sentry/CpuCollectionData;
.super Ljava/lang/Object;
.source "CpuCollectionData.java"


# instance fields
.field final cpuUsagePercentage:D

.field final timestampMillis:J


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/sentry/CpuCollectionData;->timestampMillis:J

    iput-wide p3, p0, Lio/sentry/CpuCollectionData;->cpuUsagePercentage:D

    return-void
.end method


# virtual methods
.method public getCpuUsagePercentage()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/CpuCollectionData;->cpuUsagePercentage:D

    return-wide v0
.end method

.method public getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/CpuCollectionData;->timestampMillis:J

    return-wide v0
.end method
