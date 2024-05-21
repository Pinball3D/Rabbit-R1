.class public interface abstract Lio/sentry/ISpan;
.super Ljava/lang/Object;
.source "ISpan.java"


# virtual methods
.method public abstract finish()V
.end method

.method public abstract finish(Lio/sentry/SpanStatus;)V
.end method

.method public abstract finish(Lio/sentry/SpanStatus;Lio/sentry/SentryDate;)V
.end method

.method public abstract getData(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFinishDate()Lio/sentry/SentryDate;
.end method

.method public abstract getLocalMetricsAggregator()Lio/sentry/metrics/LocalMetricsAggregator;
.end method

.method public abstract getOperation()Ljava/lang/String;
.end method

.method public abstract getSpanContext()Lio/sentry/SpanContext;
.end method

.method public abstract getStartDate()Lio/sentry/SentryDate;
.end method

.method public abstract getStatus()Lio/sentry/SpanStatus;
.end method

.method public abstract getTag(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getThrowable()Ljava/lang/Throwable;
.end method

.method public abstract isFinished()Z
.end method

.method public abstract isNoOp()Z
.end method

.method public abstract setData(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setDescription(Ljava/lang/String;)V
.end method

.method public abstract setMeasurement(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract setMeasurement(Ljava/lang/String;Ljava/lang/Number;Lio/sentry/MeasurementUnit;)V
.end method

.method public abstract setOperation(Ljava/lang/String;)V
.end method

.method public abstract setStatus(Lio/sentry/SpanStatus;)V
.end method

.method public abstract setTag(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setThrowable(Ljava/lang/Throwable;)V
.end method

.method public abstract startChild(Ljava/lang/String;)Lio/sentry/ISpan;
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/ISpan;
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;)Lio/sentry/ISpan;
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SentryDate;Lio/sentry/Instrumenter;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
.end method

.method public abstract startChild(Ljava/lang/String;Ljava/lang/String;Lio/sentry/SpanOptions;)Lio/sentry/ISpan;
.end method

.method public abstract toBaggageHeader(Ljava/util/List;)Lio/sentry/BaggageHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation
.end method

.method public abstract toSentryTrace()Lio/sentry/SentryTraceHeader;
.end method

.method public abstract traceContext()Lio/sentry/TraceContext;
.end method

.method public abstract updateEndDate(Lio/sentry/SentryDate;)Z
.end method
