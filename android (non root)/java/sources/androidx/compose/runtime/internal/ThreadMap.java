package androidx.compose.runtime.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ThreadMap.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0016\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u000b\u001a\u00020\fJ\u0018\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0007X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0012"}, d2 = {"Landroidx/compose/runtime/internal/ThreadMap;", "", "size", "", "keys", "", "values", "", "(I[J[Ljava/lang/Object;)V", "[Ljava/lang/Object;", "find", "key", "", "get", "newWith", "value", "trySet", "", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ThreadMap {
    private final long[] keys;
    private final int size;
    private final Object[] values;

    public ThreadMap(int i, long[] keys, Object[] values) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(values, "values");
        this.size = i;
        this.keys = keys;
        this.values = values;
    }

    public final Object get(long key) {
        int find = find(key);
        if (find >= 0) {
            return this.values[find];
        }
        return null;
    }

    public final boolean trySet(long key, Object value) {
        int find = find(key);
        if (find < 0) {
            return false;
        }
        this.values[find] = value;
        return true;
    }

    private final int find(long key) {
        int i = this.size - 1;
        if (i == -1) {
            return -1;
        }
        int i2 = 0;
        if (i == 0) {
            long j = this.keys[0];
            if (j == key) {
                return 0;
            }
            return j > key ? -2 : -1;
        }
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            long j2 = this.keys[i3] - key;
            if (j2 < 0) {
                i2 = i3 + 1;
            } else {
                if (j2 <= 0) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public final ThreadMap newWith(long key, Object value) {
        int i = this.size;
        int i2 = 0;
        int i3 = 0;
        for (Object obj : this.values) {
            if (obj != null) {
                i3++;
            }
        }
        int i4 = i3 + 1;
        long[] jArr = new long[i4];
        Object[] objArr = new Object[i4];
        if (i4 > 1) {
            int i5 = 0;
            while (true) {
                if (i2 >= i4 || i5 >= i) {
                    break;
                }
                long j = this.keys[i5];
                Object obj2 = this.values[i5];
                if (j > key) {
                    jArr[i2] = key;
                    objArr[i2] = value;
                    i2++;
                    break;
                }
                if (obj2 != null) {
                    jArr[i2] = j;
                    objArr[i2] = obj2;
                    i2++;
                }
                i5++;
            }
            if (i5 == i) {
                jArr[i3] = key;
                objArr[i3] = value;
            } else {
                while (i2 < i4) {
                    long j2 = this.keys[i5];
                    Object obj3 = this.values[i5];
                    if (obj3 != null) {
                        jArr[i2] = j2;
                        objArr[i2] = obj3;
                        i2++;
                    }
                    i5++;
                }
            }
        } else {
            jArr[0] = key;
            objArr[0] = value;
        }
        return new ThreadMap(i4, jArr, objArr);
    }
}
