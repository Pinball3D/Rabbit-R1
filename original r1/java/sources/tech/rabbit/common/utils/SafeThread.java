package tech.rabbit.common.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: KotlinUtil.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\bH&J\b\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u000bH&J\b\u0010\r\u001a\u00020\u000bH\u0016J\u0006\u0010\u000e\u001a\u00020\u000bR\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Ltech/rabbit/common/utils/SafeThread;", "Ljava/lang/Thread;", "name", "", "loopInterval", "", "(Ljava/lang/String;J)V", "keepRunning", "", "loopTask", "postTask", "", "preTask", "run", "safeStop", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class SafeThread extends Thread {
    private boolean keepRunning;
    private final long loopInterval;

    public abstract boolean loopTask();

    public abstract void postTask();

    public abstract void preTask();

    public final void safeStop() {
        this.keepRunning = false;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeThread(String name, long j) {
        super(name);
        Intrinsics.checkNotNullParameter(name, "name");
        this.loopInterval = j;
        this.keepRunning = true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        preTask();
        while (this.keepRunning && loopTask()) {
            Thread.sleep(this.loopInterval);
        }
        postTask();
    }
}
