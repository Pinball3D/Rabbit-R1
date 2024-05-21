package io.sentry.util.thread;

import io.sentry.protocol.SentryThread;

/* loaded from: classes3.dex */
public interface IMainThreadChecker {
    boolean isMainThread();

    boolean isMainThread(long j);

    boolean isMainThread(SentryThread sentryThread);

    boolean isMainThread(Thread thread);
}
