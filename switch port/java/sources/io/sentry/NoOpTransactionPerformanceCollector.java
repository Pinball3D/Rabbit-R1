package io.sentry;

import java.util.List;

/* loaded from: classes3.dex */
public final class NoOpTransactionPerformanceCollector implements TransactionPerformanceCollector {
    private static final NoOpTransactionPerformanceCollector instance = new NoOpTransactionPerformanceCollector();

    public static NoOpTransactionPerformanceCollector getInstance() {
        return instance;
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void close() {
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void onSpanFinished(ISpan iSpan) {
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void onSpanStarted(ISpan iSpan) {
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void start(ITransaction iTransaction) {
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public List<PerformanceCollectionData> stop(ITransaction iTransaction) {
        return null;
    }

    private NoOpTransactionPerformanceCollector() {
    }
}
