package io.sentry;

import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.protocol.SentryId;
import java.util.List;

/* loaded from: classes3.dex */
public final class NoOpSpan implements ISpan {
    private static final NoOpSpan instance = new NoOpSpan();

    public static NoOpSpan getInstance() {
        return instance;
    }

    @Override // io.sentry.ISpan
    public void finish() {
    }

    @Override // io.sentry.ISpan
    public void finish(SpanStatus spanStatus) {
    }

    @Override // io.sentry.ISpan
    public void finish(SpanStatus spanStatus, SentryDate sentryDate) {
    }

    @Override // io.sentry.ISpan
    public Object getData(String str) {
        return null;
    }

    @Override // io.sentry.ISpan
    public String getDescription() {
        return null;
    }

    @Override // io.sentry.ISpan
    public LocalMetricsAggregator getLocalMetricsAggregator() {
        return null;
    }

    @Override // io.sentry.ISpan
    public String getOperation() {
        return "";
    }

    @Override // io.sentry.ISpan
    public SpanStatus getStatus() {
        return null;
    }

    @Override // io.sentry.ISpan
    public String getTag(String str) {
        return null;
    }

    @Override // io.sentry.ISpan
    public Throwable getThrowable() {
        return null;
    }

    @Override // io.sentry.ISpan
    public boolean isFinished() {
        return false;
    }

    @Override // io.sentry.ISpan
    public boolean isNoOp() {
        return true;
    }

    @Override // io.sentry.ISpan
    public void setData(String str, Object obj) {
    }

    @Override // io.sentry.ISpan
    public void setDescription(String str) {
    }

    @Override // io.sentry.ISpan
    public void setMeasurement(String str, Number number) {
    }

    @Override // io.sentry.ISpan
    public void setMeasurement(String str, Number number, MeasurementUnit measurementUnit) {
    }

    @Override // io.sentry.ISpan
    public void setOperation(String str) {
    }

    @Override // io.sentry.ISpan
    public void setStatus(SpanStatus spanStatus) {
    }

    @Override // io.sentry.ISpan
    public void setTag(String str, String str2) {
    }

    @Override // io.sentry.ISpan
    public void setThrowable(Throwable th) {
    }

    @Override // io.sentry.ISpan
    public BaggageHeader toBaggageHeader(List<String> list) {
        return null;
    }

    @Override // io.sentry.ISpan
    public boolean updateEndDate(SentryDate sentryDate) {
        return false;
    }

    private NoOpSpan() {
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str) {
        return getInstance();
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SpanOptions spanOptions) {
        return getInstance();
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter) {
        return getInstance();
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions) {
        return getInstance();
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2) {
        return getInstance();
    }

    @Override // io.sentry.ISpan
    public SentryTraceHeader toSentryTrace() {
        return new SentryTraceHeader(SentryId.EMPTY_ID, SpanId.EMPTY_ID, false);
    }

    @Override // io.sentry.ISpan
    public TraceContext traceContext() {
        return new TraceContext(SentryId.EMPTY_ID, "");
    }

    @Override // io.sentry.ISpan
    public SpanContext getSpanContext() {
        return new SpanContext(SentryId.EMPTY_ID, SpanId.EMPTY_ID, "op", null, null);
    }

    @Override // io.sentry.ISpan
    public SentryDate getStartDate() {
        return new SentryNanotimeDate();
    }

    @Override // io.sentry.ISpan
    public SentryDate getFinishDate() {
        return new SentryNanotimeDate();
    }
}
