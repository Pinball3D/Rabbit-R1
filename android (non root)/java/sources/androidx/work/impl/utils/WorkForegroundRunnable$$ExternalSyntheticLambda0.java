package androidx.work.impl.utils;

import androidx.work.impl.utils.futures.SettableFuture;

/* compiled from: D8$$SyntheticClass */
/* loaded from: classes2.dex */
public final /* synthetic */ class WorkForegroundRunnable$$ExternalSyntheticLambda0 implements Runnable {
    public final /* synthetic */ WorkForegroundRunnable f$0;
    public final /* synthetic */ SettableFuture f$1;

    public /* synthetic */ WorkForegroundRunnable$$ExternalSyntheticLambda0(WorkForegroundRunnable workForegroundRunnable, SettableFuture settableFuture) {
        this.f$0 = workForegroundRunnable;
        this.f$1 = settableFuture;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f$0.m5340lambda$run$0$androidxworkimplutilsWorkForegroundRunnable(this.f$1);
    }
}
