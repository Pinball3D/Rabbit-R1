package com.google.common.util.concurrent;

import com.google.common.base.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class SequentialExecutor implements Executor {
    private static final Logger log = Logger.getLogger(SequentialExecutor.class.getName());
    private final Executor executor;
    private final Deque<Runnable> queue = new ArrayDeque();
    private WorkerRunningState workerRunningState = WorkerRunningState.IDLE;
    private long workerRunCount = 0;
    private final QueueWorker worker = new QueueWorker();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    static /* synthetic */ long access$308(SequentialExecutor sequentialExecutor) {
        long j = sequentialExecutor.workerRunCount;
        sequentialExecutor.workerRunCount = 1 + j;
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SequentialExecutor(Executor executor) {
        this.executor = (Executor) Preconditions.checkNotNull(executor);
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable runnable) {
        Preconditions.checkNotNull(runnable);
        synchronized (this.queue) {
            if (this.workerRunningState != WorkerRunningState.RUNNING && this.workerRunningState != WorkerRunningState.QUEUED) {
                long j = this.workerRunCount;
                Runnable runnable2 = new Runnable(this) { // from class: com.google.common.util.concurrent.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }

                    public String toString() {
                        return runnable.toString();
                    }
                };
                this.queue.add(runnable2);
                this.workerRunningState = WorkerRunningState.QUEUING;
                try {
                    this.executor.execute(this.worker);
                    if (this.workerRunningState != WorkerRunningState.QUEUING) {
                        return;
                    }
                    synchronized (this.queue) {
                        if (this.workerRunCount == j && this.workerRunningState == WorkerRunningState.QUEUING) {
                            this.workerRunningState = WorkerRunningState.QUEUED;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.queue) {
                        boolean z = (this.workerRunningState == WorkerRunningState.IDLE || this.workerRunningState == WorkerRunningState.QUEUING) && this.queue.removeLastOccurrence(runnable2);
                        if (!(e instanceof RejectedExecutionException) || z) {
                            throw e;
                        }
                        return;
                    }
                }
            }
            this.queue.add(runnable);
        }
    }

    /* loaded from: classes3.dex */
    private final class QueueWorker implements Runnable {

        @CheckForNull
        Runnable task;

        private QueueWorker() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                workOnQueue();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.queue) {
                    SequentialExecutor.this.workerRunningState = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x0054, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
            r2 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x0056, code lost:
        
            r9.task.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0060, code lost:
        
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0061, code lost:
        
            r4 = com.google.common.util.concurrent.SequentialExecutor.log;
            r5 = java.util.logging.Level.SEVERE;
            r6 = java.lang.String.valueOf(r9.task);
            r4.log(r5, new java.lang.StringBuilder(java.lang.String.valueOf(r6).length() + 35).append("Exception while executing runnable ").append(r6).toString(), (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x005e, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:20:0x008e, code lost:
        
            r9.task = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0090, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x004e, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void workOnQueue() {
            /*
                r9 = this;
                r0 = 0
                r1 = r0
            L2:
                com.google.common.util.concurrent.SequentialExecutor r2 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L94
                java.util.Deque r2 = com.google.common.util.concurrent.SequentialExecutor.access$100(r2)     // Catch: java.lang.Throwable -> L94
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L94
                if (r0 != 0) goto L2d
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.common.util.concurrent.SequentialExecutor.access$200(r0)     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r3 = com.google.common.util.concurrent.SequentialExecutor.WorkerRunningState.RUNNING     // Catch: java.lang.Throwable -> L91
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L91
                if (r1 == 0) goto L1f
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
            L1f:
                return
            L20:
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor.access$308(r0)     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor r0 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r3 = com.google.common.util.concurrent.SequentialExecutor.WorkerRunningState.RUNNING     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor.access$202(r0, r3)     // Catch: java.lang.Throwable -> L91
                r0 = 1
            L2d:
                com.google.common.util.concurrent.SequentialExecutor r3 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L91
                java.util.Deque r3 = com.google.common.util.concurrent.SequentialExecutor.access$100(r3)     // Catch: java.lang.Throwable -> L91
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L91
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L91
                r9.task = r3     // Catch: java.lang.Throwable -> L91
                if (r3 != 0) goto L4f
                com.google.common.util.concurrent.SequentialExecutor r9 = com.google.common.util.concurrent.SequentialExecutor.this     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor$WorkerRunningState r0 = com.google.common.util.concurrent.SequentialExecutor.WorkerRunningState.IDLE     // Catch: java.lang.Throwable -> L91
                com.google.common.util.concurrent.SequentialExecutor.access$202(r9, r0)     // Catch: java.lang.Throwable -> L91
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L91
                if (r1 == 0) goto L4e
                java.lang.Thread r9 = java.lang.Thread.currentThread()
                r9.interrupt()
            L4e:
                return
            L4f:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L91
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L94
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r9.task     // Catch: java.lang.Throwable -> L5e java.lang.RuntimeException -> L60
                r3.run()     // Catch: java.lang.Throwable -> L5e java.lang.RuntimeException -> L60
            L5b:
                r9.task = r2     // Catch: java.lang.Throwable -> L94
                goto L2
            L5e:
                r0 = move-exception
                goto L8e
            L60:
                r3 = move-exception
                java.util.logging.Logger r4 = com.google.common.util.concurrent.SequentialExecutor.access$400()     // Catch: java.lang.Throwable -> L5e
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5e
                java.lang.Runnable r6 = r9.task     // Catch: java.lang.Throwable -> L5e
                java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L5e
                java.lang.String r7 = java.lang.String.valueOf(r6)     // Catch: java.lang.Throwable -> L5e
                int r7 = r7.length()     // Catch: java.lang.Throwable -> L5e
                int r7 = r7 + 35
                java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5e
                r8.<init>(r7)     // Catch: java.lang.Throwable -> L5e
                java.lang.String r7 = "Exception while executing runnable "
                java.lang.StringBuilder r7 = r8.append(r7)     // Catch: java.lang.Throwable -> L5e
                java.lang.StringBuilder r6 = r7.append(r6)     // Catch: java.lang.Throwable -> L5e
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5e
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5e
                goto L5b
            L8e:
                r9.task = r2     // Catch: java.lang.Throwable -> L94
                throw r0     // Catch: java.lang.Throwable -> L94
            L91:
                r9 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L91
                throw r9     // Catch: java.lang.Throwable -> L94
            L94:
                r9 = move-exception
                if (r1 == 0) goto L9e
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L9e:
                throw r9
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.SequentialExecutor.QueueWorker.workOnQueue():void");
        }

        public String toString() {
            Runnable runnable = this.task;
            if (runnable == null) {
                String valueOf = String.valueOf(SequentialExecutor.this.workerRunningState);
                return new StringBuilder(String.valueOf(valueOf).length() + 32).append("SequentialExecutorWorker{state=").append(valueOf).append("}").toString();
            }
            String valueOf2 = String.valueOf(runnable);
            return new StringBuilder(String.valueOf(valueOf2).length() + 34).append("SequentialExecutorWorker{running=").append(valueOf2).append("}").toString();
        }
    }

    public String toString() {
        int identityHashCode = System.identityHashCode(this);
        String valueOf = String.valueOf(this.executor);
        return new StringBuilder(String.valueOf(valueOf).length() + 32).append("SequentialExecutor@").append(identityHashCode).append("{").append(valueOf).append("}").toString();
    }
}
