package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.math.IntMath;
import com.google.common.util.concurrent.Striped;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class Striped<L> {
    private static final int ALL_SET = -1;
    private static final int LARGE_LAZY_CUTOFF = 1024;

    public static /* synthetic */ ReentrantReadWriteLock $r8$lambda$DPHKQ3dY4ROYnkMBoW1EqdOwBu8() {
        return new ReentrantReadWriteLock();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int smear(int i) {
        int i2 = i ^ ((i >>> 20) ^ (i >>> 12));
        return (i2 >>> 4) ^ ((i2 >>> 7) ^ i2);
    }

    public abstract L get(Object obj);

    public abstract L getAt(int i);

    abstract int indexFor(Object obj);

    public abstract int size();

    private Striped() {
    }

    public Iterable<L> bulkGet(Iterable<? extends Object> iterable) {
        ArrayList newArrayList = Lists.newArrayList(iterable);
        if (newArrayList.isEmpty()) {
            return ImmutableList.of();
        }
        int[] iArr = new int[newArrayList.size()];
        for (int i = 0; i < newArrayList.size(); i++) {
            iArr[i] = indexFor(newArrayList.get(i));
        }
        Arrays.sort(iArr);
        int i2 = iArr[0];
        newArrayList.set(0, getAt(i2));
        for (int i3 = 1; i3 < newArrayList.size(); i3++) {
            int i4 = iArr[i3];
            if (i4 == i2) {
                newArrayList.set(i3, newArrayList.get(i3 - 1));
            } else {
                newArrayList.set(i3, getAt(i4));
                i2 = i4;
            }
        }
        return Collections.unmodifiableList(newArrayList);
    }

    static <L> Striped<L> custom(int i, Supplier<L> supplier) {
        return new CompactStriped(i, supplier);
    }

    public static Striped<Lock> lock(int i) {
        return custom(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return new Striped.PaddedLock();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Lock lambda$lazyWeakLock$0() {
        return new ReentrantLock(false);
    }

    public static Striped<Lock> lazyWeakLock(int i) {
        return lazy(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda4
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return Striped.lambda$lazyWeakLock$0();
            }
        });
    }

    private static <L> Striped<L> lazy(int i, Supplier<L> supplier) {
        if (i < 1024) {
            return new SmallLazyStriped(i, supplier);
        }
        return new LargeLazyStriped(i, supplier);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Semaphore lambda$semaphore$1(int i) {
        return new PaddedSemaphore(i);
    }

    public static Striped<Semaphore> semaphore(int i, final int i2) {
        return custom(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return Striped.lambda$semaphore$1(i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Semaphore lambda$lazyWeakSemaphore$2(int i) {
        return new Semaphore(i, false);
    }

    public static Striped<Semaphore> lazyWeakSemaphore(int i, final int i2) {
        return lazy(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return Striped.lambda$lazyWeakSemaphore$2(i2);
            }
        });
    }

    public static Striped<ReadWriteLock> readWriteLock(int i) {
        return custom(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return Striped.$r8$lambda$DPHKQ3dY4ROYnkMBoW1EqdOwBu8();
            }
        });
    }

    public static Striped<ReadWriteLock> lazyWeakReadWriteLock(int i) {
        return lazy(i, new Supplier() { // from class: com.google.common.util.concurrent.Striped$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Supplier
            public final Object get() {
                return new Striped.WeakSafeReadWriteLock();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class WeakSafeReadWriteLock implements ReadWriteLock {
        private final ReadWriteLock delegate = new ReentrantReadWriteLock();

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock readLock() {
            return new WeakSafeLock(this.delegate.readLock(), this);
        }

        @Override // java.util.concurrent.locks.ReadWriteLock
        public Lock writeLock() {
            return new WeakSafeLock(this.delegate.writeLock(), this);
        }
    }

    /* loaded from: classes3.dex */
    private static final class WeakSafeLock extends ForwardingLock {
        private final Lock delegate;
        private final WeakSafeReadWriteLock strongReference;

        @Override // com.google.common.util.concurrent.ForwardingLock
        Lock delegate() {
            return this.delegate;
        }

        WeakSafeLock(Lock lock, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = lock;
            this.strongReference = weakSafeReadWriteLock;
        }

        @Override // com.google.common.util.concurrent.ForwardingLock, java.util.concurrent.locks.Lock
        public Condition newCondition() {
            return new WeakSafeCondition(this.delegate.newCondition(), this.strongReference);
        }
    }

    /* loaded from: classes3.dex */
    private static final class WeakSafeCondition extends ForwardingCondition {
        private final Condition delegate;
        private final WeakSafeReadWriteLock strongReference;

        @Override // com.google.common.util.concurrent.ForwardingCondition
        Condition delegate() {
            return this.delegate;
        }

        WeakSafeCondition(Condition condition, WeakSafeReadWriteLock weakSafeReadWriteLock) {
            this.delegate = condition;
            this.strongReference = weakSafeReadWriteLock;
        }
    }

    /* loaded from: classes3.dex */
    private static abstract class PowerOfTwoStriped<L> extends Striped<L> {
        final int mask;

        PowerOfTwoStriped(int i) {
            super();
            Preconditions.checkArgument(i > 0, "Stripes must be positive");
            this.mask = i > 1073741824 ? -1 : Striped.ceilToPowerOfTwo(i) - 1;
        }

        @Override // com.google.common.util.concurrent.Striped
        final int indexFor(Object obj) {
            return this.mask & Striped.smear(obj.hashCode());
        }

        @Override // com.google.common.util.concurrent.Striped
        public final L get(Object obj) {
            return getAt(indexFor(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class CompactStriped<L> extends PowerOfTwoStriped<L> {
        private final Object[] array;

        private CompactStriped(int i, Supplier<L> supplier) {
            super(i);
            int i2 = 0;
            Preconditions.checkArgument(i <= 1073741824, "Stripes must be <= 2^30)");
            this.array = new Object[this.mask + 1];
            while (true) {
                Object[] objArr = this.array;
                if (i2 >= objArr.length) {
                    return;
                }
                objArr[i2] = supplier.get();
                i2++;
            }
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            return (L) this.array[i];
        }

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.array.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class SmallLazyStriped<L> extends PowerOfTwoStriped<L> {
        final AtomicReferenceArray<ArrayReference<? extends L>> locks;
        final ReferenceQueue<L> queue;
        final int size;
        final Supplier<L> supplier;

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }

        SmallLazyStriped(int i, Supplier<L> supplier) {
            super(i);
            this.queue = new ReferenceQueue<>();
            int i2 = this.mask == -1 ? Integer.MAX_VALUE : this.mask + 1;
            this.size = i2;
            this.locks = new AtomicReferenceArray<>(i2);
            this.supplier = supplier;
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.size != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            ArrayReference<? extends L> arrayReference = this.locks.get(i);
            L l = arrayReference == null ? null : (L) arrayReference.get();
            if (l != null) {
                return l;
            }
            L l2 = this.supplier.get();
            ArrayReference<? extends L> arrayReference2 = new ArrayReference<>(l2, i, this.queue);
            while (!this.locks.compareAndSet(i, arrayReference, arrayReference2)) {
                arrayReference = this.locks.get(i);
                L l3 = arrayReference == null ? null : (L) arrayReference.get();
                if (l3 != null) {
                    return l3;
                }
            }
            drainQueue();
            return l2;
        }

        private void drainQueue() {
            while (true) {
                Reference<? extends L> poll = this.queue.poll();
                if (poll == null) {
                    return;
                }
                ArrayReference<? extends L> arrayReference = (ArrayReference) poll;
                this.locks.compareAndSet(arrayReference.index, arrayReference, null);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class ArrayReference<L> extends WeakReference<L> {
            final int index;

            ArrayReference(L l, int i, ReferenceQueue<L> referenceQueue) {
                super(l, referenceQueue);
                this.index = i;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class LargeLazyStriped<L> extends PowerOfTwoStriped<L> {
        final ConcurrentMap<Integer, L> locks;
        final int size;
        final Supplier<L> supplier;

        @Override // com.google.common.util.concurrent.Striped
        public int size() {
            return this.size;
        }

        LargeLazyStriped(int i, Supplier<L> supplier) {
            super(i);
            this.size = this.mask == -1 ? Integer.MAX_VALUE : this.mask + 1;
            this.supplier = supplier;
            this.locks = new MapMaker().weakValues().makeMap();
        }

        @Override // com.google.common.util.concurrent.Striped
        public L getAt(int i) {
            if (this.size != Integer.MAX_VALUE) {
                Preconditions.checkElementIndex(i, size());
            }
            L l = this.locks.get(Integer.valueOf(i));
            if (l != null) {
                return l;
            }
            L l2 = this.supplier.get();
            return (L) MoreObjects.firstNonNull(this.locks.putIfAbsent(Integer.valueOf(i), l2), l2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int ceilToPowerOfTwo(int i) {
        return 1 << IntMath.log2(i, RoundingMode.CEILING);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class PaddedLock extends ReentrantLock {
        long unused1;
        long unused2;
        long unused3;

        /* JADX INFO: Access modifiers changed from: package-private */
        public PaddedLock() {
            super(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class PaddedSemaphore extends Semaphore {
        long unused1;
        long unused2;
        long unused3;

        PaddedSemaphore(int i) {
            super(i, false);
        }
    }
}
