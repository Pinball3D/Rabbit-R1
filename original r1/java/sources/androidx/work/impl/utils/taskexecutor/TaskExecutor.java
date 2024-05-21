package androidx.work.impl.utils.taskexecutor;

import java.util.concurrent.Executor;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;

/* loaded from: classes2.dex */
public interface TaskExecutor {
    Executor getMainThreadExecutor();

    SerialExecutor getSerialTaskExecutor();

    default void executeOnTaskThread(Runnable runnable) {
        getSerialTaskExecutor().execute(runnable);
    }

    default CoroutineDispatcher getTaskCoroutineDispatcher() {
        return ExecutorsKt.from(getSerialTaskExecutor());
    }
}
