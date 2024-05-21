package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Monitor {

    @CheckForNull
    private Guard activeGuards;
    private final boolean fair;
    private final ReentrantLock lock;

    public boolean isFair() {
        return this.fair;
    }

    /* loaded from: classes3.dex */
    public static abstract class Guard {
        final Condition condition;
        final Monitor monitor;

        @CheckForNull
        Guard next;
        int waiterCount = 0;

        public abstract boolean isSatisfied();

        /* JADX INFO: Access modifiers changed from: protected */
        public Guard(Monitor monitor) {
            this.monitor = (Monitor) Preconditions.checkNotNull(monitor, "monitor");
            this.condition = monitor.lock.newCondition();
        }
    }

    public Monitor() {
        this(false);
    }

    public Monitor(boolean z) {
        this.activeGuards = null;
        this.fair = z;
        this.lock = new ReentrantLock(z);
    }

    public void enter() {
        this.lock.lock();
    }

    public boolean enter(long j, TimeUnit timeUnit) {
        boolean tryLock;
        long safeNanos = toSafeNanos(j, timeUnit);
        ReentrantLock reentrantLock = this.lock;
        boolean z = true;
        if (!this.fair && reentrantLock.tryLock()) {
            return true;
        }
        boolean interrupted = Thread.interrupted();
        try {
            long nanoTime = System.nanoTime();
            long j2 = safeNanos;
            while (true) {
                try {
                    try {
                        tryLock = reentrantLock.tryLock(j2, TimeUnit.NANOSECONDS);
                        break;
                    } catch (Throwable th) {
                        th = th;
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                } catch (InterruptedException unused) {
                    j2 = remainingNanos(nanoTime, safeNanos);
                    interrupted = true;
                }
            }
            if (interrupted) {
                Thread.currentThread().interrupt();
            }
            return tryLock;
        } catch (Throwable th2) {
            th = th2;
            z = interrupted;
        }
    }

    public void enterInterruptibly() throws InterruptedException {
        this.lock.lockInterruptibly();
    }

    public boolean enterInterruptibly(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.lock.tryLock(j, timeUnit);
    }

    public boolean tryEnter() {
        return this.lock.tryLock();
    }

    public void enterWhen(Guard guard) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lockInterruptibly();
        try {
            if (guard.isSatisfied()) {
                return;
            }
            await(guard, isHeldByCurrentThread);
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0047, code lost:
    
        if (awaitNanos(r11, r0, r3) != false) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhen(com.google.common.util.concurrent.Monitor.Guard r11, long r12, java.util.concurrent.TimeUnit r14) throws java.lang.InterruptedException {
        /*
            r10 = this;
            long r0 = toSafeNanos(r12, r14)
            com.google.common.util.concurrent.Monitor r2 = r11.monitor
            if (r2 != r10) goto L60
            java.util.concurrent.locks.ReentrantLock r2 = r10.lock
            boolean r3 = r2.isHeldByCurrentThread()
            boolean r4 = r10.fair
            r5 = 0
            r6 = 0
            if (r4 != 0) goto L29
            boolean r4 = java.lang.Thread.interrupted()
            if (r4 != 0) goto L23
            boolean r4 = r2.tryLock()
            if (r4 == 0) goto L29
            r8 = r6
            goto L34
        L23:
            java.lang.InterruptedException r10 = new java.lang.InterruptedException
            r10.<init>()
            throw r10
        L29:
            long r8 = initNanoTime(r0)
            boolean r12 = r2.tryLock(r12, r14)
            if (r12 != 0) goto L34
            return r5
        L34:
            boolean r12 = r11.isSatisfied()     // Catch: java.lang.Throwable -> L50
            if (r12 != 0) goto L49
            int r12 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r12 != 0) goto L3f
            goto L43
        L3f:
            long r0 = remainingNanos(r8, r0)     // Catch: java.lang.Throwable -> L50
        L43:
            boolean r10 = r10.awaitNanos(r11, r0, r3)     // Catch: java.lang.Throwable -> L50
            if (r10 == 0) goto L4a
        L49:
            r5 = 1
        L4a:
            if (r5 != 0) goto L4f
            r2.unlock()
        L4f:
            return r5
        L50:
            r11 = move-exception
            if (r3 != 0) goto L5c
            r10.signalNextWaiter()     // Catch: java.lang.Throwable -> L57
            goto L5c
        L57:
            r10 = move-exception
            r2.unlock()
            throw r10
        L5c:
            r2.unlock()
            throw r11
        L60:
            java.lang.IllegalMonitorStateException r10 = new java.lang.IllegalMonitorStateException
            r10.<init>()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhen(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void enterWhenUninterruptibly(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        boolean isHeldByCurrentThread = reentrantLock.isHeldByCurrentThread();
        reentrantLock.lock();
        try {
            if (guard.isSatisfied()) {
                return;
            }
            awaitUninterruptibly(guard, isHeldByCurrentThread);
        } catch (Throwable th) {
            leave();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004b A[Catch: all -> 0x0073, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0073, blocks: (B:5:0x0012, B:7:0x001a, B:22:0x004b, B:32:0x0059, B:33:0x005c, B:34:0x0023, B:37:0x0028, B:13:0x0030, B:17:0x003b, B:18:0x0045, B:27:0x0041), top: B:4:0x0012, inners: #2, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r12, long r13, java.util.concurrent.TimeUnit r15) {
        /*
            r11 = this;
            long r13 = toSafeNanos(r13, r15)
            com.google.common.util.concurrent.Monitor r15 = r12.monitor
            if (r15 != r11) goto L7e
            java.util.concurrent.locks.ReentrantLock r15 = r11.lock
            boolean r0 = r15.isHeldByCurrentThread()
            boolean r1 = java.lang.Thread.interrupted()
            boolean r2 = r11.fair     // Catch: java.lang.Throwable -> L73
            r3 = 0
            r4 = 0
            r6 = 1
            if (r2 != 0) goto L23
            boolean r2 = r15.tryLock()     // Catch: java.lang.Throwable -> L73
            if (r2 != 0) goto L21
            goto L23
        L21:
            r7 = r4
            goto L30
        L23:
            long r7 = initNanoTime(r13)     // Catch: java.lang.Throwable -> L73
            r9 = r13
        L28:
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            boolean r2 = r15.tryLock(r9, r2)     // Catch: java.lang.InterruptedException -> L6a java.lang.Throwable -> L73
            if (r2 == 0) goto L60
        L30:
            boolean r2 = r12.isSatisfied()     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            if (r2 == 0) goto L37
            goto L49
        L37:
            int r2 = (r7 > r4 ? 1 : (r7 == r4 ? 0 : -1))
            if (r2 != 0) goto L41
            long r7 = initNanoTime(r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
            r9 = r13
            goto L45
        L41:
            long r9 = remainingNanos(r7, r13)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L45:
            boolean r6 = r11.awaitNanos(r12, r9, r0)     // Catch: java.lang.Throwable -> L58 java.lang.InterruptedException -> L5d
        L49:
            if (r6 != 0) goto L4e
            r15.unlock()     // Catch: java.lang.Throwable -> L73
        L4e:
            if (r1 == 0) goto L57
            java.lang.Thread r11 = java.lang.Thread.currentThread()
            r11.interrupt()
        L57:
            return r6
        L58:
            r11 = move-exception
            r15.unlock()     // Catch: java.lang.Throwable -> L73
            throw r11     // Catch: java.lang.Throwable -> L73
        L5d:
            r0 = r3
            r1 = r6
            goto L30
        L60:
            if (r1 == 0) goto L69
            java.lang.Thread r11 = java.lang.Thread.currentThread()
            r11.interrupt()
        L69:
            return r3
        L6a:
            long r9 = remainingNanos(r7, r13)     // Catch: java.lang.Throwable -> L70
            r1 = r6
            goto L28
        L70:
            r11 = move-exception
            r1 = r6
            goto L74
        L73:
            r11 = move-exception
        L74:
            if (r1 == 0) goto L7d
            java.lang.Thread r12 = java.lang.Thread.currentThread()
            r12.interrupt()
        L7d:
            throw r11
        L7e:
            java.lang.IllegalMonitorStateException r11 = new java.lang.IllegalMonitorStateException
            r11.<init>()
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.enterWhenUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public boolean enterIf(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIf(Guard guard, long j, TimeUnit timeUnit) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        if (!enter(j, timeUnit)) {
            return false;
        }
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            this.lock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lockInterruptibly();
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean enterIfInterruptibly(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        if (!reentrantLock.tryLock(j, timeUnit)) {
            return false;
        }
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean tryEnterIf(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        ReentrantLock reentrantLock = this.lock;
        if (!reentrantLock.tryLock()) {
            return false;
        }
        try {
            boolean isSatisfied = guard.isSatisfied();
            if (!isSatisfied) {
            }
            return isSatisfied;
        } finally {
            reentrantLock.unlock();
        }
    }

    public void waitFor(Guard guard) throws InterruptedException {
        if (guard.monitor != this || !this.lock.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return;
        }
        await(guard, true);
    }

    public boolean waitFor(Guard guard, long j, TimeUnit timeUnit) throws InterruptedException {
        long safeNanos = toSafeNanos(j, timeUnit);
        if (guard.monitor != this || !this.lock.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return true;
        }
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        return awaitNanos(guard, safeNanos, true);
    }

    public void waitForUninterruptibly(Guard guard) {
        if (guard.monitor != this || !this.lock.isHeldByCurrentThread()) {
            throw new IllegalMonitorStateException();
        }
        if (guard.isSatisfied()) {
            return;
        }
        awaitUninterruptibly(guard, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean waitForUninterruptibly(com.google.common.util.concurrent.Monitor.Guard r7, long r8, java.util.concurrent.TimeUnit r10) {
        /*
            r6 = this;
            long r8 = toSafeNanos(r8, r10)
            com.google.common.util.concurrent.Monitor r10 = r7.monitor
            if (r10 != r6) goto L53
            java.util.concurrent.locks.ReentrantLock r10 = r6.lock
            boolean r10 = r10.isHeldByCurrentThread()
            if (r10 == 0) goto L53
            boolean r10 = r7.isSatisfied()
            r0 = 1
            if (r10 == 0) goto L18
            return r0
        L18:
            long r1 = initNanoTime(r8)
            boolean r10 = java.lang.Thread.interrupted()
            r3 = r8
            r5 = r0
        L22:
            boolean r6 = r6.awaitNanos(r7, r3, r5)     // Catch: java.lang.Throwable -> L30 java.lang.InterruptedException -> L33
            if (r10 == 0) goto L2f
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            r7.interrupt()
        L2f:
            return r6
        L30:
            r6 = move-exception
            r0 = r10
            goto L49
        L33:
            boolean r10 = r7.isSatisfied()     // Catch: java.lang.Throwable -> L48
            if (r10 == 0) goto L41
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            r6.interrupt()
            return r0
        L41:
            long r3 = remainingNanos(r1, r8)     // Catch: java.lang.Throwable -> L48
            r5 = 0
            r10 = r0
            goto L22
        L48:
            r6 = move-exception
        L49:
            if (r0 == 0) goto L52
            java.lang.Thread r7 = java.lang.Thread.currentThread()
            r7.interrupt()
        L52:
            throw r6
        L53:
            java.lang.IllegalMonitorStateException r6 = new java.lang.IllegalMonitorStateException
            r6.<init>()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.Monitor.waitForUninterruptibly(com.google.common.util.concurrent.Monitor$Guard, long, java.util.concurrent.TimeUnit):boolean");
    }

    public void leave() {
        ReentrantLock reentrantLock = this.lock;
        try {
            if (reentrantLock.getHoldCount() == 1) {
                signalNextWaiter();
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public boolean isOccupied() {
        return this.lock.isLocked();
    }

    public boolean isOccupiedByCurrentThread() {
        return this.lock.isHeldByCurrentThread();
    }

    public int getOccupiedDepth() {
        return this.lock.getHoldCount();
    }

    public int getQueueLength() {
        return this.lock.getQueueLength();
    }

    public boolean hasQueuedThreads() {
        return this.lock.hasQueuedThreads();
    }

    public boolean hasQueuedThread(Thread thread) {
        return this.lock.hasQueuedThread(thread);
    }

    public boolean hasWaiters(Guard guard) {
        return getWaitQueueLength(guard) > 0;
    }

    public int getWaitQueueLength(Guard guard) {
        if (guard.monitor != this) {
            throw new IllegalMonitorStateException();
        }
        this.lock.lock();
        try {
            return guard.waiterCount;
        } finally {
            this.lock.unlock();
        }
    }

    private static long toSafeNanos(long j, TimeUnit timeUnit) {
        return Longs.constrainToRange(timeUnit.toNanos(j), 0L, 6917529027641081853L);
    }

    private static long initNanoTime(long j) {
        if (j <= 0) {
            return 0L;
        }
        long nanoTime = System.nanoTime();
        if (nanoTime == 0) {
            return 1L;
        }
        return nanoTime;
    }

    private static long remainingNanos(long j, long j2) {
        if (j2 <= 0) {
            return 0L;
        }
        return j2 - (System.nanoTime() - j);
    }

    private void signalNextWaiter() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            if (isSatisfied(guard)) {
                guard.condition.signal();
                return;
            }
        }
    }

    private boolean isSatisfied(Guard guard) {
        try {
            return guard.isSatisfied();
        } catch (Throwable th) {
            this.signalAllWaiters();
            throw th;
        }
    }

    private void signalAllWaiters() {
        for (Guard guard = this.activeGuards; guard != null; guard = guard.next) {
            guard.condition.signalAll();
        }
    }

    private void beginWaitingFor(Guard guard) {
        int i = guard.waiterCount;
        guard.waiterCount = i + 1;
        if (i == 0) {
            guard.next = this.activeGuards;
            this.activeGuards = guard;
        }
    }

    private void endWaitingFor(Guard guard) {
        int i = guard.waiterCount - 1;
        guard.waiterCount = i;
        if (i == 0) {
            Guard guard2 = this.activeGuards;
            Guard guard3 = null;
            while (guard2 != guard) {
                guard3 = guard2;
                guard2 = guard2.next;
            }
            if (guard3 == null) {
                this.activeGuards = guard2.next;
            } else {
                guard3.next = guard2.next;
            }
            guard2.next = null;
        }
    }

    private void await(Guard guard, boolean z) throws InterruptedException {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.await();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    private void awaitUninterruptibly(Guard guard, boolean z) {
        if (z) {
            signalNextWaiter();
        }
        beginWaitingFor(guard);
        do {
            try {
                guard.condition.awaitUninterruptibly();
            } finally {
                endWaitingFor(guard);
            }
        } while (!guard.isSatisfied());
    }

    private boolean awaitNanos(Guard guard, long j, boolean z) throws InterruptedException {
        boolean z2 = true;
        while (j > 0) {
            if (z2) {
                if (z) {
                    try {
                        signalNextWaiter();
                    } finally {
                        if (!z2) {
                            endWaitingFor(guard);
                        }
                    }
                }
                beginWaitingFor(guard);
                z2 = false;
            }
            j = guard.condition.awaitNanos(j);
            if (guard.isSatisfied()) {
                if (!z2) {
                    endWaitingFor(guard);
                }
                return true;
            }
        }
        return false;
    }
}
