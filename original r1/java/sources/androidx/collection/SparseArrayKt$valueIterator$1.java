package androidx.collection;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SparseArray.kt */
@Metadata(d1 = {"\u0000\u001b\n\u0000\n\u0002\u0010(\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\t\u0010\b\u001a\u00020\tH\u0096\u0002J\u000e\u0010\n\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007¨\u0006\f"}, d2 = {"androidx/collection/SparseArrayKt$valueIterator$1", "", "index", "", "getIndex", "()I", "setIndex", "(I)V", "hasNext", "", "next", "()Ljava/lang/Object;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SparseArrayKt$valueIterator$1<T> implements Iterator<T>, KMappedMarker {
    final /* synthetic */ SparseArrayCompat<T> $this_valueIterator;
    private int index;

    public final int getIndex() {
        return this.index;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final void setIndex(int i) {
        this.index = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SparseArrayKt$valueIterator$1(SparseArrayCompat<T> sparseArrayCompat) {
        this.$this_valueIterator = sparseArrayCompat;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.$this_valueIterator.size();
    }

    @Override // java.util.Iterator
    public T next() {
        SparseArrayCompat<T> sparseArrayCompat = this.$this_valueIterator;
        int i = this.index;
        this.index = i + 1;
        return sparseArrayCompat.valueAt(i);
    }
}
