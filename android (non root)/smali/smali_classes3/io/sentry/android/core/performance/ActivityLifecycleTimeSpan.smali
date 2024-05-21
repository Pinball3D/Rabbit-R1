.class public Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;
.super Ljava/lang/Object;
.source "ActivityLifecycleTimeSpan.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private final onCreate:Lio/sentry/android/core/performance/TimeSpan;

.field private final onStart:Lio/sentry/android/core/performance/TimeSpan;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 9
    new-instance v0, Lio/sentry/android/core/performance/TimeSpan;

    invoke-direct {v0}, Lio/sentry/android/core/performance/TimeSpan;-><init>()V

    iput-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onStart:Lio/sentry/android/core/performance/TimeSpan;

    return-void
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)I
    .locals 4

    iget-object v0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onCreate:Lio/sentry/android/core/performance/TimeSpan;

    .line 22
    invoke-virtual {v0}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v0

    iget-object v2, p1, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onCreate:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {v2}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onStart:Lio/sentry/android/core/performance/TimeSpan;

    .line 24
    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide v0

    iget-object p0, p1, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onStart:Lio/sentry/android/core/performance/TimeSpan;

    invoke-virtual {p0}, Lio/sentry/android/core/performance/TimeSpan;->getStartUptimeMs()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->compareTo(Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;)I

    move-result p0

    return p0
.end method

.method public final getOnCreate()Lio/sentry/android/core/performance/TimeSpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onCreate:Lio/sentry/android/core/performance/TimeSpan;

    return-object p0
.end method

.method public final getOnStart()Lio/sentry/android/core/performance/TimeSpan;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/performance/ActivityLifecycleTimeSpan;->onStart:Lio/sentry/android/core/performance/TimeSpan;

    return-object p0
.end method
