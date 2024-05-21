package com.google.common.util.concurrent;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class UncheckedExecutionException extends RuntimeException {
    private static final long serialVersionUID = 0;

    protected UncheckedExecutionException() {
    }

    protected UncheckedExecutionException(@CheckForNull String str) {
        super(str);
    }

    public UncheckedExecutionException(@CheckForNull String str, @CheckForNull Throwable th) {
        super(str, th);
    }

    public UncheckedExecutionException(@CheckForNull Throwable th) {
        super(th);
    }
}
