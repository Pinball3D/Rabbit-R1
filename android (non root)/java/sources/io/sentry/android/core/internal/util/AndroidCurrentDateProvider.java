package io.sentry.android.core.internal.util;

import android.os.SystemClock;
import io.sentry.transport.ICurrentDateProvider;

/* loaded from: classes3.dex */
public final class AndroidCurrentDateProvider implements ICurrentDateProvider {
    private static final ICurrentDateProvider instance = new AndroidCurrentDateProvider();

    public static ICurrentDateProvider getInstance() {
        return instance;
    }

    private AndroidCurrentDateProvider() {
    }

    @Override // io.sentry.transport.ICurrentDateProvider
    public long getCurrentTimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
