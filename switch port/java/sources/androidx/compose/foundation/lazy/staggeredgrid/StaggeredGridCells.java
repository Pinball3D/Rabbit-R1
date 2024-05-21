package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridCells.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\bg\u0018\u00002\u00020\u0001:\u0003\b\t\nJ\u001c\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", "", "calculateCrossAxisCellSizes", "", "Landroidx/compose/ui/unit/Density;", "availableSize", "", "spacing", "Adaptive", "Fixed", "FixedSize", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface StaggeredGridCells {
    int[] calculateCrossAxisCellSizes(Density density, int i, int i2);

    /* compiled from: LazyStaggeredGridCells.kt */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096\u0002J\b\u0010\t\u001a\u00020\u0003H\u0016J\u001c\u0010\n\u001a\u00020\u000b*\u00020\f2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Fixed;", "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", MetricSummary.JsonKeys.COUNT, "", "(I)V", "equals", "", "other", "", "hashCode", "calculateCrossAxisCellSizes", "", "Landroidx/compose/ui/unit/Density;", "availableSize", "spacing", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Fixed implements StaggeredGridCells {
        public static final int $stable = 0;
        private final int count;

        public int hashCode() {
            return -this.count;
        }

        public Fixed(int i) {
            this.count = i;
            if (i <= 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        @Override // androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells
        public int[] calculateCrossAxisCellSizes(Density density, int i, int i2) {
            int[] calculateCellsCrossAxisSizeImpl;
            Intrinsics.checkNotNullParameter(density, "<this>");
            calculateCellsCrossAxisSizeImpl = LazyStaggeredGridCellsKt.calculateCellsCrossAxisSizeImpl(i, this.count, i2);
            return calculateCellsCrossAxisSizeImpl;
        }

        public boolean equals(Object other) {
            return (other instanceof Fixed) && this.count == ((Fixed) other).count;
        }
    }

    /* compiled from: LazyStaggeredGridCells.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\u001c\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$Adaptive;", "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", "minSize", "Landroidx/compose/ui/unit/Dp;", "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "equals", "", "other", "", "hashCode", "", "calculateCrossAxisCellSizes", "", "Landroidx/compose/ui/unit/Density;", "availableSize", "spacing", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Adaptive implements StaggeredGridCells {
        public static final int $stable = 0;
        private final float minSize;

        public /* synthetic */ Adaptive(float f, DefaultConstructorMarker defaultConstructorMarker) {
            this(f);
        }

        private Adaptive(float f) {
            this.minSize = f;
            if (Dp.m4882compareTo0680j_4(f, Dp.m4883constructorimpl(0)) <= 0) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        @Override // androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells
        public int[] calculateCrossAxisCellSizes(Density density, int i, int i2) {
            int[] calculateCellsCrossAxisSizeImpl;
            Intrinsics.checkNotNullParameter(density, "<this>");
            calculateCellsCrossAxisSizeImpl = LazyStaggeredGridCellsKt.calculateCellsCrossAxisSizeImpl(i, Math.max((i + i2) / (density.mo329roundToPx0680j_4(this.minSize) + i2), 1), i2);
            return calculateCellsCrossAxisSizeImpl;
        }

        public int hashCode() {
            return Dp.m4889hashCodeimpl(this.minSize);
        }

        public boolean equals(Object other) {
            return (other instanceof Adaptive) && Dp.m4888equalsimpl0(this.minSize, ((Adaptive) other).minSize);
        }
    }

    /* compiled from: LazyStaggeredGridCells.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0015\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u0013\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0096\u0002J\b\u0010\n\u001a\u00020\u000bH\u0016J\u001c\u0010\f\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0011"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells$FixedSize;", "Landroidx/compose/foundation/lazy/staggeredgrid/StaggeredGridCells;", "size", "Landroidx/compose/ui/unit/Dp;", "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "equals", "", "other", "", "hashCode", "", "calculateCrossAxisCellSizes", "", "Landroidx/compose/ui/unit/Density;", "availableSize", "spacing", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class FixedSize implements StaggeredGridCells {
        public static final int $stable = 0;
        private final float size;

        public /* synthetic */ FixedSize(float f, DefaultConstructorMarker defaultConstructorMarker) {
            this(f);
        }

        private FixedSize(float f) {
            this.size = f;
        }

        @Override // androidx.compose.foundation.lazy.staggeredgrid.StaggeredGridCells
        public int[] calculateCrossAxisCellSizes(Density density, int i, int i2) {
            Intrinsics.checkNotNullParameter(density, "<this>");
            int mo329roundToPx0680j_4 = density.mo329roundToPx0680j_4(this.size);
            int i3 = mo329roundToPx0680j_4 + i2;
            int i4 = i2 + i;
            if (i3 >= i4) {
                return new int[]{i};
            }
            int i5 = i4 / i3;
            int[] iArr = new int[i5];
            for (int i6 = 0; i6 < i5; i6++) {
                iArr[i6] = mo329roundToPx0680j_4;
            }
            return iArr;
        }

        public int hashCode() {
            return Dp.m4889hashCodeimpl(this.size);
        }

        public boolean equals(Object other) {
            return (other instanceof FixedSize) && Dp.m4888equalsimpl0(this.size, ((FixedSize) other).size);
        }
    }
}
