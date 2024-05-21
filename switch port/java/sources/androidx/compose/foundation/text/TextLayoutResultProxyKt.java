package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import kotlin.Metadata;

/* compiled from: TextLayoutResultProxy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0004\u0010\u0005\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"coerceIn", "Landroidx/compose/ui/geometry/Offset;", "rect", "Landroidx/compose/ui/geometry/Rect;", "coerceIn-3MmeM6k", "(JLandroidx/compose/ui/geometry/Rect;)J", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TextLayoutResultProxyKt {
    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: coerceIn-3MmeM6k, reason: not valid java name */
    public static final long m848coerceIn3MmeM6k(long j, Rect rect) {
        float right;
        float bottom;
        if (Offset.m2400getXimpl(j) < rect.getLeft()) {
            right = rect.getLeft();
        } else {
            right = Offset.m2400getXimpl(j) > rect.getRight() ? rect.getRight() : Offset.m2400getXimpl(j);
        }
        if (Offset.m2401getYimpl(j) < rect.getTop()) {
            bottom = rect.getTop();
        } else {
            bottom = Offset.m2401getYimpl(j) > rect.getBottom() ? rect.getBottom() : Offset.m2401getYimpl(j);
        }
        return OffsetKt.Offset(right, bottom);
    }
}
