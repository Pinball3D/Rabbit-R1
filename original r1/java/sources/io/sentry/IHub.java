package io.sentry;

import io.sentry.metrics.MetricsApi;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.transport.RateLimiter;
import java.util.List;

/* loaded from: classes3.dex */
public interface IHub {
    void addBreadcrumb(Breadcrumb breadcrumb);

    void addBreadcrumb(Breadcrumb breadcrumb, Hint hint);

    void bindClient(ISentryClient iSentryClient);

    SentryId captureCheckIn(CheckIn checkIn);

    SentryId captureEnvelope(SentryEnvelope sentryEnvelope, Hint hint);

    SentryId captureEvent(SentryEvent sentryEvent, Hint hint);

    SentryId captureEvent(SentryEvent sentryEvent, Hint hint, ScopeCallback scopeCallback);

    SentryId captureException(Throwable th, Hint hint);

    SentryId captureException(Throwable th, Hint hint, ScopeCallback scopeCallback);

    SentryId captureMessage(String str, SentryLevel sentryLevel);

    SentryId captureMessage(String str, SentryLevel sentryLevel, ScopeCallback scopeCallback);

    SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint, ProfilingTraceData profilingTraceData);

    void captureUserFeedback(UserFeedback userFeedback);

    void clearBreadcrumbs();

    /* renamed from: clone */
    IHub m5621clone();

    void close();

    void close(boolean z);

    void configureScope(ScopeCallback scopeCallback);

    TransactionContext continueTrace(String str, List<String> list);

    void endSession();

    void flush(long j);

    BaggageHeader getBaggage();

    SentryId getLastEventId();

    SentryOptions getOptions();

    RateLimiter getRateLimiter();

    ISpan getSpan();

    SentryTraceHeader getTraceparent();

    ITransaction getTransaction();

    Boolean isCrashedLastRun();

    boolean isEnabled();

    boolean isHealthy();

    MetricsApi metrics();

    void popScope();

    void pushScope();

    void removeExtra(String str);

    void removeTag(String str);

    void reportFullyDisplayed();

    void setExtra(String str, String str2);

    void setFingerprint(List<String> list);

    void setLevel(SentryLevel sentryLevel);

    void setSpanContext(Throwable th, ISpan iSpan, String str);

    void setTag(String str, String str2);

    void setTransaction(String str);

    void setUser(User user);

    void startSession();

    ITransaction startTransaction(TransactionContext transactionContext, TransactionOptions transactionOptions);

    @Deprecated
    SentryTraceHeader traceHeaders();

    void withScope(ScopeCallback scopeCallback);

    default SentryId captureEvent(SentryEvent sentryEvent) {
        return captureEvent(sentryEvent, new Hint());
    }

    default SentryId captureEvent(SentryEvent sentryEvent, ScopeCallback scopeCallback) {
        return captureEvent(sentryEvent, new Hint(), scopeCallback);
    }

    default SentryId captureMessage(String str) {
        return captureMessage(str, SentryLevel.INFO);
    }

    default SentryId captureMessage(String str, ScopeCallback scopeCallback) {
        return captureMessage(str, SentryLevel.INFO, scopeCallback);
    }

    default SentryId captureEnvelope(SentryEnvelope sentryEnvelope) {
        return captureEnvelope(sentryEnvelope, new Hint());
    }

    default SentryId captureException(Throwable th) {
        return captureException(th, new Hint());
    }

    default SentryId captureException(Throwable th, ScopeCallback scopeCallback) {
        return captureException(th, new Hint(), scopeCallback);
    }

    default void addBreadcrumb(String str) {
        addBreadcrumb(new Breadcrumb(str));
    }

    default void addBreadcrumb(String str, String str2) {
        Breadcrumb breadcrumb = new Breadcrumb(str);
        breadcrumb.setCategory(str2);
        addBreadcrumb(breadcrumb);
    }

    default SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext, Hint hint) {
        return captureTransaction(sentryTransaction, traceContext, hint, null);
    }

    default SentryId captureTransaction(SentryTransaction sentryTransaction, Hint hint) {
        return captureTransaction(sentryTransaction, null, hint);
    }

    default SentryId captureTransaction(SentryTransaction sentryTransaction, TraceContext traceContext) {
        return captureTransaction(sentryTransaction, traceContext, null);
    }

    default ITransaction startTransaction(TransactionContext transactionContext) {
        return startTransaction(transactionContext, new TransactionOptions());
    }

    default ITransaction startTransaction(String str, String str2) {
        return startTransaction(str, str2, new TransactionOptions());
    }

    default ITransaction startTransaction(String str, String str2, TransactionOptions transactionOptions) {
        return startTransaction(new TransactionContext(str, str2), transactionOptions);
    }

    @Deprecated
    default void reportFullDisplayed() {
        reportFullyDisplayed();
    }
}
