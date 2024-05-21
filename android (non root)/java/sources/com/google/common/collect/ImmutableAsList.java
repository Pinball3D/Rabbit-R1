package com.google.common.collect;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class ImmutableAsList<E> extends ImmutableList<E> {
    abstract ImmutableCollection<E> delegateCollection();

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        return delegateCollection().contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return delegateCollection().size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return delegateCollection().isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return delegateCollection().isPartialView();
    }

    /* loaded from: classes3.dex */
    static class SerializedForm implements Serializable {
        private static final long serialVersionUID = 0;
        final ImmutableCollection<?> collection;

        SerializedForm(ImmutableCollection<?> immutableCollection) {
            this.collection = immutableCollection;
        }

        Object readResolve() {
            return this.collection.asList();
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection
    Object writeReplace() {
        return new SerializedForm(delegateCollection());
    }
}
