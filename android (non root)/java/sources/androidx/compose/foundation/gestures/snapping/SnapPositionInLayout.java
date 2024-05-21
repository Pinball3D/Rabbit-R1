package androidx.compose.foundation.gestures.snapping;

import androidx.compose.ui.unit.Density;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SnapPositionInLayout.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0005\bç\u0080\u0001\u0018\u0000 \b2\u00020\u0001:\u0001\bJ$\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "", "position", "", "Landroidx/compose/ui/unit/Density;", "layoutSize", "itemSize", "itemIndex", "Companion", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface SnapPositionInLayout {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    int position(Density density, int i, int i2, int i3);

    /* compiled from: SnapPositionInLayout.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout$Companion;", "", "()V", "CenterToCenter", "Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "getCenterToCenter", "()Landroidx/compose/foundation/gestures/snapping/SnapPositionInLayout;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final SnapPositionInLayout CenterToCenter = new SnapPositionInLayout() { // from class: androidx.compose.foundation.gestures.snapping.SnapPositionInLayout$Companion$CenterToCenter$1
            @Override // androidx.compose.foundation.gestures.snapping.SnapPositionInLayout
            public final int position(Density SnapPositionInLayout, int i, int i2, int i3) {
                Intrinsics.checkNotNullParameter(SnapPositionInLayout, "$this$SnapPositionInLayout");
                return (i / 2) - (i2 / 2);
            }
        };

        public final SnapPositionInLayout getCenterToCenter() {
            return CenterToCenter;
        }

        private Companion() {
        }
    }
}
