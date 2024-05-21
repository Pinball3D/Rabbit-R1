package com.google.common.util.concurrent.internal;

/* loaded from: classes3.dex */
public final class InternalFutures {
    public static Throwable tryInternalFastPathGetFailure(InternalFutureFailureAccess internalFutureFailureAccess) {
        return internalFutureFailureAccess.tryInternalFastPathGetFailure();
    }

    private InternalFutures() {
    }
}
