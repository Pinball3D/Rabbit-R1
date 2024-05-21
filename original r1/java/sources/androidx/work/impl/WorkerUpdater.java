package androidx.work.impl;

import androidx.work.Configuration;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Operation;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import androidx.work.impl.utils.futures.SettableFuture;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkerUpdater.kt */
@Metadata(d1 = {"\u0000V\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u001a\u0014\u0010\u0016\u001a\u00020\u0017*\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u000fH\u0002\u001a\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00010\u001a*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0000¨\u0006\u001b"}, d2 = {"updateWorkImpl", "Landroidx/work/WorkManager$UpdateResult;", "processor", "Landroidx/work/impl/Processor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "schedulers", "", "Landroidx/work/impl/Scheduler;", "newWorkSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", "", "", "enqueueUniquelyNamedPeriodic", "Landroidx/work/Operation;", "Landroidx/work/impl/WorkManagerImpl;", "name", "workRequest", "Landroidx/work/WorkRequest;", "failWorkTypeChanged", "", "Landroidx/work/impl/OperationImpl;", "message", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkerUpdater {
    private static final WorkManager.UpdateResult updateWorkImpl(Processor processor, final WorkDatabase workDatabase, Configuration configuration, final List<? extends Scheduler> list, final WorkSpec workSpec, final Set<String> set) {
        final String str = workSpec.id;
        final WorkSpec workSpec2 = workDatabase.workSpecDao().getWorkSpec(str);
        if (workSpec2 == null) {
            throw new IllegalArgumentException("Worker with " + str + " doesn't exist");
        }
        if (workSpec2.state.isFinished()) {
            return WorkManager.UpdateResult.NOT_APPLIED;
        }
        if (workSpec2.isPeriodic() ^ workSpec.isPeriodic()) {
            WorkerUpdater$updateWorkImpl$type$1 workerUpdater$updateWorkImpl$type$1 = new Function1<WorkSpec, String>() { // from class: androidx.work.impl.WorkerUpdater$updateWorkImpl$type$1
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(WorkSpec spec) {
                    Intrinsics.checkNotNullParameter(spec, "spec");
                    return spec.isPeriodic() ? "Periodic" : "OneTime";
                }
            };
            throw new UnsupportedOperationException("Can't update " + workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec2) + " Worker to " + workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean isEnqueued = processor.isEnqueued(str);
        if (!isEnqueued) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                ((Scheduler) it.next()).cancel(str);
            }
        }
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.updateWorkImpl$lambda$2(WorkDatabase.this, workSpec2, workSpec, list, str, set, isEnqueued);
            }
        });
        if (!isEnqueued) {
            Schedulers.schedule(configuration, workDatabase, list);
        }
        return isEnqueued ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$2(WorkDatabase workDatabase, WorkSpec oldWorkSpec, WorkSpec newWorkSpec, List schedulers, String workSpecId, Set tags, boolean z) {
        Intrinsics.checkNotNullParameter(workDatabase, "$workDatabase");
        Intrinsics.checkNotNullParameter(oldWorkSpec, "$oldWorkSpec");
        Intrinsics.checkNotNullParameter(newWorkSpec, "$newWorkSpec");
        Intrinsics.checkNotNullParameter(schedulers, "$schedulers");
        Intrinsics.checkNotNullParameter(workSpecId, "$workSpecId");
        Intrinsics.checkNotNullParameter(tags, "$tags");
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkTagDao workTagDao = workDatabase.workTagDao();
        WorkSpec copy$default = WorkSpec.copy$default(newWorkSpec, null, oldWorkSpec.state, null, null, null, null, 0L, 0L, 0L, null, oldWorkSpec.runAttemptCount, null, 0L, oldWorkSpec.lastEnqueueTime, 0L, 0L, false, null, oldWorkSpec.getPeriodCount(), oldWorkSpec.getGeneration() + 1, oldWorkSpec.getNextScheduleTimeOverride(), oldWorkSpec.getNextScheduleTimeOverrideGeneration(), 0, 4447229, null);
        if (newWorkSpec.getNextScheduleTimeOverrideGeneration() == 1) {
            copy$default.setNextScheduleTimeOverride(newWorkSpec.getNextScheduleTimeOverride());
            copy$default.setNextScheduleTimeOverrideGeneration(copy$default.getNextScheduleTimeOverrideGeneration() + 1);
        }
        workSpecDao.updateWorkSpec(EnqueueUtilsKt.wrapInConstraintTrackingWorkerIfNeeded(schedulers, copy$default));
        workTagDao.deleteByWorkSpecId(workSpecId);
        workTagDao.insertTags(workSpecId, tags);
        if (z) {
            return;
        }
        workSpecDao.markWorkSpecScheduled(workSpecId, -1L);
        workDatabase.workProgressDao().delete(workSpecId);
    }

    public static final ListenableFuture<WorkManager.UpdateResult> updateWorkImpl(final WorkManagerImpl workManagerImpl, final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        final SettableFuture future = SettableFuture.create();
        workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor().execute(new Runnable() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.updateWorkImpl$lambda$3(SettableFuture.this, workManagerImpl, workRequest);
            }
        });
        Intrinsics.checkNotNullExpressionValue(future, "future");
        return future;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$3(SettableFuture settableFuture, WorkManagerImpl this_updateWorkImpl, WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(this_updateWorkImpl, "$this_updateWorkImpl");
        Intrinsics.checkNotNullParameter(workRequest, "$workRequest");
        if (settableFuture.isCancelled()) {
            return;
        }
        try {
            Processor processor = this_updateWorkImpl.getProcessor();
            Intrinsics.checkNotNullExpressionValue(processor, "processor");
            WorkDatabase workDatabase = this_updateWorkImpl.getWorkDatabase();
            Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
            Configuration configuration = this_updateWorkImpl.getConfiguration();
            Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
            List<Scheduler> schedulers = this_updateWorkImpl.getSchedulers();
            Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
            settableFuture.set(updateWorkImpl(processor, workDatabase, configuration, schedulers, workRequest.getWorkSpec(), workRequest.getTags()));
        } catch (Throwable th) {
            settableFuture.setException(th);
        }
    }

    public static final Operation enqueueUniquelyNamedPeriodic(final WorkManagerImpl workManagerImpl, final String name, final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        final OperationImpl operationImpl = new OperationImpl();
        final Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.work.impl.WorkerUpdater$enqueueUniquelyNamedPeriodic$enqueueNew$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                new EnqueueRunnable(new WorkContinuationImpl(workManagerImpl, name, ExistingWorkPolicy.KEEP, CollectionsKt.listOf(WorkRequest.this)), operationImpl).run();
            }
        };
        workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor().execute(new Runnable() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$4(WorkManagerImpl.this, name, operationImpl, function0, workRequest);
            }
        });
        return operationImpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enqueueUniquelyNamedPeriodic$lambda$4(WorkManagerImpl this_enqueueUniquelyNamedPeriodic, String name, OperationImpl operation, Function0 enqueueNew, WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(this_enqueueUniquelyNamedPeriodic, "$this_enqueueUniquelyNamedPeriodic");
        Intrinsics.checkNotNullParameter(name, "$name");
        Intrinsics.checkNotNullParameter(operation, "$operation");
        Intrinsics.checkNotNullParameter(enqueueNew, "$enqueueNew");
        Intrinsics.checkNotNullParameter(workRequest, "$workRequest");
        WorkSpecDao workSpecDao = this_enqueueUniquelyNamedPeriodic.getWorkDatabase().workSpecDao();
        List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workSpecDao.getWorkSpecIdAndStatesForName(name);
        if (workSpecIdAndStatesForName.size() > 1) {
            failWorkTypeChanged(operation, "Can't apply UPDATE policy to the chains of work.");
            return;
        }
        WorkSpec.IdAndState idAndState = (WorkSpec.IdAndState) CollectionsKt.firstOrNull((List) workSpecIdAndStatesForName);
        if (idAndState == null) {
            enqueueNew.invoke();
            return;
        }
        WorkSpec workSpec = workSpecDao.getWorkSpec(idAndState.id);
        if (workSpec == null) {
            operation.markState(new Operation.State.FAILURE(new IllegalStateException("WorkSpec with " + idAndState.id + ", that matches a name \"" + name + "\", wasn't found")));
            return;
        }
        if (!workSpec.isPeriodic()) {
            failWorkTypeChanged(operation, "Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
            return;
        }
        if (idAndState.state == WorkInfo.State.CANCELLED) {
            workSpecDao.delete(idAndState.id);
            enqueueNew.invoke();
            return;
        }
        WorkSpec copy$default = WorkSpec.copy$default(workRequest.getWorkSpec(), idAndState.id, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388606, null);
        try {
            Processor processor = this_enqueueUniquelyNamedPeriodic.getProcessor();
            Intrinsics.checkNotNullExpressionValue(processor, "processor");
            WorkDatabase workDatabase = this_enqueueUniquelyNamedPeriodic.getWorkDatabase();
            Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
            Configuration configuration = this_enqueueUniquelyNamedPeriodic.getConfiguration();
            Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
            List<Scheduler> schedulers = this_enqueueUniquelyNamedPeriodic.getSchedulers();
            Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
            updateWorkImpl(processor, workDatabase, configuration, schedulers, copy$default, workRequest.getTags());
            operation.markState(Operation.SUCCESS);
        } catch (Throwable th) {
            operation.markState(new Operation.State.FAILURE(th));
        }
    }

    private static final void failWorkTypeChanged(OperationImpl operationImpl, String str) {
        operationImpl.markState(new Operation.State.FAILURE(new UnsupportedOperationException(str)));
    }
}
