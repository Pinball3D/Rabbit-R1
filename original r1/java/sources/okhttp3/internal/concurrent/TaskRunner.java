package okhttp3.internal.concurrent;

import io.sentry.SentryEvent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.Util;

/* compiled from: TaskRunner.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u0000 #2\u00020\u0001:\u0003\"#$B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u0014J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\rH\u0002J\b\u0010\u001a\u001a\u0004\u0018\u00010\u0018J\u0010\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0006\u0010\u001c\u001a\u00020\u0016J\u0015\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\tH\u0000¢\u0006\u0002\b\u001fJ\u0006\u0010 \u001a\u00020\tJ\u0010\u0010!\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner;", "", "backend", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "(Lokhttp3/internal/concurrent/TaskRunner$Backend;)V", "getBackend", "()Lokhttp3/internal/concurrent/TaskRunner$Backend;", "busyQueues", "", "Lokhttp3/internal/concurrent/TaskQueue;", "coordinatorWaiting", "", "coordinatorWakeUpAt", "", "nextQueueName", "", "readyQueues", "runnable", "Ljava/lang/Runnable;", "activeQueues", "", "afterRun", "", "task", "Lokhttp3/internal/concurrent/Task;", "delayNanos", "awaitTaskToRun", "beforeRun", "cancelAll", "kickCoordinator", "taskQueue", "kickCoordinator$okhttp", "newQueue", "runTask", "Backend", "Companion", "RealBackend", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class TaskRunner {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final TaskRunner INSTANCE = new TaskRunner(new RealBackend(Util.threadFactory(Util.okHttpName + " TaskRunner", true)));
    private static final Logger logger;
    private final Backend backend;
    private final List<TaskQueue> busyQueues;
    private boolean coordinatorWaiting;
    private long coordinatorWakeUpAt;
    private int nextQueueName;
    private final List<TaskQueue> readyQueues;
    private final Runnable runnable;

    /* compiled from: TaskRunner.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\tH&¨\u0006\u000e"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Backend;", "", "beforeTask", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "coordinatorNotify", "coordinatorWait", "nanos", "", "execute", "runnable", "Ljava/lang/Runnable;", "nanoTime", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public interface Backend {
        void beforeTask(TaskRunner taskRunner);

        void coordinatorNotify(TaskRunner taskRunner);

        void coordinatorWait(TaskRunner taskRunner, long nanos);

        void execute(Runnable runnable);

        long nanoTime();
    }

    public final Backend getBackend() {
        return this.backend;
    }

    public TaskRunner(Backend backend) {
        Intrinsics.checkNotNullParameter(backend, "backend");
        this.backend = backend;
        this.nextQueueName = 10000;
        this.busyQueues = new ArrayList();
        this.readyQueues = new ArrayList();
        this.runnable = new Runnable() { // from class: okhttp3.internal.concurrent.TaskRunner$runnable$1
            @Override // java.lang.Runnable
            public void run() {
                Task awaitTaskToRun;
                long j;
                while (true) {
                    synchronized (TaskRunner.this) {
                        awaitTaskToRun = TaskRunner.this.awaitTaskToRun();
                    }
                    if (awaitTaskToRun == null) {
                        return;
                    }
                    TaskQueue queue = awaitTaskToRun.getQueue();
                    Intrinsics.checkNotNull(queue);
                    boolean isLoggable = TaskRunner.INSTANCE.getLogger().isLoggable(Level.FINE);
                    if (isLoggable) {
                        j = queue.getTaskRunner().getBackend().nanoTime();
                        TaskLoggerKt.access$log(awaitTaskToRun, queue, "starting");
                    } else {
                        j = -1;
                    }
                    try {
                        try {
                            TaskRunner.this.runTask(awaitTaskToRun);
                            Unit unit = Unit.INSTANCE;
                            if (isLoggable) {
                                TaskLoggerKt.access$log(awaitTaskToRun, queue, "finished run in " + TaskLoggerKt.formatDuration(queue.getTaskRunner().getBackend().nanoTime() - j));
                            }
                        } finally {
                        }
                    } catch (Throwable th) {
                        if (isLoggable) {
                            TaskLoggerKt.access$log(awaitTaskToRun, queue, "failed a run in " + TaskLoggerKt.formatDuration(queue.getTaskRunner().getBackend().nanoTime() - j));
                        }
                        throw th;
                    }
                }
            }
        };
    }

    public final TaskQueue newQueue() {
        int i;
        synchronized (this) {
            i = this.nextQueueName;
            this.nextQueueName = i + 1;
        }
        return new TaskQueue(this, "Q" + i);
    }

    public final List<TaskQueue> activeQueues() {
        List<TaskQueue> plus;
        synchronized (this) {
            plus = CollectionsKt.plus((Collection) this.busyQueues, (Iterable) this.readyQueues);
        }
        return plus;
    }

    public final void cancelAll() {
        for (int size = this.busyQueues.size() - 1; size >= 0; size--) {
            this.busyQueues.get(size).cancelAllAndDecide$okhttp();
        }
        for (int size2 = this.readyQueues.size() - 1; size2 >= 0; size2--) {
            TaskQueue taskQueue = this.readyQueues.get(size2);
            taskQueue.cancelAllAndDecide$okhttp();
            if (taskQueue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.remove(size2);
            }
        }
    }

    /* compiled from: TaskRunner.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\u0006\u0010\u0013\u001a\u00020\bR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$RealBackend;", "Lokhttp3/internal/concurrent/TaskRunner$Backend;", "threadFactory", "Ljava/util/concurrent/ThreadFactory;", "(Ljava/util/concurrent/ThreadFactory;)V", "executor", "Ljava/util/concurrent/ThreadPoolExecutor;", "beforeTask", "", "taskRunner", "Lokhttp3/internal/concurrent/TaskRunner;", "coordinatorNotify", "coordinatorWait", "nanos", "", "execute", "runnable", "Ljava/lang/Runnable;", "nanoTime", "shutdown", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class RealBackend implements Backend {
        private final ThreadPoolExecutor executor;

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void beforeTask(TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        }

        public RealBackend(ThreadFactory threadFactory) {
            Intrinsics.checkNotNullParameter(threadFactory, "threadFactory");
            this.executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public long nanoTime() {
            return System.nanoTime();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorWait(TaskRunner taskRunner, long nanos) throws InterruptedException {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            long j = nanos / 1000000;
            long j2 = nanos - (1000000 * j);
            if (j > 0 || nanos > 0) {
                taskRunner.wait(j, (int) j2);
            }
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void execute(Runnable runnable) {
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            this.executor.execute(runnable);
        }

        public final void shutdown() {
            this.executor.shutdown();
        }

        @Override // okhttp3.internal.concurrent.TaskRunner.Backend
        public void coordinatorNotify(TaskRunner taskRunner) {
            Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
            taskRunner.notify();
        }
    }

    /* compiled from: TaskRunner.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lokhttp3/internal/concurrent/TaskRunner$Companion;", "", "()V", "INSTANCE", "Lokhttp3/internal/concurrent/TaskRunner;", SentryEvent.JsonKeys.LOGGER, "Ljava/util/logging/Logger;", "getLogger", "()Ljava/util/logging/Logger;", "okhttp"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Logger getLogger() {
            return TaskRunner.logger;
        }
    }

    static {
        Logger logger2 = Logger.getLogger(TaskRunner.class.getName());
        Intrinsics.checkNotNullExpressionValue(logger2, "Logger.getLogger(TaskRunner::class.java.name)");
        logger = logger2;
    }

    public final void kickCoordinator$okhttp(TaskQueue taskQueue) {
        Intrinsics.checkNotNullParameter(taskQueue, "taskQueue");
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            if (taskQueue.getActiveTask() == null) {
                if (!taskQueue.getFutureTasks$okhttp().isEmpty()) {
                    Util.addIfAbsent(this.readyQueues, taskQueue);
                } else {
                    this.readyQueues.remove(taskQueue);
                }
            }
            if (this.coordinatorWaiting) {
                this.backend.coordinatorNotify(this);
                return;
            } else {
                this.backend.execute(this.runnable);
                return;
            }
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }

    private final void beforeRun(Task task) {
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            task.setNextExecuteNanoTime$okhttp(-1L);
            TaskQueue queue = task.getQueue();
            Intrinsics.checkNotNull(queue);
            queue.getFutureTasks$okhttp().remove(task);
            this.readyQueues.remove(queue);
            queue.setActiveTask$okhttp(task);
            this.busyQueues.add(queue);
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void runTask(Task task) {
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            StringBuilder sb = new StringBuilder("Thread ");
            Thread currentThread = Thread.currentThread();
            Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
            throw new AssertionError(sb.append(currentThread.getName()).append(" MUST NOT hold lock on ").append(this).toString());
        }
        Thread currentThread2 = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread2, "currentThread");
        String name = currentThread2.getName();
        currentThread2.setName(task.getName());
        try {
            long runOnce = task.runOnce();
            synchronized (this) {
                afterRun(task, runOnce);
                Unit unit = Unit.INSTANCE;
            }
            currentThread2.setName(name);
        } catch (Throwable th) {
            synchronized (this) {
                afterRun(task, -1L);
                Unit unit2 = Unit.INSTANCE;
                currentThread2.setName(name);
                throw th;
            }
        }
    }

    private final void afterRun(Task task, long delayNanos) {
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            TaskQueue queue = task.getQueue();
            Intrinsics.checkNotNull(queue);
            if (!(queue.getActiveTask() == task)) {
                throw new IllegalStateException("Check failed.".toString());
            }
            boolean cancelActiveTask = queue.getCancelActiveTask();
            queue.setCancelActiveTask$okhttp(false);
            queue.setActiveTask$okhttp(null);
            this.busyQueues.remove(queue);
            if (delayNanos != -1 && !cancelActiveTask && !queue.getShutdown()) {
                queue.scheduleAndDecide$okhttp(task, delayNanos, true);
            }
            if (!queue.getFutureTasks$okhttp().isEmpty()) {
                this.readyQueues.add(queue);
                return;
            }
            return;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }

    public final Task awaitTaskToRun() {
        boolean z;
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            while (!this.readyQueues.isEmpty()) {
                long nanoTime = this.backend.nanoTime();
                Iterator<TaskQueue> it = this.readyQueues.iterator();
                long j = Long.MAX_VALUE;
                Task task = null;
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    Task task2 = it.next().getFutureTasks$okhttp().get(0);
                    long max = Math.max(0L, task2.getNextExecuteNanoTime() - nanoTime);
                    if (max > 0) {
                        j = Math.min(max, j);
                    } else {
                        if (task != null) {
                            z = true;
                            break;
                        }
                        task = task2;
                    }
                }
                if (task != null) {
                    beforeRun(task);
                    if (z || (!this.coordinatorWaiting && (!this.readyQueues.isEmpty()))) {
                        this.backend.execute(this.runnable);
                    }
                    return task;
                }
                if (this.coordinatorWaiting) {
                    if (j < this.coordinatorWakeUpAt - nanoTime) {
                        this.backend.coordinatorNotify(this);
                    }
                    return null;
                }
                this.coordinatorWaiting = true;
                this.coordinatorWakeUpAt = nanoTime + j;
                try {
                    try {
                        this.backend.coordinatorWait(this, j);
                    } catch (InterruptedException unused) {
                        cancelAll();
                    }
                } finally {
                    this.coordinatorWaiting = false;
                }
            }
            return null;
        }
        StringBuilder sb = new StringBuilder("Thread ");
        Thread currentThread = Thread.currentThread();
        Intrinsics.checkNotNullExpressionValue(currentThread, "Thread.currentThread()");
        throw new AssertionError(sb.append(currentThread.getName()).append(" MUST hold lock on ").append(this).toString());
    }
}
