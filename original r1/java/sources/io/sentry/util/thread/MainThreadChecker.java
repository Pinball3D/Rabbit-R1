package io.sentry.util.thread;

import io.sentry.protocol.SentryThread;

/* loaded from: classes3.dex */
public final class MainThreadChecker implements IMainThreadChecker {
    private static final long mainThreadId = Thread.currentThread().getId();
    private static final MainThreadChecker instance = new MainThreadChecker();

    public static MainThreadChecker getInstance() {
        return instance;
    }

    @Override // io.sentry.util.thread.IMainThreadChecker
    public boolean isMainThread(long j) {
        return mainThreadId == j;
    }

    private MainThreadChecker() {
    }

    @Override // io.sentry.util.thread.IMainThreadChecker
    public boolean isMainThread(Thread thread) {
        return isMainThread(thread.getId());
    }

    @Override // io.sentry.util.thread.IMainThreadChecker
    public boolean isMainThread() {
        return isMainThread(Thread.currentThread());
    }

    @Override // io.sentry.util.thread.IMainThreadChecker
    public boolean isMainThread(SentryThread sentryThread) {
        Long id = sentryThread.getId();
        return id != null && isMainThread(id.longValue());
    }
}
