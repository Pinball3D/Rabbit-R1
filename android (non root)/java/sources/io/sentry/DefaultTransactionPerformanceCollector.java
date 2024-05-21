package io.sentry;

import io.sentry.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class DefaultTransactionPerformanceCollector implements TransactionPerformanceCollector {
    private static final long TRANSACTION_COLLECTION_INTERVAL_MILLIS = 100;
    private static final long TRANSACTION_COLLECTION_TIMEOUT_MILLIS = 30000;
    private final boolean hasNoCollectors;
    private final SentryOptions options;
    private final Object timerLock = new Object();
    private volatile Timer timer = null;
    private final Map<String, List<PerformanceCollectionData>> performanceDataMap = new ConcurrentHashMap();
    private final AtomicBoolean isStarted = new AtomicBoolean(false);
    private long lastCollectionTimestamp = 0;
    private final List<IPerformanceSnapshotCollector> snapshotCollectors = new ArrayList();
    private final List<IPerformanceContinuousCollector> continuousCollectors = new ArrayList();

    public DefaultTransactionPerformanceCollector(SentryOptions sentryOptions) {
        boolean z = false;
        this.options = (SentryOptions) Objects.requireNonNull(sentryOptions, "The options object is required.");
        for (IPerformanceCollector iPerformanceCollector : sentryOptions.getPerformanceCollectors()) {
            if (iPerformanceCollector instanceof IPerformanceSnapshotCollector) {
                this.snapshotCollectors.add((IPerformanceSnapshotCollector) iPerformanceCollector);
            }
            if (iPerformanceCollector instanceof IPerformanceContinuousCollector) {
                this.continuousCollectors.add((IPerformanceContinuousCollector) iPerformanceCollector);
            }
        }
        if (this.snapshotCollectors.isEmpty() && this.continuousCollectors.isEmpty()) {
            z = true;
        }
        this.hasNoCollectors = z;
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void start(final ITransaction iTransaction) {
        if (this.hasNoCollectors) {
            this.options.getLogger().log(SentryLevel.INFO, "No collector found. Performance stats will not be captured during transactions.", new Object[0]);
            return;
        }
        Iterator<IPerformanceContinuousCollector> it = this.continuousCollectors.iterator();
        while (it.hasNext()) {
            it.next().onSpanStarted(iTransaction);
        }
        if (!this.performanceDataMap.containsKey(iTransaction.getEventId().toString())) {
            this.performanceDataMap.put(iTransaction.getEventId().toString(), new ArrayList());
            try {
                this.options.getExecutorService().schedule(new Runnable() { // from class: io.sentry.DefaultTransactionPerformanceCollector$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultTransactionPerformanceCollector.this.m5613lambda$start$0$iosentryDefaultTransactionPerformanceCollector(iTransaction);
                    }
                }, 30000L);
            } catch (RejectedExecutionException e) {
                this.options.getLogger().log(SentryLevel.ERROR, "Failed to call the executor. Performance collector will not be automatically finished. Did you call Sentry.close()?", e);
            }
        }
        if (this.isStarted.getAndSet(true)) {
            return;
        }
        synchronized (this.timerLock) {
            if (this.timer == null) {
                this.timer = new Timer(true);
            }
            this.timer.schedule(new TimerTask() { // from class: io.sentry.DefaultTransactionPerformanceCollector.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    Iterator it2 = DefaultTransactionPerformanceCollector.this.snapshotCollectors.iterator();
                    while (it2.hasNext()) {
                        ((IPerformanceSnapshotCollector) it2.next()).setup();
                    }
                }
            }, 0L);
            this.timer.scheduleAtFixedRate(new TimerTask() { // from class: io.sentry.DefaultTransactionPerformanceCollector.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    long currentTimeMillis = System.currentTimeMillis();
                    if (currentTimeMillis - DefaultTransactionPerformanceCollector.this.lastCollectionTimestamp < 10) {
                        return;
                    }
                    DefaultTransactionPerformanceCollector.this.lastCollectionTimestamp = currentTimeMillis;
                    PerformanceCollectionData performanceCollectionData = new PerformanceCollectionData();
                    Iterator it2 = DefaultTransactionPerformanceCollector.this.snapshotCollectors.iterator();
                    while (it2.hasNext()) {
                        ((IPerformanceSnapshotCollector) it2.next()).collect(performanceCollectionData);
                    }
                    Iterator it3 = DefaultTransactionPerformanceCollector.this.performanceDataMap.values().iterator();
                    while (it3.hasNext()) {
                        ((List) it3.next()).add(performanceCollectionData);
                    }
                }
            }, 100L, 100L);
        }
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void onSpanStarted(ISpan iSpan) {
        Iterator<IPerformanceContinuousCollector> it = this.continuousCollectors.iterator();
        while (it.hasNext()) {
            it.next().onSpanStarted(iSpan);
        }
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void onSpanFinished(ISpan iSpan) {
        Iterator<IPerformanceContinuousCollector> it = this.continuousCollectors.iterator();
        while (it.hasNext()) {
            it.next().onSpanFinished(iSpan);
        }
    }

    @Override // io.sentry.TransactionPerformanceCollector
    /* renamed from: stop, reason: merged with bridge method [inline-methods] */
    public List<PerformanceCollectionData> m5613lambda$start$0$iosentryDefaultTransactionPerformanceCollector(ITransaction iTransaction) {
        this.options.getLogger().log(SentryLevel.DEBUG, "stop collecting performance info for transactions %s (%s)", iTransaction.getName(), iTransaction.getSpanContext().getTraceId().toString());
        List<PerformanceCollectionData> remove = this.performanceDataMap.remove(iTransaction.getEventId().toString());
        Iterator<IPerformanceContinuousCollector> it = this.continuousCollectors.iterator();
        while (it.hasNext()) {
            it.next().onSpanFinished(iTransaction);
        }
        if (this.performanceDataMap.isEmpty()) {
            close();
        }
        return remove;
    }

    @Override // io.sentry.TransactionPerformanceCollector
    public void close() {
        this.options.getLogger().log(SentryLevel.DEBUG, "stop collecting all performance info for transactions", new Object[0]);
        this.performanceDataMap.clear();
        Iterator<IPerformanceContinuousCollector> it = this.continuousCollectors.iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        if (this.isStarted.getAndSet(false)) {
            synchronized (this.timerLock) {
                if (this.timer != null) {
                    this.timer.cancel();
                    this.timer = null;
                }
            }
        }
    }
}
