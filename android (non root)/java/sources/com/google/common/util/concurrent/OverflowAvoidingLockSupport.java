package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class OverflowAvoidingLockSupport {
    static final long MAX_NANOSECONDS_THRESHOLD = 2147483647999999999L;

    private OverflowAvoidingLockSupport() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void parkNanos(@CheckForNull Object obj, long j) {
        LockSupport.parkNanos(obj, Math.min(j, MAX_NANOSECONDS_THRESHOLD));
    }
}
