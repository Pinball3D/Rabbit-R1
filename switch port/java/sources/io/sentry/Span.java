package io.sentry;

import io.sentry.metrics.LocalMetricsAggregator;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SentryId;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class Span implements ISpan {
    private final SpanContext context;
    private final Map<String, Object> data;
    private final AtomicBoolean finished;
    private final IHub hub;
    private final Map<String, MeasurementValue> measurements;
    private final LazyEvaluator<LocalMetricsAggregator> metricsAggregator;
    private final SpanOptions options;
    private SpanFinishedCallback spanFinishedCallback;
    private SentryDate startTimestamp;
    private Throwable throwable;
    private SentryDate timestamp;
    private final SentryTracer transaction;

    private void updateStartDate(SentryDate sentryDate) {
        this.startTimestamp = sentryDate;
    }

    public Map<String, Object> getData() {
        return this.data;
    }

    @Override // io.sentry.ISpan
    public SentryDate getFinishDate() {
        return this.timestamp;
    }

    public Map<String, MeasurementValue> getMeasurements() {
        return this.measurements;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SpanOptions getOptions() {
        return this.options;
    }

    @Override // io.sentry.ISpan
    public SpanContext getSpanContext() {
        return this.context;
    }

    @Override // io.sentry.ISpan
    public SentryDate getStartDate() {
        return this.startTimestamp;
    }

    @Override // io.sentry.ISpan
    public Throwable getThrowable() {
        return this.throwable;
    }

    @Override // io.sentry.ISpan
    public boolean isNoOp() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSpanFinishedCallback(SpanFinishedCallback spanFinishedCallback) {
        this.spanFinishedCallback = spanFinishedCallback;
    }

    @Override // io.sentry.ISpan
    public void setThrowable(Throwable th) {
        this.throwable = th;
    }

    @Override // io.sentry.ISpan
    public boolean updateEndDate(SentryDate sentryDate) {
        if (this.timestamp == null) {
            return false;
        }
        this.timestamp = sentryDate;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ LocalMetricsAggregator lambda$new$0() {
        return new LocalMetricsAggregator();
    }

    Span(SentryId sentryId, SpanId spanId, SentryTracer sentryTracer, String str, IHub iHub) {
        this(sentryId, spanId, sentryTracer, str, iHub, null, new SpanOptions(), null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Span(SentryId sentryId, SpanId spanId, SentryTracer sentryTracer, String str, IHub iHub, SentryDate sentryDate, SpanOptions spanOptions, SpanFinishedCallback spanFinishedCallback) {
        this.finished = new AtomicBoolean(false);
        this.data = new ConcurrentHashMap();
        this.measurements = new ConcurrentHashMap();
        this.metricsAggregator = new LazyEvaluator<>(new LazyEvaluator.Evaluator() { // from class: io.sentry.Span$$ExternalSyntheticLambda0
            @Override // io.sentry.util.LazyEvaluator.Evaluator
            public final Object evaluate() {
                return Span.lambda$new$0();
            }
        });
        this.context = new SpanContext(sentryId, new SpanId(), str, spanId, sentryTracer.getSamplingDecision());
        this.transaction = (SentryTracer) Objects.requireNonNull(sentryTracer, "transaction is required");
        this.hub = (IHub) Objects.requireNonNull(iHub, "hub is required");
        this.options = spanOptions;
        this.spanFinishedCallback = spanFinishedCallback;
        if (sentryDate != null) {
            this.startTimestamp = sentryDate;
        } else {
            this.startTimestamp = iHub.getOptions().getDateProvider().now();
        }
    }

    public Span(TransactionContext transactionContext, SentryTracer sentryTracer, IHub iHub, SentryDate sentryDate, SpanOptions spanOptions) {
        this.finished = new AtomicBoolean(false);
        this.data = new ConcurrentHashMap();
        this.measurements = new ConcurrentHashMap();
        this.metricsAggregator = new LazyEvaluator<>(new LazyEvaluator.Evaluator() { // from class: io.sentry.Span$$ExternalSyntheticLambda0
            @Override // io.sentry.util.LazyEvaluator.Evaluator
            public final Object evaluate() {
                return Span.lambda$new$0();
            }
        });
        this.context = (SpanContext) Objects.requireNonNull(transactionContext, "context is required");
        this.transaction = (SentryTracer) Objects.requireNonNull(sentryTracer, "sentryTracer is required");
        this.hub = (IHub) Objects.requireNonNull(iHub, "hub is required");
        this.spanFinishedCallback = null;
        if (sentryDate != null) {
            this.startTimestamp = sentryDate;
        } else {
            this.startTimestamp = iHub.getOptions().getDateProvider().now();
        }
        this.options = spanOptions;
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str) {
        return startChild(str, null);
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter, SpanOptions spanOptions) {
        if (this.finished.get()) {
            return NoOpSpan.getInstance();
        }
        return this.transaction.startChild(this.context.getSpanId(), str, str2, sentryDate, instrumenter, spanOptions);
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2) {
        if (this.finished.get()) {
            return NoOpSpan.getInstance();
        }
        return this.transaction.startChild(this.context.getSpanId(), str, str2);
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SpanOptions spanOptions) {
        if (this.finished.get()) {
            return NoOpSpan.getInstance();
        }
        return this.transaction.startChild(this.context.getSpanId(), str, str2, spanOptions);
    }

    @Override // io.sentry.ISpan
    public ISpan startChild(String str, String str2, SentryDate sentryDate, Instrumenter instrumenter) {
        return startChild(str, str2, sentryDate, instrumenter, new SpanOptions());
    }

    @Override // io.sentry.ISpan
    public SentryTraceHeader toSentryTrace() {
        return new SentryTraceHeader(this.context.getTraceId(), this.context.getSpanId(), this.context.getSampled());
    }

    @Override // io.sentry.ISpan
    public TraceContext traceContext() {
        return this.transaction.traceContext();
    }

    @Override // io.sentry.ISpan
    public BaggageHeader toBaggageHeader(List<String> list) {
        return this.transaction.toBaggageHeader(list);
    }

    @Override // io.sentry.ISpan
    public void finish() {
        finish(this.context.getStatus());
    }

    @Override // io.sentry.ISpan
    public void finish(SpanStatus spanStatus) {
        finish(spanStatus, this.hub.getOptions().getDateProvider().now());
    }

    @Override // io.sentry.ISpan
    public void finish(SpanStatus spanStatus, SentryDate sentryDate) {
        List<Span> directChildren;
        SentryDate sentryDate2;
        if (this.finished.compareAndSet(false, true)) {
            this.context.setStatus(spanStatus);
            if (sentryDate == null) {
                sentryDate = this.hub.getOptions().getDateProvider().now();
            }
            this.timestamp = sentryDate;
            if (this.options.isTrimStart() || this.options.isTrimEnd()) {
                if (this.transaction.getRoot().getSpanId().equals(getSpanId())) {
                    directChildren = this.transaction.getChildren();
                } else {
                    directChildren = getDirectChildren();
                }
                SentryDate sentryDate3 = null;
                SentryDate sentryDate4 = null;
                for (Span span : directChildren) {
                    if (sentryDate3 == null || span.getStartDate().isBefore(sentryDate3)) {
                        sentryDate3 = span.getStartDate();
                    }
                    if (sentryDate4 == null || (span.getFinishDate() != null && span.getFinishDate().isAfter(sentryDate4))) {
                        sentryDate4 = span.getFinishDate();
                    }
                }
                if (this.options.isTrimStart() && sentryDate3 != null && this.startTimestamp.isBefore(sentryDate3)) {
                    updateStartDate(sentryDate3);
                }
                if (this.options.isTrimEnd() && sentryDate4 != null && ((sentryDate2 = this.timestamp) == null || sentryDate2.isAfter(sentryDate4))) {
                    updateEndDate(sentryDate4);
                }
            }
            Throwable th = this.throwable;
            if (th != null) {
                this.hub.setSpanContext(th, this, this.transaction.getName());
            }
            SpanFinishedCallback spanFinishedCallback = this.spanFinishedCallback;
            if (spanFinishedCallback != null) {
                spanFinishedCallback.execute(this);
            }
        }
    }

    @Override // io.sentry.ISpan
    public void setOperation(String str) {
        this.context.setOperation(str);
    }

    @Override // io.sentry.ISpan
    public String getOperation() {
        return this.context.getOperation();
    }

    @Override // io.sentry.ISpan
    public void setDescription(String str) {
        this.context.setDescription(str);
    }

    @Override // io.sentry.ISpan
    public String getDescription() {
        return this.context.getDescription();
    }

    @Override // io.sentry.ISpan
    public void setStatus(SpanStatus spanStatus) {
        this.context.setStatus(spanStatus);
    }

    @Override // io.sentry.ISpan
    public SpanStatus getStatus() {
        return this.context.getStatus();
    }

    @Override // io.sentry.ISpan
    public void setTag(String str, String str2) {
        this.context.setTag(str, str2);
    }

    @Override // io.sentry.ISpan
    public String getTag(String str) {
        return this.context.getTags().get(str);
    }

    @Override // io.sentry.ISpan
    public boolean isFinished() {
        return this.finished.get();
    }

    public Boolean isSampled() {
        return this.context.getSampled();
    }

    public Boolean isProfileSampled() {
        return this.context.getProfileSampled();
    }

    public TracesSamplingDecision getSamplingDecision() {
        return this.context.getSamplingDecision();
    }

    public SentryId getTraceId() {
        return this.context.getTraceId();
    }

    public SpanId getSpanId() {
        return this.context.getSpanId();
    }

    public SpanId getParentSpanId() {
        return this.context.getParentSpanId();
    }

    public Map<String, String> getTags() {
        return this.context.getTags();
    }

    @Override // io.sentry.ISpan
    public void setData(String str, Object obj) {
        this.data.put(str, obj);
    }

    @Override // io.sentry.ISpan
    public Object getData(String str) {
        return this.data.get(str);
    }

    @Override // io.sentry.ISpan
    public void setMeasurement(String str, Number number) {
        if (isFinished()) {
            this.hub.getOptions().getLogger().log(SentryLevel.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.measurements.put(str, new MeasurementValue(number, null));
        if (this.transaction.getRoot() != this) {
            this.transaction.setMeasurementFromChild(str, number);
        }
    }

    @Override // io.sentry.ISpan
    public void setMeasurement(String str, Number number, MeasurementUnit measurementUnit) {
        if (isFinished()) {
            this.hub.getOptions().getLogger().log(SentryLevel.DEBUG, "The span is already finished. Measurement %s cannot be set", str);
            return;
        }
        this.measurements.put(str, new MeasurementValue(number, measurementUnit.apiName()));
        if (this.transaction.getRoot() != this) {
            this.transaction.setMeasurementFromChild(str, number, measurementUnit);
        }
    }

    @Override // io.sentry.ISpan
    public LocalMetricsAggregator getLocalMetricsAggregator() {
        return this.metricsAggregator.getValue();
    }

    private List<Span> getDirectChildren() {
        ArrayList arrayList = new ArrayList();
        for (Span span : this.transaction.getSpans()) {
            if (span.getParentSpanId() != null && span.getParentSpanId().equals(getSpanId())) {
                arrayList.add(span);
            }
        }
        return arrayList;
    }
}
