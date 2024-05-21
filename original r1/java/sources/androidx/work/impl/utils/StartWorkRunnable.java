package androidx.work.impl.utils;

import androidx.work.WorkerParameters;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StartWorkRunnable.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Landroidx/work/impl/utils/StartWorkRunnable;", "Ljava/lang/Runnable;", "processor", "Landroidx/work/impl/Processor;", "startStopToken", "Landroidx/work/impl/StartStopToken;", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Landroidx/work/WorkerParameters$RuntimeExtras;)V", "run", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class StartWorkRunnable implements Runnable {
    private final Processor processor;
    private final WorkerParameters.RuntimeExtras runtimeExtras;
    private final StartStopToken startStopToken;

    public StartWorkRunnable(Processor processor, StartStopToken startStopToken, WorkerParameters.RuntimeExtras runtimeExtras) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(startStopToken, "startStopToken");
        this.processor = processor;
        this.startStopToken = startStopToken;
        this.runtimeExtras = runtimeExtras;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.processor.startWork(this.startStopToken, this.runtimeExtras);
    }
}
