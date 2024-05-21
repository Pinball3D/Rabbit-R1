package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BorderStroke.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000¢\u0006\u0002\u0010\u0006J'\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\n\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/foundation/BorderStroke;", "", ViewHierarchyNode.JsonKeys.WIDTH, "Landroidx/compose/ui/unit/Dp;", "brush", "Landroidx/compose/ui/graphics/Brush;", "(FLandroidx/compose/ui/graphics/Brush;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getBrush", "()Landroidx/compose/ui/graphics/Brush;", "getWidth-D9Ej5fM", "()F", "F", "copy", "copy-D5KLDUw", "(FLandroidx/compose/ui/graphics/Brush;)Landroidx/compose/foundation/BorderStroke;", "equals", "", "other", "hashCode", "", "toString", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BorderStroke {
    public static final int $stable = 0;
    private final Brush brush;
    private final float width;

    public /* synthetic */ BorderStroke(float f, Brush brush, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, brush);
    }

    public final Brush getBrush() {
        return this.brush;
    }

    /* renamed from: getWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getWidth() {
        return this.width;
    }

    private BorderStroke(float f, Brush brush) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        this.width = f;
        this.brush = brush;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof BorderStroke)) {
            return false;
        }
        BorderStroke borderStroke = (BorderStroke) other;
        return Dp.m4888equalsimpl0(this.width, borderStroke.width) && Intrinsics.areEqual(this.brush, borderStroke.brush);
    }

    public int hashCode() {
        return (Dp.m4889hashCodeimpl(this.width) * 31) + this.brush.hashCode();
    }

    public String toString() {
        return "BorderStroke(width=" + ((Object) Dp.m4894toStringimpl(this.width)) + ", brush=" + this.brush + ')';
    }

    /* renamed from: copy-D5KLDUw$default, reason: not valid java name */
    public static /* synthetic */ BorderStroke m193copyD5KLDUw$default(BorderStroke borderStroke, float f, Brush brush, int i, Object obj) {
        if ((i & 1) != 0) {
            f = borderStroke.width;
        }
        if ((i & 2) != 0) {
            brush = borderStroke.brush;
        }
        return borderStroke.m194copyD5KLDUw(f, brush);
    }

    /* renamed from: copy-D5KLDUw, reason: not valid java name */
    public final BorderStroke m194copyD5KLDUw(float width, Brush brush) {
        Intrinsics.checkNotNullParameter(brush, "brush");
        return new BorderStroke(width, brush, null);
    }
}
