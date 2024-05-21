package androidx.work.impl.utils;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public class SynchronousExecutor implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable command) {
        command.run();
    }
}
