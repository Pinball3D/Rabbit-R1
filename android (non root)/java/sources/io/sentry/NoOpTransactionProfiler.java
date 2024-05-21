package io.sentry;

import java.util.List;

/* loaded from: classes3.dex */
public final class NoOpTransactionProfiler implements ITransactionProfiler {
    private static final NoOpTransactionProfiler instance = new NoOpTransactionProfiler();

    public static NoOpTransactionProfiler getInstance() {
        return instance;
    }

    @Override // io.sentry.ITransactionProfiler
    public void bindTransaction(ITransaction iTransaction) {
    }

    @Override // io.sentry.ITransactionProfiler
    public void close() {
    }

    @Override // io.sentry.ITransactionProfiler
    public boolean isRunning() {
        return false;
    }

    @Override // io.sentry.ITransactionProfiler
    public ProfilingTraceData onTransactionFinish(ITransaction iTransaction, List<PerformanceCollectionData> list, SentryOptions sentryOptions) {
        return null;
    }

    @Override // io.sentry.ITransactionProfiler
    public void start() {
    }

    private NoOpTransactionProfiler() {
    }
}
