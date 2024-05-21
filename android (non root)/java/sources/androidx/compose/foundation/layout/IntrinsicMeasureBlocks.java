package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.IntrinsicMeasurable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0011\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R/\u0010\u0003\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR/\u0010\n\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR/\u0010\f\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\tR/\u0010\u000e\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\tR/\u0010\u0010\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\tR/\u0010\u0012\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\tR/\u0010\u0014\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\tR/\u0010\u0016\u001a \u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\t¨\u0006\u0018"}, d2 = {"Landroidx/compose/foundation/layout/IntrinsicMeasureBlocks;", "", "()V", "HorizontalMaxHeight", "Lkotlin/Function3;", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", "", "getHorizontalMaxHeight", "()Lkotlin/jvm/functions/Function3;", "HorizontalMaxWidth", "getHorizontalMaxWidth", "HorizontalMinHeight", "getHorizontalMinHeight", "HorizontalMinWidth", "getHorizontalMinWidth", "VerticalMaxHeight", "getVerticalMaxHeight", "VerticalMaxWidth", "getVerticalMaxWidth", "VerticalMinHeight", "getVerticalMinHeight", "VerticalMinWidth", "getVerticalMinWidth", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class IntrinsicMeasureBlocks {
    public static final IntrinsicMeasureBlocks INSTANCE = new IntrinsicMeasureBlocks();
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinWidth = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicWidth(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, i, i2, LayoutOrientation.Horizontal, LayoutOrientation.Horizontal));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinWidth = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicWidth(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, i, i2, LayoutOrientation.Vertical, LayoutOrientation.Horizontal));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMinHeight = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicHeight(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMinHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, i, i2, LayoutOrientation.Horizontal, LayoutOrientation.Vertical));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMinHeight = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.minIntrinsicHeight(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMinHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, i, i2, LayoutOrientation.Vertical, LayoutOrientation.Vertical));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxWidth = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, i, i2, LayoutOrientation.Horizontal, LayoutOrientation.Horizontal));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxWidth = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxWidth$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, i, i2, LayoutOrientation.Vertical, LayoutOrientation.Horizontal));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> HorizontalMaxHeight = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$HorizontalMaxHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, i, i2, LayoutOrientation.Horizontal, LayoutOrientation.Vertical));
        }
    };
    private static final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> VerticalMaxHeight = new Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1
        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Integer invoke(List<? extends IntrinsicMeasurable> list, Integer num, Integer num2) {
            return invoke(list, num.intValue(), num2.intValue());
        }

        public final Integer invoke(List<? extends IntrinsicMeasurable> measurables, int i, int i2) {
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return Integer.valueOf(RowColumnImplKt.access$intrinsicSize(measurables, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1.1
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicHeight(i3));
                }
            }, new Function2<IntrinsicMeasurable, Integer, Integer>() { // from class: androidx.compose.foundation.layout.IntrinsicMeasureBlocks$VerticalMaxHeight$1.2
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Integer invoke(IntrinsicMeasurable intrinsicMeasurable, Integer num) {
                    return invoke(intrinsicMeasurable, num.intValue());
                }

                public final Integer invoke(IntrinsicMeasurable intrinsicSize, int i3) {
                    Intrinsics.checkNotNullParameter(intrinsicSize, "$this$intrinsicSize");
                    return Integer.valueOf(intrinsicSize.maxIntrinsicWidth(i3));
                }
            }, i, i2, LayoutOrientation.Vertical, LayoutOrientation.Vertical));
        }
    };

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMaxHeight() {
        return HorizontalMaxHeight;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMaxWidth() {
        return HorizontalMaxWidth;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMinHeight() {
        return HorizontalMinHeight;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getHorizontalMinWidth() {
        return HorizontalMinWidth;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMaxHeight() {
        return VerticalMaxHeight;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMaxWidth() {
        return VerticalMaxWidth;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMinHeight() {
        return VerticalMinHeight;
    }

    public final Function3<List<? extends IntrinsicMeasurable>, Integer, Integer, Integer> getVerticalMinWidth() {
        return VerticalMinWidth;
    }

    private IntrinsicMeasureBlocks() {
    }
}
