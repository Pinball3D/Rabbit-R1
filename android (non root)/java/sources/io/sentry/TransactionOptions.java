package io.sentry;

/* loaded from: classes3.dex */
public final class TransactionOptions extends SpanOptions {
    public static final long DEFAULT_DEADLINE_TIMEOUT_AUTO_TRANSACTION = 30000;
    private CustomSamplingContext customSamplingContext = null;
    private boolean bindToScope = false;
    private SentryDate startTimestamp = null;
    private boolean isAppStartTransaction = false;
    private boolean waitForChildren = false;
    private Long idleTimeout = null;
    private Long deadlineTimeout = null;
    private TransactionFinishedCallback transactionFinishedCallback = null;

    public CustomSamplingContext getCustomSamplingContext() {
        return this.customSamplingContext;
    }

    public Long getDeadlineTimeout() {
        return this.deadlineTimeout;
    }

    public Long getIdleTimeout() {
        return this.idleTimeout;
    }

    public SentryDate getStartTimestamp() {
        return this.startTimestamp;
    }

    public TransactionFinishedCallback getTransactionFinishedCallback() {
        return this.transactionFinishedCallback;
    }

    public boolean isAppStartTransaction() {
        return this.isAppStartTransaction;
    }

    public boolean isBindToScope() {
        return this.bindToScope;
    }

    public boolean isWaitForChildren() {
        return this.waitForChildren;
    }

    public void setAppStartTransaction(boolean z) {
        this.isAppStartTransaction = z;
    }

    public void setBindToScope(boolean z) {
        this.bindToScope = z;
    }

    public void setCustomSamplingContext(CustomSamplingContext customSamplingContext) {
        this.customSamplingContext = customSamplingContext;
    }

    public void setDeadlineTimeout(Long l) {
        this.deadlineTimeout = l;
    }

    public void setIdleTimeout(Long l) {
        this.idleTimeout = l;
    }

    public void setStartTimestamp(SentryDate sentryDate) {
        this.startTimestamp = sentryDate;
    }

    public void setTransactionFinishedCallback(TransactionFinishedCallback transactionFinishedCallback) {
        this.transactionFinishedCallback = transactionFinishedCallback;
    }

    public void setWaitForChildren(boolean z) {
        this.waitForChildren = z;
    }
}
