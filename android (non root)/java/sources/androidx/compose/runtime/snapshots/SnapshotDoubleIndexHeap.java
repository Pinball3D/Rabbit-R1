package androidx.compose.runtime.snapshots;

import androidx.media3.exoplayer.upstream.CmcdHeadersFactory;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* compiled from: SnapshotDoubleIndexHeap.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\n\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\b\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0010\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0004H\u0002J\u0010\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u0004J\u000e\u0010\u0017\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0004J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0010\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0007\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0004H\u0002J\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;", "", "()V", "firstFreeHandle", "", "handles", "", "index", "<set-?>", "size", "getSize", "()I", "values", "add", "value", "allocateHandle", "ensure", "", "atLeast", "freeHandle", "handle", "lowestOrDefault", "default", "remove", "shiftDown", "shiftUp", "swap", CmcdHeadersFactory.OBJECT_TYPE_AUDIO_ONLY, "b", "validate", "validateHandle", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapshotDoubleIndexHeap {
    private int firstFreeHandle;
    private int[] handles;
    private int size;
    private int[] values = new int[16];
    private int[] index = new int[16];

    public final int getSize() {
        return this.size;
    }

    public SnapshotDoubleIndexHeap() {
        int[] iArr = new int[16];
        int i = 0;
        while (i < 16) {
            int i2 = i + 1;
            iArr[i] = i2;
            i = i2;
        }
        this.handles = iArr;
    }

    public static /* synthetic */ int lowestOrDefault$default(SnapshotDoubleIndexHeap snapshotDoubleIndexHeap, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        return snapshotDoubleIndexHeap.lowestOrDefault(i);
    }

    public final int lowestOrDefault(int r2) {
        return this.size > 0 ? this.values[0] : r2;
    }

    public final int add(int value) {
        ensure(this.size + 1);
        int i = this.size;
        this.size = i + 1;
        int allocateHandle = allocateHandle();
        this.values[i] = value;
        this.index[i] = allocateHandle;
        this.handles[allocateHandle] = i;
        shiftUp(i);
        return allocateHandle;
    }

    public final void remove(int handle) {
        int i = this.handles[handle];
        swap(i, this.size - 1);
        this.size--;
        shiftUp(i);
        shiftDown(i);
        freeHandle(handle);
    }

    public final void validate() {
        int i = this.size;
        int i2 = 1;
        while (i2 < i) {
            int i3 = i2 + 1;
            int[] iArr = this.values;
            if (iArr[(i3 >> 1) - 1] > iArr[i2]) {
                throw new IllegalStateException(("Index " + i2 + " is out of place").toString());
            }
            i2 = i3;
        }
    }

    public final void validateHandle(int handle, int value) {
        int i = this.handles[handle];
        if (this.index[i] != handle) {
            throw new IllegalStateException(("Index for handle " + handle + " is corrupted").toString());
        }
        if (this.values[i] != value) {
            throw new IllegalStateException(("Value for handle " + handle + " was " + this.values[i] + " but was supposed to be " + value).toString());
        }
    }

    private final void shiftUp(int index) {
        int[] iArr = this.values;
        int i = iArr[index];
        while (index > 0) {
            int i2 = ((index + 1) >> 1) - 1;
            if (iArr[i2] <= i) {
                return;
            }
            swap(i2, index);
            index = i2;
        }
    }

    private final void shiftDown(int index) {
        int i;
        int[] iArr = this.values;
        int i2 = this.size >> 1;
        while (index < i2) {
            int i3 = (index + 1) << 1;
            int i4 = i3 - 1;
            if (i3 < this.size && (i = iArr[i3]) < iArr[i4]) {
                if (i >= iArr[index]) {
                    return;
                }
                swap(i3, index);
                index = i3;
            } else {
                if (iArr[i4] >= iArr[index]) {
                    return;
                }
                swap(i4, index);
                index = i4;
            }
        }
    }

    private final void swap(int a, int b) {
        int[] iArr = this.values;
        int[] iArr2 = this.index;
        int[] iArr3 = this.handles;
        int i = iArr[a];
        iArr[a] = iArr[b];
        iArr[b] = i;
        int i2 = iArr2[a];
        iArr2[a] = iArr2[b];
        iArr2[b] = i2;
        iArr3[iArr2[a]] = a;
        iArr3[iArr2[b]] = b;
    }

    private final void ensure(int atLeast) {
        int[] iArr = this.values;
        int length = iArr.length;
        if (atLeast <= length) {
            return;
        }
        int i = length * 2;
        int[] iArr2 = new int[i];
        int[] iArr3 = new int[i];
        ArraysKt.copyInto$default(iArr, iArr2, 0, 0, 0, 14, (Object) null);
        ArraysKt.copyInto$default(this.index, iArr3, 0, 0, 0, 14, (Object) null);
        this.values = iArr2;
        this.index = iArr3;
    }

    private final int allocateHandle() {
        int length = this.handles.length;
        if (this.firstFreeHandle >= length) {
            int i = length * 2;
            int[] iArr = new int[i];
            int i2 = 0;
            while (i2 < i) {
                int i3 = i2 + 1;
                iArr[i2] = i3;
                i2 = i3;
            }
            ArraysKt.copyInto$default(this.handles, iArr, 0, 0, 0, 14, (Object) null);
            this.handles = iArr;
        }
        int i4 = this.firstFreeHandle;
        this.firstFreeHandle = this.handles[i4];
        return i4;
    }

    private final void freeHandle(int handle) {
        this.handles[handle] = this.firstFreeHandle;
        this.firstFreeHandle = handle;
    }
}
