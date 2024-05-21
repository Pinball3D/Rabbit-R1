package com.google.common.collect;

import java.io.Serializable;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class NullsLastOrdering<T> extends Ordering<T> implements Serializable {
    private static final long serialVersionUID = 0;
    final Ordering<? super T> ordering;

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsLast() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NullsLastOrdering(Ordering<? super T> ordering) {
        this.ordering = ordering;
    }

    @Override // com.google.common.collect.Ordering, java.util.Comparator
    public int compare(@CheckForNull T t, @CheckForNull T t2) {
        if (t == t2) {
            return 0;
        }
        if (t == null) {
            return 1;
        }
        if (t2 == null) {
            return -1;
        }
        return this.ordering.compare(t, t2);
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> reverse() {
        return this.ordering.reverse().nullsFirst();
    }

    @Override // com.google.common.collect.Ordering
    public <S extends T> Ordering<S> nullsFirst() {
        return this.ordering.nullsFirst();
    }

    @Override // java.util.Comparator
    public boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof NullsLastOrdering) {
            return this.ordering.equals(((NullsLastOrdering) obj).ordering);
        }
        return false;
    }

    public int hashCode() {
        return this.ordering.hashCode() ^ (-921210296);
    }

    public String toString() {
        String valueOf = String.valueOf(this.ordering);
        return new StringBuilder(String.valueOf(valueOf).length() + 12).append(valueOf).append(".nullsLast()").toString();
    }
}
