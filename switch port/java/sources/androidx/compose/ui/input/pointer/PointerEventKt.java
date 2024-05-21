package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.unit.IntSize;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerEvent.kt */
@Metadata(d1 = {"\u0000.\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0002H\u0007\u001a\f\u0010\t\u001a\u00020\b*\u00020\u0002H\u0007\u001a\f\u0010\n\u001a\u00020\b*\u00020\u0002H\u0007\u001a!\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a'\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0012\u0010\u0014\u001a\u00020\u0015*\u00020\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u0016\u001a\f\u0010\u0017\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u0012\u0010\u0018\u001a\u00020\u0015*\u00020\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u0016\u001a\u001e\u0010\u0019\u001a\u00020\u0015*\u00020\u00022\b\b\u0002\u0010\u001a\u001a\u00020\u0001H\u0002ø\u0001\u0001¢\u0006\u0002\u0010\u001b\u001a\n\u0010\u001c\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u001d\u001a\u00020\u0001*\u00020\u0002\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"anyChangeConsumed", "", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "changedToDown", "changedToDownIgnoreConsumed", "changedToUp", "changedToUpIgnoreConsumed", "consumeAllChanges", "", "consumeDownChange", "consumePositionChange", "isOutOfBounds", "size", "Landroidx/compose/ui/unit/IntSize;", "isOutOfBounds-O0kMr_c", "(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z", "extendedTouchPadding", "Landroidx/compose/ui/geometry/Size;", "isOutOfBounds-jwHxaWs", "(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z", "positionChange", "Landroidx/compose/ui/geometry/Offset;", "(Landroidx/compose/ui/input/pointer/PointerInputChange;)J", "positionChangeConsumed", "positionChangeIgnoreConsumed", "positionChangeInternal", "ignoreConsumed", "(Landroidx/compose/ui/input/pointer/PointerInputChange;Z)J", "positionChanged", "positionChangedIgnoreConsumed", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerEventKt {
    public static final boolean changedToDown(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return (pointerInputChange.isConsumed() || pointerInputChange.getPreviousPressed() || !pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToDownIgnoreConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return !pointerInputChange.getPreviousPressed() && pointerInputChange.getPressed();
    }

    public static final boolean changedToUp(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return (pointerInputChange.isConsumed() || !pointerInputChange.getPreviousPressed() || pointerInputChange.getPressed()) ? false : true;
    }

    public static final boolean changedToUpIgnoreConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return pointerInputChange.getPreviousPressed() && !pointerInputChange.getPressed();
    }

    public static final boolean positionChanged(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return !Offset.m2397equalsimpl0(positionChangeInternal(pointerInputChange, false), Offset.INSTANCE.m2416getZeroF1C5BW0());
    }

    public static final boolean positionChangedIgnoreConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return !Offset.m2397equalsimpl0(positionChangeInternal(pointerInputChange, true), Offset.INSTANCE.m2416getZeroF1C5BW0());
    }

    public static final long positionChange(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return positionChangeInternal(pointerInputChange, false);
    }

    public static final long positionChangeIgnoreConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return positionChangeInternal(pointerInputChange, true);
    }

    static /* synthetic */ long positionChangeInternal$default(PointerInputChange pointerInputChange, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return positionChangeInternal(pointerInputChange, z);
    }

    private static final long positionChangeInternal(PointerInputChange pointerInputChange, boolean z) {
        long m2404minusMKHz9U = Offset.m2404minusMKHz9U(pointerInputChange.getPosition(), pointerInputChange.getPreviousPosition());
        return (z || !pointerInputChange.isConsumed()) ? m2404minusMKHz9U : Offset.INSTANCE.m2416getZeroF1C5BW0();
    }

    @Deprecated(message = "Partial consumption has been deprecated. Use isConsumed instead", replaceWith = @ReplaceWith(expression = "isConsumed", imports = {}))
    public static final boolean positionChangeConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return pointerInputChange.isConsumed();
    }

    @Deprecated(message = "Partial consumption has been deprecated. Use isConsumed instead", replaceWith = @ReplaceWith(expression = "isConsumed", imports = {}))
    public static final boolean anyChangeConsumed(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        return pointerInputChange.isConsumed();
    }

    @Deprecated(message = "Partial consumption has been deprecated. Use consume() instead.", replaceWith = @ReplaceWith(expression = "if (pressed != previousPressed) consume()", imports = {}))
    public static final void consumeDownChange(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (pointerInputChange.getPressed() != pointerInputChange.getPreviousPressed()) {
            pointerInputChange.consume();
        }
    }

    @Deprecated(message = "Partial consumption has been deprecated. Use consume() instead.", replaceWith = @ReplaceWith(expression = "if (positionChange() != Offset.Zero) consume()", imports = {}))
    public static final void consumePositionChange(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        if (Offset.m2397equalsimpl0(positionChange(pointerInputChange), Offset.INSTANCE.m2416getZeroF1C5BW0())) {
            return;
        }
        pointerInputChange.consume();
    }

    @Deprecated(message = "Use consume() instead", replaceWith = @ReplaceWith(expression = "consume()", imports = {}))
    public static final void consumeAllChanges(PointerInputChange pointerInputChange) {
        Intrinsics.checkNotNullParameter(pointerInputChange, "<this>");
        pointerInputChange.consume();
    }

    @Deprecated(message = "Use isOutOfBounds() that supports minimum touch target", replaceWith = @ReplaceWith(expression = "this.isOutOfBounds(size, extendedTouchPadding)", imports = {}))
    /* renamed from: isOutOfBounds-O0kMr_c, reason: not valid java name */
    public static final boolean m3703isOutOfBoundsO0kMr_c(PointerInputChange isOutOfBounds, long j) {
        Intrinsics.checkNotNullParameter(isOutOfBounds, "$this$isOutOfBounds");
        long position = isOutOfBounds.getPosition();
        float m2400getXimpl = Offset.m2400getXimpl(position);
        float m2401getYimpl = Offset.m2401getYimpl(position);
        return m2400getXimpl < 0.0f || m2400getXimpl > ((float) IntSize.m5043getWidthimpl(j)) || m2401getYimpl < 0.0f || m2401getYimpl > ((float) IntSize.m5042getHeightimpl(j));
    }

    /* renamed from: isOutOfBounds-jwHxaWs, reason: not valid java name */
    public static final boolean m3704isOutOfBoundsjwHxaWs(PointerInputChange isOutOfBounds, long j, long j2) {
        Intrinsics.checkNotNullParameter(isOutOfBounds, "$this$isOutOfBounds");
        if (!PointerType.m3829equalsimpl0(isOutOfBounds.getType(), PointerType.INSTANCE.m3836getTouchT8wyACA())) {
            return m3703isOutOfBoundsO0kMr_c(isOutOfBounds, j);
        }
        long position = isOutOfBounds.getPosition();
        float m2400getXimpl = Offset.m2400getXimpl(position);
        float m2401getYimpl = Offset.m2401getYimpl(position);
        return m2400getXimpl < (-Size.m2469getWidthimpl(j2)) || m2400getXimpl > ((float) IntSize.m5043getWidthimpl(j)) + Size.m2469getWidthimpl(j2) || m2401getYimpl < (-Size.m2466getHeightimpl(j2)) || m2401getYimpl > ((float) IntSize.m5042getHeightimpl(j)) + Size.m2466getHeightimpl(j2);
    }
}
