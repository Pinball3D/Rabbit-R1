.class public final Lio/sentry/util/CheckInUtils;
.super Ljava/lang/Object;
.source "CheckInUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isIgnored(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 76
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :catchall_0
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 86
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    return v3

    :cond_3
    :goto_0
    return v0
.end method

.method public static withCheckIn(Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/sentry/MonitorConfig;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    invoke-static {}, Lio/sentry/Sentry;->getCurrentHub()Lio/sentry/IHub;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 37
    invoke-interface {v0}, Lio/sentry/IHub;->pushScope()V

    .line 38
    invoke-static {v0}, Lio/sentry/util/TracingUtils;->startNewTrace(Lio/sentry/IHub;)V

    .line 40
    new-instance v3, Lio/sentry/CheckIn;

    sget-object v4, Lio/sentry/CheckInStatus;->IN_PROGRESS:Lio/sentry/CheckInStatus;

    invoke-direct {v3, p0, v4}, Lio/sentry/CheckIn;-><init>(Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {v3, p1}, Lio/sentry/CheckIn;->setMonitorConfig(Lio/sentry/MonitorConfig;)V

    .line 44
    :cond_0
    invoke-interface {v0, v3}, Lio/sentry/IHub;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    move-result-object p1

    .line 46
    :try_start_0
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    sget-object v3, Lio/sentry/CheckInStatus;->OK:Lio/sentry/CheckInStatus;

    .line 52
    new-instance v4, Lio/sentry/CheckIn;

    invoke-direct {v4, p1, p0, v3}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    long-to-double p0, p0

    invoke-static {p0, p1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v4, p0}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 54
    invoke-interface {v0, v4}, Lio/sentry/IHub;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    .line 55
    invoke-interface {v0}, Lio/sentry/IHub;->popScope()V

    return-object p2

    :catchall_0
    move-exception p2

    .line 49
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    .line 51
    sget-object v3, Lio/sentry/CheckInStatus;->ERROR:Lio/sentry/CheckInStatus;

    .line 52
    new-instance v4, Lio/sentry/CheckIn;

    invoke-direct {v4, p1, p0, v3}, Lio/sentry/CheckIn;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;Lio/sentry/CheckInStatus;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v1

    long-to-double p0, p0

    invoke-static {p0, p1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {v4, p0}, Lio/sentry/CheckIn;->setDuration(Ljava/lang/Double;)V

    .line 54
    invoke-interface {v0, v4}, Lio/sentry/IHub;->captureCheckIn(Lio/sentry/CheckIn;)Lio/sentry/protocol/SentryId;

    .line 55
    invoke-interface {v0}, Lio/sentry/IHub;->popScope()V

    .line 56
    throw p2
.end method

.method public static withCheckIn(Ljava/lang/String;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Callable<",
            "TU;>;)TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0, p1}, Lio/sentry/util/CheckInUtils;->withCheckIn(Ljava/lang/String;Lio/sentry/MonitorConfig;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
