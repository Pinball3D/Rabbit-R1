package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public abstract class Worker extends ListenableWorker {
    SettableFuture<ListenableWorker.Result> mFuture;

    public abstract ListenableWorker.Result doWork();

    public Worker(Context context, WorkerParameters workerParams) {
        super(context, workerParams);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        this.mFuture = SettableFuture.create();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Worker.this.mFuture.set(Worker.this.doWork());
                } catch (Throwable th) {
                    Worker.this.mFuture.setException(th);
                }
            }
        });
        return this.mFuture;
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        final SettableFuture create = SettableFuture.create();
        getBackgroundExecutor().execute(new Runnable() { // from class: androidx.work.Worker.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    create.set(Worker.this.getForegroundInfo());
                } catch (Throwable th) {
                    create.setException(th);
                }
            }
        });
        return create;
    }

    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for \n `getForegroundInfo()`");
    }
}
