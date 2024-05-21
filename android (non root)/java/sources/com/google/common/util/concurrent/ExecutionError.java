package com.google.common.util.concurrent;

import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    protected ExecutionError() {
    }

    protected ExecutionError(@CheckForNull String str) {
        super(str);
    }

    public ExecutionError(@CheckForNull String str, @CheckForNull Error error) {
        super(str, error);
    }

    public ExecutionError(@CheckForNull Error error) {
        super(error);
    }
}
