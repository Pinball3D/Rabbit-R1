package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public class WorkForegroundRunnable implements Runnable {
    static final String TAG = Logger.tagWithPrefix("WorkForegroundRunnable");
    final Context mContext;
    final ForegroundUpdater mForegroundUpdater;
    final SettableFuture<Void> mFuture = SettableFuture.create();
    final TaskExecutor mTaskExecutor;
    final WorkSpec mWorkSpec;
    final ListenableWorker mWorker;

    public ListenableFuture<Void> getFuture() {
        return this.mFuture;
    }

    public WorkForegroundRunnable(Context context, WorkSpec workSpec, ListenableWorker worker, ForegroundUpdater foregroundUpdater, TaskExecutor taskExecutor) {
        this.mContext = context;
        this.mWorkSpec = workSpec;
        this.mWorker = worker;
        this.mForegroundUpdater = foregroundUpdater;
        this.mTaskExecutor = taskExecutor;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z = this.mWorkSpec.expedited;
        this.mFuture.set(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$run$0$androidx-work-impl-utils-WorkForegroundRunnable, reason: not valid java name */
    public /* synthetic */ void m5340lambda$run$0$androidxworkimplutilsWorkForegroundRunnable(SettableFuture settableFuture) {
        if (!this.mFuture.isCancelled()) {
            settableFuture.setFuture(this.mWorker.getForegroundInfoAsync());
        } else {
            settableFuture.cancel(true);
        }
    }

    /* renamed from: androidx.work.impl.utils.WorkForegroundRunnable$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ SettableFuture val$foregroundFuture;

        AnonymousClass1(final SettableFuture val$foregroundFuture) {
            this.val$foregroundFuture = val$foregroundFuture;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            if (WorkForegroundRunnable.this.mFuture.isCancelled()) {
                return;
            }
            try {
                ForegroundInfo foregroundInfo = (ForegroundInfo) this.val$foregroundFuture.get();
                if (foregroundInfo == null) {
                    throw new IllegalStateException("Worker was marked important (" + WorkForegroundRunnable.this.mWorkSpec.workerClassName + ") but did not provide ForegroundInfo");
                }
                Logger.get().debug(WorkForegroundRunnable.TAG, "Updating notification for " + WorkForegroundRunnable.this.mWorkSpec.workerClassName);
                WorkForegroundRunnable.this.mFuture.setFuture(WorkForegroundRunnable.this.mForegroundUpdater.setForegroundAsync(WorkForegroundRunnable.this.mContext, WorkForegroundRunnable.this.mWorker.getId(), foregroundInfo));
            } catch (Throwable th) {
                WorkForegroundRunnable.this.mFuture.setException(th);
            }
        }
    }
}
