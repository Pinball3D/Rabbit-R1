package com.google.common.base;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public class VerifyException extends RuntimeException {
    public VerifyException() {
    }

    public VerifyException(@CheckForNull String str) {
        super(str);
    }

    public VerifyException(@CheckForNull Throwable th) {
        super(th);
    }

    public VerifyException(@CheckForNull String str, @CheckForNull Throwable th) {
        super(str, th);
    }
}
