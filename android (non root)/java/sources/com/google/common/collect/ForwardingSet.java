package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ForwardingSet<E> extends ForwardingCollection<E> implements Set<E> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public abstract Set<E> delegate();

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@CheckForNull Object obj) {
        return obj == this || delegate().equals(obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return delegate().hashCode();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.common.collect.ForwardingCollection
    public boolean standardRemoveAll(Collection<?> collection) {
        return Sets.removeAllImpl(this, (Collection<?>) Preconditions.checkNotNull(collection));
    }

    protected boolean standardEquals(@CheckForNull Object obj) {
        return Sets.equalsImpl(this, obj);
    }

    protected int standardHashCode() {
        return Sets.hashCodeImpl(this);
    }
}
