package com.google.common.base;

import java.lang.ref.PhantomReference;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class FinalizablePhantomReference<T> extends PhantomReference<T> implements FinalizableReference {
    protected FinalizablePhantomReference(@CheckForNull T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.queue);
        finalizableReferenceQueue.cleanUp();
    }
}
