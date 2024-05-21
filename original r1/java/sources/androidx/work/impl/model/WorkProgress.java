package androidx.work.impl.model;

import androidx.core.app.NotificationCompat;
import androidx.work.Data;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkProgress.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/work/impl/model/WorkProgress;", "", "workSpecId", "", NotificationCompat.CATEGORY_PROGRESS, "Landroidx/work/Data;", "(Ljava/lang/String;Landroidx/work/Data;)V", "getProgress", "()Landroidx/work/Data;", "getWorkSpecId", "()Ljava/lang/String;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkProgress {
    private final Data progress;
    private final String workSpecId;

    public final Data getProgress() {
        return this.progress;
    }

    public final String getWorkSpecId() {
        return this.workSpecId;
    }

    public WorkProgress(String workSpecId, Data progress) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        Intrinsics.checkNotNullParameter(progress, "progress");
        this.workSpecId = workSpecId;
        this.progress = progress;
    }
}
