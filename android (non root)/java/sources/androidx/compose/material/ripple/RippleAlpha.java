package androidx.compose.material.ripple;

import kotlin.Metadata;

/* compiled from: RippleTheme.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\t¨\u0006\u0014"}, d2 = {"Landroidx/compose/material/ripple/RippleAlpha;", "", "draggedAlpha", "", "focusedAlpha", "hoveredAlpha", "pressedAlpha", "(FFFF)V", "getDraggedAlpha", "()F", "getFocusedAlpha", "getHoveredAlpha", "getPressedAlpha", "equals", "", "other", "hashCode", "", "toString", "", "material-ripple_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RippleAlpha {
    public static final int $stable = 0;
    private final float draggedAlpha;
    private final float focusedAlpha;
    private final float hoveredAlpha;
    private final float pressedAlpha;

    public final float getDraggedAlpha() {
        return this.draggedAlpha;
    }

    public final float getFocusedAlpha() {
        return this.focusedAlpha;
    }

    public final float getHoveredAlpha() {
        return this.hoveredAlpha;
    }

    public final float getPressedAlpha() {
        return this.pressedAlpha;
    }

    public RippleAlpha(float f, float f2, float f3, float f4) {
        this.draggedAlpha = f;
        this.focusedAlpha = f2;
        this.hoveredAlpha = f3;
        this.pressedAlpha = f4;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RippleAlpha)) {
            return false;
        }
        RippleAlpha rippleAlpha = (RippleAlpha) other;
        return this.draggedAlpha == rippleAlpha.draggedAlpha && this.focusedAlpha == rippleAlpha.focusedAlpha && this.hoveredAlpha == rippleAlpha.hoveredAlpha && this.pressedAlpha == rippleAlpha.pressedAlpha;
    }

    public int hashCode() {
        return (((((Float.hashCode(this.draggedAlpha) * 31) + Float.hashCode(this.focusedAlpha)) * 31) + Float.hashCode(this.hoveredAlpha)) * 31) + Float.hashCode(this.pressedAlpha);
    }

    public String toString() {
        return "RippleAlpha(draggedAlpha=" + this.draggedAlpha + ", focusedAlpha=" + this.focusedAlpha + ", hoveredAlpha=" + this.hoveredAlpha + ", pressedAlpha=" + this.pressedAlpha + ')';
    }
}
