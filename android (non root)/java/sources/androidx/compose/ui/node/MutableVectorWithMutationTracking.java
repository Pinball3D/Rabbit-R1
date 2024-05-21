package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MutableVectorWithMutationTracking.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B!\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u001b\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00028\u0000¢\u0006\u0002\u0010\u0014J\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u0016J\u0006\u0010\u0017\u001a\u00020\u0007J \u0010\u0018\u001a\u00020\u00072\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00070\u001aH\u0086\bø\u0001\u0000J\u0016\u0010\u001b\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\fH\u0086\u0002¢\u0006\u0002\u0010\u001cJ\u0013\u0010\u001d\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\f¢\u0006\u0002\u0010\u001cR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u000b\u001a\u00020\f8F¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001e"}, d2 = {"Landroidx/compose/ui/node/MutableVectorWithMutationTracking;", ExifInterface.GPS_DIRECTION_TRUE, "", "vector", "Landroidx/compose/runtime/collection/MutableVector;", "onVectorMutated", "Lkotlin/Function0;", "", "(Landroidx/compose/runtime/collection/MutableVector;Lkotlin/jvm/functions/Function0;)V", "getOnVectorMutated", "()Lkotlin/jvm/functions/Function0;", "size", "", "getSize", "()I", "getVector", "()Landroidx/compose/runtime/collection/MutableVector;", "add", "index", "element", "(ILjava/lang/Object;)V", "asList", "", "clear", "forEach", "block", "Lkotlin/Function1;", "get", "(I)Ljava/lang/Object;", "removeAt", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableVectorWithMutationTracking<T> {
    private final Function0<Unit> onVectorMutated;
    private final MutableVector<T> vector;

    public final Function0<Unit> getOnVectorMutated() {
        return this.onVectorMutated;
    }

    public final MutableVector<T> getVector() {
        return this.vector;
    }

    public MutableVectorWithMutationTracking(MutableVector<T> vector, Function0<Unit> onVectorMutated) {
        Intrinsics.checkNotNullParameter(vector, "vector");
        Intrinsics.checkNotNullParameter(onVectorMutated, "onVectorMutated");
        this.vector = vector;
        this.onVectorMutated = onVectorMutated;
    }

    public final int getSize() {
        return this.vector.getSize();
    }

    public final void clear() {
        this.vector.clear();
        this.onVectorMutated.invoke();
    }

    public final void add(int index, T element) {
        this.vector.add(index, element);
        this.onVectorMutated.invoke();
    }

    public final T removeAt(int index) {
        T removeAt = this.vector.removeAt(index);
        this.onVectorMutated.invoke();
        return removeAt;
    }

    public final void forEach(Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        MutableVector<T> vector = getVector();
        int size = vector.getSize();
        if (size > 0) {
            T[] content = vector.getContent();
            int i = 0;
            do {
                block.invoke(content[i]);
                i++;
            } while (i < size);
        }
    }

    public final List<T> asList() {
        return this.vector.asMutableList();
    }

    public final T get(int index) {
        return this.vector.getContent()[index];
    }
}
