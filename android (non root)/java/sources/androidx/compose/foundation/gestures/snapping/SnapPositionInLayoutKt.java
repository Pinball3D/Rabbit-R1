package androidx.compose.foundation.gestures.snapping;

import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnapPositionInLayout.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\u001aD\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000bH\u0000¨\u0006\f"}, d2 = {"calculateDistanceToDesiredSnapPosition", "", "Landroidx/compose/ui/unit/Density;", "mainAxisViewPortSize", "", "beforeContentPadding", "afterContentPadding", "itemSize", "itemOffset", "itemIndex", "snapPositionInLayout", "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnapPositionInLayoutKt {
    public static final float calculateDistanceToDesiredSnapPosition(Density density, int i, int i2, int i3, int i4, int i5, int i6, SnapPositionInLayout snapPositionInLayout) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        Intrinsics.checkNotNullParameter(snapPositionInLayout, "snapPositionInLayout");
        return i5 - snapPositionInLayout.position(density, (i - i2) - i3, i4, i6);
    }
}
