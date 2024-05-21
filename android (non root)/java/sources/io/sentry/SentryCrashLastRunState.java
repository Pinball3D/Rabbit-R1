package io.sentry;

import io.sentry.cache.EnvelopeCache;
import java.io.File;

/* loaded from: classes3.dex */
public final class SentryCrashLastRunState {
    private static final SentryCrashLastRunState INSTANCE = new SentryCrashLastRunState();
    private Boolean crashedLastRun;
    private final Object crashedLastRunLock = new Object();
    private boolean readCrashedLastRun;

    public static SentryCrashLastRunState getInstance() {
        return INSTANCE;
    }

    private SentryCrashLastRunState() {
    }

    public Boolean isCrashedLastRun(String str, boolean z) {
        synchronized (this.crashedLastRunLock) {
            if (this.readCrashedLastRun) {
                return this.crashedLastRun;
            }
            if (str == null) {
                return null;
            }
            boolean z2 = true;
            this.readCrashedLastRun = true;
            File file = new File(str, EnvelopeCache.CRASH_MARKER_FILE);
            File file2 = new File(str, EnvelopeCache.NATIVE_CRASH_MARKER_FILE);
            if (file.exists()) {
                file.delete();
            } else {
                if (file2.exists()) {
                    if (z) {
                        file2.delete();
                    }
                    Boolean valueOf = Boolean.valueOf(z2);
                    this.crashedLastRun = valueOf;
                    return valueOf;
                }
                z2 = false;
                Boolean valueOf2 = Boolean.valueOf(z2);
                this.crashedLastRun = valueOf2;
                return valueOf2;
            }
            Boolean valueOf22 = Boolean.valueOf(z2);
            this.crashedLastRun = valueOf22;
            return valueOf22;
        }
    }

    public void setCrashedLastRun(boolean z) {
        synchronized (this.crashedLastRunLock) {
            if (!this.readCrashedLastRun) {
                this.crashedLastRun = Boolean.valueOf(z);
                this.readCrashedLastRun = true;
            }
        }
    }

    public void reset() {
        synchronized (this.crashedLastRunLock) {
            this.readCrashedLastRun = false;
            this.crashedLastRun = null;
        }
    }
}
