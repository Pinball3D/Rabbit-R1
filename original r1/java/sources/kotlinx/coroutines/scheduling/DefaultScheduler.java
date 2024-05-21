package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: Dispatcher.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0017J\r\u0010\t\u001a\u00020\u0004H\u0000¢\u0006\u0002\b\nJ\b\u0010\u000b\u001a\u00020\fH\u0016¨\u0006\r"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;", "()V", "close", "", "limitedParallelism", "Lkotlinx/coroutines/CoroutineDispatcher;", "parallelism", "", "shutdown", "shutdown$kotlinx_coroutines_core", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DefaultScheduler extends SchedulerCoroutineDispatcher {
    public static final DefaultScheduler INSTANCE = new DefaultScheduler();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "Dispatchers.Default";
    }

    private DefaultScheduler() {
        super(TasksKt.CORE_POOL_SIZE, TasksKt.MAX_POOL_SIZE, TasksKt.IDLE_WORKER_KEEP_ALIVE_NS, TasksKt.DEFAULT_SCHEDULER_NAME);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public CoroutineDispatcher limitedParallelism(int parallelism) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        return parallelism >= TasksKt.CORE_POOL_SIZE ? this : super.limitedParallelism(parallelism);
    }

    public final void shutdown$kotlinx_coroutines_core() {
        super.close();
    }

    @Override // kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }
}
