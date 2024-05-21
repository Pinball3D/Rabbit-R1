package com.google.common.util.concurrent;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class Platform {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isInstanceOfThrowableClass(@CheckForNull Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }

    private Platform() {
    }
}
