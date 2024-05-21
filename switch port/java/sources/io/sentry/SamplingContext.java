package io.sentry;

import io.sentry.util.Objects;

/* loaded from: classes3.dex */
public final class SamplingContext {
    private final CustomSamplingContext customSamplingContext;
    private final TransactionContext transactionContext;

    public CustomSamplingContext getCustomSamplingContext() {
        return this.customSamplingContext;
    }

    public TransactionContext getTransactionContext() {
        return this.transactionContext;
    }

    public SamplingContext(TransactionContext transactionContext, CustomSamplingContext customSamplingContext) {
        this.transactionContext = (TransactionContext) Objects.requireNonNull(transactionContext, "transactionContexts is required");
        this.customSamplingContext = customSamplingContext;
    }
}
