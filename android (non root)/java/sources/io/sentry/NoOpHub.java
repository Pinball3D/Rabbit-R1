package io.sentry;

import io.sentry.metrics.MetricsApi;
import io.sentry.metrics.NoopMetricsAggregator;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.transport.RateLimiter;
import java.util.List;

/* loaded from: classes3.dex */
public final class NoOpHub implements IHub {
    private static final NoOpHub instance = new NoOpHub();
    private final SentryOptions emptyOptions = SentryOptions.empty();
    private final MetricsApi metricsApi = new MetricsApi(NoopMetricsAggregator.getInstance());

    public static NoOpHub getInstance() {
        return instance;
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb) {
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb, Hint hint) {
    }

    @Override // io.sentry.IHub
    public void bindClient(ISentryClient iSentryClient) {
    }

    @Override // io.sentry.IHub
    public void captureUserFeedback(UserFeedback userFeedback) {
    }

    @Override // io.sentry.IHub
    public void clearBreadcrumbs() {
    }

    @Override // io.sentry.IHub
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IHub m5623clone() {
        return instance;
    }

    @Override // io.sentry.IHub
    public void close() {
    }

    @Override // io.sentry.IHub
    public void close(boolean z) {
    }

    @Override // io.sentry.IHub
    public void configureScope(ScopeCallback scopeCallback) {
    }

    @Override // io.sentry.IHub
    public TransactionContext continueTrace(String str, List<String> list) {
        return null;
    }

    @Override // io.sentry.IHub
    public void endSession() {
    }

    @Override // io.sentry.IHub
    public void flush(long j) {
    }

    @Override // io.sentry.IHub
    public BaggageHeader getBaggage() {
        return null;
    }

    @Override // io.sentry.IHub
    public SentryOptions getOptions() {
        return this.emptyOptions;
    }

    @Override // io.sentry.IHub
    public RateLimiter getRateLimiter() {
        return null;
    }

    @Override // io.sentry.IHub
    public ISpan getSpan() {
        return null;
    }

    @Override // io.sentry.IHub
    public SentryTraceHeader getTraceparent() {
        return null;
    }

    @Override // io.sentry.IHub
    public ITransaction getTransaction() {
        return null;
    }

    @Override // io.sentry.IHub
    public Boolean isCrashedLastRun() {
        return null;
    }

    @Override // io.sentry.IHub
    public boolean isEnabled() {
        return false;
    }

    @Override // io.sentry.IHub
    public boolean isHealthy() {
        return true;
    }

    @Override // io.sentry.IHub
    public MetricsApi metrics() {
        return this.metricsApi;
    }

    @Override // io.sentry.IHub
    public void popScope() {
    }

    @Override // io.sentry.IHub
    public void pushScope() {
    }

    @Override // io.sentry.IHub
    public void removeExtra(String str) {
    }

    @Override // io.sentry.IHub
    public void removeTag(String str) {
    }

    @Override // io.sentry.IHub
    public void reportFullyDisplayed() {
    }

    @Override // io.sentry.IHub
    public void setExtra(String str, String str2) {
    }

    @Override // io.sentry.IHub
    public void setFingerprint(List<String> list) {
    }

    @Override // io.sentry.IHub
    public void setLevel(SentryLevel sentryLevel) {
    }

    @Override // io.sentry.IHub
    public void setSpanContext(Throwable th, ISpan iSpan, String str) {
    }

    @Override // io.sentry.IHub
    public void setTag(String str, String str2) {
    }

    @Override // io.sentry.IHub
    public void setTransaction(String str) {
    }

    @Override // io.sentry.IHub
    public void setUser(User user) {
    }

    @Override // io.sentry.IHub
    public void startSession() {
    }

    private NoOpHub() {
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint, ScopeCallback scopeCallback) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel, ScopeCallback scopeCallback) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureEnvelope(SentryEnvelope sentryEnvelope, Hint hint) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint, ScopeCallback scopeCallback) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public SentryId getLastEventId() {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public void withScope(ScopeCallback scopeCallback) {
        scopeCallback.run(NoOpScope.getInstance());
    }

    @Override // io.sentry.IHub
    public SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        return SentryId.EMPTY_ID;
    }

    @Override // io.sentry.IHub
    public ITransaction startTransaction(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return NoOpTransaction.getInstance();
    }

    @Override // io.sentry.IHub
    @Deprecated
    public SentryTraceHeader traceHeaders() {
        return new SentryTraceHeader(SentryId.EMPTY_ID, SpanId.EMPTY_ID, true);
    }

    @Override // io.sentry.IHub
    public SentryId captureCheckIn(CheckIn checkIn) {
        return SentryId.EMPTY_ID;
    }
}
