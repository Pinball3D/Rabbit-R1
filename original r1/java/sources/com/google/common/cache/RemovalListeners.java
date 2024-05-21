package com.google.common.cache;

import com.google.common.base.Preconditions;
import java.util.concurrent.Executor;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class RemovalListeners {
    private RemovalListeners() {
    }

    public static <K, V> RemovalListener<K, V> asynchronous(final RemovalListener<K, V> removalListener, final Executor executor) {
        Preconditions.checkNotNull(removalListener);
        Preconditions.checkNotNull(executor);
        return new RemovalListener() { // from class: com.google.common.cache.RemovalListeners$$ExternalSyntheticLambda1
            @Override // com.google.common.cache.RemovalListener
            public final void onRemoval(RemovalNotification removalNotification) {
                executor.execute(new Runnable() { // from class: com.google.common.cache.RemovalListeners$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        RemovalListener.this.onRemoval(removalNotification);
                    }
                });
            }
        };
    }
}
