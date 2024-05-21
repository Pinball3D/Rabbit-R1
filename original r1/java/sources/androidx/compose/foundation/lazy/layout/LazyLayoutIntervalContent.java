package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutIntervalContent.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b'\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003:\u0001\u0001B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\r\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000e\u001a\u00020\nJ\u000e\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\nJW\u0010\u0010\u001a\u0002H\u0011\"\u0004\b\u0001\u0010\u00112\u0006\u0010\u0012\u001a\u00020\n26\u0010\u0013\u001a2\u0012\u0013\u0012\u00110\n¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0017\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u0015\u0012\b\b\u0016\u0012\u0004\b\b(\u0018\u0012\u0004\u0012\u0002H\u00110\u0014H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0019R\u0018\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent;", "Interval", "Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "", "()V", "intervals", "Landroidx/compose/foundation/lazy/layout/IntervalList;", "getIntervals", "()Landroidx/compose/foundation/lazy/layout/IntervalList;", "itemCount", "", "getItemCount", "()I", "getContentType", "index", "getKey", "withInterval", ExifInterface.GPS_DIRECTION_TRUE, "globalIndex", "block", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "localIntervalIndex", "content", "(ILkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class LazyLayoutIntervalContent<Interval extends Interval> {
    public static final int $stable = 0;

    public abstract IntervalList<Interval> getIntervals();

    public final int getItemCount() {
        return getIntervals().getSize();
    }

    public final <T> T withInterval(int globalIndex, Function2<? super Integer, ? super Interval, ? extends T> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        IntervalList.Interval<Interval> interval = getIntervals().get(globalIndex);
        return block.invoke(Integer.valueOf(globalIndex - interval.getStartIndex()), interval.getValue());
    }

    /* compiled from: LazyLayoutIntervalContent.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001R1\u0010\u0002\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR1\u0010\n\u001a\u001f\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\tø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutIntervalContent$Interval;", "", "key", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "index", "getKey", "()Lkotlin/jvm/functions/Function1;", "type", "getType", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface Interval {
        default Function1<Integer, Object> getKey() {
            return null;
        }

        default Function1<Integer, Object> getType() {
            return new Function1() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent$Interval$type$1
                public final Void invoke(int i) {
                    return null;
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                    return invoke(((Number) obj).intValue());
                }
            };
        }
    }

    public final Object getKey(int index) {
        Object invoke;
        IntervalList.Interval<Interval> interval = getIntervals().get(index);
        int startIndex = index - interval.getStartIndex();
        Function1<Integer, Object> key = interval.getValue().getKey();
        return (key == null || (invoke = key.invoke(Integer.valueOf(startIndex))) == null) ? Lazy_androidKt.getDefaultLazyLayoutKey(index) : invoke;
    }

    public final Object getContentType(int index) {
        IntervalList.Interval<Interval> interval = getIntervals().get(index);
        return interval.getValue().getType().invoke(Integer.valueOf(index - interval.getStartIndex()));
    }
}
