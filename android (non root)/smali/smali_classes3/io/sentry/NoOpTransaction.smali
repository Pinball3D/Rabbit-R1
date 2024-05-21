.class public final Lio/sentry/NoOpTransaction;
.super Ljava/lang/Object;
.source "NoOpTransaction.java"

# interfaces
.implements Lio/sentry/ITransaction;


# static fields
.field private static final instance:Lio/sentry/NoOpTransaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lio/sentry/NoOpTransaction;

    invoke-direct {v0}, Lio/sentry/NoOpTransaction;-><init>()V

    sput-object v0, Lio/sentry/NoOpTransaction;->instance:Lio/sentry/NoOpTransaction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpTransaction;
    .locals 1

    sget-object v0, Lio/sentry/NoOpTransaction;->instance:Lio/sentry/NoOpTransaction;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;)V
    .locals 0

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
    .locals 0

    return-void
.end method

.method public finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;ZLio/sentry/Hint;)V
    .locals 0

    return-void
.end method

.method public forceFinish(Lio/sentry/SpanStatus;ZLio/sentry/Hint;)V
    .locals 0

    return-void
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 0

    .line 222
    new-instance p0, Lio/sentry/protocol/Contexts;

    invoke-direct {p0}, Lio/sentry/protocol/Contexts;-><init>()V

    return-object p0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEventId()Lio/sentry/protocol/SentryId;
    .locals 0

    .line 99
    sget-object p0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object p0
.end method

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 0

    .line 237
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object p0
.end method

.method public getLatestActiveSpan()Lio/sentry/Span;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSamplingDecision()Lio/sentry/TracesSamplingDecision;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 6

    .line 174
    new-instance p0, Lio/sentry/SpanContext;

    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v2, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const-string v3, "op"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/SpanContext;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/String;Lio/sentry/SpanId;Lio/sentry/TracesSamplingDecision;)V

    return-object p0
.end method

.method public getSpans()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Span;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 0

    .line 232
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object p0
.end method

.method public getStatus()Lio/sentry/SpanStatus;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransactionNameSource()Lio/sentry/protocol/TransactionNameSource;
    .locals 0

    .line 37
    sget-object p0, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    return-object p0
.end method

.method public isFinished()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isNoOp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isProfileSampled()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSampled()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public scheduleFinish()V
    .locals 0

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0

    return-void
.end method

.method public setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V
    .locals 0

    return-void
.end method

.method public setOperation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setStatus(Lio/sentry/SpanStatus;)V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public startChild(Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    .line 42
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    .line 73
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;)Lio/sentry/ISpan;
    .locals 0

    .line 89
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 0

    .line 57
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 67
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 48
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public toSentryTrace()Lio/sentry/SentryTraceHeader;
    .locals 3

    .line 123
    new-instance p0, Lio/sentry/SentryTraceHeader;

    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    sget-object v1, Lio/sentry/SpanId;->EMPTY_ID:Lio/sentry/SpanId;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/sentry/SentryTraceHeader;-><init>(Lio/sentry/protocol/SentryId;Lio/sentry/SpanId;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public traceContext()Lio/sentry/TraceContext;
    .locals 2

    .line 128
    new-instance p0, Lio/sentry/TraceContext;

    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lio/sentry/TraceContext;-><init>(Lio/sentry/protocol/SentryId;Ljava/lang/String;)V

    return-object p0
.end method

.method public updateEndDate(Lio/sentry/SentryDate;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
