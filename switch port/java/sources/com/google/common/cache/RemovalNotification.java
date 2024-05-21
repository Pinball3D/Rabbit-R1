package com.google.common.cache;

import com.google.common.base.Preconditions;
import java.util.AbstractMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class RemovalNotification<K, V> extends AbstractMap.SimpleImmutableEntry<K, V> {
    private static final long serialVersionUID = 0;
    private final RemovalCause cause;

    public RemovalCause getCause() {
        return this.cause;
    }

    public static <K, V> RemovalNotification<K, V> create(@CheckForNull K k, @CheckForNull V v, RemovalCause removalCause) {
        return new RemovalNotification<>(k, v, removalCause);
    }

    private RemovalNotification(@CheckForNull K k, @CheckForNull V v, RemovalCause removalCause) {
        super(k, v);
        this.cause = (RemovalCause) Preconditions.checkNotNull(removalCause);
    }

    public boolean wasEvicted() {
        return this.cause.wasEvicted();
    }
}
