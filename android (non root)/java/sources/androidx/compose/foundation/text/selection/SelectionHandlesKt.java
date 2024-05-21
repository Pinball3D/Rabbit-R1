package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: SelectionHandles.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001d\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0000ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010\"\u0019\u0010\u0000\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0002\u0010\u0003\"\u0019\u0010\u0005\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0006\u0010\u0003\"\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006\u0011"}, d2 = {"HandleHeight", "Landroidx/compose/ui/unit/Dp;", "getHandleHeight", "()F", "F", "HandleWidth", "getHandleWidth", "SelectionHandleInfoKey", "Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "Landroidx/compose/foundation/text/selection/SelectionHandleInfo;", "getSelectionHandleInfoKey", "()Landroidx/compose/ui/semantics/SemanticsPropertyKey;", "getAdjustedCoordinates", "Landroidx/compose/ui/geometry/Offset;", "position", "getAdjustedCoordinates-k-4lQ0M", "(J)J", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectionHandlesKt {
    private static final float HandleHeight;
    private static final float HandleWidth;
    private static final SemanticsPropertyKey<SelectionHandleInfo> SelectionHandleInfoKey = new SemanticsPropertyKey<>("SelectionHandleInfo", null, 2, null);

    public static final float getHandleHeight() {
        return HandleHeight;
    }

    public static final float getHandleWidth() {
        return HandleWidth;
    }

    public static final SemanticsPropertyKey<SelectionHandleInfo> getSelectionHandleInfoKey() {
        return SelectionHandleInfoKey;
    }

    /* renamed from: getAdjustedCoordinates-k-4lQ0M, reason: not valid java name */
    public static final long m904getAdjustedCoordinatesk4lQ0M(long j) {
        return OffsetKt.Offset(Offset.m2400getXimpl(j), Offset.m2401getYimpl(j) - 1.0f);
    }

    static {
        float f = 25;
        HandleWidth = Dp.m4883constructorimpl(f);
        HandleHeight = Dp.m4883constructorimpl(f);
    }
}
