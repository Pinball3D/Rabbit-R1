package io.sentry;

import java.util.List;

/* loaded from: classes3.dex */
public interface TransactionPerformanceCollector {
    void close();

    void onSpanFinished(ISpan iSpan);

    void onSpanStarted(ISpan iSpan);

    void start(ITransaction iTransaction);

    List<PerformanceCollectionData> stop(ITransaction iTransaction);
}
