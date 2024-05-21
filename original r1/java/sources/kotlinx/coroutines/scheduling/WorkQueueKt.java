package kotlinx.coroutines.scheduling;

import kotlin.Metadata;

/* compiled from: WorkQueue.kt */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000\"\u0012\u0010\u0006\u001a\u00060\u0001j\u0002`\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u0012\u0010\b\u001a\u00060\u0001j\u0002`\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u0012\u0010\t\u001a\u00060\u0001j\u0002`\u0007X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\u000b\u001a\u00020\u0001*\u00020\f8À\u0002X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e*\f\b\u0000\u0010\u000f\"\u00020\u00012\u00020\u0001¨\u0006\u0010"}, d2 = {"BUFFER_CAPACITY", "", "BUFFER_CAPACITY_BASE", "MASK", "NOTHING_TO_STEAL", "", "STEAL_ANY", "Lkotlinx/coroutines/scheduling/StealingMode;", "STEAL_BLOCKING_ONLY", "STEAL_CPU_ONLY", "TASK_STOLEN", "maskForStealingMode", "Lkotlinx/coroutines/scheduling/Task;", "getMaskForStealingMode", "(Lkotlinx/coroutines/scheduling/Task;)I", "StealingMode", "kotlinx-coroutines-core"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WorkQueueKt {
    public static final int BUFFER_CAPACITY = 128;
    public static final int BUFFER_CAPACITY_BASE = 7;
    public static final int MASK = 127;
    public static final long NOTHING_TO_STEAL = -2;
    public static final int STEAL_ANY = 3;
    public static final int STEAL_BLOCKING_ONLY = 1;
    public static final int STEAL_CPU_ONLY = 2;
    public static final long TASK_STOLEN = -1;

    public static final int getMaskForStealingMode(Task task) {
        return task.taskContext.getTaskMode() == 1 ? 1 : 2;
    }
}
