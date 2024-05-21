package androidx.compose.runtime.collection;

import android.util.SparseArray;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: ActualIntMap.android.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0011\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005B\u0015\b\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bJ\u0006\u0010\f\u001a\u00020\rJ\u0011\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0004H\u0086\u0002J\u0018\u0010\u0011\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0010\u001a\u00020\u0004H\u0086\u0002¢\u0006\u0002\u0010\u0012J\u001b\u0010\u0011\u001a\u00028\u00002\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0004J\u001e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u0018R\u0011\u0010\t\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Landroidx/compose/runtime/collection/IntMap;", ExifInterface.LONGITUDE_EAST, "", "initialCapacity", "", "(I)V", "sparseArray", "Landroid/util/SparseArray;", "(Landroid/util/SparseArray;)V", "size", "getSize", "()I", "clear", "", "contains", "", "key", "get", "(I)Ljava/lang/Object;", "valueIfAbsent", "(ILjava/lang/Object;)Ljava/lang/Object;", "remove", "set", "value", "(ILjava/lang/Object;)V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IntMap<E> {
    private final SparseArray<E> sparseArray;

    private IntMap(SparseArray<E> sparseArray) {
        this.sparseArray = sparseArray;
    }

    public IntMap(int i) {
        this(new SparseArray(i));
    }

    public /* synthetic */ IntMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 10 : i);
    }

    public final boolean contains(int key) {
        return this.sparseArray.indexOfKey(key) >= 0;
    }

    public final E get(int key) {
        return this.sparseArray.get(key);
    }

    public final E get(int key, E valueIfAbsent) {
        return this.sparseArray.get(key, valueIfAbsent);
    }

    public final void set(int key, E value) {
        this.sparseArray.put(key, value);
    }

    public final void remove(int key) {
        this.sparseArray.remove(key);
    }

    public final void clear() {
        this.sparseArray.clear();
    }

    public final int getSize() {
        return this.sparseArray.size();
    }
}
