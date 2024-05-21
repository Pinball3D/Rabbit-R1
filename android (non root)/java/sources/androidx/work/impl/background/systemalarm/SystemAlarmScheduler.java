package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.work.Logger;
import androidx.work.impl.Scheduler;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecKt;

/* loaded from: classes2.dex */
public class SystemAlarmScheduler implements Scheduler {
    private static final String TAG = Logger.tagWithPrefix("SystemAlarmScheduler");
    private final Context mContext;

    @Override // androidx.work.impl.Scheduler
    public boolean hasLimitedSchedulingSlots() {
        return true;
    }

    public SystemAlarmScheduler(Context context) {
        this.mContext = context.getApplicationContext();
    }

    @Override // androidx.work.impl.Scheduler
    public void schedule(WorkSpec... workSpecs) {
        for (WorkSpec workSpec : workSpecs) {
            scheduleWorkSpec(workSpec);
        }
    }

    @Override // androidx.work.impl.Scheduler
    public void cancel(String workSpecId) {
        this.mContext.startService(CommandHandler.createStopWorkIntent(this.mContext, workSpecId));
    }

    private void scheduleWorkSpec(WorkSpec workSpec) {
        Logger.get().debug(TAG, "Scheduling work with workSpecId " + workSpec.id);
        this.mContext.startService(CommandHandler.createScheduleWorkIntent(this.mContext, WorkSpecKt.generationalId(workSpec)));
    }
}
