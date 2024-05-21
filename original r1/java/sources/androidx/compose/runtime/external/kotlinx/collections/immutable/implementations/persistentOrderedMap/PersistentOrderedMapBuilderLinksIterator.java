package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.exifinterface.media.ExifInterface;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.jvm.internal.markers.KMutableIterator;

/* compiled from: PersistentOrderedMapBuilderContentIterators.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\b\u0010\u0018\u0000*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00020\u00040\u0003B#\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\b¢\u0006\u0002\u0010\tJ\b\u0010\u001a\u001a\u00020\u001bH\u0002J\b\u0010\u001c\u001a\u00020\u001bH\u0002J\b\u0010\u001d\u001a\u00020\u001bH\u0002J\t\u0010\u001e\u001a\u00020\u0019H\u0096\u0002J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00028\u00010\u0004H\u0096\u0002J\b\u0010 \u001a\u00020\u001bH\u0016R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u00020\rX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0006X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006!"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilderLinksIterator;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/LinkedValue;", "nextKey", "", "builder", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;", "(Ljava/lang/Object;Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;)V", "getBuilder$runtime_release", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedMap/PersistentOrderedMapBuilder;", "expectedModCount", "", "index", "getIndex$runtime_release", "()I", "setIndex$runtime_release", "(I)V", "lastIteratedKey", "getLastIteratedKey$runtime_release", "()Ljava/lang/Object;", "setLastIteratedKey$runtime_release", "(Ljava/lang/Object;)V", "nextWasInvoked", "", "checkForComodification", "", "checkHasNext", "checkNextWasInvoked", "hasNext", "next", "remove", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class PersistentOrderedMapBuilderLinksIterator<K, V> implements Iterator<LinkedValue<V>>, KMutableIterator {
    private final PersistentOrderedMapBuilder<K, V> builder;
    private int expectedModCount;
    private int index;
    private Object lastIteratedKey;
    private Object nextKey;
    private boolean nextWasInvoked;

    public final PersistentOrderedMapBuilder<K, V> getBuilder$runtime_release() {
        return this.builder;
    }

    /* renamed from: getIndex$runtime_release, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    /* renamed from: getLastIteratedKey$runtime_release, reason: from getter */
    public final Object getLastIteratedKey() {
        return this.lastIteratedKey;
    }

    public final void setIndex$runtime_release(int i) {
        this.index = i;
    }

    public final void setLastIteratedKey$runtime_release(Object obj) {
        this.lastIteratedKey = obj;
    }

    public PersistentOrderedMapBuilderLinksIterator(Object obj, PersistentOrderedMapBuilder<K, V> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        this.nextKey = obj;
        this.builder = builder;
        this.lastIteratedKey = EndOfChain.INSTANCE;
        this.expectedModCount = builder.getHashMapBuilder$runtime_release().getModCount();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.index < this.builder.size();
    }

    @Override // java.util.Iterator
    public LinkedValue<V> next() {
        checkForComodification();
        checkHasNext();
        this.lastIteratedKey = this.nextKey;
        this.nextWasInvoked = true;
        this.index++;
        LinkedValue<V> linkedValue = this.builder.getHashMapBuilder$runtime_release().get(this.nextKey);
        if (linkedValue == null) {
            throw new ConcurrentModificationException("Hash code of a key (" + this.nextKey + ") has changed after it was added to the persistent map.");
        }
        LinkedValue<V> linkedValue2 = linkedValue;
        this.nextKey = linkedValue2.getNext();
        return linkedValue2;
    }

    @Override // java.util.Iterator
    public void remove() {
        checkNextWasInvoked();
        TypeIntrinsics.asMutableMap(this.builder).remove(this.lastIteratedKey);
        this.lastIteratedKey = null;
        this.nextWasInvoked = false;
        this.expectedModCount = this.builder.getHashMapBuilder$runtime_release().getModCount();
        this.index--;
    }

    private final void checkHasNext() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    private final void checkNextWasInvoked() {
        if (!this.nextWasInvoked) {
            throw new IllegalStateException();
        }
    }

    private final void checkForComodification() {
        if (this.builder.getHashMapBuilder$runtime_release().getModCount() != this.expectedModCount) {
            throw new ConcurrentModificationException();
        }
    }
}
