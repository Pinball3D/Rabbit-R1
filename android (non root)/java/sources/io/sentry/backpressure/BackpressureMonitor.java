package io.sentry.backpressure;

import io.sentry.IHub;
import io.sentry.ISentryExecutorService;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;

/* loaded from: classes3.dex */
public final class BackpressureMonitor implements IBackpressureMonitor, Runnable {
    private static final int CHECK_INTERVAL_IN_MS = 10000;
    private static final int INITIAL_CHECK_DELAY_IN_MS = 500;
    static final int MAX_DOWNSAMPLE_FACTOR = 10;
    private int downsampleFactor = 0;
    private final IHub hub;
    private final SentryOptions sentryOptions;

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public int getDownsampleFactor() {
        return this.downsampleFactor;
    }

    public BackpressureMonitor(SentryOptions sentryOptions, IHub iHub) {
        this.sentryOptions = sentryOptions;
        this.hub = iHub;
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public void start() {
        reschedule(500);
    }

    @Override // java.lang.Runnable
    public void run() {
        checkHealth();
        reschedule(10000);
    }

    void checkHealth() {
        if (isHealthy()) {
            if (this.downsampleFactor > 0) {
                this.sentryOptions.getLogger().log(SentryLevel.DEBUG, "Health check positive, reverting to normal sampling.", new Object[0]);
            }
            this.downsampleFactor = 0;
        } else {
            int i = this.downsampleFactor;
            if (i < 10) {
                this.downsampleFactor = i + 1;
                this.sentryOptions.getLogger().log(SentryLevel.DEBUG, "Health check negative, downsampling with a factor of %d", Integer.valueOf(this.downsampleFactor));
            }
        }
    }

    private void reschedule(int i) {
        ISentryExecutorService executorService = this.sentryOptions.getExecutorService();
        if (executorService.isClosed()) {
            return;
        }
        executorService.schedule(this, i);
    }

    private boolean isHealthy() {
        return this.hub.isHealthy();
    }
}
