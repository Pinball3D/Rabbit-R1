package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Throwables;
import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.ForwardingListenableFuture;
import java.lang.reflect.InvocationTargetException;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class MoreExecutors {
    private MoreExecutors() {
    }

    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Application().getExitingExecutorService(threadPoolExecutor, j, timeUnit);
    }

    public static ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
        return new Application().getExitingExecutorService(threadPoolExecutor);
    }

    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
        return new Application().getExitingScheduledExecutorService(scheduledThreadPoolExecutor, j, timeUnit);
    }

    public static ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
        return new Application().getExitingScheduledExecutorService(scheduledThreadPoolExecutor);
    }

    public static void addDelayedShutdownHook(ExecutorService executorService, long j, TimeUnit timeUnit) {
        new Application().addDelayedShutdownHook(executorService, j, timeUnit);
    }

    /* loaded from: classes3.dex */
    static class Application {
        Application() {
        }

        final ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.useDaemonThreadFactory(threadPoolExecutor);
            ExecutorService unconfigurableExecutorService = Executors.unconfigurableExecutorService(threadPoolExecutor);
            addDelayedShutdownHook(threadPoolExecutor, j, timeUnit);
            return unconfigurableExecutorService;
        }

        final ExecutorService getExitingExecutorService(ThreadPoolExecutor threadPoolExecutor) {
            return getExitingExecutorService(threadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor, long j, TimeUnit timeUnit) {
            MoreExecutors.useDaemonThreadFactory(scheduledThreadPoolExecutor);
            ScheduledExecutorService unconfigurableScheduledExecutorService = Executors.unconfigurableScheduledExecutorService(scheduledThreadPoolExecutor);
            addDelayedShutdownHook(scheduledThreadPoolExecutor, j, timeUnit);
            return unconfigurableScheduledExecutorService;
        }

        final ScheduledExecutorService getExitingScheduledExecutorService(ScheduledThreadPoolExecutor scheduledThreadPoolExecutor) {
            return getExitingScheduledExecutorService(scheduledThreadPoolExecutor, 120L, TimeUnit.SECONDS);
        }

        final void addDelayedShutdownHook(final ExecutorService executorService, final long j, final TimeUnit timeUnit) {
            Preconditions.checkNotNull(executorService);
            Preconditions.checkNotNull(timeUnit);
            String valueOf = String.valueOf(executorService);
            addShutdownHook(MoreExecutors.newThread(new StringBuilder(String.valueOf(valueOf).length() + 24).append("DelayedShutdownHook-for-").append(valueOf).toString(), new Runnable(this) { // from class: com.google.common.util.concurrent.MoreExecutors.Application.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        executorService.shutdown();
                        executorService.awaitTermination(j, timeUnit);
                    } catch (InterruptedException unused) {
                    }
                }
            }));
        }

        void addShutdownHook(Thread thread) {
            Runtime.getRuntime().addShutdownHook(thread);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void useDaemonThreadFactory(ThreadPoolExecutor threadPoolExecutor) {
        threadPoolExecutor.setThreadFactory(new ThreadFactoryBuilder().setDaemon(true).setThreadFactory(threadPoolExecutor.getThreadFactory()).build());
    }

    /* loaded from: classes3.dex */
    private static final class DirectExecutorService extends AbstractListeningExecutorService {
        private final Object lock;
        private int runningTasks;
        private boolean shutdown;

        private DirectExecutorService() {
            this.lock = new Object();
            this.runningTasks = 0;
            this.shutdown = false;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            startTask();
            try {
                runnable.run();
            } finally {
                endTask();
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            boolean z;
            synchronized (this.lock) {
                z = this.shutdown;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            synchronized (this.lock) {
                this.shutdown = true;
                if (this.runningTasks == 0) {
                    this.lock.notifyAll();
                }
            }
        }

        @Override // java.util.concurrent.ExecutorService
        public List<Runnable> shutdownNow() {
            shutdown();
            return Collections.emptyList();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            boolean z;
            synchronized (this.lock) {
                z = this.shutdown && this.runningTasks == 0;
            }
            return z;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            long nanos = timeUnit.toNanos(j);
            synchronized (this.lock) {
                while (true) {
                    if (this.shutdown && this.runningTasks == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long nanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.lock, nanos);
                    nanos -= System.nanoTime() - nanoTime;
                }
            }
        }

        private void startTask() {
            synchronized (this.lock) {
                if (this.shutdown) {
                    throw new RejectedExecutionException("Executor already shutdown");
                }
                this.runningTasks++;
            }
        }

        private void endTask() {
            synchronized (this.lock) {
                int i = this.runningTasks - 1;
                this.runningTasks = i;
                if (i == 0) {
                    this.lock.notifyAll();
                }
            }
        }
    }

    public static ListeningExecutorService newDirectExecutorService() {
        return new DirectExecutorService();
    }

    public static Executor directExecutor() {
        return DirectExecutor.INSTANCE;
    }

    public static Executor newSequentialExecutor(Executor executor) {
        return new SequentialExecutor(executor);
    }

    public static ListeningExecutorService listeningDecorator(ExecutorService executorService) {
        ListeningExecutorService listeningDecorator;
        if (executorService instanceof ListeningExecutorService) {
            return (ListeningExecutorService) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            listeningDecorator = new ScheduledListeningDecorator((ScheduledExecutorService) executorService);
        } else {
            listeningDecorator = new ListeningDecorator(executorService);
        }
        return listeningDecorator;
    }

    public static ListeningScheduledExecutorService listeningDecorator(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService instanceof ListeningScheduledExecutorService) {
            return (ListeningScheduledExecutorService) scheduledExecutorService;
        }
        return new ScheduledListeningDecorator(scheduledExecutorService);
    }

    /* loaded from: classes3.dex */
    private static class ListeningDecorator extends AbstractListeningExecutorService {
        private final ExecutorService delegate;

        ListeningDecorator(ExecutorService executorService) {
            this.delegate = (ExecutorService) Preconditions.checkNotNull(executorService);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
            return this.delegate.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isShutdown() {
            return this.delegate.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final boolean isTerminated() {
            return this.delegate.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public final void shutdown() {
            this.delegate.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public final List<Runnable> shutdownNow() {
            return this.delegate.shutdownNow();
        }

        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            this.delegate.execute(runnable);
        }

        public final String toString() {
            String obj = super.toString();
            String valueOf = String.valueOf(this.delegate);
            return new StringBuilder(String.valueOf(obj).length() + 2 + String.valueOf(valueOf).length()).append(obj).append("[").append(valueOf).append("]").toString();
        }
    }

    /* loaded from: classes3.dex */
    private static final class ScheduledListeningDecorator extends ListeningDecorator implements ListeningScheduledExecutorService {
        final ScheduledExecutorService delegate;

        ScheduledListeningDecorator(ScheduledExecutorService scheduledExecutorService) {
            super(scheduledExecutorService);
            this.delegate = (ScheduledExecutorService) Preconditions.checkNotNull(scheduledExecutorService);
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask create = TrustedListenableFutureTask.create(runnable, null);
            return new ListenableScheduledTask(create, this.delegate.schedule(create, j, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public <V> ListenableScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
            TrustedListenableFutureTask create = TrustedListenableFutureTask.create(callable);
            return new ListenableScheduledTask(create, this.delegate.schedule(create, j, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleAtFixedRate(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }

        @Override // com.google.common.util.concurrent.ListeningScheduledExecutorService, java.util.concurrent.ScheduledExecutorService
        public ListenableScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
            NeverSuccessfulListenableFutureTask neverSuccessfulListenableFutureTask = new NeverSuccessfulListenableFutureTask(runnable);
            return new ListenableScheduledTask(neverSuccessfulListenableFutureTask, this.delegate.scheduleWithFixedDelay(neverSuccessfulListenableFutureTask, j, j2, timeUnit));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class ListenableScheduledTask<V> extends ForwardingListenableFuture.SimpleForwardingListenableFuture<V> implements ListenableScheduledFuture<V> {
            private final ScheduledFuture<?> scheduledDelegate;

            public ListenableScheduledTask(ListenableFuture<V> listenableFuture, ScheduledFuture<?> scheduledFuture) {
                super(listenableFuture);
                this.scheduledDelegate = scheduledFuture;
            }

            @Override // com.google.common.util.concurrent.ForwardingFuture, java.util.concurrent.Future
            public boolean cancel(boolean z) {
                boolean cancel = super.cancel(z);
                if (cancel) {
                    this.scheduledDelegate.cancel(z);
                }
                return cancel;
            }

            @Override // java.util.concurrent.Delayed
            public long getDelay(TimeUnit timeUnit) {
                return this.scheduledDelegate.getDelay(timeUnit);
            }

            @Override // java.lang.Comparable
            public int compareTo(Delayed delayed) {
                return this.scheduledDelegate.compareTo(delayed);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes3.dex */
        public static final class NeverSuccessfulListenableFutureTask extends AbstractFuture.TrustedFuture<Void> implements Runnable {
            private final Runnable delegate;

            public NeverSuccessfulListenableFutureTask(Runnable runnable) {
                this.delegate = (Runnable) Preconditions.checkNotNull(runnable);
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.delegate.run();
                } catch (Throwable th) {
                    setException(th);
                    throw Throwables.propagate(th);
                }
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.AbstractFuture
            public String pendingToString() {
                String valueOf = String.valueOf(this.delegate);
                return new StringBuilder(String.valueOf(valueOf).length() + 7).append("task=[").append(valueOf).append("]").toString();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b7 A[SYNTHETIC] */
    @com.google.common.util.concurrent.ParametricNullness
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> T invokeAnyImpl(com.google.common.util.concurrent.ListeningExecutorService r16, java.util.Collection<? extends java.util.concurrent.Callable<T>> r17, boolean r18, long r19, java.util.concurrent.TimeUnit r21) throws java.lang.InterruptedException, java.util.concurrent.ExecutionException, java.util.concurrent.TimeoutException {
        /*
            r1 = r16
            com.google.common.base.Preconditions.checkNotNull(r16)
            com.google.common.base.Preconditions.checkNotNull(r21)
            int r0 = r17.size()
            r2 = 1
            if (r0 <= 0) goto L11
            r3 = r2
            goto L12
        L11:
            r3 = 0
        L12:
            com.google.common.base.Preconditions.checkArgument(r3)
            java.util.ArrayList r3 = com.google.common.collect.Lists.newArrayListWithCapacity(r0)
            java.util.concurrent.LinkedBlockingQueue r4 = com.google.common.collect.Queues.newLinkedBlockingQueue()
            r5 = r19
            r7 = r21
            long r5 = r7.toNanos(r5)
            if (r18 == 0) goto L2f
            long r7 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            goto L31
        L2c:
            r0 = move-exception
            goto Lbb
        L2f:
            r7 = 0
        L31:
            java.util.Iterator r9 = r17.iterator()     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r10 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r10 = (java.util.concurrent.Callable) r10     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.ListenableFuture r10 = submitAndAddQueueListener(r1, r10, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r10)     // Catch: java.lang.Throwable -> L2c
            int r0 = r0 + (-1)
            r10 = 0
            r11 = r2
            r12 = r10
        L47:
            java.lang.Object r13 = r4.poll()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 != 0) goto L8d
            if (r0 <= 0) goto L63
            int r0 = r0 + (-1)
            java.lang.Object r14 = r9.next()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Callable r14 = (java.util.concurrent.Callable) r14     // Catch: java.lang.Throwable -> L2c
            com.google.common.util.concurrent.ListenableFuture r14 = submitAndAddQueueListener(r1, r14, r4)     // Catch: java.lang.Throwable -> L2c
            r3.add(r14)     // Catch: java.lang.Throwable -> L2c
            int r11 = r11 + 1
            goto L8d
        L63:
            if (r11 != 0) goto L6d
            if (r12 != 0) goto L6c
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r10)     // Catch: java.lang.Throwable -> L2c
        L6c:
            throw r12     // Catch: java.lang.Throwable -> L2c
        L6d:
            if (r18 == 0) goto L87
            java.util.concurrent.TimeUnit r13 = java.util.concurrent.TimeUnit.NANOSECONDS     // Catch: java.lang.Throwable -> L2c
            java.lang.Object r13 = r4.poll(r5, r13)     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
            if (r13 == 0) goto L81
            long r14 = java.lang.System.nanoTime()     // Catch: java.lang.Throwable -> L2c
            long r7 = r14 - r7
            long r5 = r5 - r7
            goto L8e
        L81:
            java.util.concurrent.TimeoutException r0 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> L2c
            r0.<init>()     // Catch: java.lang.Throwable -> L2c
            throw r0     // Catch: java.lang.Throwable -> L2c
        L87:
            java.lang.Object r13 = r4.take()     // Catch: java.lang.Throwable -> L2c
            java.util.concurrent.Future r13 = (java.util.concurrent.Future) r13     // Catch: java.lang.Throwable -> L2c
        L8d:
            r14 = r7
        L8e:
            r6 = r5
            r5 = r0
            if (r13 == 0) goto Lb7
            int r11 = r11 + (-1)
            java.lang.Object r0 = r13.get()     // Catch: java.lang.Throwable -> L2c java.lang.RuntimeException -> Lad java.util.concurrent.ExecutionException -> Lb5
            java.util.Iterator r1 = r3.iterator()
        L9c:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lac
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto L9c
        Lac:
            return r0
        Lad:
            r0 = move-exception
            r8 = r0
            java.util.concurrent.ExecutionException r12 = new java.util.concurrent.ExecutionException     // Catch: java.lang.Throwable -> L2c
            r12.<init>(r8)     // Catch: java.lang.Throwable -> L2c
            goto Lb7
        Lb5:
            r0 = move-exception
            r12 = r0
        Lb7:
            r0 = r5
            r5 = r6
            r7 = r14
            goto L47
        Lbb:
            java.util.Iterator r1 = r3.iterator()
        Lbf:
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto Lcf
            java.lang.Object r3 = r1.next()
            java.util.concurrent.Future r3 = (java.util.concurrent.Future) r3
            r3.cancel(r2)
            goto Lbf
        Lcf:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.MoreExecutors.invokeAnyImpl(com.google.common.util.concurrent.ListeningExecutorService, java.util.Collection, boolean, long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    private static <T> ListenableFuture<T> submitAndAddQueueListener(ListeningExecutorService listeningExecutorService, Callable<T> callable, final BlockingQueue<Future<T>> blockingQueue) {
        final ListenableFuture<T> submit = listeningExecutorService.submit((Callable) callable);
        submit.addListener(new Runnable() { // from class: com.google.common.util.concurrent.MoreExecutors.1
            @Override // java.lang.Runnable
            public void run() {
                blockingQueue.add(submit);
            }
        }, directExecutor());
        return submit;
    }

    public static ThreadFactory platformThreadFactory() {
        if (!isAppEngineWithApiClasses()) {
            return Executors.defaultThreadFactory();
        }
        try {
            return (ThreadFactory) Class.forName("com.google.appengine.api.ThreadManager").getMethod("currentRequestThreadFactory", new Class[0]).invoke(null, new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("Couldn't invoke ThreadManager.currentRequestThreadFactory", e3);
        } catch (InvocationTargetException e4) {
            throw Throwables.propagate(e4.getCause());
        }
    }

    private static boolean isAppEngineWithApiClasses() {
        if (System.getProperty("com.google.appengine.runtime.environment") == null) {
            return false;
        }
        try {
            Class.forName("com.google.appengine.api.utils.SystemProperty");
            return Class.forName("com.google.apphosting.api.ApiProxy").getMethod("getCurrentEnvironment", new Class[0]).invoke(null, new Object[0]) != null;
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Thread newThread(String str, Runnable runnable) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(runnable);
        Thread newThread = platformThreadFactory().newThread(runnable);
        try {
            newThread.setName(str);
        } catch (SecurityException unused) {
        }
        return newThread;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor renamingDecorator(final Executor executor, final Supplier<String> supplier) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(supplier);
        return new Executor() { // from class: com.google.common.util.concurrent.MoreExecutors.2
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                executor.execute(Callables.threadRenaming(runnable, (Supplier<String>) supplier));
            }
        };
    }

    static ExecutorService renamingDecorator(ExecutorService executorService, final Supplier<String> supplier) {
        Preconditions.checkNotNull(executorService);
        Preconditions.checkNotNull(supplier);
        return new WrappingExecutorService(executorService) { // from class: com.google.common.util.concurrent.MoreExecutors.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            public <T> Callable<T> wrapTask(Callable<T> callable) {
                return Callables.threadRenaming(callable, (Supplier<String>) supplier);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            public Runnable wrapTask(Runnable runnable) {
                return Callables.threadRenaming(runnable, (Supplier<String>) supplier);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ScheduledExecutorService renamingDecorator(ScheduledExecutorService scheduledExecutorService, final Supplier<String> supplier) {
        Preconditions.checkNotNull(scheduledExecutorService);
        Preconditions.checkNotNull(supplier);
        return new WrappingScheduledExecutorService(scheduledExecutorService) { // from class: com.google.common.util.concurrent.MoreExecutors.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            public <T> Callable<T> wrapTask(Callable<T> callable) {
                return Callables.threadRenaming(callable, (Supplier<String>) supplier);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.common.util.concurrent.WrappingExecutorService
            public Runnable wrapTask(Runnable runnable) {
                return Callables.threadRenaming(runnable, (Supplier<String>) supplier);
            }
        };
    }

    public static boolean shutdownAndAwaitTermination(ExecutorService executorService, long j, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j) / 2;
        executorService.shutdown();
        try {
            if (!executorService.awaitTermination(nanos, TimeUnit.NANOSECONDS)) {
                executorService.shutdownNow();
                executorService.awaitTermination(nanos, TimeUnit.NANOSECONDS);
            }
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            executorService.shutdownNow();
        }
        return executorService.isTerminated();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor rejectionPropagatingExecutor(final Executor executor, final AbstractFuture<?> abstractFuture) {
        Preconditions.checkNotNull(executor);
        Preconditions.checkNotNull(abstractFuture);
        return executor == directExecutor() ? executor : new Executor() { // from class: com.google.common.util.concurrent.MoreExecutors.5
            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                try {
                    executor.execute(runnable);
                } catch (RejectedExecutionException e) {
                    abstractFuture.setException(e);
                }
            }
        };
    }
}
