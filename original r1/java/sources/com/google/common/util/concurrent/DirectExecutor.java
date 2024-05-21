package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.lang.Enum
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
