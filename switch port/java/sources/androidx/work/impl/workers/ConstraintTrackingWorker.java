package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.OnConstraintsStateChangedListener;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.WorkConstraintsTrackerKt;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryThread;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Job;

/* compiled from: ConstraintTrackingWorker.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0018\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0015H\u0016J\b\u0010\u001b\u001a\u00020\u0015H\u0002J\u000e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00100\u001dH\u0016R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\u000b\u001a\u0004\u0018\u00010\u00012\b\u0010\n\u001a\u0004\u0018\u00010\u00018G@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR2\u0010\u000e\u001a&\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00100\u0010 \u0011*\u0012\u0012\f\u0012\n \u0011*\u0004\u0018\u00010\u00100\u0010\u0018\u00010\u000f0\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/ListenableWorker;", "Landroidx/work/impl/constraints/OnConstraintsStateChangedListener;", "appContext", "Landroid/content/Context;", "workerParameters", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "areConstraintsUnmet", "", "<set-?>", "delegate", "getDelegate", "()Landroidx/work/ListenableWorker;", "future", "Landroidx/work/impl/utils/futures/SettableFuture;", "Landroidx/work/ListenableWorker$Result;", "kotlin.jvm.PlatformType", SentryStackFrame.JsonKeys.LOCK, "", "onConstraintsStateChanged", "", "workSpec", "Landroidx/work/impl/model/WorkSpec;", SentryThread.JsonKeys.STATE, "Landroidx/work/impl/constraints/ConstraintsState;", "onStopped", "setupAndRunConstraintTrackingWork", "startWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class ConstraintTrackingWorker extends ListenableWorker implements OnConstraintsStateChangedListener {
    private volatile boolean areConstraintsUnmet;
    private ListenableWorker delegate;
    private final SettableFuture<ListenableWorker.Result> future;
    private final Object lock;
    private final WorkerParameters workerParameters;

    public final ListenableWorker getDelegate() {
        return this.delegate;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.checkNotNullParameter(appContext, "appContext");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
        this.lock = new Object();
        this.future = SettableFuture.create();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWork$lambda$0(ConstraintTrackingWorker this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.setupAndRunConstraintTrackingWork();
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ListenableWorker.Result> startWork() {
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.startWork$lambda$0(ConstraintTrackingWorker.this);
            }
        });
        SettableFuture<ListenableWorker.Result> future = this.future;
        Intrinsics.checkNotNullExpressionValue(future, "future");
        return future;
    }

    private final void setupAndRunConstraintTrackingWork() {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        if (this.future.isCancelled()) {
            return;
        }
        String string = getInputData().getString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
        Logger logger = Logger.get();
        Intrinsics.checkNotNullExpressionValue(logger, "get()");
        String str7 = string;
        if (str7 == null || str7.length() == 0) {
            str = ConstraintTrackingWorkerKt.TAG;
            logger.error(str, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future = this.future;
            Intrinsics.checkNotNullExpressionValue(future, "future");
            ConstraintTrackingWorkerKt.setFailed(future);
            return;
        }
        ListenableWorker createWorkerWithDefaultFallback = getWorkerFactory().createWorkerWithDefaultFallback(getApplicationContext(), string, this.workerParameters);
        this.delegate = createWorkerWithDefaultFallback;
        if (createWorkerWithDefaultFallback == null) {
            str6 = ConstraintTrackingWorkerKt.TAG;
            logger.debug(str6, "No worker to delegate to.");
            SettableFuture<ListenableWorker.Result> future2 = this.future;
            Intrinsics.checkNotNullExpressionValue(future2, "future");
            ConstraintTrackingWorkerKt.setFailed(future2);
            return;
        }
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(applicationContext)");
        WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
        String uuid = getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
        WorkSpec workSpec = workSpecDao.getWorkSpec(uuid);
        if (workSpec == null) {
            SettableFuture<ListenableWorker.Result> future3 = this.future;
            Intrinsics.checkNotNullExpressionValue(future3, "future");
            ConstraintTrackingWorkerKt.setFailed(future3);
            return;
        }
        Trackers trackers = workManagerImpl.getTrackers();
        Intrinsics.checkNotNullExpressionValue(trackers, "workManagerImpl.trackers");
        WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(trackers);
        CoroutineDispatcher taskCoroutineDispatcher = workManagerImpl.getWorkTaskExecutor().getTaskCoroutineDispatcher();
        Intrinsics.checkNotNullExpressionValue(taskCoroutineDispatcher, "workManagerImpl.workTask…r.taskCoroutineDispatcher");
        final Job listen = WorkConstraintsTrackerKt.listen(workConstraintsTracker, workSpec, taskCoroutineDispatcher, this);
        this.future.addListener(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ConstraintTrackingWorker.setupAndRunConstraintTrackingWork$lambda$1(Job.this);
            }
        }, new SynchronousExecutor());
        if (workConstraintsTracker.areAllConstraintsMet(workSpec)) {
            str3 = ConstraintTrackingWorkerKt.TAG;
            logger.debug(str3, "Constraints met for delegate " + string);
            try {
                ListenableWorker listenableWorker = this.delegate;
                Intrinsics.checkNotNull(listenableWorker);
                final ListenableFuture<ListenableWorker.Result> startWork = listenableWorker.startWork();
                Intrinsics.checkNotNullExpressionValue(startWork, "delegate!!.startWork()");
                startWork.addListener(new Runnable() { // from class: androidx.work.impl.workers.ConstraintTrackingWorker$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        ConstraintTrackingWorker.setupAndRunConstraintTrackingWork$lambda$3(ConstraintTrackingWorker.this, startWork);
                    }
                }, getBackgroundExecutor());
                return;
            } catch (Throwable th) {
                str4 = ConstraintTrackingWorkerKt.TAG;
                logger.debug(str4, "Delegated worker " + string + " threw exception in startWork.", th);
                synchronized (this.lock) {
                    if (this.areConstraintsUnmet) {
                        str5 = ConstraintTrackingWorkerKt.TAG;
                        logger.debug(str5, "Constraints were unmet, Retrying.");
                        SettableFuture<ListenableWorker.Result> future4 = this.future;
                        Intrinsics.checkNotNullExpressionValue(future4, "future");
                        ConstraintTrackingWorkerKt.setRetry(future4);
                        return;
                    }
                    SettableFuture<ListenableWorker.Result> future5 = this.future;
                    Intrinsics.checkNotNullExpressionValue(future5, "future");
                    ConstraintTrackingWorkerKt.setFailed(future5);
                    return;
                }
            }
        }
        str2 = ConstraintTrackingWorkerKt.TAG;
        logger.debug(str2, "Constraints not met for delegate " + string + ". Requesting retry.");
        SettableFuture<ListenableWorker.Result> future6 = this.future;
        Intrinsics.checkNotNullExpressionValue(future6, "future");
        ConstraintTrackingWorkerKt.setRetry(future6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAndRunConstraintTrackingWork$lambda$1(Job job) {
        Intrinsics.checkNotNullParameter(job, "$job");
        job.cancel((CancellationException) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setupAndRunConstraintTrackingWork$lambda$3(ConstraintTrackingWorker this$0, ListenableFuture innerFuture) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(innerFuture, "$innerFuture");
        synchronized (this$0.lock) {
            if (this$0.areConstraintsUnmet) {
                SettableFuture<ListenableWorker.Result> future = this$0.future;
                Intrinsics.checkNotNullExpressionValue(future, "future");
                ConstraintTrackingWorkerKt.setRetry(future);
            } else {
                this$0.future.setFuture(innerFuture);
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    @Override // androidx.work.ListenableWorker
    public void onStopped() {
        super.onStopped();
        ListenableWorker listenableWorker = this.delegate;
        if (listenableWorker == null || listenableWorker.isStopped()) {
            return;
        }
        listenableWorker.stop(getStopReason());
    }

    @Override // androidx.work.impl.constraints.OnConstraintsStateChangedListener
    public void onConstraintsStateChanged(WorkSpec workSpec, ConstraintsState state) {
        String str;
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Intrinsics.checkNotNullParameter(state, "state");
        Logger logger = Logger.get();
        str = ConstraintTrackingWorkerKt.TAG;
        logger.debug(str, "Constraints changed for " + workSpec);
        if (state instanceof ConstraintsState.ConstraintsNotMet) {
            synchronized (this.lock) {
                this.areConstraintsUnmet = true;
                Unit unit = Unit.INSTANCE;
            }
        }
    }
}
