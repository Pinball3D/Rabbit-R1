package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BringIntoViewResponder.kt */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0014\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0007\u001a\u0014\u0010\u0004\u001a\u00020\u0005*\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u001a\u001c\u0010\b\u001a\u00020\u0006*\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002¨\u0006\f"}, d2 = {"bringIntoViewResponder", "Landroidx/compose/ui/Modifier;", "responder", "Landroidx/compose/foundation/relocation/BringIntoViewResponder;", "completelyOverlaps", "", "Landroidx/compose/ui/geometry/Rect;", "other", "localRectOf", "Landroidx/compose/ui/layout/LayoutCoordinates;", "sourceCoordinates", "rect", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BringIntoViewResponderKt {
    public static final /* synthetic */ Rect access$localRectOf(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, Rect rect) {
        return localRectOf(layoutCoordinates, layoutCoordinates2, rect);
    }

    public static final Modifier bringIntoViewResponder(Modifier modifier, BringIntoViewResponder responder) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(responder, "responder");
        return modifier.then(new BringIntoViewResponderElement(responder));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect localRectOf(LayoutCoordinates layoutCoordinates, LayoutCoordinates layoutCoordinates2, Rect rect) {
        return rect.m2437translatek4lQ0M(layoutCoordinates.localBoundingBoxOf(layoutCoordinates2, false).m2435getTopLeftF1C5BW0());
    }

    private static final boolean completelyOverlaps(Rect rect, Rect rect2) {
        return rect.getLeft() <= rect2.getLeft() && rect.getTop() <= rect2.getTop() && rect.getRight() >= rect2.getRight() && rect.getBottom() >= rect2.getBottom();
    }
}
