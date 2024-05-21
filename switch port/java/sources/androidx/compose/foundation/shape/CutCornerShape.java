package androidx.compose.foundation.shape;

import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CutCornerShape.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007J(\u0010\b\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0003H\u0016JE\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0002\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\r2\u0006\u0010\u0006\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0019H\u0016\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Landroidx/compose/foundation/shape/CutCornerShape;", "Landroidx/compose/foundation/shape/CornerBasedShape;", "topStart", "Landroidx/compose/foundation/shape/CornerSize;", "topEnd", "bottomEnd", "bottomStart", "(Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;Landroidx/compose/foundation/shape/CornerSize;)V", "copy", "createOutline", "Landroidx/compose/ui/graphics/Outline;", "size", "Landroidx/compose/ui/geometry/Size;", "", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "createOutline-LjSzlW0", "(JFFFFLandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/graphics/Outline;", "equals", "", "other", "", "hashCode", "", "toString", "", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CutCornerShape extends CornerBasedShape {
    public static final int $stable = 0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CutCornerShape(CornerSize topStart, CornerSize topEnd, CornerSize bottomEnd, CornerSize bottomStart) {
        super(topStart, topEnd, bottomEnd, bottomStart);
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    /* renamed from: createOutline-LjSzlW0 */
    public Outline mo726createOutlineLjSzlW0(long size, float topStart, float topEnd, float bottomEnd, float bottomStart, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        if (topStart + topEnd + bottomStart + bottomEnd == 0.0f) {
            return new Outline.Rectangle(SizeKt.m2490toRectuvyYCjk(size));
        }
        Path Path = AndroidPath_androidKt.Path();
        float f = layoutDirection == LayoutDirection.Ltr ? topStart : topEnd;
        Path.moveTo(0.0f, f);
        Path.lineTo(f, 0.0f);
        if (layoutDirection == LayoutDirection.Ltr) {
            topStart = topEnd;
        }
        Path.lineTo(Size.m2469getWidthimpl(size) - topStart, 0.0f);
        Path.lineTo(Size.m2469getWidthimpl(size), topStart);
        float f2 = layoutDirection == LayoutDirection.Ltr ? bottomEnd : bottomStart;
        Path.lineTo(Size.m2469getWidthimpl(size), Size.m2466getHeightimpl(size) - f2);
        Path.lineTo(Size.m2469getWidthimpl(size) - f2, Size.m2466getHeightimpl(size));
        if (layoutDirection == LayoutDirection.Ltr) {
            bottomEnd = bottomStart;
        }
        Path.lineTo(bottomEnd, Size.m2466getHeightimpl(size));
        Path.lineTo(0.0f, Size.m2466getHeightimpl(size) - bottomEnd);
        Path.close();
        return new Outline.Generic(Path);
    }

    @Override // androidx.compose.foundation.shape.CornerBasedShape
    public CutCornerShape copy(CornerSize topStart, CornerSize topEnd, CornerSize bottomEnd, CornerSize bottomStart) {
        Intrinsics.checkNotNullParameter(topStart, "topStart");
        Intrinsics.checkNotNullParameter(topEnd, "topEnd");
        Intrinsics.checkNotNullParameter(bottomEnd, "bottomEnd");
        Intrinsics.checkNotNullParameter(bottomStart, "bottomStart");
        return new CutCornerShape(topStart, topEnd, bottomEnd, bottomStart);
    }

    public String toString() {
        return "CutCornerShape(topStart = " + getTopStart() + ", topEnd = " + getTopEnd() + ", bottomEnd = " + getBottomEnd() + ", bottomStart = " + getBottomStart() + ')';
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CutCornerShape)) {
            return false;
        }
        CutCornerShape cutCornerShape = (CutCornerShape) other;
        return Intrinsics.areEqual(getTopStart(), cutCornerShape.getTopStart()) && Intrinsics.areEqual(getTopEnd(), cutCornerShape.getTopEnd()) && Intrinsics.areEqual(getBottomEnd(), cutCornerShape.getBottomEnd()) && Intrinsics.areEqual(getBottomStart(), cutCornerShape.getBottomStart());
    }

    public int hashCode() {
        return (((((getTopStart().hashCode() * 31) + getTopEnd().hashCode()) * 31) + getBottomEnd().hashCode()) * 31) + getBottomStart().hashCode();
    }
}
