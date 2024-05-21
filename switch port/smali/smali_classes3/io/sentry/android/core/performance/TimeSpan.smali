.class public Lio/sentry/android/core/performance/TimeSpan;
.super Ljava/lang/Object;
.source "TimeSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/performance/TimeSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private startUnixTimeMs:J

.field private startUptimeMs:J

.field private stopUptimeMs:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/performance/TimeSpan;)I
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    .line 169
    iget-wide p0, p1, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/performance/TimeSpan;->compareTo(Lio/sentry/android/core/performance/TimeSpan;)I

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/TimeSpan;->description:Ljava/lang/String;

    return-object p0
.end method

.method public getDurationMs()J
    .locals 4

    .line 140
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    iget-wide v2, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProjectedStopTimestamp()Lio/sentry/SentryDate;
    .locals 3

    .line 130
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lio/sentry/SentryLongDate;

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLongDate;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProjectedStopTimestampMs()J
    .locals 4

    .line 111
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    .line 112
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getDurationMs()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getProjectedStopTimestampSecs()D
    .locals 2

    .line 122
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getProjectedStopTimestampMs()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStartTimestamp()Lio/sentry/SentryDate;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Lio/sentry/SentryLongDate;

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartTimestampMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lio/sentry/SentryLongDate;-><init>(J)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStartTimestampMs()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    return-wide v0
.end method

.method public getStartTimestampSecs()D
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    long-to-double v0, v0

    .line 102
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getStartUptimeMs()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    return-wide v0
.end method

.method public hasNotStarted()Z
    .locals 4

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasNotStopped()Z
    .locals 4

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStarted()Z
    .locals 4

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStopped()Z
    .locals 4

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/performance/TimeSpan;->description:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/core/performance/TimeSpan;->description:Ljava/lang/String;

    return-void
.end method

.method public setStartUnixTimeMs(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    return-void
.end method

.method public setStartedAt(J)V
    .locals 2

    iput-wide p1, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    sub-long/2addr p1, v0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    return-void
.end method

.method public setStoppedAt(J)V
    .locals 0

    iput-wide p1, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    return-void
.end method

.method public start()V
    .locals 2

    .line 30
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUptimeMs:J

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->startUnixTimeMs:J

    return-void
.end method

.method public stop()V
    .locals 2

    .line 47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/sentry/android/core/performance/TimeSpan;->stopUptimeMs:J

    return-void
.end method
