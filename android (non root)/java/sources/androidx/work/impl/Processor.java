package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
public class Processor implements ForegroundProcessor {
    private static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    private static final String TAG = Logger.tagWithPrefix("Processor");
    private Context mAppContext;
    private Configuration mConfiguration;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    private Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    private Set<String> mCancelledIds = new HashSet();
    private final List<ExecutionListener> mOuterListeners = new ArrayList();
    private PowerManager.WakeLock mForegroundLock = null;
    private final Object mLock = new Object();
    private Map<String, Set<StartStopToken>> mWorkRuns = new HashMap();

    public Processor(Context appContext, Configuration configuration, TaskExecutor workTaskExecutor, WorkDatabase workDatabase) {
        this.mAppContext = appContext;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = workTaskExecutor;
        this.mWorkDatabase = workDatabase;
    }

    public boolean startWork(StartStopToken id) {
        return startWork(id, null);
    }

    public boolean startWork(StartStopToken startStopToken, WorkerParameters.RuntimeExtras runtimeExtras) {
        WorkGenerationalId id = startStopToken.getId();
        final String workSpecId = id.getWorkSpecId();
        final ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) this.mWorkDatabase.runInTransaction(new Callable() { // from class: androidx.work.impl.Processor$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return Processor.this.m5334lambda$startWork$0$androidxworkimplProcessor(arrayList, workSpecId);
            }
        });
        if (workSpec == null) {
            Logger.get().warning(TAG, "Didn't find WorkSpec for id " + id);
            runOnExecuted(id, false);
            return false;
        }
        synchronized (this.mLock) {
            if (isEnqueued(workSpecId)) {
                Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
                if (set.iterator().next().getId().getGeneration() == id.getGeneration()) {
                    set.add(startStopToken);
                    Logger.get().debug(TAG, "Work " + id + " is already enqueued for processing");
                } else {
                    runOnExecuted(id, false);
                }
                return false;
            }
            if (workSpec.getGeneration() != id.getGeneration()) {
                runOnExecuted(id, false);
                return false;
            }
            final WorkerWrapper build = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, workSpec, arrayList).withRuntimeExtras(runtimeExtras).build();
            final ListenableFuture<Boolean> future = build.getFuture();
            future.addListener(new Runnable() { // from class: androidx.work.impl.Processor$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    Processor.this.m5335lambda$startWork$1$androidxworkimplProcessor(future, build);
                }
            }, this.mWorkTaskExecutor.getMainThreadExecutor());
            this.mEnqueuedWorkMap.put(workSpecId, build);
            HashSet hashSet = new HashSet();
            hashSet.add(startStopToken);
            this.mWorkRuns.put(workSpecId, hashSet);
            this.mWorkTaskExecutor.getSerialTaskExecutor().execute(build);
            Logger.get().debug(TAG, getClass().getSimpleName() + ": processing " + id);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$startWork$0$androidx-work-impl-Processor, reason: not valid java name */
    public /* synthetic */ WorkSpec m5334lambda$startWork$0$androidxworkimplProcessor(ArrayList arrayList, String str) throws Exception {
        arrayList.addAll(this.mWorkDatabase.workTagDao().getTagsForWorkSpecId(str));
        return this.mWorkDatabase.workSpecDao().getWorkSpec(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: lambda$startWork$1$androidx-work-impl-Processor, reason: not valid java name */
    public /* synthetic */ void m5335lambda$startWork$1$androidxworkimplProcessor(ListenableFuture listenableFuture, WorkerWrapper workerWrapper) {
        boolean z;
        try {
            z = ((Boolean) listenableFuture.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            z = true;
        }
        onExecuted(workerWrapper, z);
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(String workSpecId, ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            Logger.get().info(TAG, "Moving WorkSpec (" + workSpecId + ") to the foreground");
            WorkerWrapper remove = this.mEnqueuedWorkMap.remove(workSpecId);
            if (remove != null) {
                if (this.mForegroundLock == null) {
                    PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                    this.mForegroundLock = newWakeLock;
                    newWakeLock.acquire();
                }
                this.mForegroundWorkMap.put(workSpecId, remove);
                ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, remove.getWorkGenerationalId(), foregroundInfo));
            }
        }
    }

    public boolean stopForegroundWork(StartStopToken token, int reason) {
        WorkerWrapper cleanUpWorkerUnsafe;
        String workSpecId = token.getId().getWorkSpecId();
        synchronized (this.mLock) {
            cleanUpWorkerUnsafe = cleanUpWorkerUnsafe(workSpecId);
        }
        return interrupt(workSpecId, cleanUpWorkerUnsafe, reason);
    }

    public boolean stopWork(StartStopToken runId, int reason) {
        String workSpecId = runId.getId().getWorkSpecId();
        synchronized (this.mLock) {
            if (this.mForegroundWorkMap.get(workSpecId) != null) {
                Logger.get().debug(TAG, "Ignored stopWork. WorkerWrapper " + workSpecId + " is in foreground");
                return false;
            }
            Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
            if (set != null && set.contains(runId)) {
                return interrupt(workSpecId, cleanUpWorkerUnsafe(workSpecId), reason);
            }
            return false;
        }
    }

    public boolean stopAndCancelWork(String id, int reason) {
        WorkerWrapper cleanUpWorkerUnsafe;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, "Processor cancelling " + id);
            this.mCancelledIds.add(id);
            cleanUpWorkerUnsafe = cleanUpWorkerUnsafe(id);
        }
        return interrupt(id, cleanUpWorkerUnsafe, reason);
    }

    public boolean isCancelled(String id) {
        boolean contains;
        synchronized (this.mLock) {
            contains = this.mCancelledIds.contains(id);
        }
        return contains;
    }

    public boolean hasWork() {
        boolean z;
        synchronized (this.mLock) {
            z = (this.mEnqueuedWorkMap.isEmpty() && this.mForegroundWorkMap.isEmpty()) ? false : true;
        }
        return z;
    }

    public boolean isEnqueued(String workSpecId) {
        boolean z;
        synchronized (this.mLock) {
            z = getWorkerWrapperUnsafe(workSpecId) != null;
        }
        return z;
    }

    public void addExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    public void removeExecutionListener(ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    private void onExecuted(WorkerWrapper wrapper, boolean needsReschedule) {
        synchronized (this.mLock) {
            WorkGenerationalId workGenerationalId = wrapper.getWorkGenerationalId();
            String workSpecId = workGenerationalId.getWorkSpecId();
            if (getWorkerWrapperUnsafe(workSpecId) == wrapper) {
                cleanUpWorkerUnsafe(workSpecId);
            }
            Logger.get().debug(TAG, getClass().getSimpleName() + " " + workSpecId + " executed; reschedule = " + needsReschedule);
            Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
            while (it.hasNext()) {
                it.next().onExecuted(workGenerationalId, needsReschedule);
            }
        }
    }

    private WorkerWrapper getWorkerWrapperUnsafe(String workSpecId) {
        WorkerWrapper workerWrapper = this.mForegroundWorkMap.get(workSpecId);
        return workerWrapper == null ? this.mEnqueuedWorkMap.get(workSpecId) : workerWrapper;
    }

    public WorkSpec getRunningWorkSpec(String workSpecId) {
        synchronized (this.mLock) {
            WorkerWrapper workerWrapperUnsafe = getWorkerWrapperUnsafe(workSpecId);
            if (workerWrapperUnsafe == null) {
                return null;
            }
            return workerWrapperUnsafe.getWorkSpec();
        }
    }

    private void runOnExecuted(final WorkGenerationalId id, final boolean needsReschedule) {
        this.mWorkTaskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: androidx.work.impl.Processor$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                Processor.this.m5333lambda$runOnExecuted$2$androidxworkimplProcessor(id, needsReschedule);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$runOnExecuted$2$androidx-work-impl-Processor, reason: not valid java name */
    public /* synthetic */ void m5333lambda$runOnExecuted$2$androidxworkimplProcessor(WorkGenerationalId workGenerationalId, boolean z) {
        synchronized (this.mLock) {
            Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
            while (it.hasNext()) {
                it.next().onExecuted(workGenerationalId, z);
            }
        }
    }

    private void stopForegroundService() {
        synchronized (this.mLock) {
            if (!(!this.mForegroundWorkMap.isEmpty())) {
                try {
                    this.mAppContext.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.mAppContext));
                } catch (Throwable th) {
                    Logger.get().error(TAG, "Unable to stop foreground service", th);
                }
                PowerManager.WakeLock wakeLock = this.mForegroundLock;
                if (wakeLock != null) {
                    wakeLock.release();
                    this.mForegroundLock = null;
                }
            }
        }
    }

    private WorkerWrapper cleanUpWorkerUnsafe(String id) {
        WorkerWrapper remove = this.mForegroundWorkMap.remove(id);
        boolean z = remove != null;
        if (!z) {
            remove = this.mEnqueuedWorkMap.remove(id);
        }
        this.mWorkRuns.remove(id);
        if (z) {
            stopForegroundService();
        }
        return remove;
    }

    private static boolean interrupt(String id, WorkerWrapper wrapper, int stopReason) {
        if (wrapper != null) {
            wrapper.interrupt(stopReason);
            Logger.get().debug(TAG, "WorkerWrapper interrupted for " + id);
            return true;
        }
        Logger.get().debug(TAG, "WorkerWrapper could not be found for " + id);
        return false;
    }
}
