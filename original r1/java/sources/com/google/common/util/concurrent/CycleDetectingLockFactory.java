package com.google.common.util.concurrent;

import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Lists;
import com.google.common.collect.MapMaker;
import com.google.common.collect.Maps;
import com.google.common.collect.Sets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class CycleDetectingLockFactory {
    final Policy policy;
    private static final ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, LockGraphNode>> lockGraphNodesPerType = new MapMaker().weakKeys().makeMap();
    private static final Logger logger = Logger.getLogger(CycleDetectingLockFactory.class.getName());
    private static final ThreadLocal<ArrayList<LockGraphNode>> acquiredLocks = new ThreadLocal<ArrayList<LockGraphNode>>() { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public ArrayList<LockGraphNode> initialValue() {
            return Lists.newArrayListWithCapacity(3);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public interface CycleDetectingLock {
        LockGraphNode getLockGraphNode();

        boolean isAcquiredByCurrentThread();
    }

    /* loaded from: classes3.dex */
    public enum Policies implements Policy {
        THROW { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.1
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                throw potentialDeadlockException;
            }
        },
        WARN { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.2
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
                CycleDetectingLockFactory.logger.log(Level.SEVERE, "Detected potential deadlock", (Throwable) potentialDeadlockException);
            }
        },
        DISABLED { // from class: com.google.common.util.concurrent.CycleDetectingLockFactory.Policies.3
            @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.Policy
            public void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface Policy {
        void handlePotentialDeadlock(PotentialDeadlockException potentialDeadlockException);
    }

    public static CycleDetectingLockFactory newInstance(Policy policy) {
        return new CycleDetectingLockFactory(policy);
    }

    public ReentrantLock newReentrantLock(String str) {
        return newReentrantLock(str, false);
    }

    public ReentrantLock newReentrantLock(String str, boolean z) {
        if (this.policy == Policies.DISABLED) {
            return new ReentrantLock(z);
        }
        return new CycleDetectingReentrantLock(new LockGraphNode(str), z);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str) {
        return newReentrantReadWriteLock(str, false);
    }

    public ReentrantReadWriteLock newReentrantReadWriteLock(String str, boolean z) {
        if (this.policy == Policies.DISABLED) {
            return new ReentrantReadWriteLock(z);
        }
        return new CycleDetectingReentrantReadWriteLock(new LockGraphNode(str), z);
    }

    public static <E extends Enum<E>> WithExplicitOrdering<E> newInstanceWithExplicitOrdering(Class<E> cls, Policy policy) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(policy);
        return new WithExplicitOrdering<>(policy, getOrCreateNodes(cls));
    }

    private static <E extends Enum<E>> Map<? extends E, LockGraphNode> getOrCreateNodes(Class<E> cls) {
        ConcurrentMap<Class<? extends Enum<?>>, Map<? extends Enum<?>, LockGraphNode>> concurrentMap = lockGraphNodesPerType;
        Map<? extends E, LockGraphNode> map = (Map) concurrentMap.get(cls);
        if (map != null) {
            return map;
        }
        Map<? extends Enum<?>, LockGraphNode> createNodes = createNodes(cls);
        return (Map) MoreObjects.firstNonNull(concurrentMap.putIfAbsent(cls, createNodes), createNodes);
    }

    static <E extends Enum<E>> Map<E, LockGraphNode> createNodes(Class<E> cls) {
        EnumMap newEnumMap = Maps.newEnumMap(cls);
        E[] enumConstants = cls.getEnumConstants();
        int length = enumConstants.length;
        ArrayList newArrayListWithCapacity = Lists.newArrayListWithCapacity(length);
        int i = 0;
        for (E e : enumConstants) {
            LockGraphNode lockGraphNode = new LockGraphNode(getLockName(e));
            newArrayListWithCapacity.add(lockGraphNode);
            newEnumMap.put((EnumMap) e, (E) lockGraphNode);
        }
        for (int i2 = 1; i2 < length; i2++) {
            ((LockGraphNode) newArrayListWithCapacity.get(i2)).checkAcquiredLocks(Policies.THROW, newArrayListWithCapacity.subList(0, i2));
        }
        while (i < length - 1) {
            i++;
            ((LockGraphNode) newArrayListWithCapacity.get(i)).checkAcquiredLocks(Policies.DISABLED, newArrayListWithCapacity.subList(i, length));
        }
        return Collections.unmodifiableMap(newEnumMap);
    }

    private static String getLockName(Enum<?> r3) {
        String simpleName = r3.getDeclaringClass().getSimpleName();
        String name = r3.name();
        return new StringBuilder(String.valueOf(simpleName).length() + 1 + String.valueOf(name).length()).append(simpleName).append(".").append(name).toString();
    }

    /* loaded from: classes3.dex */
    public static final class WithExplicitOrdering<E extends Enum<E>> extends CycleDetectingLockFactory {
        private final Map<E, LockGraphNode> lockGraphNodes;

        WithExplicitOrdering(Policy policy, Map<E, LockGraphNode> map) {
            super(policy);
            this.lockGraphNodes = map;
        }

        public ReentrantLock newReentrantLock(E e) {
            return newReentrantLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantLock newReentrantLock(E e, boolean z) {
            if (this.policy == Policies.DISABLED) {
                return new ReentrantLock(z);
            }
            return new CycleDetectingReentrantLock((LockGraphNode) Objects.requireNonNull(this.lockGraphNodes.get(e)), z);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e) {
            return newReentrantReadWriteLock((WithExplicitOrdering<E>) e, false);
        }

        public ReentrantReadWriteLock newReentrantReadWriteLock(E e, boolean z) {
            if (this.policy == Policies.DISABLED) {
                return new ReentrantReadWriteLock(z);
            }
            return new CycleDetectingReentrantReadWriteLock((LockGraphNode) Objects.requireNonNull(this.lockGraphNodes.get(e)), z);
        }
    }

    private CycleDetectingLockFactory(Policy policy) {
        this.policy = (Policy) Preconditions.checkNotNull(policy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ExampleStackTrace extends IllegalStateException {
        static final StackTraceElement[] EMPTY_STACK_TRACE = new StackTraceElement[0];
        static final ImmutableSet<String> EXCLUDED_CLASS_NAMES = ImmutableSet.of(CycleDetectingLockFactory.class.getName(), ExampleStackTrace.class.getName(), LockGraphNode.class.getName());

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        ExampleStackTrace(com.google.common.util.concurrent.CycleDetectingLockFactory.LockGraphNode r4, com.google.common.util.concurrent.CycleDetectingLockFactory.LockGraphNode r5) {
            /*
                r3 = this;
                java.lang.String r4 = r4.getLockName()
                java.lang.String r5 = r5.getLockName()
                java.lang.String r0 = java.lang.String.valueOf(r4)
                int r0 = r0.length()
                int r0 = r0 + 4
                java.lang.String r1 = java.lang.String.valueOf(r5)
                int r1 = r1.length()
                int r0 = r0 + r1
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.StringBuilder r4 = r1.append(r4)
                java.lang.String r0 = " -> "
                java.lang.StringBuilder r4 = r4.append(r0)
                java.lang.StringBuilder r4 = r4.append(r5)
                java.lang.String r4 = r4.toString()
                r3.<init>(r4)
                java.lang.StackTraceElement[] r4 = r3.getStackTrace()
                int r5 = r4.length
                r0 = 0
            L3b:
                if (r0 >= r5) goto L70
                java.lang.Class<com.google.common.util.concurrent.CycleDetectingLockFactory$WithExplicitOrdering> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.WithExplicitOrdering.class
                java.lang.String r1 = r1.getName()
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.equals(r2)
                if (r1 == 0) goto L55
                java.lang.StackTraceElement[] r4 = com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.EMPTY_STACK_TRACE
                r3.setStackTrace(r4)
                goto L70
            L55:
                com.google.common.collect.ImmutableSet<java.lang.String> r1 = com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.EXCLUDED_CLASS_NAMES
                r2 = r4[r0]
                java.lang.String r2 = r2.getClassName()
                boolean r1 = r1.contains(r2)
                if (r1 != 0) goto L6d
                java.lang.Object[] r4 = java.util.Arrays.copyOfRange(r4, r0, r5)
                java.lang.StackTraceElement[] r4 = (java.lang.StackTraceElement[]) r4
                r3.setStackTrace(r4)
                goto L70
            L6d:
                int r0 = r0 + 1
                goto L3b
            L70:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.CycleDetectingLockFactory.ExampleStackTrace.<init>(com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode, com.google.common.util.concurrent.CycleDetectingLockFactory$LockGraphNode):void");
        }
    }

    /* loaded from: classes3.dex */
    public static final class PotentialDeadlockException extends ExampleStackTrace {
        private final ExampleStackTrace conflictingStackTrace;

        public ExampleStackTrace getConflictingStackTrace() {
            return this.conflictingStackTrace;
        }

        private PotentialDeadlockException(LockGraphNode lockGraphNode, LockGraphNode lockGraphNode2, ExampleStackTrace exampleStackTrace) {
            super(lockGraphNode, lockGraphNode2);
            this.conflictingStackTrace = exampleStackTrace;
            initCause(exampleStackTrace);
        }

        @Override // java.lang.Throwable
        public String getMessage() {
            StringBuilder sb = new StringBuilder((String) Objects.requireNonNull(super.getMessage()));
            for (Throwable th = this.conflictingStackTrace; th != null; th = th.getCause()) {
                sb.append(", ").append(th.getMessage());
            }
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class LockGraphNode {
        final Map<LockGraphNode, ExampleStackTrace> allowedPriorLocks = new MapMaker().weakKeys().makeMap();
        final Map<LockGraphNode, PotentialDeadlockException> disallowedPriorLocks = new MapMaker().weakKeys().makeMap();
        final String lockName;

        String getLockName() {
            return this.lockName;
        }

        LockGraphNode(String str) {
            this.lockName = (String) Preconditions.checkNotNull(str);
        }

        void checkAcquiredLocks(Policy policy, List<LockGraphNode> list) {
            Iterator<LockGraphNode> it = list.iterator();
            while (it.hasNext()) {
                checkAcquiredLock(policy, it.next());
            }
        }

        void checkAcquiredLock(Policy policy, LockGraphNode lockGraphNode) {
            Preconditions.checkState(this != lockGraphNode, "Attempted to acquire multiple locks with the same rank %s", lockGraphNode.getLockName());
            if (this.allowedPriorLocks.containsKey(lockGraphNode)) {
                return;
            }
            PotentialDeadlockException potentialDeadlockException = this.disallowedPriorLocks.get(lockGraphNode);
            if (potentialDeadlockException != null) {
                policy.handlePotentialDeadlock(new PotentialDeadlockException(lockGraphNode, this, potentialDeadlockException.getConflictingStackTrace()));
                return;
            }
            ExampleStackTrace findPathTo = lockGraphNode.findPathTo(this, Sets.newIdentityHashSet());
            if (findPathTo == null) {
                this.allowedPriorLocks.put(lockGraphNode, new ExampleStackTrace(lockGraphNode, this));
                return;
            }
            PotentialDeadlockException potentialDeadlockException2 = new PotentialDeadlockException(lockGraphNode, this, findPathTo);
            this.disallowedPriorLocks.put(lockGraphNode, potentialDeadlockException2);
            policy.handlePotentialDeadlock(potentialDeadlockException2);
        }

        @CheckForNull
        private ExampleStackTrace findPathTo(LockGraphNode lockGraphNode, Set<LockGraphNode> set) {
            if (!set.add(this)) {
                return null;
            }
            ExampleStackTrace exampleStackTrace = this.allowedPriorLocks.get(lockGraphNode);
            if (exampleStackTrace != null) {
                return exampleStackTrace;
            }
            for (Map.Entry<LockGraphNode, ExampleStackTrace> entry : this.allowedPriorLocks.entrySet()) {
                LockGraphNode key = entry.getKey();
                ExampleStackTrace findPathTo = key.findPathTo(lockGraphNode, set);
                if (findPathTo != null) {
                    ExampleStackTrace exampleStackTrace2 = new ExampleStackTrace(key, this);
                    exampleStackTrace2.setStackTrace(entry.getValue().getStackTrace());
                    exampleStackTrace2.initCause(findPathTo);
                    return exampleStackTrace2;
                }
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aboutToAcquire(CycleDetectingLock cycleDetectingLock) {
        if (cycleDetectingLock.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<LockGraphNode> arrayList = acquiredLocks.get();
        LockGraphNode lockGraphNode = cycleDetectingLock.getLockGraphNode();
        lockGraphNode.checkAcquiredLocks(this.policy, arrayList);
        arrayList.add(lockGraphNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void lockStateChanged(CycleDetectingLock cycleDetectingLock) {
        if (cycleDetectingLock.isAcquiredByCurrentThread()) {
            return;
        }
        ArrayList<LockGraphNode> arrayList = acquiredLocks.get();
        LockGraphNode lockGraphNode = cycleDetectingLock.getLockGraphNode();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (arrayList.get(size) == lockGraphNode) {
                arrayList.remove(size);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantLock extends ReentrantLock implements CycleDetectingLock {
        private final LockGraphNode lockGraphNode;

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public LockGraphNode getLockGraphNode() {
            return this.lockGraphNode;
        }

        private CycleDetectingReentrantLock(LockGraphNode lockGraphNode, boolean z) {
            super(z);
            this.lockGraphNode = (LockGraphNode) Preconditions.checkNotNull(lockGraphNode);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public boolean isAcquiredByCurrentThread() {
            return isHeldByCurrentThread();
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public final class CycleDetectingReentrantReadWriteLock extends ReentrantReadWriteLock implements CycleDetectingLock {
        private final LockGraphNode lockGraphNode;
        private final CycleDetectingReentrantReadLock readLock;
        private final CycleDetectingReentrantWriteLock writeLock;

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public LockGraphNode getLockGraphNode() {
            return this.lockGraphNode;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.ReadLock readLock() {
            return this.readLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock, java.util.concurrent.locks.ReadWriteLock
        public ReentrantReadWriteLock.WriteLock writeLock() {
            return this.writeLock;
        }

        private CycleDetectingReentrantReadWriteLock(CycleDetectingLockFactory cycleDetectingLockFactory, LockGraphNode lockGraphNode, boolean z) {
            super(z);
            this.readLock = new CycleDetectingReentrantReadLock(this);
            this.writeLock = new CycleDetectingReentrantWriteLock(this);
            this.lockGraphNode = (LockGraphNode) Preconditions.checkNotNull(lockGraphNode);
        }

        @Override // com.google.common.util.concurrent.CycleDetectingLockFactory.CycleDetectingLock
        public boolean isAcquiredByCurrentThread() {
            return isWriteLockedByCurrentThread() || getReadHoldCount() > 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class CycleDetectingReentrantReadLock extends ReentrantReadWriteLock.ReadLock {
        final CycleDetectingReentrantReadWriteLock readWriteLock;

        CycleDetectingReentrantReadLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class CycleDetectingReentrantWriteLock extends ReentrantReadWriteLock.WriteLock {
        final CycleDetectingReentrantReadWriteLock readWriteLock;

        CycleDetectingReentrantWriteLock(CycleDetectingReentrantReadWriteLock cycleDetectingReentrantReadWriteLock) {
            super(cycleDetectingReentrantReadWriteLock);
            this.readWriteLock = cycleDetectingReentrantReadWriteLock;
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                super.lock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void lockInterruptibly() throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                super.lockInterruptibly();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock() {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                return super.tryLock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public boolean tryLock(long j, TimeUnit timeUnit) throws InterruptedException {
            CycleDetectingLockFactory.this.aboutToAcquire(this.readWriteLock);
            try {
                return super.tryLock(j, timeUnit);
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }

        @Override // java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock, java.util.concurrent.locks.Lock
        public void unlock() {
            try {
                super.unlock();
            } finally {
                CycleDetectingLockFactory.lockStateChanged(this.readWriteLock);
            }
        }
    }
}
