package kotlinx.coroutines;

import io.sentry.MonitorConfig;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.Volatile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.ThreadSafeHeap;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;

/* compiled from: EventLoop.common.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00020\u00012\u00020\u0002:\u00043456B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\n\u0018\u00010\u0019j\u0004\u0018\u0001`\u001aH\u0002J\u001a\u0010\u001b\u001a\u00020\u00172\u0006\u0010\u001c\u001a\u00020\u001d2\n\u0010\u001e\u001a\u00060\u0019j\u0002`\u001aJ\u0014\u0010\u001f\u001a\u00020\u00172\n\u0010 \u001a\u00060\u0019j\u0002`\u001aH\u0016J\u0014\u0010!\u001a\u00020\f2\n\u0010 \u001a\u00060\u0019j\u0002`\u001aH\u0002J\b\u0010\"\u001a\u00020\u0013H\u0016J\b\u0010#\u001a\u00020\u0017H\u0002J\b\u0010$\u001a\u00020\u0017H\u0004J\u0016\u0010%\u001a\u00020\u00172\u0006\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020(J\u0018\u0010)\u001a\u00020*2\u0006\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020(H\u0002J\u001c\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00132\n\u0010\u001e\u001a\u00060\u0019j\u0002`\u001aH\u0004J\u001e\u0010.\u001a\u00020\u00172\u0006\u0010-\u001a\u00020\u00132\f\u0010/\u001a\b\u0012\u0004\u0012\u00020\u001700H\u0016J\u0010\u00101\u001a\u00020\f2\u0006\u0010 \u001a\u00020(H\u0002J\b\u00102\u001a\u00020\u0017H\u0016R\u0011\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005X\u0082\u0004R\t\u0010\u0007\u001a\u00020\bX\u0082\u0004R\u0011\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0005X\u0082\u0004R$\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\f8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0011\u001a\u00020\f8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000eR\u0014\u0010\u0012\u001a\u00020\u00138TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u00067"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase;", "Lkotlinx/coroutines/EventLoopImplPlatform;", "Lkotlinx/coroutines/Delay;", "()V", "_delayed", "Lkotlinx/atomicfu/AtomicRef;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "_isCompleted", "Lkotlinx/atomicfu/AtomicBoolean;", "_queue", "", "value", "", "isCompleted", "()Z", "setCompleted", "(Z)V", "isEmpty", "nextTime", "", "getNextTime", "()J", "closeQueue", "", "dequeue", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "dispatch", "context", "Lkotlin/coroutines/CoroutineContext;", "block", "enqueue", "task", "enqueueImpl", "processNextEvent", "rescheduleAllDelayed", "resetAll", MonitorConfig.JsonKeys.SCHEDULE, "now", "delayedTask", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "scheduleImpl", "", "scheduleInvokeOnTimeout", "Lkotlinx/coroutines/DisposableHandle;", "timeMillis", "scheduleResumeAfterDelay", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "shouldUnpark", "shutdown", "DelayedResumeTask", "DelayedRunnableTask", "DelayedTask", "DelayedTaskQueue", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class EventLoopImplBase extends EventLoopImplPlatform implements Delay {

    @Volatile
    private volatile Object _delayed;

    @Volatile
    private volatile int _isCompleted = 0;

    @Volatile
    private volatile Object _queue;
    private static final AtomicReferenceFieldUpdater _queue$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue");
    private static final AtomicReferenceFieldUpdater _delayed$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed");
    private static final AtomicIntegerFieldUpdater _isCompleted$FU = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted");

    private final void loop$atomicfu(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1, Object obj) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    @Override // kotlinx.coroutines.Delay
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    public Object delay(long j, Continuation<? super Unit> continuation) {
        return Delay.DefaultImpls.delay(this, j, continuation);
    }

    public DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return Delay.DefaultImpls.invokeOnTimeout(this, j, runnable, coroutineContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCompleted() {
        return _isCompleted$FU.get(this) != 0;
    }

    private final void setCompleted(boolean z) {
        _isCompleted$FU.set(this, z ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.EventLoop
    public boolean isEmpty() {
        Symbol symbol;
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) _delayed$FU.get(this);
        if (delayedTaskQueue != null && !delayedTaskQueue.isEmpty()) {
            return false;
        }
        Object obj = _queue$FU.get(this);
        if (obj != null) {
            if (obj instanceof LockFreeTaskQueueCore) {
                return ((LockFreeTaskQueueCore) obj).isEmpty();
            }
            symbol = EventLoop_commonKt.CLOSED_EMPTY;
            if (obj != symbol) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlinx.coroutines.EventLoop
    public long getNextTime() {
        DelayedTask peek;
        Symbol symbol;
        if (super.getNextTime() == 0) {
            return 0L;
        }
        Object obj = _queue$FU.get(this);
        if (obj != null) {
            if (!(obj instanceof LockFreeTaskQueueCore)) {
                symbol = EventLoop_commonKt.CLOSED_EMPTY;
                return obj == symbol ? Long.MAX_VALUE : 0L;
            }
            if (!((LockFreeTaskQueueCore) obj).isEmpty()) {
                return 0L;
            }
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) _delayed$FU.get(this);
        if (delayedTaskQueue == null || (peek = delayedTaskQueue.peek()) == null) {
            return Long.MAX_VALUE;
        }
        long j = peek.nanoTime;
        AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
        return RangesKt.coerceAtLeast(j - (timeSource != null ? timeSource.nanoTime() : System.nanoTime()), 0L);
    }

    @Override // kotlinx.coroutines.EventLoop
    public void shutdown() {
        ThreadLocalEventLoop.INSTANCE.resetEventLoop$kotlinx_coroutines_core();
        setCompleted(true);
        closeQueue();
        do {
        } while (processNextEvent() <= 0);
        rescheduleAllDelayed();
    }

    @Override // kotlinx.coroutines.Delay
    /* renamed from: scheduleResumeAfterDelay */
    public void mo7258scheduleResumeAfterDelay(long timeMillis, CancellableContinuation<? super Unit> continuation) {
        long delayToNanos = EventLoop_commonKt.delayToNanos(timeMillis);
        if (delayToNanos < DurationKt.MAX_MILLIS) {
            AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
            long nanoTime = timeSource != null ? timeSource.nanoTime() : System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(delayToNanos + nanoTime, continuation);
            schedule(nanoTime, delayedResumeTask);
            CancellableContinuationKt.disposeOnCancellation(continuation, delayedResumeTask);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final DisposableHandle scheduleInvokeOnTimeout(long timeMillis, Runnable block) {
        long delayToNanos = EventLoop_commonKt.delayToNanos(timeMillis);
        if (delayToNanos < DurationKt.MAX_MILLIS) {
            AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
            long nanoTime = timeSource != null ? timeSource.nanoTime() : System.nanoTime();
            DelayedRunnableTask delayedRunnableTask = new DelayedRunnableTask(delayToNanos + nanoTime, block);
            schedule(nanoTime, delayedRunnableTask);
            return delayedRunnableTask;
        }
        return NonDisposableHandle.INSTANCE;
    }

    @Override // kotlinx.coroutines.EventLoop
    public long processNextEvent() {
        DelayedTask delayedTask;
        if (processUnconfinedEvent()) {
            return 0L;
        }
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) _delayed$FU.get(this);
        if (delayedTaskQueue != null && !delayedTaskQueue.isEmpty()) {
            AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
            long nanoTime = timeSource != null ? timeSource.nanoTime() : System.nanoTime();
            do {
                DelayedTaskQueue delayedTaskQueue2 = delayedTaskQueue;
                synchronized (delayedTaskQueue2) {
                    DelayedTask firstImpl = delayedTaskQueue2.firstImpl();
                    delayedTask = null;
                    if (firstImpl != null) {
                        DelayedTask delayedTask2 = firstImpl;
                        if (delayedTask2.timeToExecute(nanoTime) && enqueueImpl(delayedTask2)) {
                            delayedTask = delayedTaskQueue2.removeAtImpl(0);
                        }
                    }
                }
            } while (delayedTask != null);
        }
        Runnable dequeue = dequeue();
        if (dequeue != null) {
            dequeue.run();
            return 0L;
        }
        return getNextTime();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    /* renamed from: dispatch */
    public final void mo7257dispatch(CoroutineContext context, Runnable block) {
        enqueue(block);
    }

    public void enqueue(Runnable task) {
        if (enqueueImpl(task)) {
            unpark();
        } else {
            DefaultExecutor.INSTANCE.enqueue(task);
        }
    }

    private final boolean enqueueImpl(Runnable task) {
        Symbol symbol;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (_queue$FU.compareAndSet(this, null, task)) {
                    return true;
                }
            } else if (obj instanceof LockFreeTaskQueueCore) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                int addLast = lockFreeTaskQueueCore.addLast(task);
                if (addLast == 0) {
                    return true;
                }
                if (addLast == 1) {
                    _queue$FU.compareAndSet(this, obj, lockFreeTaskQueueCore.next());
                } else if (addLast == 2) {
                    return false;
                }
            } else {
                symbol = EventLoop_commonKt.CLOSED_EMPTY;
                if (obj == symbol) {
                    return false;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore2 = new LockFreeTaskQueueCore(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                lockFreeTaskQueueCore2.addLast((Runnable) obj);
                lockFreeTaskQueueCore2.addLast(task);
                if (_queue$FU.compareAndSet(this, obj, lockFreeTaskQueueCore2)) {
                    return true;
                }
            }
        }
    }

    private final Runnable dequeue() {
        Symbol symbol;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof LockFreeTaskQueueCore) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                LockFreeTaskQueueCore lockFreeTaskQueueCore = (LockFreeTaskQueueCore) obj;
                Object removeFirstOrNull = lockFreeTaskQueueCore.removeFirstOrNull();
                if (removeFirstOrNull != LockFreeTaskQueueCore.REMOVE_FROZEN) {
                    return (Runnable) removeFirstOrNull;
                }
                _queue$FU.compareAndSet(this, obj, lockFreeTaskQueueCore.next());
            } else {
                symbol = EventLoop_commonKt.CLOSED_EMPTY;
                if (obj == symbol) {
                    return null;
                }
                if (_queue$FU.compareAndSet(this, obj, null)) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final void closeQueue() {
        Symbol symbol;
        Symbol symbol2;
        if (DebugKt.getASSERTIONS_ENABLED() && !isCompleted()) {
            throw new AssertionError();
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _queue$FU;
                symbol = EventLoop_commonKt.CLOSED_EMPTY;
                if (atomicReferenceFieldUpdater2.compareAndSet(this, null, symbol)) {
                    return;
                }
            } else {
                if (obj instanceof LockFreeTaskQueueCore) {
                    ((LockFreeTaskQueueCore) obj).close();
                    return;
                }
                symbol2 = EventLoop_commonKt.CLOSED_EMPTY;
                if (obj == symbol2) {
                    return;
                }
                LockFreeTaskQueueCore lockFreeTaskQueueCore = new LockFreeTaskQueueCore(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                lockFreeTaskQueueCore.addLast((Runnable) obj);
                if (_queue$FU.compareAndSet(this, obj, lockFreeTaskQueueCore)) {
                    return;
                }
            }
        }
    }

    public final void schedule(long now, DelayedTask delayedTask) {
        int scheduleImpl = scheduleImpl(now, delayedTask);
        if (scheduleImpl == 0) {
            if (shouldUnpark(delayedTask)) {
                unpark();
            }
        } else if (scheduleImpl == 1) {
            reschedule(now, delayedTask);
        } else if (scheduleImpl != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    private final boolean shouldUnpark(DelayedTask task) {
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) _delayed$FU.get(this);
        return (delayedTaskQueue != null ? delayedTaskQueue.peek() : null) == task;
    }

    private final int scheduleImpl(long now, DelayedTask delayedTask) {
        if (isCompleted()) {
            return 1;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _delayed$FU;
        DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) atomicReferenceFieldUpdater.get(this);
        if (delayedTaskQueue == null) {
            atomicReferenceFieldUpdater.compareAndSet(this, null, new DelayedTaskQueue(now));
            Object obj = atomicReferenceFieldUpdater.get(this);
            Intrinsics.checkNotNull(obj);
            delayedTaskQueue = (DelayedTaskQueue) obj;
        }
        return delayedTask.scheduleTask(now, delayedTaskQueue, this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void resetAll() {
        _queue$FU.set(this, null);
        _delayed$FU.set(this, null);
    }

    private final void rescheduleAllDelayed() {
        DelayedTask removeFirstOrNull;
        AbstractTimeSource timeSource = AbstractTimeSourceKt.getTimeSource();
        long nanoTime = timeSource != null ? timeSource.nanoTime() : System.nanoTime();
        while (true) {
            DelayedTaskQueue delayedTaskQueue = (DelayedTaskQueue) _delayed$FU.get(this);
            if (delayedTaskQueue == null || (removeFirstOrNull = delayedTaskQueue.removeFirstOrNull()) == null) {
                return;
            } else {
                reschedule(nanoTime, removeFirstOrNull);
            }
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u00052\u00060\u0006j\u0002`\u0007B\r\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0011\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0000H\u0096\u0002J\u0006\u0010\u001b\u001a\u00020\u001cJ\u001e\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"J\u000e\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\tJ\b\u0010%\u001a\u00020&H\u0016R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R0\u0010\u000e\u001a\b\u0012\u0002\b\u0003\u0018\u00010\r2\f\u0010\f\u001a\b\u0012\u0002\b\u0003\u0018\u00010\r8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u0014X\u0096\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/coroutines/internal/ThreadSafeHeapNode;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "nanoTime", "", "(J)V", "_heap", "value", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "heap", "getHeap", "()Lkotlinx/coroutines/internal/ThreadSafeHeap;", "setHeap", "(Lkotlinx/coroutines/internal/ThreadSafeHeap;)V", "index", "", "getIndex", "()I", "setIndex", "(I)V", "compareTo", "other", "dispose", "", "scheduleTask", "now", "delayed", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "eventLoop", "Lkotlinx/coroutines/EventLoopImplBase;", "timeToExecute", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, DisposableHandle, ThreadSafeHeapNode {
        private volatile Object _heap;
        private int index = -1;
        public long nanoTime;

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public int getIndex() {
            return this.index;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setIndex(int i) {
            this.index = i;
        }

        public final boolean timeToExecute(long now) {
            return now - this.nanoTime >= 0;
        }

        public DelayedTask(long j) {
            this.nanoTime = j;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public ThreadSafeHeap<?> getHeap() {
            Object obj = this._heap;
            if (obj instanceof ThreadSafeHeap) {
                return (ThreadSafeHeap) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.ThreadSafeHeapNode
        public void setHeap(ThreadSafeHeap<?> threadSafeHeap) {
            Symbol symbol;
            Object obj = this._heap;
            symbol = EventLoop_commonKt.DISPOSED_TASK;
            if (obj == symbol) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = threadSafeHeap;
        }

        @Override // java.lang.Comparable
        public int compareTo(DelayedTask other) {
            long j = this.nanoTime - other.nanoTime;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }

        public final int scheduleTask(long now, DelayedTaskQueue delayed, EventLoopImplBase eventLoop) {
            Symbol symbol;
            synchronized (this) {
                Object obj = this._heap;
                symbol = EventLoop_commonKt.DISPOSED_TASK;
                if (obj == symbol) {
                    return 2;
                }
                DelayedTaskQueue delayedTaskQueue = delayed;
                synchronized (delayedTaskQueue) {
                    DelayedTask firstImpl = delayedTaskQueue.firstImpl();
                    if (eventLoop.isCompleted()) {
                        return 1;
                    }
                    if (firstImpl == null) {
                        delayed.timeNow = now;
                    } else {
                        long j = firstImpl.nanoTime;
                        if (j - now < 0) {
                            now = j;
                        }
                        if (now - delayed.timeNow > 0) {
                            delayed.timeNow = now;
                        }
                    }
                    if (this.nanoTime - delayed.timeNow < 0) {
                        this.nanoTime = delayed.timeNow;
                    }
                    delayedTaskQueue.addImpl(this);
                    return 0;
                }
            }
        }

        @Override // kotlinx.coroutines.DisposableHandle
        public final void dispose() {
            Symbol symbol;
            Symbol symbol2;
            synchronized (this) {
                Object obj = this._heap;
                symbol = EventLoop_commonKt.DISPOSED_TASK;
                if (obj == symbol) {
                    return;
                }
                DelayedTaskQueue delayedTaskQueue = obj instanceof DelayedTaskQueue ? (DelayedTaskQueue) obj : null;
                if (delayedTaskQueue != null) {
                    delayedTaskQueue.remove(this);
                }
                symbol2 = EventLoop_commonKt.DISPOSED_TASK;
                this._heap = symbol2;
                Unit unit = Unit.INSTANCE;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\u0006H\u0016J\b\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "cont", "Lkotlinx/coroutines/CancellableContinuation;", "", "(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V", "run", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public final class DelayedResumeTask extends DelayedTask {
        private final CancellableContinuation<Unit> cont;

        /* JADX WARN: Multi-variable type inference failed */
        public DelayedResumeTask(long j, CancellableContinuation<? super Unit> cancellableContinuation) {
            super(j);
            this.cont = cancellableContinuation;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.cont.resumeUndispatched(EventLoopImplBase.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.cont;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: EventLoop.common.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\b\u001a\u00020\tH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016R\u0012\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "nanoTime", "", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "(JLjava/lang/Runnable;)V", "run", "", "toString", "", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DelayedRunnableTask extends DelayedTask {
        private final Runnable block;

        public DelayedRunnableTask(long j, Runnable runnable) {
            super(j);
            this.block = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.block.run();
        }

        @Override // kotlinx.coroutines.EventLoopImplBase.DelayedTask
        public String toString() {
            return super.toString() + this.block;
        }
    }

    /* compiled from: EventLoop.common.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0012\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTaskQueue;", "Lkotlinx/coroutines/internal/ThreadSafeHeap;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "timeNow", "", "(J)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DelayedTaskQueue extends ThreadSafeHeap<DelayedTask> {
        public long timeNow;

        public DelayedTaskQueue(long j) {
            this.timeNow = j;
        }
    }
}
