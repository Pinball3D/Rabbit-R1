.class public final Lio/sentry/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateToNanos(Ljava/util/Date;)J
    .locals 2

    .line 162
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dateToSeconds(Ljava/util/Date;)D
    .locals 2

    .line 151
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->millisToSeconds(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentDateTime()Ljava/util/Date;
    .locals 1

    .line 29
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateTime(J)Ljava/util/Date;
    .locals 1

    .line 82
    sget-object v0, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->TIMEZONE_UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 83
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 84
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    :try_start_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-static {p0, v0}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 44
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timestamp is not ISO format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDateTimeWithMillisPrecision(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 58
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const/4 v2, 0x3

    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigDecimal;->movePointRight(I)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 61
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timestamp is not millis format "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimestamp(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lio/sentry/vendor/gson/internal/bind/util/ISO8601Utils;->format(Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static millisToNanos(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static millisToSeconds(D)D
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static nanosToDate(J)Ljava/util/Date;
    .locals 0

    long-to-double p0, p0

    .line 118
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lio/sentry/DateUtils;->nanosToMillis(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/Double;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lio/sentry/DateUtils;->getDateTime(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static nanosToMillis(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static nanosToSeconds(J)D
    .locals 2

    long-to-double p0, p0

    .line 140
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static secondsToNanos(J)J
    .locals 2

    const-wide/32 v0, 0x3b9aca00

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static toUtilDate(Lio/sentry/SentryDate;)Ljava/util/Date;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_0
    invoke-static {p0}, Lio/sentry/DateUtils;->toUtilDateNotNull(Lio/sentry/SentryDate;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static toUtilDateNotNull(Lio/sentry/SentryDate;)Ljava/util/Date;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToDate(J)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method
