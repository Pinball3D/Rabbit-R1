package androidx.work.impl.utils.taskexecutor;

import android.os.Handler;
import android.os.Looper;
import androidx.work.impl.utils.SerialExecutorImpl;
import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* loaded from: classes2.dex */
public class WorkManagerTaskExecutor implements TaskExecutor {
    private final SerialExecutorImpl mBackgroundExecutor;
    private final CoroutineDispatcher mTaskDispatcher;
    final Handler mMainThreadHandler = new Handler(Looper.getMainLooper());
    private final Executor mMainThreadExecutor = new Executor() { // from class: androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor.1
        @Override // java.util.concurrent.Executor
        public void execute(Runnable command) {
            WorkManagerTaskExecutor.this.mMainThreadHandler.post(command);
        }
    };

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public Executor getMainThreadExecutor() {
        return this.mMainThreadExecutor;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public SerialExecutorImpl getSerialTaskExecutor() {
        return this.mBackgroundExecutor;
    }

    @Override // androidx.work.impl.utils.taskexecutor.TaskExecutor
    public CoroutineDispatcher getTaskCoroutineDispatcher() {
        return this.mTaskDispatcher;
    }

    public WorkManagerTaskExecutor(Executor backgroundExecutor) {
        SerialExecutorImpl serialExecutorImpl = new SerialExecutorImpl(backgroundExecutor);
        this.mBackgroundExecutor = serialExecutorImpl;
        this.mTaskDispatcher = ExecutorsKt.from(serialExecutorImpl);
    }
}
