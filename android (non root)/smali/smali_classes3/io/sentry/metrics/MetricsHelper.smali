.class public final Lio/sentry/metrics/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# static fields
.field public static final FLUSHER_SLEEP_TIME_MS:J = 0x1388L

.field private static FLUSH_SHIFT_MS:J = 0x0L

.field public static final MAX_TOTAL_WEIGHT:I = 0x186a0

.field private static final NAME_PATTERN:Ljava/util/regex/Pattern;

.field private static final ROLLUP_IN_SECONDS:I = 0xa

.field private static final TAGS_ESCAPE_CHAR:C = '\\'

.field private static final TAGS_KEY_VALUE_DELIMITER:C = '='

.field private static final TAGS_PAIR_DELIMITER:C = ','

.field private static final TAG_KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final UNIT_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\\W+"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/metrics/MetricsHelper;->UNIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[^\\w\\-.]+"

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/metrics/MetricsHelper;->NAME_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[^\\w\\-./]+"

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/sentry/metrics/MetricsHelper;->TAG_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 30
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    sput-wide v0, Lio/sentry/metrics/MetricsHelper;->FLUSH_SHIFT_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertNanosTo(Lio/sentry/MeasurementUnit$Duration;J)D
    .locals 3

    .line 184
    sget-object v0, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$MeasurementUnit$Duration:[I

    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Duration;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide v1, 0x42d3a52453c00000L    # 8.64E13

    packed-switch v0, :pswitch_data_0

    .line 202
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Duration unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/MeasurementUnit$Duration;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    long-to-double p0, p1

    div-double/2addr p0, v1

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_1
    long-to-double p0, p1

    div-double/2addr p0, v1

    return-wide p0

    :pswitch_2
    long-to-double p0, p1

    const-wide v0, 0x428a3185c5000000L    # 3.6E12

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_3
    long-to-double p0, p1

    const-wide v0, 0x422bf08eb0000000L    # 6.0E10

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_4
    long-to-double p0, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_5
    long-to-double p0, p1

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_6
    long-to-double p0, p1

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p0, v0

    return-wide p0

    :pswitch_7
    long-to-double p0, p1

    return-wide p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeMetrics(JLjava/util/Collection;Ljava/lang/StringBuilder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection<",
            "Lio/sentry/metrics/Metric;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .line 222
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/metrics/Metric;

    .line 223
    invoke-virtual {v0}, Lio/sentry/metrics/Metric;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/metrics/MetricsHelper;->sanitizeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    .line 224
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Lio/sentry/metrics/Metric;->getUnit()Lio/sentry/MeasurementUnit;

    move-result-object v1

    .line 227
    invoke-static {v1}, Lio/sentry/metrics/MetricsHelper;->getUnitName(Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-static {v1}, Lio/sentry/metrics/MetricsHelper;->sanitizeUnit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Lio/sentry/metrics/Metric;->serialize()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ":"

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 232
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v1, "|"

    .line 236
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v0}, Lio/sentry/metrics/Metric;->getType()Lio/sentry/metrics/MetricType;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/metrics/MetricsHelper;->toStatsdType(Lio/sentry/metrics/MetricType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Lio/sentry/metrics/Metric;->getTags()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "|#"

    .line 241
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lio/sentry/metrics/MetricsHelper;->sanitizeTagKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    const-string v5, ","

    .line 248
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :goto_3
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/sentry/metrics/MetricsHelper;->sanitizeTagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v0, "|T"

    .line 256
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 258
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private static escapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 152
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 153
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_1

    :cond_0
    const/16 v3, 0x5c

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCutoffTimestampMs(J)J
    .locals 2

    const-wide/16 v0, 0x2710

    sub-long/2addr p0, v0

    sget-wide v0, Lio/sentry/metrics/MetricsHelper;->FLUSH_SHIFT_MS:J

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method public static getExportKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;)Ljava/lang/String;
    .locals 0

    .line 178
    invoke-static {p2}, Lio/sentry/metrics/MetricsHelper;->getUnitName(Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object p2

    .line 179
    invoke-static {p0}, Lio/sentry/metrics/MetricsHelper;->toStatsdType(Lio/sentry/metrics/MetricType;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s:%s@%s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMetricBucketKey(Lio/sentry/metrics/MetricType;Ljava/lang/String;Lio/sentry/MeasurementUnit;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/metrics/MetricType;",
            "Ljava/lang/String;",
            "Lio/sentry/MeasurementUnit;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 113
    invoke-static {p0}, Lio/sentry/metrics/MetricsHelper;->toStatsdType(Lio/sentry/metrics/MetricType;)Ljava/lang/String;

    move-result-object p0

    .line 114
    invoke-static {p3}, Lio/sentry/metrics/MetricsHelper;->getTagsKey(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 116
    invoke-static {p2}, Lio/sentry/metrics/MetricsHelper;->getUnitName(Lio/sentry/MeasurementUnit;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "%s_%s_%s_%s"

    .line 117
    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTagsKey(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 127
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 135
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/sentry/metrics/MetricsHelper;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lio/sentry/metrics/MetricsHelper;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/16 v3, 0x2c

    .line 139
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 145
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static getTimeBucketKey(J)J
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 33
    div-long v0, p0, v0

    const-wide/16 v2, 0xa

    .line 34
    div-long/2addr v0, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-ltz p0, :cond_0

    return-wide v0

    :cond_0
    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method private static getUnitName(Lio/sentry/MeasurementUnit;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 122
    invoke-interface {p0}, Lio/sentry/MeasurementUnit;->apiName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "none"

    :goto_0
    return-object p0
.end method

.method public static mergeTags(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 266
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 268
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 269
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 270
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 271
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 272
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static sanitizeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/sentry/metrics/MetricsHelper;->NAME_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeTagKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/sentry/metrics/MetricsHelper;->TAG_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeTagValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    const-string v2, "\\n"

    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    const-string v2, "\\r"

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const-string v2, "\\t"

    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_3

    const-string v2, "\\\\"

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v3, 0x7c

    if-ne v2, v3, :cond_4

    const-string v2, "\\u{7c}"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_5

    const-string v2, "\\u{2c}"

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static sanitizeUnit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lio/sentry/metrics/MetricsHelper;->UNIT_PATTERN:Ljava/util/regex/Pattern;

    .line 48
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setFlushShiftMs(J)V
    .locals 0

    sput-wide p0, Lio/sentry/metrics/MetricsHelper;->FLUSH_SHIFT_MS:J

    return-void
.end method

.method public static toStatsdType(Lio/sentry/metrics/MetricType;)Ljava/lang/String;
    .locals 3

    .line 93
    sget-object v0, Lio/sentry/metrics/MetricsHelper$1;->$SwitchMap$io$sentry$metrics$MetricType:[I

    invoke-virtual {p0}, Lio/sentry/metrics/MetricType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const-string p0, "s"

    return-object p0

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Metric Type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/sentry/metrics/MetricType;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "d"

    return-object p0

    :cond_2
    const-string p0, "g"

    return-object p0

    :cond_3
    const-string p0, "c"

    return-object p0
.end method
