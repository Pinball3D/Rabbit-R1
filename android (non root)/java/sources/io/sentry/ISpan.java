package io.sentry;

import io.sentry.metrics.LocalMetricsAggregator;
import java.util.List;

/* loaded from: classes3.dex */
public interface ISpan {
    void finish();

    void finish(SpanStatus spanStatus);

    void finish(SpanStatus spanStatus, SentryDate sentryDate);

    Object getData(String str);

    String getDescription();

    SentryDate getFinishDate();

    LocalMetricsAggregator getLocalMetricsAggregator();

    String getOperation();

    SpanContext getSpanContext();

    SentryDate getStartDate();

    SpanStatus getStatus();

    String getTag(String str);

    Throwable getThrowable();

    boolean isFinished();

    boolean isNoOp();

    void setData(String str, Object obj);

    void setDescription(String str);

    void setMeasurement(String str, Number number);

    void setMeasurement(String str, Number number, MeasurementUnit measurementUnit);

    void setOperation(String str);

    void setStatus(SpanStatus spanStatus);

    void setTag(String str, String str2);

    void setThrowable(Throwable th);

    ISpan startChild(String str);

    ISpan startChild(String str, String str2);

    ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter);

    ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions);

    ISpan startChild(String str, String str2, SpanOptions spanOptions);

    BaggageHeader toBaggageHeader(List<String> list);

    SentryTraceHeader toSentryTrace();

    TraceContext traceContext();

    boolean updateEndDate(SentryDate sentryDate);
}
