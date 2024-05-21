package kotlinx.coroutines.scheduling;

import androidx.work.WorkRequest;
import io.sentry.ProfilingTraceData;
import io.sentry.protocol.SentryThread;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.AbstractTimeSource;
import kotlinx.coroutines.AbstractTimeSourceKt;
import kotlinx.coroutines.DebugKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.ResizableAtomicArray;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: CoroutineScheduler.kt */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b!\b\u0000\u0018\u0000 I2\u00020\u00012\u00020\u0002:\u0003IJKB)\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0011\u0010\r\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0086\bJ\u0011\u0010\"\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\bJ\b\u0010#\u001a\u00020$H\u0016J\b\u0010%\u001a\u00020\u0004H\u0002J\u001a\u0010&\u001a\u00020 2\n\u0010'\u001a\u00060(j\u0002`)2\u0006\u0010*\u001a\u00020+J\u0011\u0010\u0012\u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0007H\u0082\bJ\u000e\u0010,\u001a\b\u0018\u00010\u001dR\u00020\u0000H\u0002J\t\u0010-\u001a\u00020$H\u0082\bJ\t\u0010.\u001a\u00020\u0004H\u0082\bJ&\u0010/\u001a\u00020$2\n\u0010'\u001a\u00060(j\u0002`)2\b\b\u0002\u0010*\u001a\u00020+2\b\b\u0002\u00100\u001a\u00020\u0018J\u0014\u00101\u001a\u00020$2\n\u00102\u001a\u00060(j\u0002`)H\u0016J\t\u00103\u001a\u00020\u0007H\u0082\bJ\t\u00104\u001a\u00020\u0004H\u0082\bJ\u0014\u00105\u001a\u00020\u00042\n\u00106\u001a\u00060\u001dR\u00020\u0000H\u0002J\u000e\u00107\u001a\b\u0018\u00010\u001dR\u00020\u0000H\u0002J\u0012\u00108\u001a\u00020\u00182\n\u00106\u001a\u00060\u001dR\u00020\u0000J\"\u00109\u001a\u00020$2\n\u00106\u001a\u00060\u001dR\u00020\u00002\u0006\u0010:\u001a\u00020\u00042\u0006\u0010;\u001a\u00020\u0004J\t\u0010<\u001a\u00020\u0007H\u0082\bJ\u000e\u0010=\u001a\u00020$2\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010>\u001a\u00020$2\u0006\u0010?\u001a\u00020\u0007J\u0018\u0010@\u001a\u00020$2\u0006\u0010A\u001a\u00020\u00072\u0006\u0010B\u001a\u00020\u0018H\u0002J\u0006\u0010C\u001a\u00020$J\b\u0010D\u001a\u00020\tH\u0016J\t\u0010E\u001a\u00020\u0018H\u0082\bJ\u0012\u0010F\u001a\u00020\u00182\b\b\u0002\u0010!\u001a\u00020\u0007H\u0002J\b\u0010G\u001a\u00020\u0018H\u0002J$\u0010H\u001a\u0004\u0018\u00010 *\b\u0018\u00010\u001dR\u00020\u00002\u0006\u0010\u001f\u001a\u00020 2\u0006\u00100\u001a\u00020\u0018H\u0002R\t\u0010\u000b\u001a\u00020\fX\u0082\u0004R\u0015\u0010\r\u001a\u00020\u00048Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\t\u0010\u0010\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0015\u0010\u0012\u001a\u00020\u00048Â\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u000fR\u0010\u0010\u0014\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00158\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0017\u001a\u00020\u00188F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0019R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\t\u0010\u001a\u001a\u00020\u0011X\u0082\u0004R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u001b\u001a\f\u0012\b\u0012\u00060\u001dR\u00020\u00000\u001c8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006L"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "Ljava/util/concurrent/Executor;", "Ljava/io/Closeable;", "corePoolSize", "", "maxPoolSize", "idleWorkerKeepAliveNs", "", "schedulerName", "", "(IIJLjava/lang/String;)V", "_isTerminated", "Lkotlinx/atomicfu/AtomicBoolean;", "availableCpuPermits", "getAvailableCpuPermits", "()I", "controlState", "Lkotlinx/atomicfu/AtomicLong;", "createdWorkers", "getCreatedWorkers", "globalBlockingQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "globalCpuQueue", "isTerminated", "", "()Z", "parkedWorkersStack", "workers", "Lkotlinx/coroutines/internal/ResizableAtomicArray;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "addToGlobalQueue", "task", "Lkotlinx/coroutines/scheduling/Task;", SentryThread.JsonKeys.STATE, "blockingTasks", "close", "", "createNewWorker", "createTask", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "taskContext", "Lkotlinx/coroutines/scheduling/TaskContext;", "currentWorker", "decrementBlockingTasks", "decrementCreatedWorkers", "dispatch", "tailDispatch", "execute", "command", "incrementBlockingTasks", "incrementCreatedWorkers", "parkedWorkersStackNextIndex", "worker", "parkedWorkersStackPop", "parkedWorkersStackPush", "parkedWorkersStackTopUpdate", "oldIndex", "newIndex", "releaseCpuPermit", "runSafely", "shutdown", ProfilingTraceData.TRUNCATION_REASON_TIMEOUT, "signalBlockingWork", "stateSnapshot", "skipUnpark", "signalCpuWork", "toString", "tryAcquireCpuPermit", "tryCreateWorker", "tryUnpark", "submitToLocalQueue", "Companion", "Worker", "WorkerState", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class CoroutineScheduler implements Executor, Closeable {
    private static final long BLOCKING_MASK = 4398044413952L;
    private static final int BLOCKING_SHIFT = 21;
    private static final int CLAIMED = 0;
    private static final long CPU_PERMITS_MASK = 9223367638808264704L;
    private static final int CPU_PERMITS_SHIFT = 42;
    private static final long CREATED_MASK = 2097151;
    public static final int MAX_SUPPORTED_POOL_SIZE = 2097150;
    public static final int MIN_SUPPORTED_POOL_SIZE = 1;
    private static final int PARKED = -1;
    private static final long PARKED_INDEX_MASK = 2097151;
    private static final long PARKED_VERSION_INC = 2097152;
    private static final long PARKED_VERSION_MASK = -2097152;
    private static final int TERMINATED = 1;

    @Volatile
    private volatile int _isTerminated;

    @Volatile
    private volatile long controlState;
    public final int corePoolSize;
    public final GlobalQueue globalBlockingQueue;
    public final GlobalQueue globalCpuQueue;
    public final long idleWorkerKeepAliveNs;
    public final int maxPoolSize;

    @Volatile
    private volatile long parkedWorkersStack;
    public final String schedulerName;
    public final ResizableAtomicArray<Worker> workers;
    private static final AtomicLongFieldUpdater parkedWorkersStack$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack");
    private static final AtomicLongFieldUpdater controlState$FU = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState");
    private static final AtomicIntegerFieldUpdater _isTerminated$FU = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated");
    public static final Symbol NOT_IN_STACK = new Symbol("NOT_IN_STACK");

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED
    }

    private final int blockingTasks(long state) {
        return (int) ((state & BLOCKING_MASK) >> 21);
    }

    private final int createdWorkers(long state) {
        return (int) (state & 2097151);
    }

    private final void loop$atomicfu(AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    public final int availableCpuPermits(long state) {
        return (int) ((state & CPU_PERMITS_MASK) >> 42);
    }

    public CoroutineScheduler(int i, int i2, long j, String str) {
        this.corePoolSize = i;
        this.maxPoolSize = i2;
        this.idleWorkerKeepAliveNs = j;
        this.schedulerName = str;
        if (i < 1) {
            throw new IllegalArgumentException(("Core pool size " + i + " should be at least 1").toString());
        }
        if (i2 < i) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should be greater than or equals to core pool size " + i).toString());
        }
        if (i2 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i2 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j + " must be positive").toString());
        }
        this.globalCpuQueue = new GlobalQueue();
        this.globalBlockingQueue = new GlobalQueue();
        this.workers = new ResizableAtomicArray<>((i + 1) * 2);
        this.controlState = i << 42;
        this._isTerminated = 0;
    }

    public /* synthetic */ CoroutineScheduler(int i, int i2, long j, String str, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, (i3 & 4) != 0 ? TasksKt.IDLE_WORKER_KEEP_ALIVE_NS : j, (i3 & 8) != 0 ? TasksKt.DEFAULT_SCHEDULER_NAME : str);
    }

    public final void parkedWorkersStackTopUpdate(Worker worker, int oldIndex, int newIndex) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (2097151 & j);
            long j2 = (PARKED_VERSION_INC + j) & PARKED_VERSION_MASK;
            if (i == oldIndex) {
                i = newIndex == 0 ? parkedWorkersStackNextIndex(worker) : newIndex;
            }
            if (i >= 0 && parkedWorkersStack$FU.compareAndSet(this, j, j2 | i)) {
                return;
            }
        }
    }

    public final boolean parkedWorkersStackPush(Worker worker) {
        long j;
        long j2;
        int indexInArray;
        if (worker.getNextParkedWorker() != NOT_IN_STACK) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            int i = (int) (2097151 & j);
            j2 = (PARKED_VERSION_INC + j) & PARKED_VERSION_MASK;
            indexInArray = worker.getIndexInArray();
            if (DebugKt.getASSERTIONS_ENABLED() && indexInArray == 0) {
                throw new AssertionError();
            }
            worker.setNextParkedWorker(this.workers.get(i));
        } while (!parkedWorkersStack$FU.compareAndSet(this, j, j2 | indexInArray));
        return true;
    }

    private final Worker parkedWorkersStackPop() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = parkedWorkersStack$FU;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            Worker worker = this.workers.get((int) (2097151 & j));
            if (worker == null) {
                return null;
            }
            long j2 = (PARKED_VERSION_INC + j) & PARKED_VERSION_MASK;
            int parkedWorkersStackNextIndex = parkedWorkersStackNextIndex(worker);
            if (parkedWorkersStackNextIndex >= 0 && parkedWorkersStack$FU.compareAndSet(this, j, parkedWorkersStackNextIndex | j2)) {
                worker.setNextParkedWorker(NOT_IN_STACK);
                return worker;
            }
        }
    }

    private final int parkedWorkersStackNextIndex(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != NOT_IN_STACK) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    private final int getCreatedWorkers() {
        return (int) (controlState$FU.get(this) & 2097151);
    }

    private final int getAvailableCpuPermits() {
        return (int) ((controlState$FU.get(this) & CPU_PERMITS_MASK) >> 42);
    }

    private final int incrementCreatedWorkers() {
        return (int) (controlState$FU.incrementAndGet(this) & 2097151);
    }

    private final int decrementCreatedWorkers() {
        return (int) (controlState$FU.getAndDecrement(this) & 2097151);
    }

    private final long incrementBlockingTasks() {
        return controlState$FU.addAndGet(this, PARKED_VERSION_INC);
    }

    private final void decrementBlockingTasks() {
        controlState$FU.addAndGet(this, PARKED_VERSION_MASK);
    }

    private final boolean tryAcquireCpuPermit() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$FU;
        do {
            j = atomicLongFieldUpdater.get(this);
            if (((int) ((CPU_PERMITS_MASK & j) >> 42)) == 0) {
                return false;
            }
        } while (!controlState$FU.compareAndSet(this, j, j - 4398046511104L));
        return true;
    }

    private final long releaseCpuPermit() {
        return controlState$FU.addAndGet(this, 4398046511104L);
    }

    public final boolean isTerminated() {
        return _isTerminated$FU.get(this) != 0;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        dispatch$default(this, command, null, false, 6, null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        shutdown(WorkRequest.MIN_BACKOFF_MILLIS);
    }

    public final void shutdown(long timeout) {
        int i;
        Task removeFirstOrNull;
        if (_isTerminated$FU.compareAndSet(this, 0, 1)) {
            Worker currentWorker = currentWorker();
            synchronized (this.workers) {
                i = (int) (controlState$FU.get(this) & 2097151);
            }
            if (1 <= i) {
                int i2 = 1;
                while (true) {
                    Worker worker = this.workers.get(i2);
                    Intrinsics.checkNotNull(worker);
                    Worker worker2 = worker;
                    if (worker2 != currentWorker) {
                        while (worker2.isAlive()) {
                            LockSupport.unpark(worker2);
                            worker2.join(timeout);
                        }
                        WorkerState workerState = worker2.state;
                        if (DebugKt.getASSERTIONS_ENABLED() && workerState != WorkerState.TERMINATED) {
                            throw new AssertionError();
                        }
                        worker2.localQueue.offloadAllWorkTo(this.globalBlockingQueue);
                    }
                    if (i2 == i) {
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            this.globalBlockingQueue.close();
            this.globalCpuQueue.close();
            while (true) {
                if (currentWorker != null) {
                    removeFirstOrNull = currentWorker.findTask(true);
                    if (removeFirstOrNull != null) {
                        continue;
                        runSafely(removeFirstOrNull);
                    }
                }
                removeFirstOrNull = this.globalCpuQueue.removeFirstOrNull();
                if (removeFirstOrNull == null && (removeFirstOrNull = this.globalBlockingQueue.removeFirstOrNull()) == null) {
                    break;
                }
                runSafely(removeFirstOrNull);
            }
            if (currentWorker != null) {
                currentWorker.tryReleaseCpu(WorkerState.TERMINATED);
            }
            if (DebugKt.getASSERTIONS_ENABLED() && ((int) ((controlState$FU.get(this) & CPU_PERMITS_MASK) >> 42)) != this.corePoolSize) {
                throw new AssertionError();
            }
            parkedWorkersStack$FU.set(this, 0L);
            controlState$FU.set(this, 0L);
        }
    }

    public static /* synthetic */ void dispatch$default(CoroutineScheduler coroutineScheduler, Runnable runnable, TaskContext taskContext, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            taskContext = TasksKt.NonBlockingContext;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        coroutineScheduler.dispatch(runnable, taskContext, z);
    }

    public final void dispatch(Runnable block, TaskContext taskContext, boolean tailDispatch) {
        AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
        if (timeSource != null) {
            timeSource.trackTask();
        }
        Task createTask = createTask(block, taskContext);
        boolean z = false;
        boolean z2 = createTask.taskContext.getTaskMode() == 1;
        long addAndGet = z2 ? controlState$FU.addAndGet(this, PARKED_VERSION_INC) : 0L;
        Worker currentWorker = currentWorker();
        Task submitToLocalQueue = submitToLocalQueue(currentWorker, createTask, tailDispatch);
        if (submitToLocalQueue != null && !addToGlobalQueue(submitToLocalQueue)) {
            throw new RejectedExecutionException(this.schedulerName + " was terminated");
        }
        if (tailDispatch && currentWorker != null) {
            z = true;
        }
        if (z2) {
            signalBlockingWork(addAndGet, z);
        } else {
            if (z) {
                return;
            }
            signalCpuWork();
        }
    }

    public final Task createTask(Runnable block, TaskContext taskContext) {
        long nanoTime = TasksKt.schedulerTimeSource.nanoTime();
        if (block instanceof Task) {
            Task task = (Task) block;
            task.submissionTime = nanoTime;
            task.taskContext = taskContext;
            return task;
        }
        return new TaskImpl(block, nanoTime, taskContext);
    }

    private final void signalBlockingWork(long stateSnapshot, boolean skipUnpark) {
        if (skipUnpark || tryUnpark() || tryCreateWorker(stateSnapshot)) {
            return;
        }
        tryUnpark();
    }

    public final void signalCpuWork() {
        if (tryUnpark() || tryCreateWorker$default(this, 0L, 1, null)) {
            return;
        }
        tryUnpark();
    }

    static /* synthetic */ boolean tryCreateWorker$default(CoroutineScheduler coroutineScheduler, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            j = controlState$FU.get(coroutineScheduler);
        }
        return coroutineScheduler.tryCreateWorker(j);
    }

    private final boolean tryCreateWorker(long state) {
        if (RangesKt.coerceAtLeast(((int) (2097151 & state)) - ((int) ((state & BLOCKING_MASK) >> 21)), 0) < this.corePoolSize) {
            int createNewWorker = createNewWorker();
            if (createNewWorker == 1 && this.corePoolSize > 1) {
                createNewWorker();
            }
            if (createNewWorker > 0) {
                return true;
            }
        }
        return false;
    }

    private final boolean tryUnpark() {
        Worker parkedWorkersStackPop;
        do {
            parkedWorkersStackPop = parkedWorkersStackPop();
            if (parkedWorkersStackPop == null) {
                return false;
            }
        } while (!Worker.workerCtl$FU.compareAndSet(parkedWorkersStackPop, -1, 0));
        LockSupport.unpark(parkedWorkersStackPop);
        return true;
    }

    private final Task submitToLocalQueue(Worker worker, Task task, boolean z) {
        if (worker == null || worker.state == WorkerState.TERMINATED) {
            return task;
        }
        if (task.taskContext.getTaskMode() == 0 && worker.state == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.add(task, z);
    }

    private final Worker currentWorker() {
        Thread currentThread = Thread.currentThread();
        Worker worker = currentThread instanceof Worker ? (Worker) currentThread : null;
        if (worker == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int currentLength = this.workers.currentLength();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 1; i6 < currentLength; i6++) {
            Worker worker = this.workers.get(i6);
            if (worker != null) {
                int size$kotlinx_coroutines_core = worker.localQueue.getSize$kotlinx_coroutines_core();
                int i7 = WhenMappings.$EnumSwitchMapping$0[worker.state.ordinal()];
                if (i7 == 1) {
                    i3++;
                } else if (i7 == 2) {
                    i2++;
                    arrayList.add(new StringBuilder().append(size$kotlinx_coroutines_core).append('b').toString());
                } else if (i7 == 3) {
                    i++;
                    arrayList.add(new StringBuilder().append(size$kotlinx_coroutines_core).append('c').toString());
                } else if (i7 == 4) {
                    i4++;
                    if (size$kotlinx_coroutines_core > 0) {
                        arrayList.add(new StringBuilder().append(size$kotlinx_coroutines_core).append('d').toString());
                    }
                } else if (i7 == 5) {
                    i5++;
                }
            }
        }
        long j = controlState$FU.get(this);
        StringBuilder sb = new StringBuilder();
        sb.append(this.schedulerName).append('@').append(DebugStringsKt.getHexAddress(this)).append("[Pool Size {core = ").append(this.corePoolSize).append(", max = ").append(this.maxPoolSize).append("}, Worker States {CPU = ").append(i).append(", blocking = ").append(i2).append(", parked = ").append(i3).append(", dormant = ").append(i4).append(", terminated = ").append(i5).append("}, running workers queues = ").append(arrayList).append(", global CPU queue size = ").append(this.globalCpuQueue.getSize()).append(", global blocking queue size = ").append(this.globalBlockingQueue.getSize());
        sb.append(", Control State {created workers= ").append((int) (2097151 & j)).append(", blocking tasks = ").append((int) ((BLOCKING_MASK & j) >> 21)).append(", CPUs acquired = ").append(this.corePoolSize - ((int) ((CPU_PERMITS_MASK & j) >> 42))).append("}]");
        return sb.toString();
    }

    public final void runSafely(Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread currentThread = Thread.currentThread();
                currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
                if (timeSource == null) {
                }
            } finally {
                AbstractTimeSource timeSource2 = AbstractTimeSourceKt.getTimeSource();
                if (timeSource2 != null) {
                    timeSource2.unTrackTask();
                }
            }
        }
    }

    /* compiled from: CoroutineScheduler.kt */
    @Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0007\b\u0002¢\u0006\u0002\u0010\u0005J\u0010\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010'\u001a\u00020%2\u0006\u0010&\u001a\u00020\u0003H\u0002J\u0010\u0010(\u001a\u00020%2\u0006\u0010)\u001a\u00020 H\u0002J\u0012\u0010*\u001a\u0004\u0018\u00010 2\u0006\u0010+\u001a\u00020\u000eH\u0002J\n\u0010,\u001a\u0004\u0018\u00010 H\u0002J\n\u0010-\u001a\u0004\u0018\u00010 H\u0002J\u0010\u0010.\u001a\u0004\u0018\u00010 2\u0006\u0010\r\u001a\u00020\u000eJ\u0010\u0010/\u001a\u00020%2\u0006\u00100\u001a\u00020\u0003H\u0002J\b\u00101\u001a\u00020\u000eH\u0002J\u0006\u00102\u001a\u00020\u000eJ\u000e\u00103\u001a\u00020\u00032\u0006\u00104\u001a\u00020\u0003J\b\u00105\u001a\u00020%H\u0002J\n\u00106\u001a\u0004\u0018\u00010 H\u0002J\b\u00107\u001a\u00020%H\u0016J\u0006\u00108\u001a\u00020\u0010J\b\u00109\u001a\u00020%H\u0002J\b\u0010:\u001a\u00020\u000eH\u0002J\b\u0010;\u001a\u00020%H\u0002J\u000e\u0010<\u001a\u00020\u000e2\u0006\u0010=\u001a\u00020\u001dJ\u0016\u0010>\u001a\u0004\u0018\u00010 2\n\u0010?\u001a\u00060\u0003j\u0002`@H\u0002J\b\u0010A\u001a\u00020%H\u0002R$\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0003@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u00020\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u000e\u0010\u0017\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00198Æ\u0002¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0012\u0010\u001c\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010 0\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u0006\u0010\"\u001a\u00020#¨\u0006B"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "index", "", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "indexInArray", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "localQueue", "Lkotlinx/coroutines/scheduling/WorkQueue;", "mayHaveLocalTasks", "", "minDelayUntilStealableTaskNs", "", "nextParkedWorker", "", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "rngState", "scheduler", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", SentryThread.JsonKeys.STATE, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "stolenTask", "Lkotlin/jvm/internal/Ref$ObjectRef;", "Lkotlinx/coroutines/scheduling/Task;", "terminationDeadline", "workerCtl", "Lkotlinx/atomicfu/AtomicInt;", "afterTask", "", "taskMode", "beforeTask", "executeTask", "task", "findAnyTask", "scanLocalQueue", "findBlockingTask", "findCpuTask", "findTask", "idleReset", "mode", "inStack", "isIo", "nextInt", "upperBound", "park", "pollGlobalQueues", "run", "runSingleTask", "runWorker", "tryAcquireCpuPermit", "tryPark", "tryReleaseCpu", "newState", "trySteal", "stealingMode", "Lkotlinx/coroutines/scheduling/StealingMode;", "tryTerminateWorker", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class Worker extends Thread {
        private static final AtomicIntegerFieldUpdater workerCtl$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl");
        private volatile int indexInArray;
        public final WorkQueue localQueue;
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;
        public WorkerState state;
        private final Ref.ObjectRef<Task> stolenTask;
        private long terminationDeadline;

        @Volatile
        private volatile int workerCtl;

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final int getWorkerCtl() {
            return this.workerCtl;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        private Worker() {
            setDaemon(true);
            this.localQueue = new WorkQueue();
            this.stolenTask = new Ref.ObjectRef<>();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.NOT_IN_STACK;
            this.rngState = Random.INSTANCE.nextInt();
        }

        public final void setIndexInArray(int i) {
            setName(CoroutineScheduler.this.schedulerName + "-worker-" + (i == 0 ? "TERMINATED" : String.valueOf(i)));
            this.indexInArray = i;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            setIndexInArray(i);
        }

        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        private final boolean tryAcquireCpuPermit() {
            long j;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdater = CoroutineScheduler.controlState$FU;
            do {
                j = atomicLongFieldUpdater.get(coroutineScheduler);
                if (((int) ((CoroutineScheduler.CPU_PERMITS_MASK & j) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.controlState$FU.compareAndSet(coroutineScheduler, j, j - 4398046511104L));
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        public final boolean tryReleaseCpu(WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z = workerState == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.controlState$FU.addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            runWorker();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z = false;
                while (!CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                    Task findTask = findTask(this.mayHaveLocalTasks);
                    if (findTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        executeTask(findTask);
                    } else {
                        this.mayHaveLocalTasks = false;
                        if (this.minDelayUntilStealableTaskNs == 0) {
                            tryPark();
                        } else if (z) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                        } else {
                            z = true;
                        }
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        public final long runSingleTask() {
            Task findBlockingTask;
            WorkerState workerState = this.state;
            boolean z = workerState == WorkerState.CPU_ACQUIRED;
            if (z) {
                findBlockingTask = findCpuTask();
            } else {
                findBlockingTask = findBlockingTask();
            }
            if (findBlockingTask == null) {
                long j = this.minDelayUntilStealableTaskNs;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            CoroutineScheduler.this.runSafely(findBlockingTask);
            if (!z) {
                CoroutineScheduler.controlState$FU.addAndGet(CoroutineScheduler.this, CoroutineScheduler.PARKED_VERSION_MASK);
            }
            if (!DebugKt.getASSERTIONS_ENABLED() || this.state == workerState) {
                return 0L;
            }
            throw new AssertionError();
        }

        public final boolean isIo() {
            return this.state == WorkerState.BLOCKING;
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.parkedWorkersStackPush(this);
                return;
            }
            workerCtl$FU.set(this, -1);
            while (inStack() && workerCtl$FU.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                park();
            }
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.NOT_IN_STACK;
        }

        private final void beforeTask(int taskMode) {
            if (taskMode != 0 && tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.signalCpuWork();
            }
        }

        private final void afterTask(int taskMode) {
            if (taskMode == 0) {
                return;
            }
            CoroutineScheduler.controlState$FU.addAndGet(CoroutineScheduler.this, CoroutineScheduler.PARKED_VERSION_MASK);
            WorkerState workerState = this.state;
            if (workerState != WorkerState.TERMINATED) {
                if (DebugKt.getASSERTIONS_ENABLED() && workerState != WorkerState.BLOCKING) {
                    throw new AssertionError();
                }
                this.state = WorkerState.DORMANT;
            }
        }

        public final int nextInt(int upperBound) {
            int i = this.rngState;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >> 17);
            int i4 = i3 ^ (i3 << 5);
            this.rngState = i4;
            int i5 = upperBound - 1;
            return (i5 & upperBound) == 0 ? i5 & i4 : (Integer.MAX_VALUE & i4) % upperBound;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.idleWorkerKeepAliveNs;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.idleWorkerKeepAliveNs);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final void tryTerminateWorker() {
            ResizableAtomicArray<Worker> resizableAtomicArray = CoroutineScheduler.this.workers;
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (resizableAtomicArray) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (CoroutineScheduler.controlState$FU.get(coroutineScheduler) & 2097151)) <= coroutineScheduler.corePoolSize) {
                    return;
                }
                if (workerCtl$FU.compareAndSet(this, -1, 1)) {
                    int i = this.indexInArray;
                    setIndexInArray(0);
                    coroutineScheduler.parkedWorkersStackTopUpdate(this, i, 0);
                    int andDecrement = (int) (CoroutineScheduler.controlState$FU.getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i) {
                        Worker worker = coroutineScheduler.workers.get(andDecrement);
                        Intrinsics.checkNotNull(worker);
                        Worker worker2 = worker;
                        coroutineScheduler.workers.setSynchronized(i, worker2);
                        worker2.setIndexInArray(i);
                        coroutineScheduler.parkedWorkersStackTopUpdate(worker2, andDecrement, i);
                    }
                    coroutineScheduler.workers.setSynchronized(andDecrement, null);
                    Unit unit = Unit.INSTANCE;
                    this.state = WorkerState.TERMINATED;
                }
            }
        }

        private final void idleReset(int mode) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                if (DebugKt.getASSERTIONS_ENABLED() && mode != 1) {
                    throw new AssertionError();
                }
                this.state = WorkerState.BLOCKING;
            }
        }

        public final Task findTask(boolean mayHaveLocalTasks) {
            return tryAcquireCpuPermit() ? findAnyTask(mayHaveLocalTasks) : findBlockingTask();
        }

        private final Task findBlockingTask() {
            Task pollBlocking = this.localQueue.pollBlocking();
            if (pollBlocking != null) {
                return pollBlocking;
            }
            Task removeFirstOrNull = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull == null ? trySteal(1) : removeFirstOrNull;
        }

        private final Task findCpuTask() {
            Task pollCpu = this.localQueue.pollCpu();
            if (pollCpu != null) {
                return pollCpu;
            }
            Task removeFirstOrNull = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull == null ? trySteal(2) : removeFirstOrNull;
        }

        private final Task findAnyTask(boolean scanLocalQueue) {
            Task pollGlobalQueues;
            Task pollGlobalQueues2;
            if (scanLocalQueue) {
                boolean z = nextInt(CoroutineScheduler.this.corePoolSize * 2) == 0;
                if (z && (pollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return pollGlobalQueues2;
                }
                Task poll = this.localQueue.poll();
                if (poll != null) {
                    return poll;
                }
                if (!z && (pollGlobalQueues = pollGlobalQueues()) != null) {
                    return pollGlobalQueues;
                }
            } else {
                Task pollGlobalQueues3 = pollGlobalQueues();
                if (pollGlobalQueues3 != null) {
                    return pollGlobalQueues3;
                }
            }
            return trySteal(3);
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task removeFirstOrNull = CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
                return removeFirstOrNull != null ? removeFirstOrNull : CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            }
            Task removeFirstOrNull2 = CoroutineScheduler.this.globalBlockingQueue.removeFirstOrNull();
            return removeFirstOrNull2 != null ? removeFirstOrNull2 : CoroutineScheduler.this.globalCpuQueue.removeFirstOrNull();
        }

        private final Task trySteal(int stealingMode) {
            int i = (int) (CoroutineScheduler.controlState$FU.get(CoroutineScheduler.this) & 2097151);
            if (i < 2) {
                return null;
            }
            int nextInt = nextInt(i);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long j = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                nextInt++;
                if (nextInt > i) {
                    nextInt = 1;
                }
                Worker worker = coroutineScheduler.workers.get(nextInt);
                if (worker != null && worker != this) {
                    long trySteal = worker.localQueue.trySteal(stealingMode, this.stolenTask);
                    if (trySteal == -1) {
                        Task task = this.stolenTask.element;
                        this.stolenTask.element = null;
                        return task;
                    }
                    if (trySteal > 0) {
                        j = Math.min(j, trySteal);
                    }
                }
            }
            if (j == Long.MAX_VALUE) {
                j = 0;
            }
            this.minDelayUntilStealableTaskNs = j;
            return null;
        }

        private final void executeTask(Task task) {
            int taskMode = task.taskContext.getTaskMode();
            idleReset(taskMode);
            beforeTask(taskMode);
            CoroutineScheduler.this.runSafely(task);
            afterTask(taskMode);
        }
    }

    private final boolean addToGlobalQueue(Task task) {
        if (task.taskContext.getTaskMode() == 1) {
            return this.globalBlockingQueue.addLast(task);
        }
        return this.globalCpuQueue.addLast(task);
    }

    private final int createNewWorker() {
        synchronized (this.workers) {
            if (isTerminated()) {
                return -1;
            }
            AtomicLongFieldUpdater atomicLongFieldUpdater = controlState$FU;
            long j = atomicLongFieldUpdater.get(this);
            int i = (int) (j & 2097151);
            int coerceAtLeast = RangesKt.coerceAtLeast(i - ((int) ((j & BLOCKING_MASK) >> 21)), 0);
            if (coerceAtLeast >= this.corePoolSize) {
                return 0;
            }
            if (i >= this.maxPoolSize) {
                return 0;
            }
            int i2 = ((int) (controlState$FU.get(this) & 2097151)) + 1;
            if (i2 <= 0 || this.workers.get(i2) != null) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            Worker worker = new Worker(this, i2);
            this.workers.setSynchronized(i2, worker);
            if (i2 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int i3 = coerceAtLeast + 1;
            worker.start();
            return i3;
        }
    }
}
