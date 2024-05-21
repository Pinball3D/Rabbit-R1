.class public abstract Lio/sentry/SentryDate;
.super Ljava/lang/Object;
.source "SentryDate.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/SentryDate;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lio/sentry/SentryDate;)I
    .locals 2

    .line 50
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lio/sentry/SentryDate;

    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result p0

    return p0
.end method

.method public diff(Lio/sentry/SentryDate;)J
    .locals 2

    .line 37
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public final isAfter(Lio/sentry/SentryDate;)Z
    .locals 2

    .line 45
    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isBefore(Lio/sentry/SentryDate;)Z
    .locals 2

    .line 41
    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->diff(Lio/sentry/SentryDate;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J
    .locals 1

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, p1}, Lio/sentry/SentryDate;->compareTo(Lio/sentry/SentryDate;)I

    move-result v0

    if-gez v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide p0

    return-wide p0

    .line 26
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract nanoTimestamp()J
.end method
