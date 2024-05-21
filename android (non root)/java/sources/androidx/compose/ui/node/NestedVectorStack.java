package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NestedVectorStack.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fJ\u000b\u0010\r\u001a\u00028\u0000¢\u0006\u0002\u0010\u000eJ\u0014\u0010\u000f\u001a\u00020\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00028\u00000\nJ\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0005H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/node/NestedVectorStack;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", SentryThread.JsonKeys.CURRENT, "", "indexes", "", "lastIndex", "vectors", "Landroidx/compose/runtime/collection/MutableVector;", "isNotEmpty", "", "pop", "()Ljava/lang/Object;", "push", "", "vector", "pushIndex", "value", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NestedVectorStack<T> {
    private int lastIndex;
    private int current = -1;
    private int[] indexes = new int[16];
    private final MutableVector<MutableVector<T>> vectors = new MutableVector<>(new MutableVector[16], 0);

    private final void pushIndex(int value) {
        int i = this.lastIndex;
        int[] iArr = this.indexes;
        if (i >= iArr.length) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length * 2);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(this, newSize)");
            this.indexes = copyOf;
        }
        int[] iArr2 = this.indexes;
        int i2 = this.lastIndex;
        this.lastIndex = i2 + 1;
        iArr2[i2] = value;
    }

    public final boolean isNotEmpty() {
        int i = this.current;
        return i >= 0 && this.indexes[i] >= 0;
    }

    public final T pop() {
        int i = this.current;
        int i2 = this.indexes[i];
        MutableVector<T> mutableVector = this.vectors.getContent()[i];
        if (i2 > 0) {
            this.indexes[i] = r4[i] - 1;
        } else if (i2 == 0) {
            this.vectors.removeAt(i);
            this.current--;
        }
        return mutableVector.getContent()[i2];
    }

    public final void push(MutableVector<T> vector) {
        Intrinsics.checkNotNullParameter(vector, "vector");
        if (vector.isNotEmpty()) {
            this.vectors.add(vector);
            pushIndex(vector.getSize() - 1);
            this.current++;
        }
    }
}
