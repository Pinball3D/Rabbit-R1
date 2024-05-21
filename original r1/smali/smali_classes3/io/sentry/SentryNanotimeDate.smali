.class public final Lio/sentry/SentryNanotimeDate;
.super Lio/sentry/SentryDate;
.source "SentryNanotimeDate.java"


# instance fields
.field private final date:Ljava/util/Date;

.field private final nanos:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 25
    invoke-static {}, Lio/sentry/DateUtils;->getCurrentDateTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/SentryNanotimeDate;-><init>(Ljava/util/Date;J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;J)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lio/sentry/SentryDate;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryNanotimeDate;->date:Ljava/util/Date;

    iput-wide p2, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    return-void
.end method

.method private nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J
    .locals 4

    .line 80
    iget-wide v0, p2, Lio/sentry/SentryNanotimeDate;->nanos:J

    iget-wide v2, p1, Lio/sentry/SentryNanotimeDate;->nanos:J

    sub-long/2addr v0, v2

    .line 81
    invoke-virtual {p1}, Lio/sentry/SentryNanotimeDate;->nanoTimestamp()J

    move-result-wide p0

    add-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public compareTo(Lio/sentry/SentryDate;)I
    .locals 5

    .line 64
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_1

    .line 65
    check-cast p1, Lio/sentry/SentryNanotimeDate;

    iget-object v0, p0, Lio/sentry/SentryNanotimeDate;->date:Ljava/util/Date;

    .line 66
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 67
    iget-object v2, p1, Lio/sentry/SentryNanotimeDate;->date:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iget-wide v0, p1, Lio/sentry/SentryNanotimeDate;->nanos:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0

    .line 71
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0

    .line 74
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 19
    check-cast p1, Lio/sentry/SentryDate;

    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result p0

    return p0
.end method

.method public diff(Lio/sentry/SentryDate;)J
    .locals 2

    .line 35
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Lio/sentry/SentryNanotimeDate;

    iget-wide v0, p0, Lio/sentry/SentryNanotimeDate;->nanos:J

    .line 37
    iget-wide p0, p1, Lio/sentry/SentryNanotimeDate;->nanos:J

    sub-long/2addr v0, p0

    return-wide v0

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide p0

    return-wide p0
.end method

.method public laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J
    .locals 1

    if-eqz p1, :cond_1

    .line 49
    instance-of v0, p1, Lio/sentry/SentryNanotimeDate;

    if-eqz v0, :cond_1

    .line 50
    move-object v0, p1

    check-cast v0, Lio/sentry/SentryNanotimeDate;

    .line 51
    invoke-virtual {p0, p1}, Lio/sentry/SentryNanotimeDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result p1

    if-gez p1, :cond_0

    .line 52
    invoke-direct {p0, p0, v0}, Lio/sentry/SentryNanotimeDate;->nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J

    move-result-wide p0

    return-wide p0

    .line 54
    :cond_0
    invoke-direct {p0, v0, p0}, Lio/sentry/SentryNanotimeDate;->nanotimeDiff(Lio/sentry/SentryNanotimeDate;Lio/sentry/SentryNanotimeDate;)J

    move-result-wide p0

    return-wide p0

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide p0

    return-wide p0
.end method

.method public nanoTimestamp()J
    .locals 2

    iget-object p0, p0, Lio/sentry/SentryNanotimeDate;->date:Ljava/util/Date;

    .line 44
    invoke-static {p0}, Lio/sentry/DateUtils;->dateToNanos(Ljava/util/Date;)J

    move-result-wide v0

    return-wide v0
.end method
