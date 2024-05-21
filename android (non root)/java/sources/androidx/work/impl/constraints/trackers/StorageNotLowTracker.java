package androidx.work.impl.constraints.trackers;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.work.Logger;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StorageNotLowTracker.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\r\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0002\u0010\u0011R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Landroidx/work/impl/constraints/trackers/StorageNotLowTracker;", "Landroidx/work/impl/constraints/trackers/BroadcastReceiverConstraintTracker;", "", "context", "Landroid/content/Context;", "taskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "(Landroid/content/Context;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "intentFilter", "Landroid/content/IntentFilter;", "getIntentFilter", "()Landroid/content/IntentFilter;", "onBroadcastReceive", "", "intent", "Landroid/content/Intent;", "readSystemState", "()Ljava/lang/Boolean;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class StorageNotLowTracker extends BroadcastReceiverConstraintTracker<Boolean> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StorageNotLowTracker(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        if (r4.equals("android.intent.action.DEVICE_STORAGE_OK") == false) goto L18;
     */
    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Boolean readSystemState() {
        /*
            r4 = this;
            android.content.Context r0 = r4.getAppContext()
            r1 = 0
            android.content.IntentFilter r4 = r4.getIntentFilter()
            android.content.Intent r4 = r0.registerReceiver(r1, r4)
            r0 = 1
            if (r4 == 0) goto L3d
            java.lang.String r1 = r4.getAction()
            if (r1 != 0) goto L17
            goto L3d
        L17:
            java.lang.String r4 = r4.getAction()
            r1 = 0
            if (r4 == 0) goto L3c
            int r2 = r4.hashCode()
            r3 = -1181163412(0xffffffffb998e06c, float:-2.9158907E-4)
            if (r2 == r3) goto L36
            r3 = -730838620(0xffffffffd47049a4, float:-4.1281105E12)
            if (r2 == r3) goto L2d
            goto L3c
        L2d:
            java.lang.String r2 = "android.intent.action.DEVICE_STORAGE_OK"
            boolean r4 = r4.equals(r2)
            if (r4 != 0) goto L3d
            goto L3c
        L36:
            java.lang.String r0 = "android.intent.action.DEVICE_STORAGE_LOW"
            boolean r4 = r4.equals(r0)
        L3c:
            r0 = r1
        L3d:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.constraints.trackers.StorageNotLowTracker.readSystemState():java.lang.Boolean");
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public IntentFilter getIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public void onBroadcastReceive(Intent intent) {
        String str;
        Intrinsics.checkNotNullParameter(intent, "intent");
        if (intent.getAction() == null) {
            return;
        }
        Logger logger = Logger.get();
        str = StorageNotLowTrackerKt.TAG;
        logger.debug(str, "Received " + intent.getAction());
        String action = intent.getAction();
        if (action != null) {
            int hashCode = action.hashCode();
            if (hashCode == -1181163412) {
                if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                    setState(false);
                }
            } else if (hashCode == -730838620 && action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                setState(true);
            }
        }
    }
}
