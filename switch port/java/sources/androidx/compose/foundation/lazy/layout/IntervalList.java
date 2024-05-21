package androidx.compose.foundation.lazy.layout;

import androidx.exifinterface.media.ExifInterface;
import io.flutter.plugin.editing.SpellCheckPlugin;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: IntervalList.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bw\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u0002:\u0001\u0010J6\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\u0018\u0010\u000b\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\r\u0012\u0004\u0012\u00020\b0\fH&J\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\r2\u0006\u0010\u000f\u001a\u00020\u0004H¦\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0001\u0011ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0012À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/IntervalList;", ExifInterface.GPS_DIRECTION_TRUE, "", "size", "", "getSize", "()I", "forEach", "", "fromIndex", "toIndex", "block", "Lkotlin/Function1;", "Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;", "get", "index", "Interval", "Landroidx/compose/foundation/lazy/layout/MutableIntervalList;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface IntervalList<T> {
    void forEach(int fromIndex, int toIndex, Function1<? super Interval<? extends T>, Unit> block);

    Interval<T> get(int index);

    int getSize();

    static /* synthetic */ void forEach$default(IntervalList intervalList, int i, int i2, Function1 function1, int i3, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forEach");
        }
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = intervalList.getSize() - 1;
        }
        intervalList.forEach(i, i2, function1);
    }

    /* compiled from: IntervalList.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0007\u0018\u0000*\u0006\b\u0001\u0010\u0001 \u00012\u00020\u0002B\u001f\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00028\u0001¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0013\u0010\u0006\u001a\u00028\u0001¢\u0006\n\n\u0002\u0010\r\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/lazy/layout/IntervalList$Interval;", ExifInterface.GPS_DIRECTION_TRUE, "", SpellCheckPlugin.START_INDEX_KEY, "", "size", "value", "(IILjava/lang/Object;)V", "getSize", "()I", "getStartIndex", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Interval<T> {
        public static final int $stable = 0;
        private final int size;
        private final int startIndex;
        private final T value;

        public final int getSize() {
            return this.size;
        }

        public final int getStartIndex() {
            return this.startIndex;
        }

        public final T getValue() {
            return this.value;
        }

        public Interval(int i, int i2, T t) {
            this.startIndex = i;
            this.size = i2;
            this.value = t;
            if (i < 0) {
                throw new IllegalArgumentException(("startIndex should be >= 0, but was " + i).toString());
            }
            if (i2 <= 0) {
                throw new IllegalArgumentException(("size should be >0, but was " + i2).toString());
            }
        }
    }
}
