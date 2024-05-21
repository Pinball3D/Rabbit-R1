package androidx.compose.runtime.collection;

import androidx.compose.runtime.ActualJvm_jvmKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IdentityArrayMap.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\u0004\b\u0001\u0010\u00032\u00020\u0002B\u000f\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0012\u001a\u00020\u0013J\u0016\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u0017J\u0012\u0010\u0018\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0002J\"\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u001b\u001a\u00020\u0005H\u0002JD\u0010\u001c\u001a\u00020\u001326\u0010\u001d\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00130\u001eH\u0086\bø\u0001\u0000J\u0018\u0010\"\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010#J\u0006\u0010$\u001a\u00020\u0015J\u0006\u0010%\u001a\u00020\u0015J\u0015\u0010&\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0016\u001a\u00028\u0000¢\u0006\u0002\u0010#JD\u0010'\u001a\u00020\u001326\u0010\u001d\u001a2\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(\u0016\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150\u001eH\u0086\bø\u0001\u0000J/\u0010(\u001a\u00020\u00132!\u0010\u001d\u001a\u001d\u0012\u0013\u0012\u00118\u0001¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u00150)H\u0086\bø\u0001\u0000J\u001e\u0010*\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00028\u00002\u0006\u0010!\u001a\u00028\u0001H\u0086\u0002¢\u0006\u0002\u0010+R0\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u001e\u0010\r\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0005@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR0\u0010\u0010\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b2\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\b@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u0011\u0010\u000b\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006,"}, d2 = {"Landroidx/compose/runtime/collection/IdentityArrayMap;", "Key", "", "Value", "capacity", "", "(I)V", "<set-?>", "", "keys", "getKeys", "()[Ljava/lang/Object;", "[Ljava/lang/Object;", "size", "getSize", "()I", "values", "getValues", "clear", "", "contains", "", "key", "(Ljava/lang/Object;)Z", "find", "findExactIndex", "midIndex", "keyHash", "forEach", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "value", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "isEmpty", "isNotEmpty", "remove", "removeIf", "removeValueIf", "Lkotlin/Function1;", "set", "(Ljava/lang/Object;Ljava/lang/Object;)V", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IdentityArrayMap<Key, Value> {
    private Object[] keys;
    private int size;
    private Object[] values;

    public IdentityArrayMap() {
        this(0, 1, null);
    }

    public final Object[] getKeys() {
        return this.keys;
    }

    public final int getSize() {
        return this.size;
    }

    public final Object[] getValues() {
        return this.values;
    }

    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final boolean isNotEmpty() {
        return this.size > 0;
    }

    public IdentityArrayMap(int i) {
        this.keys = new Object[i];
        this.values = new Object[i];
    }

    public /* synthetic */ IdentityArrayMap(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 16 : i);
    }

    public final boolean contains(Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return find(key) >= 0;
    }

    public final Value get(Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int find = find(key);
        if (find >= 0) {
            return (Value) this.values[find];
        }
        return null;
    }

    public final void set(Key key, Value value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Object[] objArr = this.keys;
        Object[] objArr2 = this.values;
        int i = this.size;
        int find = find(key);
        if (find >= 0) {
            objArr2[find] = value;
            return;
        }
        int i2 = -(find + 1);
        boolean z = i == objArr.length;
        Object[] objArr3 = z ? new Object[i * 2] : objArr;
        int i3 = i2 + 1;
        ArraysKt.copyInto(objArr, objArr3, i3, i2, i);
        if (z) {
            ArraysKt.copyInto$default(objArr, objArr3, 0, 0, i2, 6, (Object) null);
        }
        objArr3[i2] = key;
        this.keys = objArr3;
        Object[] objArr4 = z ? new Object[i * 2] : objArr2;
        ArraysKt.copyInto(objArr2, objArr4, i3, i2, i);
        if (z) {
            ArraysKt.copyInto$default(objArr2, objArr4, 0, 0, i2, 6, (Object) null);
        }
        objArr4[i2] = value;
        this.values = objArr4;
        this.size++;
    }

    public final Value remove(Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        int find = find(key);
        if (find < 0) {
            return null;
        }
        Object[] objArr = this.values;
        Value value = (Value) objArr[find];
        int i = this.size;
        Object[] objArr2 = this.keys;
        int i2 = find + 1;
        ArraysKt.copyInto(objArr2, objArr2, find, i2, i);
        ArraysKt.copyInto(objArr, objArr, find, i2, i);
        int i3 = i - 1;
        objArr2[i3] = null;
        objArr[i3] = null;
        this.size = i3;
        return value;
    }

    public final void clear() {
        this.size = 0;
        ArraysKt.fill$default(this.keys, (Object) null, 0, 0, 6, (Object) null);
        ArraysKt.fill$default(this.values, (Object) null, 0, 0, 6, (Object) null);
    }

    public final void removeIf(Function2<? super Key, ? super Value, Boolean> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int size = getSize();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = getKeys()[i2];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
            if (!block.invoke(obj, getValues()[i2]).booleanValue()) {
                if (i != i2) {
                    getKeys()[i] = obj;
                    getValues()[i] = getValues()[i2];
                }
                i++;
            }
        }
        if (getSize() > i) {
            int size2 = getSize();
            for (int i3 = i; i3 < size2; i3++) {
                getKeys()[i3] = null;
                getValues()[i3] = null;
            }
            this.size = i;
        }
    }

    public final void forEach(Function2<? super Key, ? super Value, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int size = getSize();
        for (int i = 0; i < size; i++) {
            Object obj = getKeys()[i];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
            block.invoke(obj, getValues()[i]);
        }
    }

    private final int find(Object key) {
        int identityHashCode = ActualJvm_jvmKt.identityHashCode(key);
        int i = this.size - 1;
        Object[] objArr = this.keys;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            Object obj = objArr[i3];
            int identityHashCode2 = ActualJvm_jvmKt.identityHashCode(obj);
            if (identityHashCode2 < identityHashCode) {
                i2 = i3 + 1;
            } else {
                if (identityHashCode2 <= identityHashCode) {
                    return key == obj ? i3 : findExactIndex(i3, key, identityHashCode);
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    private final int findExactIndex(int midIndex, Object key, int keyHash) {
        Object obj;
        Object[] objArr = this.keys;
        int i = this.size;
        for (int i2 = midIndex - 1; -1 < i2; i2--) {
            Object obj2 = objArr[i2];
            if (obj2 == key) {
                return i2;
            }
            if (ActualJvm_jvmKt.identityHashCode(obj2) != keyHash) {
                break;
            }
        }
        do {
            midIndex++;
            if (midIndex >= i) {
                return -(i + 1);
            }
            obj = objArr[midIndex];
            if (obj == key) {
                return midIndex;
            }
        } while (ActualJvm_jvmKt.identityHashCode(obj) == keyHash);
        return -(midIndex + 1);
    }

    public final void removeValueIf(Function1<? super Value, Boolean> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        int size = getSize();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = getKeys()[i2];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.IdentityArrayMap");
            if (!block.invoke(getValues()[i2]).booleanValue()) {
                if (i != i2) {
                    getKeys()[i] = obj;
                    getValues()[i] = getValues()[i2];
                }
                i++;
            }
        }
        if (getSize() > i) {
            int size2 = getSize();
            for (int i3 = i; i3 < size2; i3++) {
                getKeys()[i3] = null;
                getValues()[i3] = null;
            }
            this.size = i;
        }
    }
}
