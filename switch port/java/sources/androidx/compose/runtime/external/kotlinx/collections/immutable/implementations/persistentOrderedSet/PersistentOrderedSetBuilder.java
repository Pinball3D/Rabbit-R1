package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMapBuilder;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.CommonFunctionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.OperatingSystem;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PersistentOrderedSetBuilder.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010)\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0002\u0010\u0006J\u0015\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001aJ\u000e\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cH\u0016J\b\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u001aJ\u000f\u0010 \u001a\b\u0012\u0004\u0012\u00028\u00000!H\u0096\u0002J\u0015\u0010\"\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001aR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR \u0010\r\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000f0\u000eX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00148VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006#"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSetBuilder;", ExifInterface.LONGITUDE_EAST, "Lkotlin/collections/AbstractMutableSet;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet$Builder;", "set", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/PersistentOrderedSet;)V", "firstElement", "", "getFirstElement$runtime_release", "()Ljava/lang/Object;", "setFirstElement$runtime_release", "(Ljava/lang/Object;)V", "hashMapBuilder", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/persistentOrderedSet/Links;", "getHashMapBuilder$runtime_release", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;", "lastElement", "size", "", "getSize", "()I", "add", "", "element", "(Ljava/lang/Object;)Z", OperatingSystem.JsonKeys.BUILD, "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentSet;", "clear", "", "contains", "iterator", "", "remove", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PersistentOrderedSetBuilder<E> extends AbstractMutableSet<E> implements PersistentSet.Builder<E> {
    private Object firstElement;
    private final PersistentHashMapBuilder<E, Links> hashMapBuilder;
    private Object lastElement;
    private PersistentOrderedSet<E> set;

    /* renamed from: getFirstElement$runtime_release, reason: from getter */
    public final Object getFirstElement() {
        return this.firstElement;
    }

    public final PersistentHashMapBuilder<E, Links> getHashMapBuilder$runtime_release() {
        return this.hashMapBuilder;
    }

    public final void setFirstElement$runtime_release(Object obj) {
        this.firstElement = obj;
    }

    public PersistentOrderedSetBuilder(PersistentOrderedSet<E> set) {
        Intrinsics.checkNotNullParameter(set, "set");
        this.set = set;
        this.firstElement = set.getFirstElement();
        this.lastElement = this.set.getLastElement();
        this.hashMapBuilder = this.set.getHashMap$runtime_release().builder2();
    }

    @Override // kotlin.collections.AbstractMutableSet
    public int getSize() {
        return this.hashMapBuilder.size();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentCollection.Builder
    public PersistentSet<E> build() {
        PersistentOrderedSet<E> persistentOrderedSet;
        PersistentHashMap<E, Links> build2 = this.hashMapBuilder.build2();
        if (build2 == this.set.getHashMap$runtime_release()) {
            CommonFunctionsKt.m2285assert(this.firstElement == this.set.getFirstElement());
            CommonFunctionsKt.m2285assert(this.lastElement == this.set.getLastElement());
            persistentOrderedSet = this.set;
        } else {
            persistentOrderedSet = new PersistentOrderedSet<>(this.firstElement, this.lastElement, build2);
        }
        this.set = persistentOrderedSet;
        return persistentOrderedSet;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object element) {
        return this.hashMapBuilder.containsKey(element);
    }

    @Override // kotlin.collections.AbstractMutableSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E element) {
        if (this.hashMapBuilder.containsKey(element)) {
            return false;
        }
        if (isEmpty()) {
            this.firstElement = element;
            this.lastElement = element;
            this.hashMapBuilder.put(element, new Links());
            return true;
        }
        Links links = this.hashMapBuilder.get(this.lastElement);
        Intrinsics.checkNotNull(links);
        this.hashMapBuilder.put(this.lastElement, links.withNext(element));
        this.hashMapBuilder.put(element, new Links(this.lastElement));
        this.lastElement = element;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object element) {
        Links remove = this.hashMapBuilder.remove(element);
        if (remove == null) {
            return false;
        }
        if (remove.getHasPrevious()) {
            Links links = this.hashMapBuilder.get(remove.getPrevious());
            Intrinsics.checkNotNull(links);
            this.hashMapBuilder.put(remove.getPrevious(), links.withNext(remove.getNext()));
        } else {
            this.firstElement = remove.getNext();
        }
        if (remove.getHasNext()) {
            Links links2 = this.hashMapBuilder.get(remove.getNext());
            Intrinsics.checkNotNull(links2);
            this.hashMapBuilder.put(remove.getNext(), links2.withPrevious(remove.getPrevious()));
            return true;
        }
        this.lastElement = remove.getPrevious();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.hashMapBuilder.clear();
        this.firstElement = EndOfChain.INSTANCE;
        this.lastElement = EndOfChain.INSTANCE;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return new PersistentOrderedSetMutableIterator(this);
    }
}
