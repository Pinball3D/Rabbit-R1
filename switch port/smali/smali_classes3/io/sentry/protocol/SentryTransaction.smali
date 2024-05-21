.class public final Lio/sentry/protocol/SentryTransaction;
.super Lio/sentry/SentryBaseEvent;
.source "SentryTransaction.java"

# interfaces
.implements Lio/sentry/JsonUnknown;
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/SentryTransaction$JsonKeys;,
        Lio/sentry/protocol/SentryTransaction$Deserializer;
    }
.end annotation


# instance fields
.field private final measurements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation
.end field

.field private metricSummaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field private final spans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;"
        }
    .end annotation
.end field

.field private startTimestamp:Ljava/lang/Double;

.field private timestamp:Ljava/lang/Double;

.field private transaction:Ljava/lang/String;

.field private transactionInfo:Lio/sentry/protocol/TransactionInfo;

.field private final type:Ljava/lang/String;

.field private unknown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryTracer;)V
    .locals 12

    .line 62
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/sentry/SentryBaseEvent;-><init>(Lio/sentry/protocol/SentryId;)V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    const-string v0, "transaction"

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->type:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    const-string v0, "sentryTracer is required"

    .line 63
    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryDate;->nanoTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    .line 70
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getStartDate()Lio/sentry/SentryDate;

    move-result-object v0

    .line 71
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getFinishDate()Lio/sentry/SentryDate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/SentryDate;->laterDateNanosTimestampByDiff(Lio/sentry/SentryDate;)J

    move-result-wide v0

    .line 68
    invoke-static {v0, v1}, Lio/sentry/DateUtils;->nanosToSeconds(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    .line 72
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/Span;

    .line 74
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lio/sentry/Span;->isSampled()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    .line 75
    new-instance v3, Lio/sentry/protocol/SentrySpan;

    invoke-direct {v3, v1}, Lio/sentry/protocol/SentrySpan;-><init>(Lio/sentry/Span;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->putAll(Ljava/util/Map;)V

    .line 82
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v1

    .line 84
    new-instance v11, Lio/sentry/SpanContext;

    .line 86
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTraceId()Lio/sentry/protocol/SentryId;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSpanId()Lio/sentry/SpanId;

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getParentSpanId()Lio/sentry/SpanId;

    move-result-object v5

    .line 89
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getOperation()Ljava/lang/String;

    move-result-object v6

    .line 90
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 91
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object v8

    .line 92
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object v9

    .line 93
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getOrigin()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Lio/sentry/SpanId;Ljava/lang/String;Ljava/lang/String;Lio/sentry/TracesSamplingDecision;Lio/sentry/SpanStatus;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v11}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 94
    invoke-virtual {v1}, Lio/sentry/SpanContext;->getTags()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lio/sentry/protocol/SentryTransaction;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getData()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 100
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lio/sentry/protocol/SentryTransaction;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 105
    :cond_3
    new-instance v0, Lio/sentry/protocol/TransactionInfo;

    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/protocol/TransactionNameSource;->apiName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/protocol/TransactionInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    .line 108
    invoke-virtual {p1}, Lio/sentry/SentryTracer;->getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 110
    invoke-virtual {p1}, Lio/sentry/metrics/LocalMetricsAggregator;->getSummaries()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    :goto_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lio/sentry/protocol/TransactionInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;",
            "Lio/sentry/protocol/TransactionInfo;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lio/sentry/SentryBaseEvent;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    const-string v1, "transaction"

    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->type:Ljava/lang/String;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    iput-object p2, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    iput-object p3, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    .line 128
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-interface {v1, p5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 130
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lio/sentry/protocol/SentrySpan;

    iget-object p3, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    .line 131
    invoke-virtual {p2}, Lio/sentry/protocol/SentrySpan;->getMeasurements()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    iput-object p7, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    iput-object p6, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$002(Lio/sentry/protocol/SentryTransaction;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$202(Lio/sentry/protocol/SentryTransaction;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    return-object p1
.end method

.method static synthetic access$300(Lio/sentry/protocol/SentryTransaction;)Ljava/util/List;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lio/sentry/protocol/SentryTransaction;)Ljava/util/Map;
    .locals 0

    .line 33
    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$502(Lio/sentry/protocol/SentryTransaction;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$602(Lio/sentry/protocol/SentryTransaction;Lio/sentry/protocol/TransactionInfo;)Lio/sentry/protocol/TransactionInfo;
    .locals 0

    .line 33
    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    return-object p1
.end method

.method private doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;
    .locals 1

    .line 243
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    const/4 p1, 0x6

    sget-object v0, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getMeasurements()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/protocol/MeasurementValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    return-object p0
.end method

.method public getMetricSummaries()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    return-object p0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 0

    .line 176
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object p0

    return-object p0
.end method

.method public getSpans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/protocol/SentrySpan;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    return-object p0
.end method

.method public getStartTimestamp()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    return-object p0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 0

    .line 162
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object p0

    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 163
    invoke-virtual {p0}, Lio/sentry/SpanContext;->getStatus()Lio/sentry/SpanStatus;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTimestamp()Ljava/lang/Double;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    return-object p0
.end method

.method public getTransaction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    const-string p0, "transaction"

    return-object p0
.end method

.method public getUnknown()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    iget-object p0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSampled()Z
    .locals 0

    .line 167
    invoke-virtual {p0}, Lio/sentry/protocol/SentryTransaction;->getSamplingDecision()Lio/sentry/TracesSamplingDecision;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 172
    :cond_0
    invoke-virtual {p0}, Lio/sentry/TracesSamplingDecision;->getSampled()Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    const-string v1, "transaction"

    if-eqz v0, :cond_0

    .line 214
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->transaction:Ljava/lang/String;

    invoke-interface {v0, v2}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    :cond_0
    const-string v0, "start_timestamp"

    .line 216
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->startTimestamp:Ljava/lang/Double;

    invoke-direct {p0, v2}, Lio/sentry/protocol/SentryTransaction;->doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    if-eqz v0, :cond_1

    const-string v0, "timestamp"

    .line 218
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->timestamp:Ljava/lang/Double;

    invoke-direct {p0, v2}, Lio/sentry/protocol/SentryTransaction;->doubleToBigDecimal(Ljava/lang/Double;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    .line 220
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "spans"

    .line 221
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->spans:Ljava/util/List;

    invoke-interface {v0, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_2
    const-string v0, "type"

    .line 223
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    invoke-interface {v0, v1}, Lio/sentry/ObjectWriter;->value(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    .line 224
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "measurements"

    .line 225
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryTransaction;->measurements:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_3
    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "_metrics_summary"

    .line 228
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    :cond_4
    const-string v0, "transaction_info"

    .line 230
    invoke-interface {p1, v0}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/SentryTransaction;->transactionInfo:Lio/sentry/protocol/TransactionInfo;

    invoke-interface {v0, p2, v1}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 231
    new-instance v0, Lio/sentry/SentryBaseEvent$Serializer;

    invoke-direct {v0}, Lio/sentry/SentryBaseEvent$Serializer;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lio/sentry/SentryBaseEvent$Serializer;->serialize(Lio/sentry/SentryBaseEvent;Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V

    iget-object v0, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    .line 234
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 235
    invoke-interface {p1, v1}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    .line 236
    invoke-interface {p1, p2, v2}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    goto :goto_0

    .line 239
    :cond_5
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    return-void
.end method

.method public setMetricSummaries(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/sentry/protocol/MetricSummary;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->metricSummaries:Ljava/util/Map;

    return-void
.end method

.method public setUnknown(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/protocol/SentryTransaction;->unknown:Ljava/util/Map;

    return-void
.end method
