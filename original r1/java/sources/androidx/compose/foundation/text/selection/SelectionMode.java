package androidx.compose.foundation.text.selection;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SelectionMode.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ-\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010j\u0002\b\u0011j\u0002\b\u0012\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0013"}, d2 = {"Landroidx/compose/foundation/text/selection/SelectionMode;", "", "(Ljava/lang/String;I)V", "compare", "", "position", "Landroidx/compose/ui/geometry/Offset;", "bounds", "Landroidx/compose/ui/geometry/Rect;", "compare-3MmeM6k$foundation_release", "(JLandroidx/compose/ui/geometry/Rect;)I", "isSelected", "", "start", "end", "isSelected-2x9bVx0$foundation_release", "(Landroidx/compose/ui/geometry/Rect;JJ)Z", "Vertical", "Horizontal", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public enum SelectionMode {
    Vertical { // from class: androidx.compose.foundation.text.selection.SelectionMode.Vertical
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* renamed from: compare-3MmeM6k$foundation_release */
        public int mo942compare3MmeM6k$foundation_release(long position, Rect bounds) {
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            if (bounds.m2426containsk4lQ0M(position)) {
                return 0;
            }
            if (Offset.m2401getYimpl(position) < bounds.getTop()) {
                return -1;
            }
            return (Offset.m2400getXimpl(position) >= bounds.getLeft() || Offset.m2401getYimpl(position) >= bounds.getBottom()) ? 1 : -1;
        }
    },
    Horizontal { // from class: androidx.compose.foundation.text.selection.SelectionMode.Horizontal
        @Override // androidx.compose.foundation.text.selection.SelectionMode
        /* renamed from: compare-3MmeM6k$foundation_release */
        public int mo942compare3MmeM6k$foundation_release(long position, Rect bounds) {
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            if (bounds.m2426containsk4lQ0M(position)) {
                return 0;
            }
            if (Offset.m2400getXimpl(position) < bounds.getLeft()) {
                return -1;
            }
            return (Offset.m2401getYimpl(position) >= bounds.getTop() || Offset.m2400getXimpl(position) >= bounds.getRight()) ? 1 : -1;
        }
    };

    /* synthetic */ SelectionMode(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* renamed from: compare-3MmeM6k$foundation_release, reason: not valid java name */
    public abstract int mo942compare3MmeM6k$foundation_release(long position, Rect bounds);

    /* renamed from: isSelected-2x9bVx0$foundation_release, reason: not valid java name */
    public final boolean m943isSelected2x9bVx0$foundation_release(Rect bounds, long start, long end) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        if (bounds.m2426containsk4lQ0M(start) || bounds.m2426containsk4lQ0M(end)) {
            return true;
        }
        return (mo942compare3MmeM6k$foundation_release(start, bounds) > 0) ^ (mo942compare3MmeM6k$foundation_release(end, bounds) > 0);
    }
}
