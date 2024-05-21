package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.Logger;
import androidx.work.impl.StartStopToken;
import androidx.work.impl.background.systemalarm.SystemAlarmDispatcher;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.WorkTimer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;

/* loaded from: classes2.dex */
public class DelayMetCommandHandler implements OnConstraintsStateChangedListener, WorkTimer.TimeLimitExceededListener {
    private static final int STATE_INITIAL = 0;
    private static final int STATE_START_REQUESTED = 1;
    private static final int STATE_STOP_REQUESTED = 2;
    private static final String TAG = Logger.tagWithPrefix("DelayMetCommandHandler");
    private final Context mContext;
    private final CoroutineDispatcher mCoroutineDispatcher;
    private int mCurrentState;
    private final SystemAlarmDispatcher mDispatcher;
    private boolean mHasConstraints;
    private volatile Job mJob;
    private final Object mLock;
    private final Executor mMainThreadExecutor;
    private final Executor mSerialExecutor;
    private final int mStartId;
    private final StartStopToken mToken;
    private PowerManager.WakeLock mWakeLock;
    private final WorkConstraintsTracker mWorkConstraintsTracker;
    private final WorkGenerationalId mWorkGenerationalId;

    public DelayMetCommandHandler(Context context, int startId, SystemAlarmDispatcher dispatcher, StartStopToken startStopToken) {
        this.mContext = context;
        this.mStartId = startId;
        this.mDispatcher = dispatcher;
        this.mWorkGenerationalId = startStopToken.getId();
        this.mToken = startStopToken;
        Trackers trackers = dispatcher.getWorkManager().getTrackers();
        this.mSerialExecutor = dispatcher.getTaskExecutor().getSerialTaskExecutor();
        this.mMainThreadExecutor = dispatcher.getTaskExecutor().getMainThreadExecutor();
        this.mCoroutineDispatcher = dispatcher.getTaskExecutor().getTaskCoroutineDispatcher();
        this.mWorkConstraintsTracker = new WorkConstraintsTracker(trackers);
        this.mHasConstraints = false;
        this.mCurrentState = 0;
        this.mLock = new Object();
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState state) {
        if (state instanceof ConstraintsState.ConstraintsMet) {
            this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda1(this));
        } else {
            this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
        }
    }

    public void startWork() {
        if (this.mCurrentState == 0) {
            this.mCurrentState = 1;
            Logger.get().debug(TAG, "onAllConstraintsMet for " + this.mWorkGenerationalId);
            if (this.mDispatcher.getProcessor().startWork(this.mToken)) {
                this.mDispatcher.getWorkTimer().startTimer(this.mWorkGenerationalId, 600000L, this);
                return;
            } else {
                cleanUp();
                return;
            }
        }
        Logger.get().debug(TAG, "Already started work for " + this.mWorkGenerationalId);
    }

    public void onExecuted(boolean needsReschedule) {
        Logger.get().debug(TAG, "onExecuted " + this.mWorkGenerationalId + ", " + needsReschedule);
        cleanUp();
        if (needsReschedule) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
        }
        if (this.mHasConstraints) {
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createConstraintsChangedIntent(this.mContext), this.mStartId));
        }
    }

    @Override // androidx.work.impl.utils.WorkTimer.TimeLimitExceededListener
    public void onTimeLimitExceeded(WorkGenerationalId id) {
        Logger.get().debug(TAG, "Exceeded time limits on execution for " + id);
        this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
    }

    public void handleProcessWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        this.mWakeLock = WakeLocks.newWakeLock(this.mContext, workSpecId + " (" + this.mStartId + ")");
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Acquiring wakelock " + this.mWakeLock + "for WorkSpec " + workSpecId);
        this.mWakeLock.acquire();
        WorkSpec workSpec = this.mDispatcher.getWorkManager().getWorkDatabase().workSpecDao().getWorkSpec(workSpecId);
        if (workSpec == null) {
            this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda0(this));
            return;
        }
        boolean hasConstraints = workSpec.hasConstraints();
        this.mHasConstraints = hasConstraints;
        if (!hasConstraints) {
            Logger.get().debug(str, "No constraints for " + workSpecId);
            this.mSerialExecutor.execute(new DelayMetCommandHandler$$ExternalSyntheticLambda1(this));
        } else {
            this.mJob = WorkConstraintsTrackerKt.listen(this.mWorkConstraintsTracker, workSpec, this.mCoroutineDispatcher, this);
        }
    }

    public void stopWork() {
        String workSpecId = this.mWorkGenerationalId.getWorkSpecId();
        if (this.mCurrentState < 2) {
            this.mCurrentState = 2;
            Logger logger = Logger.get();
            String str = TAG;
            logger.debug(str, "Stopping work for WorkSpec " + workSpecId);
            this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createStopWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
            if (this.mDispatcher.getProcessor().isEnqueued(this.mWorkGenerationalId.getWorkSpecId())) {
                Logger.get().debug(str, "WorkSpec " + workSpecId + " needs to be rescheduled");
                this.mMainThreadExecutor.execute(new SystemAlarmDispatcher.AddRunnable(this.mDispatcher, CommandHandler.createScheduleWorkIntent(this.mContext, this.mWorkGenerationalId), this.mStartId));
                return;
            }
            Logger.get().debug(str, "Processor does not have WorkSpec " + workSpecId + ". No need to reschedule");
            return;
        }
        Logger.get().debug(TAG, "Already stopped work for " + workSpecId);
    }

    private void cleanUp() {
        synchronized (this.mLock) {
            if (this.mJob != null) {
                this.mJob.cancel((CancellationException) null);
            }
            this.mDispatcher.getWorkTimer().stopTimer(this.mWorkGenerationalId);
            PowerManager.WakeLock wakeLock = this.mWakeLock;
            if (wakeLock != null && wakeLock.isHeld()) {
                Logger.get().debug(TAG, "Releasing wakelock " + this.mWakeLock + "for WorkSpec " + this.mWorkGenerationalId);
                this.mWakeLock.release();
            }
        }
    }
}
