package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.jvm.Volatile;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.DebugKt;

/* compiled from: WorkQueue.kt */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u00072\b\b\u0002\u0010\u0014\u001a\u00020\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0002J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\b\u0010\u001b\u001a\u0004\u0018\u00010\u0007J\b\u0010\u001c\u001a\u0004\u0018\u00010\u0007J\n\u0010\u001d\u001a\u0004\u0018\u00010\u0007H\u0002J\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u001f\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001aH\u0002J\u0012\u0010!\u001a\u0004\u0018\u00010\u00072\u0006\u0010\"\u001a\u00020\u0015H\u0002J\u0016\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0010$\u001a\u00060\tj\u0002`%H\u0002J\u001a\u0010&\u001a\u0004\u0018\u00010\u00072\u0006\u0010'\u001a\u00020\t2\u0006\u0010\"\u001a\u00020\u0015H\u0002J\"\u0010(\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+J$\u0010,\u001a\u00020)2\n\u0010$\u001a\u00060\tj\u0002`%2\u000e\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070+H\u0002J\u000e\u0010-\u001a\u00020\u0018*\u0004\u0018\u00010\u0007H\u0002R\t\u0010\u0003\u001a\u00020\u0004X\u0082\u0004R\u0016\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u00020\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\t\u0010\f\u001a\u00020\u0004X\u0082\u0004R\u0011\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u000eX\u0082\u0004R\t\u0010\u000f\u001a\u00020\u0004X\u0082\u0004R\u0014\u0010\u0010\u001a\u00020\t8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000b¨\u0006."}, d2 = {"Lkotlinx/coroutines/scheduling/WorkQueue;", "", "()V", "blockingTasksInBuffer", "Lkotlinx/atomicfu/AtomicInt;", "buffer", "Ljava/util/concurrent/atomic/AtomicReferenceArray;", "Lkotlinx/coroutines/scheduling/Task;", "bufferSize", "", "getBufferSize", "()I", "consumerIndex", "lastScheduledTask", "Lkotlinx/atomicfu/AtomicRef;", "producerIndex", "size", "getSize$kotlinx_coroutines_core", "add", "task", "fair", "", "addLast", "offloadAllWorkTo", "", "globalQueue", "Lkotlinx/coroutines/scheduling/GlobalQueue;", "poll", "pollBlocking", "pollBuffer", "pollCpu", "pollTo", "queue", "pollWithExclusiveMode", "onlyBlocking", "stealWithExclusiveMode", "stealingMode", "Lkotlinx/coroutines/scheduling/StealingMode;", "tryExtractFromTheMiddle", "index", "trySteal", "", "stolenTaskRef", "Lkotlin/jvm/internal/Ref$ObjectRef;", "tryStealLastScheduled", "decrementIfBlocking", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkQueue {

    @Volatile
    private volatile int blockingTasksInBuffer;
    private final AtomicReferenceArray<Task> buffer = new AtomicReferenceArray<>(128);

    @Volatile
    private volatile int consumerIndex;

    @Volatile
    private volatile Object lastScheduledTask;

    @Volatile
    private volatile int producerIndex;
    private static final AtomicReferenceFieldUpdater lastScheduledTask$FU = AtomicReferenceFieldUpdater.newUpdater(WorkQueue.class, Object.class, "lastScheduledTask");
    private static final AtomicIntegerFieldUpdater producerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "producerIndex");
    private static final AtomicIntegerFieldUpdater consumerIndex$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "consumerIndex");
    private static final AtomicIntegerFieldUpdater blockingTasksInBuffer$FU = AtomicIntegerFieldUpdater.newUpdater(WorkQueue.class, "blockingTasksInBuffer");

    private final int getBufferSize() {
        return producerIndex$FU.get(this) - consumerIndex$FU.get(this);
    }

    public final int getSize$kotlinx_coroutines_core() {
        Object obj = lastScheduledTask$FU.get(this);
        int bufferSize = getBufferSize();
        return obj != null ? bufferSize + 1 : bufferSize;
    }

    public final Task poll() {
        Task task = (Task) lastScheduledTask$FU.getAndSet(this, null);
        return task == null ? pollBuffer() : task;
    }

    public static /* synthetic */ Task add$default(WorkQueue workQueue, Task task, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return workQueue.add(task, z);
    }

    public final Task add(Task task, boolean fair) {
        if (fair) {
            return addLast(task);
        }
        Task task2 = (Task) lastScheduledTask$FU.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return addLast(task2);
    }

    private final Task addLast(Task task) {
        if (getBufferSize() == 127) {
            return task;
        }
        if (task.taskContext.getTaskMode() == 1) {
            blockingTasksInBuffer$FU.incrementAndGet(this);
        }
        int i = producerIndex$FU.get(this) & 127;
        while (this.buffer.get(i) != null) {
            Thread.yield();
        }
        this.buffer.lazySet(i, task);
        producerIndex$FU.incrementAndGet(this);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long trySteal(int stealingMode, Ref.ObjectRef<Task> stolenTaskRef) {
        T t;
        if (stealingMode == 3) {
            t = pollBuffer();
        } else {
            t = stealWithExclusiveMode(stealingMode);
        }
        if (t != 0) {
            stolenTaskRef.element = t;
            return -1L;
        }
        return tryStealLastScheduled(stealingMode, stolenTaskRef);
    }

    private final Task stealWithExclusiveMode(int stealingMode) {
        int i = consumerIndex$FU.get(this);
        int i2 = producerIndex$FU.get(this);
        boolean z = stealingMode == 1;
        while (i != i2) {
            if (z && blockingTasksInBuffer$FU.get(this) == 0) {
                return null;
            }
            int i3 = i + 1;
            Task tryExtractFromTheMiddle = tryExtractFromTheMiddle(i, z);
            if (tryExtractFromTheMiddle != null) {
                return tryExtractFromTheMiddle;
            }
            i = i3;
        }
        return null;
    }

    public final Task pollBlocking() {
        return pollWithExclusiveMode(true);
    }

    public final Task pollCpu() {
        return pollWithExclusiveMode(false);
    }

    private final Task pollWithExclusiveMode(boolean onlyBlocking) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        Task task;
        do {
            atomicReferenceFieldUpdater = lastScheduledTask$FU;
            task = (Task) atomicReferenceFieldUpdater.get(this);
            if (task != null) {
                if ((task.taskContext.getTaskMode() == 1) == onlyBlocking) {
                }
            }
            int i = consumerIndex$FU.get(this);
            int i2 = producerIndex$FU.get(this);
            while (i != i2) {
                if (onlyBlocking && blockingTasksInBuffer$FU.get(this) == 0) {
                    return null;
                }
                i2--;
                Task tryExtractFromTheMiddle = tryExtractFromTheMiddle(i2, onlyBlocking);
                if (tryExtractFromTheMiddle != null) {
                    return tryExtractFromTheMiddle;
                }
            }
            return null;
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, task, null));
        return task;
    }

    private final Task tryExtractFromTheMiddle(int index, boolean onlyBlocking) {
        int i = index & 127;
        Task task = this.buffer.get(i);
        if (task != null) {
            if ((task.taskContext.getTaskMode() == 1) == onlyBlocking && this.buffer.compareAndSet(i, task, null)) {
                if (onlyBlocking) {
                    blockingTasksInBuffer$FU.decrementAndGet(this);
                }
                return task;
            }
        }
        return null;
    }

    public final void offloadAllWorkTo(GlobalQueue globalQueue) {
        Task task = (Task) lastScheduledTask$FU.getAndSet(this, null);
        if (task != null) {
            globalQueue.addLast(task);
        }
        do {
        } while (pollTo(globalQueue));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, kotlinx.coroutines.scheduling.Task, java.lang.Object] */
    private final long tryStealLastScheduled(int stealingMode, Ref.ObjectRef<Task> stolenTaskRef) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        ?? r1;
        do {
            atomicReferenceFieldUpdater = lastScheduledTask$FU;
            r1 = (Task) atomicReferenceFieldUpdater.get(this);
            if (r1 == 0) {
                return -2L;
            }
            if (((r1.taskContext.getTaskMode() != 1 ? 2 : 1) & stealingMode) == 0) {
                return -2L;
            }
            long nanoTime = TasksKt.schedulerTimeSource.nanoTime() - r1.submissionTime;
            if (nanoTime < TasksKt.WORK_STEALING_TIME_RESOLUTION_NS) {
                return TasksKt.WORK_STEALING_TIME_RESOLUTION_NS - nanoTime;
            }
        } while (!atomicReferenceFieldUpdater.compareAndSet(this, r1, null));
        stolenTaskRef.element = r1;
        return -1L;
    }

    private final boolean pollTo(GlobalQueue queue) {
        Task pollBuffer = pollBuffer();
        if (pollBuffer == null) {
            return false;
        }
        queue.addLast(pollBuffer);
        return true;
    }

    private final Task pollBuffer() {
        Task andSet;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = consumerIndex$FU;
            int i = atomicIntegerFieldUpdater.get(this);
            if (i - producerIndex$FU.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (atomicIntegerFieldUpdater.compareAndSet(this, i, i + 1) && (andSet = this.buffer.getAndSet(i2, null)) != null) {
                decrementIfBlocking(andSet);
                return andSet;
            }
        }
    }

    private final void decrementIfBlocking(Task task) {
        if (task == null || task.taskContext.getTaskMode() != 1) {
            return;
        }
        int decrementAndGet = blockingTasksInBuffer$FU.decrementAndGet(this);
        if (DebugKt.getASSERTIONS_ENABLED() && decrementAndGet < 0) {
            throw new AssertionError();
        }
    }
}
