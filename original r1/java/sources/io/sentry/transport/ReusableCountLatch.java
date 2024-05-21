package io.sentry.transport;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.AbstractQueuedSynchronizer;

/* loaded from: classes3.dex */
public final class ReusableCountLatch {
    private final Sync sync;

    public ReusableCountLatch(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("negative initial count '" + i + "' is not allowed");
        }
        this.sync = new Sync(i);
    }

    public ReusableCountLatch() {
        this(0);
    }

    public int getCount() {
        return this.sync.getCount();
    }

    public void decrement() {
        this.sync.decrement();
    }

    public void increment() {
        this.sync.increment();
    }

    public void waitTillZero() throws InterruptedException {
        this.sync.acquireSharedInterruptibly(1);
    }

    public boolean waitTillZero(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.sync.tryAcquireSharedNanos(1, timeUnit.toNanos(j));
    }

    /* loaded from: classes3.dex */
    private static final class Sync extends AbstractQueuedSynchronizer {
        private static final long serialVersionUID = 5970133580157457018L;

        Sync(int i) {
            setState(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int getCount() {
            return getState();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void increment() {
            int state;
            do {
                state = getState();
            } while (!compareAndSetState(state, state + 1));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void decrement() {
            releaseShared(1);
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public int tryAcquireShared(int i) {
            return getState() == 0 ? 1 : -1;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public boolean tryReleaseShared(int i) {
            int state;
            int i2;
            do {
                state = getState();
                if (state == 0) {
                    return false;
                }
                i2 = state - 1;
            } while (!compareAndSetState(state, i2));
            return i2 == 0;
        }
    }
}
