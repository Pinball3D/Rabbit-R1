package io.sentry;

import io.sentry.metrics.MetricsApi;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.transport.RateLimiter;
import java.util.List;

/* loaded from: classes3.dex */
public final class HubAdapter implements IHub {
    private static final HubAdapter INSTANCE = new HubAdapter();

    public static HubAdapter getInstance() {
        return INSTANCE;
    }

    private HubAdapter() {
    }

    @Override // io.sentry.IHub
    public boolean isEnabled() {
        return Sentry.isEnabled();
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint) {
        return Sentry.captureEvent(sentryEvent, hint);
    }

    @Override // io.sentry.IHub
    public SentryId captureEvent(SentryEvent sentryEvent, Hint hint, ScopeCallback scopeCallback) {
        return Sentry.captureEvent(sentryEvent, hint, scopeCallback);
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel) {
        return Sentry.captureMessage(str, sentryLevel);
    }

    @Override // io.sentry.IHub
    public SentryId captureMessage(String str, SentryLevel sentryLevel, ScopeCallback scopeCallback) {
        return Sentry.captureMessage(str, sentryLevel, scopeCallback);
    }

    @Override // io.sentry.IHub
    public SentryId captureEnvelope(SentryEnvelope sentryEnvelope, Hint hint) {
        return Sentry.getCurrentHub().captureEnvelope(sentryEnvelope, hint);
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint) {
        return Sentry.captureException(th, hint);
    }

    @Override // io.sentry.IHub
    public SentryId captureException(Throwable th, Hint hint, ScopeCallback scopeCallback) {
        return Sentry.captureException(th, hint, scopeCallback);
    }

    @Override // io.sentry.IHub
    public void captureUserFeedback(UserFeedback userFeedback) {
        Sentry.captureUserFeedback(userFeedback);
    }

    @Override // io.sentry.IHub
    public void startSession() {
        Sentry.startSession();
    }

    @Override // io.sentry.IHub
    public void endSession() {
        Sentry.endSession();
    }

    @Override // io.sentry.IHub
    public void close(boolean z) {
        Sentry.close();
    }

    @Override // io.sentry.IHub
    public void close() {
        Sentry.close();
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb, Hint hint) {
        Sentry.addBreadcrumb(breadcrumb, hint);
    }

    @Override // io.sentry.IHub
    public void addBreadcrumb(Breadcrumb breadcrumb) {
        addBreadcrumb(breadcrumb, new Hint());
    }

    @Override // io.sentry.IHub
    public void setLevel(SentryLevel sentryLevel) {
        Sentry.setLevel(sentryLevel);
    }

    @Override // io.sentry.IHub
    public void setTransaction(String str) {
        Sentry.setTransaction(str);
    }

    @Override // io.sentry.IHub
    public void setUser(User user) {
        Sentry.setUser(user);
    }

    @Override // io.sentry.IHub
    public void setFingerprint(List<String> list) {
        Sentry.setFingerprint(list);
    }

    @Override // io.sentry.IHub
    public void clearBreadcrumbs() {
        Sentry.clearBreadcrumbs();
    }

    @Override // io.sentry.IHub
    public void setTag(String str, String str2) {
        Sentry.setTag(str, str2);
    }

    @Override // io.sentry.IHub
    public void removeTag(String str) {
        Sentry.removeTag(str);
    }

    @Override // io.sentry.IHub
    public void setExtra(String str, String str2) {
        Sentry.setExtra(str, str2);
    }

    @Override // io.sentry.IHub
    public void removeExtra(String str) {
        Sentry.removeExtra(str);
    }

    @Override // io.sentry.IHub
    public SentryId getLastEventId() {
        return Sentry.getLastEventId();
    }

    @Override // io.sentry.IHub
    public void pushScope() {
        Sentry.pushScope();
    }

    @Override // io.sentry.IHub
    public void popScope() {
        Sentry.popScope();
    }

    @Override // io.sentry.IHub
    public void withScope(ScopeCallback scopeCallback) {
        Sentry.withScope(scopeCallback);
    }

    @Override // io.sentry.IHub
    public void configureScope(ScopeCallback scopeCallback) {
        Sentry.configureScope(scopeCallback);
    }

    @Override // io.sentry.IHub
    public void bindClient(ISentryClient iSentryClient) {
        Sentry.bindClient(iSentryClient);
    }

    @Override // io.sentry.IHub
    public boolean isHealthy() {
        return Sentry.isHealthy();
    }

    @Override // io.sentry.IHub
    public void flush(long j) {
        Sentry.flush(j);
    }

    @Override // io.sentry.IHub
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public IHub m5621clone() {
        return Sentry.getCurrentHub().m5623clone();
    }

    @Override // io.sentry.IHub
    public SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData) {
        return Sentry.getCurrentHub().captureTransaction(sentryTransaction, traceContext, hint, profilingTraceData);
    }

    @Override // io.sentry.IHub
    public ITransaction startTransaction(TransactionContext transactionContext, TransactionOptions transactionOptions) {
        return Sentry.startTransaction(transactionContext, transactionOptions);
    }

    @Override // io.sentry.IHub
    @Deprecated
    public SentryTraceHeader traceHeaders() {
        return Sentry.traceHeaders();
    }

    @Override // io.sentry.IHub
    public void setSpanContext(Throwable th, ISpan iSpan, String str) {
        Sentry.getCurrentHub().setSpanContext(th, iSpan, str);
    }

    @Override // io.sentry.IHub
    public ISpan getSpan() {
        return Sentry.getCurrentHub().getSpan();
    }

    @Override // io.sentry.IHub
    public ITransaction getTransaction() {
        return Sentry.getCurrentHub().getTransaction();
    }

    @Override // io.sentry.IHub
    public SentryOptions getOptions() {
        return Sentry.getCurrentHub().getOptions();
    }

    @Override // io.sentry.IHub
    public Boolean isCrashedLastRun() {
        return Sentry.isCrashedLastRun();
    }

    @Override // io.sentry.IHub
    public void reportFullyDisplayed() {
        Sentry.reportFullyDisplayed();
    }

    @Override // io.sentry.IHub
    public TransactionContext continueTrace(String str, List<String> list) {
        return Sentry.continueTrace(str, list);
    }

    @Override // io.sentry.IHub
    public SentryTraceHeader getTraceparent() {
        return Sentry.getTraceparent();
    }

    @Override // io.sentry.IHub
    public BaggageHeader getBaggage() {
        return Sentry.getBaggage();
    }

    @Override // io.sentry.IHub
    public SentryId captureCheckIn(CheckIn checkIn) {
        return Sentry.captureCheckIn(checkIn);
    }

    @Override // io.sentry.IHub
    public RateLimiter getRateLimiter() {
        return Sentry.getCurrentHub().getRateLimiter();
    }

    @Override // io.sentry.IHub
    public MetricsApi metrics() {
        return Sentry.getCurrentHub().metrics();
    }
}
