package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;

/* loaded from: classes2.dex */
public class WorkProgressUpdater implements ProgressUpdater {
    static final String TAG = Logger.tagWithPrefix("WorkProgressUpdater");
    final TaskExecutor mTaskExecutor;
    final WorkDatabase mWorkDatabase;

    public WorkProgressUpdater(WorkDatabase workDatabase, TaskExecutor taskExecutor) {
        this.mWorkDatabase = workDatabase;
        this.mTaskExecutor = taskExecutor;
    }

    @Override // androidx.work.ProgressUpdater
    public ListenableFuture<Void> updateProgress(final Context context, final UUID id, final Data data) {
        final SettableFuture create = SettableFuture.create();
        this.mTaskExecutor.executeOnTaskThread(new Runnable() { // from class: androidx.work.impl.utils.WorkProgressUpdater.1
            @Override // java.lang.Runnable
            public void run() {
                WorkSpec workSpec;
                String uuid = id.toString();
                Logger.get().debug(WorkProgressUpdater.TAG, "Updating progress for " + id + " (" + data + ")");
                WorkProgressUpdater.this.mWorkDatabase.beginTransaction();
                try {
                    workSpec = WorkProgressUpdater.this.mWorkDatabase.workSpecDao().getWorkSpec(uuid);
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                if (workSpec != null) {
                    if (workSpec.state == WorkInfo.State.RUNNING) {
                        WorkProgressUpdater.this.mWorkDatabase.workProgressDao().insert(new WorkProgress(uuid, data));
                    } else {
                        Logger.get().warning(WorkProgressUpdater.TAG, "Ignoring setProgressAsync(...). WorkSpec (" + uuid + ") is not in a RUNNING state.");
                    }
                    create.set(null);
                    WorkProgressUpdater.this.mWorkDatabase.setTransactionSuccessful();
                    return;
                }
                throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
            }
        });
        return create;
    }
}
