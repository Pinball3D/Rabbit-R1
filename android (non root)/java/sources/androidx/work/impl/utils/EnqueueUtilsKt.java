package androidx.work.impl.utils;

import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkRequest;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.impl.workers.ConstraintTrackingWorkerKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EnqueueUtils.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u001a \u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u001a\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u001a\u001e\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002\u001a\u001e\u0010\u0012\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000¨\u0006\u0013"}, d2 = {"checkContentUriTriggerWorkerLimits", "", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "continuation", "Landroidx/work/impl/WorkContinuationImpl;", "tryDelegateConstrainedWorkSpec", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "usesScheduler", "", "schedulers", "", "Landroidx/work/impl/Scheduler;", "className", "", "wrapInConstraintTrackingWorkerIfNeeded", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class EnqueueUtilsKt {
    public static final WorkSpec wrapInConstraintTrackingWorkerIfNeeded(List<? extends Scheduler> schedulers, WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(schedulers, "schedulers");
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        return workSpec;
    }

    public static final void checkContentUriTriggerWorkerLimits(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl continuation) {
        int i;
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        List mutableListOf = CollectionsKt.mutableListOf(continuation);
        int i2 = 0;
        while (!mutableListOf.isEmpty()) {
            WorkContinuationImpl workContinuationImpl = (WorkContinuationImpl) CollectionsKt.removeLast(mutableListOf);
            List<? extends WorkRequest> work = workContinuationImpl.getWork();
            Intrinsics.checkNotNullExpressionValue(work, "current.work");
            List<? extends WorkRequest> list = work;
            if ((list instanceof Collection) && list.isEmpty()) {
                i = 0;
            } else {
                Iterator<T> it = list.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((WorkRequest) it.next()).getWorkSpec().constraints.hasContentUriTriggers() && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            i2 += i;
            List<WorkContinuationImpl> parents = workContinuationImpl.getParents();
            if (parents != null) {
                mutableListOf.addAll(parents);
            }
        }
        if (i2 == 0) {
            return;
        }
        int countNonFinishedContentUriTriggerWorkers = workDatabase.workSpecDao().countNonFinishedContentUriTriggerWorkers();
        int contentUriTriggerWorkersLimit = configuration.getContentUriTriggerWorkersLimit();
        if (countNonFinishedContentUriTriggerWorkers + i2 > contentUriTriggerWorkersLimit) {
            throw new IllegalArgumentException("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: " + contentUriTriggerWorkersLimit + ";\nalready enqueued count: " + countNonFinishedContentUriTriggerWorkers + ";\ncurrent enqueue operation count: " + i2 + ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.");
        }
    }

    public static final WorkSpec tryDelegateConstrainedWorkSpec(WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        Constraints constraints = workSpec.constraints;
        String str = workSpec.workerClassName;
        if (Intrinsics.areEqual(str, ConstraintTrackingWorker.class.getName())) {
            return workSpec;
        }
        if (!constraints.getRequiresBatteryNotLow() && !constraints.getRequiresStorageNotLow()) {
            return workSpec;
        }
        Data build = new Data.Builder().putAll(workSpec.input).putString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME, str).build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder().putAll(workSpe…ame)\n            .build()");
        String name = ConstraintTrackingWorker.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "name");
        return WorkSpec.copy$default(workSpec, null, null, name, null, build, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, 8388587, null);
    }

    private static final boolean usesScheduler(List<? extends Scheduler> list, String str) {
        try {
            Class<?> cls = Class.forName(str);
            List<? extends Scheduler> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                return false;
            }
            Iterator<T> it = list2.iterator();
            while (it.hasNext()) {
                if (cls.isAssignableFrom(((Scheduler) it.next()).getClass())) {
                    return true;
                }
            }
            return false;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }
}
