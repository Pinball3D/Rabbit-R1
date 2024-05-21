package io.sentry;

import java.util.concurrent.Callable;
import java.util.function.Supplier;

/* loaded from: classes3.dex */
public final class SentryWrapper {
    public static <U> Callable<U> wrapCallable(final Callable<U> callable) {
        final IHub m5623clone = Sentry.getCurrentHub().m5623clone();
        return new Callable() { // from class: io.sentry.SentryWrapper$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return SentryWrapper.lambda$wrapCallable$0(IHub.this, callable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$wrapCallable$0(IHub iHub, Callable callable) throws Exception {
        IHub currentHub = Sentry.getCurrentHub();
        Sentry.setCurrentHub(iHub);
        try {
            return callable.call();
        } finally {
            Sentry.setCurrentHub(currentHub);
        }
    }

    public static <U> Supplier<U> wrapSupplier(final Supplier<U> supplier) {
        final IHub m5623clone = Sentry.getCurrentHub().m5623clone();
        return new Supplier() { // from class: io.sentry.SentryWrapper$$ExternalSyntheticLambda0
            @Override // java.util.function.Supplier
            public final Object get() {
                return SentryWrapper.lambda$wrapSupplier$1(IHub.this, supplier);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object lambda$wrapSupplier$1(IHub iHub, Supplier supplier) {
        IHub currentHub = Sentry.getCurrentHub();
        Sentry.setCurrentHub(iHub);
        try {
            return supplier.get();
        } finally {
            Sentry.setCurrentHub(currentHub);
        }
    }
}
