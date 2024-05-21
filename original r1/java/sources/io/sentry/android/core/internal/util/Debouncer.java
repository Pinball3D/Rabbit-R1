package io.sentry.android.core.internal.util;

import io.sentry.transport.ICurrentDateProvider;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public class Debouncer {
    private final AtomicInteger executions = new AtomicInteger(0);
    private final AtomicLong lastExecutionTime = new AtomicLong(0);
    private final int maxExecutions;
    private final ICurrentDateProvider timeProvider;
    private final long waitTimeMs;

    public Debouncer(ICurrentDateProvider iCurrentDateProvider, long j, int i) {
        this.timeProvider = iCurrentDateProvider;
        this.waitTimeMs = j;
        this.maxExecutions = i <= 0 ? 1 : i;
    }

    public boolean checkForDebounce() {
        long currentTimeMillis = this.timeProvider.getCurrentTimeMillis();
        if (this.lastExecutionTime.get() == 0 || this.lastExecutionTime.get() + this.waitTimeMs <= currentTimeMillis) {
            this.executions.set(0);
            this.lastExecutionTime.set(currentTimeMillis);
            return false;
        }
        if (this.executions.incrementAndGet() < this.maxExecutions) {
            return false;
        }
        this.executions.set(0);
        return true;
    }
}
