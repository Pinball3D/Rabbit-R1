.class public final Lio/sentry/NoOpSpan;
.super Ljava/lang/Object;
.source "NoOpSpan.java"

# interfaces
.implements Lio/sentry/ISpan;


# static fields
.field private static final instance:Lio/sentry/NoOpSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/NoOpSpan;

    invoke-direct {v0}, Lio/sentry/NoOpSpan;-><init>()V

    sput-object v0, Lio/sentry/NoOpSpan;->instance:Lio/sentry/NoOpSpan;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpSpan;
    .locals 1

    sget-object v0, Lio/sentry/NoOpSpan;->instance:Lio/sentry/NoOpSpan;

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

.method public getFinishDate()Lio/sentry/SentryDate;
    .locals 0

    .line 156
    new-instance p0, Lio/sentry/SentryNanotimeDate;

    invoke-direct {p0}, Lio/sentry/SentryNanotimeDate;-><init>()V

    return-object p0
.end method

.method public getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getOperation()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSpanContext()Lio/sentry/SpanContext;
    .locals 6

    .line 113
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

.method public getStartDate()Lio/sentry/SentryDate;
    .locals 0

    .line 151
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

.method public isFinished()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoOp()Z
    .locals 0

    const/4 p0, 0x1

    return p0
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

    .line 21
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
    .locals 0

    .line 52
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
    .locals 0

    .line 36
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 46
    invoke-static {}, Lio/sentry/NoOpSpan;->getInstance()Lio/sentry/NoOpSpan;

    move-result-object p0

    return-object p0
.end method

.method public startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
    .locals 0

    .line 27
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

    .line 57
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

    .line 62
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
