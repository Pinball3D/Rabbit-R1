package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Debug;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.transport.ICurrentDateProvider;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class ANRWatchDog extends Thread {
    private final ANRListener anrListener;
    private final Context context;
    private volatile long lastKnownActiveUiTimestampMs;
    private final ILogger logger;
    private long pollingIntervalMs;
    private final boolean reportInDebug;
    private final AtomicBoolean reported;
    private final Runnable ticker;
    private final ICurrentDateProvider timeProvider;
    private final long timeoutIntervalMillis;
    private final MainLooperHandler uiHandler;

    /* loaded from: classes3.dex */
    public interface ANRListener {
        void onAppNotResponding(ApplicationNotResponding applicationNotResponding);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ANRWatchDog(long j, boolean z, ANRListener aNRListener, ILogger iLogger, Context context) {
        this(new ICurrentDateProvider() { // from class: io.sentry.android.core.ANRWatchDog$$ExternalSyntheticLambda1
            @Override // io.sentry.transport.ICurrentDateProvider
            public final long getCurrentTimeMillis() {
                long uptimeMillis;
                uptimeMillis = SystemClock.uptimeMillis();
                return uptimeMillis;
            }
        }, j, 500L, z, aNRListener, iLogger, new MainLooperHandler(), context);
    }

    ANRWatchDog(final ICurrentDateProvider iCurrentDateProvider, long j, long j2, boolean z, ANRListener aNRListener, ILogger iLogger, MainLooperHandler mainLooperHandler, Context context) {
        super("|ANR-WatchDog|");
        this.lastKnownActiveUiTimestampMs = 0L;
        this.reported = new AtomicBoolean(false);
        this.timeProvider = iCurrentDateProvider;
        this.timeoutIntervalMillis = j;
        this.pollingIntervalMs = j2;
        this.reportInDebug = z;
        this.anrListener = aNRListener;
        this.logger = iLogger;
        this.uiHandler = mainLooperHandler;
        this.context = context;
        this.ticker = new Runnable() { // from class: io.sentry.android.core.ANRWatchDog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ANRWatchDog.this.m5634lambda$new$1$iosentryandroidcoreANRWatchDog(iCurrentDateProvider);
            }
        };
        if (j < this.pollingIntervalMs * 2) {
            throw new IllegalArgumentException(String.format("ANRWatchDog: timeoutIntervalMillis has to be at least %d ms", Long.valueOf(this.pollingIntervalMs * 2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$io-sentry-android-core-ANRWatchDog, reason: not valid java name */
    public /* synthetic */ void m5634lambda$new$1$iosentryandroidcoreANRWatchDog(ICurrentDateProvider iCurrentDateProvider) {
        this.lastKnownActiveUiTimestampMs = iCurrentDateProvider.getCurrentTimeMillis();
        this.reported.set(false);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        this.ticker.run();
        while (!isInterrupted()) {
            this.uiHandler.post(this.ticker);
            try {
                Thread.sleep(this.pollingIntervalMs);
                if (this.timeProvider.getCurrentTimeMillis() - this.lastKnownActiveUiTimestampMs > this.timeoutIntervalMillis) {
                    if (!this.reportInDebug && (Debug.isDebuggerConnected() || Debug.waitingForDebugger())) {
                        this.logger.log(SentryLevel.DEBUG, "An ANR was detected but ignored because the debugger is connected.", new Object[0]);
                        this.reported.set(true);
                    } else if (isProcessNotResponding() && this.reported.compareAndSet(false, true)) {
                        this.anrListener.onAppNotResponding(new ApplicationNotResponding("Application Not Responding for at least " + this.timeoutIntervalMillis + " ms.", this.uiHandler.getThread()));
                    }
                }
            } catch (InterruptedException e) {
                try {
                    Thread.currentThread().interrupt();
                    this.logger.log(SentryLevel.WARNING, "Interrupted: %s", e.getMessage());
                    return;
                } catch (SecurityException unused) {
                    this.logger.log(SentryLevel.WARNING, "Failed to interrupt due to SecurityException: %s", e.getMessage());
                    return;
                }
            }
        }
    }

    private boolean isProcessNotResponding() {
        List<ActivityManager.ProcessErrorStateInfo> list;
        ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
        if (activityManager == null) {
            return true;
        }
        try {
            list = activityManager.getProcessesInErrorState();
        } catch (Throwable th) {
            this.logger.log(SentryLevel.ERROR, "Error getting ActivityManager#getProcessesInErrorState.", th);
            list = null;
        }
        if (list == null) {
            return false;
        }
        Iterator<ActivityManager.ProcessErrorStateInfo> it = list.iterator();
        while (it.hasNext()) {
            if (it.next().condition == 2) {
                return true;
            }
        }
        return false;
    }
}
