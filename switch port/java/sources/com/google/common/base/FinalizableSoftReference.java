package com.google.common.base;

import java.lang.ref.SoftReference;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class FinalizableSoftReference<T> extends SoftReference<T> implements FinalizableReference {
    protected FinalizableSoftReference(@CheckForNull T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.queue);
        finalizableReferenceQueue.cleanUp();
    }
}
