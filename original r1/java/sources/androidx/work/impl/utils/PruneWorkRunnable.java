package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.WorkManagerImpl;

/* loaded from: classes2.dex */
public class PruneWorkRunnable implements Runnable {
    private final OperationImpl mOperation = new OperationImpl();
    private final WorkManagerImpl mWorkManagerImpl;

    public Operation getOperation() {
        return this.mOperation;
    }

    public PruneWorkRunnable(WorkManagerImpl workManagerImpl) {
        this.mWorkManagerImpl = workManagerImpl;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.mWorkManagerImpl.getWorkDatabase().workSpecDao().pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();
            this.mOperation.markState(Operation.SUCCESS);
        } catch (Throwable th) {
            this.mOperation.markState(new Operation.State.FAILURE(th));
        }
    }
}
