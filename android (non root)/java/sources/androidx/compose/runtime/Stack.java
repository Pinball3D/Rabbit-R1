package androidx.compose.runtime;

import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import kotlin.Metadata;

/* compiled from: Stack.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\u000b\u0010\u0010\u001a\u00028\u0000¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0010\u001a\u00028\u00002\u0006\u0010\u0012\u001a\u00020\b¢\u0006\u0002\u0010\u0013J\u000b\u0010\u0014\u001a\u00028\u0000¢\u0006\u0002\u0010\u0011J\u0013\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0016\u001a\u00028\u0000¢\u0006\u0002\u0010\u0017J\u0011\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u0019¢\u0006\u0002\u0010\u001aR\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0005j\b\u0012\u0004\u0012\u00028\u0000`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0007\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\u001b"}, d2 = {"Landroidx/compose/runtime/Stack;", ExifInterface.GPS_DIRECTION_TRUE, "", "()V", "backing", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "size", "", "getSize", "()I", "clear", "", "isEmpty", "", "isNotEmpty", "peek", "()Ljava/lang/Object;", "index", "(I)Ljava/lang/Object;", "pop", "push", "value", "(Ljava/lang/Object;)Z", "toArray", "", "()[Ljava/lang/Object;", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Stack<T> {
    private final ArrayList<T> backing = new ArrayList<>();

    public final int getSize() {
        return this.backing.size();
    }

    public final boolean push(T value) {
        return this.backing.add(value);
    }

    public final T pop() {
        return this.backing.remove(getSize() - 1);
    }

    public final T peek() {
        return this.backing.get(getSize() - 1);
    }

    public final T peek(int index) {
        return this.backing.get(index);
    }

    public final boolean isEmpty() {
        return this.backing.isEmpty();
    }

    public final boolean isNotEmpty() {
        return !isEmpty();
    }

    public final void clear() {
        this.backing.clear();
    }

    public final T[] toArray() {
        int size = this.backing.size();
        T[] tArr = (T[]) new Object[size];
        for (int i = 0; i < size; i++) {
            tArr[i] = this.backing.get(i);
        }
        return tArr;
    }
}
