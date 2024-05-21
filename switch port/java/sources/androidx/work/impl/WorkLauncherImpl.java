package androidx.work.impl;

import androidx.work.WorkerParameters;
import androidx.work.impl.utils.StartWorkRunnable;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import io.sentry.clientreport.DiscardedEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: WorkLauncher.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0014"}, d2 = {"Landroidx/work/impl/WorkLauncherImpl;", "Landroidx/work/impl/WorkLauncher;", "processor", "Landroidx/work/impl/Processor;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "(Landroidx/work/impl/Processor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V", "getProcessor", "()Landroidx/work/impl/Processor;", "getWorkTaskExecutor", "()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "startWork", "", "workSpecId", "Landroidx/work/impl/StartStopToken;", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "stopWork", DiscardedEvent.JsonKeys.REASON, "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class WorkLauncherImpl implements WorkLauncher {
    private final Processor processor;
    private final TaskExecutor workTaskExecutor;

    public final Processor getProcessor() {
        return this.processor;
    }

    public final TaskExecutor getWorkTaskExecutor() {
        return this.workTaskExecutor;
    }

    public WorkLauncherImpl(Processor processor, TaskExecutor workTaskExecutor) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        this.processor = processor;
        this.workTaskExecutor = workTaskExecutor;
    }

    @Override // androidx.work.impl.WorkLauncher
    public void startWork(StartStopToken workSpecId, WorkerParameters.RuntimeExtras runtimeExtras) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new StartWorkRunnable(this.processor, workSpecId, runtimeExtras));
    }

    @Override // androidx.work.impl.WorkLauncher
    public void stopWork(StartStopToken workSpecId, int reason) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new StopWorkRunnable(this.processor, workSpecId, false, reason));
    }
}
