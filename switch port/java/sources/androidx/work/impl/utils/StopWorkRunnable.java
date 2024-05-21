package androidx.work.impl.utils;

import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.StartStopToken;
import io.sentry.clientreport.DiscardedEvent;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: StopWorkRunnable.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bB%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/work/impl/utils/StopWorkRunnable;", "Ljava/lang/Runnable;", "processor", "Landroidx/work/impl/Processor;", "token", "Landroidx/work/impl/StartStopToken;", "stopInForeground", "", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;Z)V", DiscardedEvent.JsonKeys.REASON, "", "(Landroidx/work/impl/Processor;Landroidx/work/impl/StartStopToken;ZI)V", "run", "", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class StopWorkRunnable implements Runnable {
    private final Processor processor;
    private final int reason;
    private final boolean stopInForeground;
    private final StartStopToken token;

    public StopWorkRunnable(Processor processor, StartStopToken token, boolean z, int i) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(token, "token");
        this.processor = processor;
        this.token = token;
        this.stopInForeground = z;
        this.reason = i;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public StopWorkRunnable(Processor processor, StartStopToken token, boolean z) {
        this(processor, token, z, WorkInfo.STOP_REASON_UNKNOWN);
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(token, "token");
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean stopWork;
        if (this.stopInForeground) {
            stopWork = this.processor.stopForegroundWork(this.token, this.reason);
        } else {
            stopWork = this.processor.stopWork(this.token, this.reason);
        }
        Logger.get().debug(Logger.tagWithPrefix("StopWorkRunnable"), "StopWorkRunnable for " + this.token.getId().getWorkSpecId() + "; Processor.stopWork = " + stopWork);
    }
}
