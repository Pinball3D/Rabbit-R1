package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Atomics {
    private Atomics() {
    }

    public static <V> AtomicReference<V> newReference() {
        return new AtomicReference<>();
    }

    public static <V> AtomicReference<V> newReference(@ParametricNullness V v) {
        return new AtomicReference<>(v);
    }

    public static <E> AtomicReferenceArray<E> newReferenceArray(int i) {
        return new AtomicReferenceArray<>(i);
    }

    public static <E> AtomicReferenceArray<E> newReferenceArray(E[] eArr) {
        return new AtomicReferenceArray<>(eArr);
    }
}
