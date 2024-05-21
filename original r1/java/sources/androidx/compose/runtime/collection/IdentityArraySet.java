package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import androidx.exifinterface.media.ExifInterface;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: IdentityArraySet.kt */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u001e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0013\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012J\u0014\u0010\u0013\u001a\u00020\u00142\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016J\u0010\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0006H\u0002J\u0006\u0010\u0019\u001a\u00020\u0014J\u0016\u0010\u001a\u001a\u00020\u00102\u0006\u0010\u001b\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u0012J\u0016\u0010\u001c\u001a\u00020\u00102\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016H\u0016J+\u0010\u001e\u001a\u00020\u00142\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00140 H\u0086\bø\u0001\u0000\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0001J\u0012\u0010!\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u00022\u0006\u0010$\u001a\u00020\u0006H\u0002J\u0016\u0010%\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00020\u0006H\u0086\u0002¢\u0006\u0002\u0010&J\b\u0010'\u001a\u00020\u0010H\u0016J\u0006\u0010(\u001a\u00020\u0010J\u000f\u0010)\u001a\b\u0012\u0004\u0012\u00028\u00000*H\u0096\u0002J\u0013\u0010+\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00028\u0000¢\u0006\u0002\u0010\u0012J \u0010,\u001a\u00020\u00142\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00100 H\u0086\bø\u0001\u0000J\b\u0010.\u001a\u00020/H\u0016R\u001e\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR0\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n2\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\n@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\u000e\u001a\u0004\b\f\u0010\r\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00060"}, d2 = {"Landroidx/compose/runtime/collection/IdentityArraySet;", ExifInterface.GPS_DIRECTION_TRUE, "", "", "()V", "<set-?>", "", "size", "getSize", "()I", "", "values", "getValues", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "add", "", "value", "(Ljava/lang/Object;)Z", "addAll", "", "collection", "", "checkIndexBounds", "index", "clear", "contains", "element", "containsAll", "elements", "fastForEach", "block", "Lkotlin/Function1;", "find", "findExactIndex", "midIndex", "valueHash", "get", "(I)Ljava/lang/Object;", "isEmpty", "isNotEmpty", "iterator", "", "remove", "removeValueIf", "predicate", "toString", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IdentityArraySet<T> implements Set<T>, KMappedMarker {
    private int size;
    private Object[] values = new Object[16];

    @Override // java.util.Set, java.util.Collection
    public boolean addAll(Collection<? extends T> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public int getSize() {
        return this.size;
    }

    public final Object[] getValues() {
        return this.values;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Set, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.Set, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    @Override // java.util.Set, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    @Override // java.util.Set, java.util.Collection
    public boolean contains(Object element) {
        return element != null && find(element) >= 0;
    }

    public final T get(int index) {
        checkIndexBounds(index);
        T t = (T) this.values[index];
        Intrinsics.checkNotNull(t, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
        return t;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(T value) {
        int i;
        Intrinsics.checkNotNullParameter(value, "value");
        int size = size();
        Object[] objArr = this.values;
        if (size > 0) {
            i = find(value);
            if (i >= 0) {
                return false;
            }
        } else {
            i = -1;
        }
        int i2 = -(i + 1);
        if (size == objArr.length) {
            Object[] objArr2 = new Object[objArr.length * 2];
            ArraysKt.copyInto(objArr, objArr2, i2 + 1, i2, size);
            ArraysKt.copyInto$default(objArr, objArr2, 0, 0, i2, 6, (Object) null);
            this.values = objArr2;
        } else {
            ArraysKt.copyInto(objArr, objArr, i2 + 1, i2, size);
        }
        this.values[i2] = value;
        this.size = size() + 1;
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        ArraysKt.fill$default(this.values, (Object) null, 0, 0, 6, (Object) null);
        this.size = 0;
    }

    public final void fastForEach(Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        Object[] values = getValues();
        int size = size();
        for (int i = 0; i < size; i++) {
            Object obj = values[i];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
            block.invoke(obj);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void addAll(Collection<? extends T> collection) {
        Object[] objArr;
        int i;
        Object obj;
        Intrinsics.checkNotNullParameter(collection, "collection");
        if (collection.isEmpty()) {
            return;
        }
        if (!(collection instanceof IdentityArraySet)) {
            Iterator<? extends T> it = collection.iterator();
            while (it.hasNext()) {
                add(it.next());
            }
            return;
        }
        Object[] objArr2 = this.values;
        IdentityArraySet identityArraySet = (IdentityArraySet) collection;
        Object[] objArr3 = identityArraySet.values;
        int size = size();
        int size2 = identityArraySet.size();
        int i2 = size + size2;
        boolean z = this.values.length < i2;
        boolean z2 = size == 0 || ActualJvm_jvmKt.identityHashCode(objArr2[size + (-1)]) < ActualJvm_jvmKt.identityHashCode(objArr3[0]);
        if (!z && z2) {
            ArraysKt.copyInto(objArr3, objArr2, size, 0, size2);
            this.size = size() + size2;
            return;
        }
        if (z) {
            objArr = new Object[size > size2 ? size * 2 : size2 * 2];
        } else {
            objArr = objArr2;
        }
        int i3 = size - 1;
        int i4 = size2 - 1;
        int i5 = i2 - 1;
        while (true) {
            if (i3 < 0 && i4 < 0) {
                break;
            }
            if (i3 < 0) {
                i = i4 - 1;
                obj = objArr3[i4];
            } else if (i4 < 0) {
                i = i4;
                obj = objArr2[i3];
                i3--;
            } else {
                Object obj2 = objArr2[i3];
                Object obj3 = objArr3[i4];
                int identityHashCode = ActualJvm_jvmKt.identityHashCode(obj2);
                int identityHashCode2 = ActualJvm_jvmKt.identityHashCode(obj3);
                if (identityHashCode > identityHashCode2) {
                    i3--;
                } else {
                    if (identityHashCode >= identityHashCode2) {
                        if (obj2 != obj3) {
                            int i6 = i3 - 1;
                            while (i6 >= 0) {
                                int i7 = i6 - 1;
                                Object obj4 = objArr2[i6];
                                if (ActualJvm_jvmKt.identityHashCode(obj4) != identityHashCode2) {
                                    break;
                                }
                                if (obj3 == obj4) {
                                    i4--;
                                    break;
                                }
                                i6 = i7;
                            }
                        } else {
                            i3--;
                            i4--;
                        }
                    }
                    i = i4 - 1;
                    obj = obj3;
                }
                i = i4;
                obj = obj2;
            }
            objArr[i5] = obj;
            i4 = i;
            i5--;
        }
        if (i5 >= 0) {
            ArraysKt.copyInto(objArr, objArr, 0, i5 + 1, i2);
        }
        int i8 = i2 - (i5 + 1);
        ArraysKt.fill(objArr, (Object) null, i8, i2);
        this.values = objArr;
        this.size = i8;
    }

    @Override // java.util.Set, java.util.Collection
    public boolean isEmpty() {
        return size() == 0;
    }

    public final boolean isNotEmpty() {
        return size() > 0;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(T value) {
        if (value == null) {
            return false;
        }
        int find = find(value);
        Object[] objArr = this.values;
        int size = size();
        if (find < 0) {
            return false;
        }
        int i = size - 1;
        if (find < i) {
            ArraysKt.copyInto(objArr, objArr, find, find + 1, size);
        }
        objArr[i] = null;
        this.size = size() - 1;
        return true;
    }

    public final void removeValueIf(Function1<? super T, Boolean> predicate) {
        Intrinsics.checkNotNullParameter(predicate, "predicate");
        Object[] values = getValues();
        int size = size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = values[i2];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type T of androidx.compose.runtime.collection.IdentityArraySet");
            if (!predicate.invoke(obj).booleanValue()) {
                if (i != i2) {
                    values[i] = obj;
                }
                i++;
            }
        }
        for (int i3 = i; i3 < size; i3++) {
            values[i3] = null;
        }
        this.size = i;
    }

    private final int find(Object value) {
        int size = size() - 1;
        int identityHashCode = ActualJvm_jvmKt.identityHashCode(value);
        Object[] objArr = this.values;
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) >>> 1;
            Object obj = objArr[i2];
            int identityHashCode2 = ActualJvm_jvmKt.identityHashCode(obj);
            if (identityHashCode2 < identityHashCode) {
                i = i2 + 1;
            } else {
                if (identityHashCode2 <= identityHashCode) {
                    return obj == value ? i2 : findExactIndex(i2, value, identityHashCode);
                }
                size = i2 - 1;
            }
        }
        return -(i + 1);
    }

    private final int findExactIndex(int midIndex, Object value, int valueHash) {
        Object obj;
        Object[] objArr = this.values;
        int size = size();
        for (int i = midIndex - 1; -1 < i; i--) {
            Object obj2 = objArr[i];
            if (obj2 == value) {
                return i;
            }
            if (ActualJvm_jvmKt.identityHashCode(obj2) != valueHash) {
                break;
            }
        }
        do {
            midIndex++;
            if (midIndex >= size) {
                return -(size + 1);
            }
            obj = objArr[midIndex];
            if (obj == value) {
                return midIndex;
            }
        } while (ActualJvm_jvmKt.identityHashCode(obj) == valueHash);
        return -(midIndex + 1);
    }

    private final void checkIndexBounds(int index) {
        if (index < 0 || index >= size()) {
            throw new IndexOutOfBoundsException("Index " + index + ", size " + size());
        }
    }

    @Override // java.util.Set, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public Iterator<T> iterator() {
        return new IdentityArraySet$iterator$1(this);
    }

    public String toString() {
        return CollectionsKt.joinToString$default(this, null, "[", "]", 0, null, new Function1<T, CharSequence>() { // from class: androidx.compose.runtime.collection.IdentityArraySet$toString$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(T it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return it.toString();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Object obj) {
                return invoke((IdentityArraySet$toString$1<T>) obj);
            }
        }, 25, null);
    }
}
