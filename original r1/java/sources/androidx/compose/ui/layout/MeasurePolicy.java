package androidx.compose.ui.layout;

import androidx.compose.ui.unit.ConstraintsKt;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: MeasurePolicy.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bç\u0080\u0001\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0016J\"\u0010\t\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0016J/\u0010\u000b\u001a\u00020\f*\u00020\r2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00062\u0006\u0010\u000f\u001a\u00020\u0010H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\"\u0010\u0013\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0003H\u0016J\"\u0010\u0014\u001a\u00020\u0003*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\n\u001a\u00020\u0003H\u0016ø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0015À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/layout/MeasurePolicy;", "", "maxIntrinsicHeight", "", "Landroidx/compose/ui/layout/IntrinsicMeasureScope;", "measurables", "", "Landroidx/compose/ui/layout/IntrinsicMeasurable;", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "measure", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "Landroidx/compose/ui/layout/Measurable;", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measure-3p2s80s", "(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;", "minIntrinsicHeight", "minIntrinsicWidth", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface MeasurePolicy {
    /* renamed from: measure-3p2s80s */
    MeasureResult mo21measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j);

    /* compiled from: MeasurePolicy.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        public static int minIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope receiver, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.minIntrinsicWidth(receiver, measurables, i);
        }

        @Deprecated
        public static int minIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope receiver, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.minIntrinsicHeight(receiver, measurables, i);
        }

        @Deprecated
        public static int maxIntrinsicWidth(MeasurePolicy measurePolicy, IntrinsicMeasureScope receiver, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.maxIntrinsicWidth(receiver, measurables, i);
        }

        @Deprecated
        public static int maxIntrinsicHeight(MeasurePolicy measurePolicy, IntrinsicMeasureScope receiver, List<? extends IntrinsicMeasurable> measurables, int i) {
            Intrinsics.checkNotNullParameter(receiver, "$receiver");
            Intrinsics.checkNotNullParameter(measurables, "measurables");
            return MeasurePolicy.super.maxIntrinsicHeight(receiver, measurables, i);
        }
    }

    default int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i2), IntrinsicMinMax.Min, IntrinsicWidthHeight.Width));
        }
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null);
        return mo21measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, Constraints$default).getWidth();
    }

    default int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i2), IntrinsicMinMax.Min, IntrinsicWidthHeight.Height));
        }
        long Constraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null);
        return mo21measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, Constraints$default).getHeight();
    }

    default int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i2), IntrinsicMinMax.Max, IntrinsicWidthHeight.Width));
        }
        long Constraints$default = ConstraintsKt.Constraints$default(0, 0, 0, i, 7, null);
        return mo21measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, Constraints$default).getWidth();
    }

    default int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, List<? extends IntrinsicMeasurable> measurables, int i) {
        Intrinsics.checkNotNullParameter(intrinsicMeasureScope, "<this>");
        Intrinsics.checkNotNullParameter(measurables, "measurables");
        ArrayList arrayList = new ArrayList(measurables.size());
        int size = measurables.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new DefaultIntrinsicMeasurable(measurables.get(i2), IntrinsicMinMax.Max, IntrinsicWidthHeight.Height));
        }
        long Constraints$default = ConstraintsKt.Constraints$default(0, i, 0, 0, 13, null);
        return mo21measure3p2s80s(new IntrinsicsMeasureScope(intrinsicMeasureScope, intrinsicMeasureScope.getLayoutDirection()), arrayList, Constraints$default).getHeight();
    }
}
