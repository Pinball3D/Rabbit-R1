package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.RunnableScheduler;
import androidx.work.impl.model.WorkGenerationalId;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class WorkTimer {
    private static final String TAG = Logger.tagWithPrefix("WorkTimer");
    final RunnableScheduler mRunnableScheduler;
    final Map<WorkGenerationalId, WorkTimerRunnable> mTimerMap = new HashMap();
    final Map<WorkGenerationalId, TimeLimitExceededListener> mListeners = new HashMap();
    final Object mLock = new Object();

    /* loaded from: classes2.dex */
    public interface TimeLimitExceededListener {
        void onTimeLimitExceeded(WorkGenerationalId id);
    }

    public WorkTimer(RunnableScheduler scheduler) {
        this.mRunnableScheduler = scheduler;
    }

    public void startTimer(final WorkGenerationalId id, long processingTimeMillis, TimeLimitExceededListener listener) {
        synchronized (this.mLock) {
            Logger.get().debug(TAG, "Starting timer for " + id);
            stopTimer(id);
            WorkTimerRunnable workTimerRunnable = new WorkTimerRunnable(this, id);
            this.mTimerMap.put(id, workTimerRunnable);
            this.mListeners.put(id, listener);
            this.mRunnableScheduler.scheduleWithDelay(processingTimeMillis, workTimerRunnable);
        }
    }

    public void stopTimer(final WorkGenerationalId id) {
        synchronized (this.mLock) {
            if (this.mTimerMap.remove(id) != null) {
                Logger.get().debug(TAG, "Stopping timer for " + id);
                this.mListeners.remove(id);
            }
        }
    }

    public Map<WorkGenerationalId, WorkTimerRunnable> getTimerMap() {
        Map<WorkGenerationalId, WorkTimerRunnable> map;
        synchronized (this.mLock) {
            map = this.mTimerMap;
        }
        return map;
    }

    public Map<WorkGenerationalId, TimeLimitExceededListener> getListeners() {
        Map<WorkGenerationalId, TimeLimitExceededListener> map;
        synchronized (this.mLock) {
            map = this.mListeners;
        }
        return map;
    }

    /* loaded from: classes2.dex */
    public static class WorkTimerRunnable implements Runnable {
        static final String TAG = "WrkTimerRunnable";
        private final WorkGenerationalId mWorkGenerationalId;
        private final WorkTimer mWorkTimer;

        WorkTimerRunnable(WorkTimer workTimer, WorkGenerationalId id) {
            this.mWorkTimer = workTimer;
            this.mWorkGenerationalId = id;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.mWorkTimer.mLock) {
                if (this.mWorkTimer.mTimerMap.remove(this.mWorkGenerationalId) != null) {
                    TimeLimitExceededListener remove = this.mWorkTimer.mListeners.remove(this.mWorkGenerationalId);
                    if (remove != null) {
                        remove.onTimeLimitExceeded(this.mWorkGenerationalId);
                    }
                } else {
                    Logger.get().debug(TAG, String.format("Timer with %s is already marked as complete.", this.mWorkGenerationalId));
                }
            }
        }
    }
}
