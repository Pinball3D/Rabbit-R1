package androidx.work.impl.utils;

import androidx.work.impl.WorkDatabase;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IdGenerator.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/work/impl/utils/IdGenerator;", "", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "(Landroidx/work/impl/WorkDatabase;)V", "nextAlarmManagerId", "", "nextJobSchedulerIdWithRange", "minInclusive", "maxInclusive", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class IdGenerator {
    private final WorkDatabase workDatabase;

    public IdGenerator(WorkDatabase workDatabase) {
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        this.workDatabase = workDatabase;
    }

    public final int nextJobSchedulerIdWithRange(final int minInclusive, final int maxInclusive) {
        Object runInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer nextJobSchedulerIdWithRange$lambda$0;
                nextJobSchedulerIdWithRange$lambda$0 = IdGenerator.nextJobSchedulerIdWithRange$lambda$0(IdGenerator.this, minInclusive, maxInclusive);
                return nextJobSchedulerIdWithRange$lambda$0;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…            id\n        })");
        return ((Number) runInTransaction).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer nextJobSchedulerIdWithRange$lambda$0(IdGenerator this$0, int i, int i2) {
        int nextId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        nextId = IdGeneratorKt.nextId(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY);
        if (i > nextId || nextId > i2) {
            IdGeneratorKt.updatePreference(this$0.workDatabase, IdGeneratorKt.NEXT_JOB_SCHEDULER_ID_KEY, i + 1);
        } else {
            i = nextId;
        }
        return Integer.valueOf(i);
    }

    public final int nextAlarmManagerId() {
        Object runInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: androidx.work.impl.utils.IdGenerator$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer nextAlarmManagerId$lambda$1;
                nextAlarmManagerId$lambda$1 = IdGenerator.nextAlarmManagerId$lambda$1(IdGenerator.this);
                return nextAlarmManagerId$lambda$1;
            }
        });
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…ANAGER_ID_KEY)\n        })");
        return ((Number) runInTransaction).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer nextAlarmManagerId$lambda$1(IdGenerator this$0) {
        int nextId;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        nextId = IdGeneratorKt.nextId(this$0.workDatabase, IdGeneratorKt.NEXT_ALARM_MANAGER_ID_KEY);
        return Integer.valueOf(nextId);
    }
}
