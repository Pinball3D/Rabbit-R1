package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ShapeContainingUtil.kt */
@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u001a8\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\bH\u0000\u001a4\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0002\u001a \u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u001a4\u0010\u000f\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00102\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\u0011\u001a\u0004\u0018\u00010\b2\b\u0010\u0012\u001a\u0004\u0018\u00010\bH\u0002\u001a=\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00052\u0006\u0010\u0017\u001a\u00020\u0005H\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u001a\f\u0010\u001a\u001a\u00020\u0001*\u00020\u001bH\u0002\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"isInOutline", "", "outline", "Landroidx/compose/ui/graphics/Outline;", ViewHierarchyNode.JsonKeys.X, "", ViewHierarchyNode.JsonKeys.Y, "tmpTouchPointPath", "Landroidx/compose/ui/graphics/Path;", "tmpOpPath", "isInPath", "path", "isInRectangle", "rect", "Landroidx/compose/ui/geometry/Rect;", "isInRoundedRect", "Landroidx/compose/ui/graphics/Outline$Rounded;", "touchPointPath", "opPath", "isWithinEllipse", "cornerRadius", "Landroidx/compose/ui/geometry/CornerRadius;", "centerX", "centerY", "isWithinEllipse-VE1yxkc", "(FFJFF)Z", "cornersFit", "Landroidx/compose/ui/geometry/RoundRect;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ShapeContainingUtilKt {
    public static /* synthetic */ boolean isInOutline$default(Outline outline, float f, float f2, Path path, Path path2, int i, Object obj) {
        if ((i & 8) != 0) {
            path = null;
        }
        if ((i & 16) != 0) {
            path2 = null;
        }
        return isInOutline(outline, f, f2, path, path2);
    }

    public static final boolean isInOutline(Outline outline, float f, float f2, Path path, Path path2) {
        Intrinsics.checkNotNullParameter(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            return isInRectangle(((Outline.Rectangle) outline).getRect(), f, f2);
        }
        if (outline instanceof Outline.Rounded) {
            return isInRoundedRect((Outline.Rounded) outline, f, f2, path, path2);
        }
        if (outline instanceof Outline.Generic) {
            return isInPath(((Outline.Generic) outline).getPath(), f, f2, path, path2);
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final boolean isInRectangle(Rect rect, float f, float f2) {
        return rect.getLeft() <= f && f < rect.getRight() && rect.getTop() <= f2 && f2 < rect.getBottom();
    }

    private static final boolean isInRoundedRect(Outline.Rounded rounded, float f, float f2, Path path, Path path2) {
        RoundRect roundRect = rounded.getRoundRect();
        if (f < roundRect.getLeft() || f >= roundRect.getRight() || f2 < roundRect.getTop() || f2 >= roundRect.getBottom()) {
            return false;
        }
        if (!cornersFit(roundRect)) {
            Path Path = path2 == null ? AndroidPath_androidKt.Path() : path2;
            Path.addRoundRect(roundRect);
            return isInPath(Path, f, f2, path, path2);
        }
        float m2375getXimpl = CornerRadius.m2375getXimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
        float m2376getYimpl = CornerRadius.m2376getYimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) + roundRect.getTop();
        float right = roundRect.getRight() - CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs());
        float m2376getYimpl2 = CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) + roundRect.getTop();
        float right2 = roundRect.getRight() - CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs());
        float bottom = roundRect.getBottom() - CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs());
        float bottom2 = roundRect.getBottom() - CornerRadius.m2376getYimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs());
        float m2375getXimpl2 = CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) + roundRect.getLeft();
        if (f < m2375getXimpl && f2 < m2376getYimpl) {
            return m4232isWithinEllipseVE1yxkc(f, f2, roundRect.m2450getTopLeftCornerRadiuskKHJgLs(), m2375getXimpl, m2376getYimpl);
        }
        if (f < m2375getXimpl2 && f2 > bottom2) {
            return m4232isWithinEllipseVE1yxkc(f, f2, roundRect.m2448getBottomLeftCornerRadiuskKHJgLs(), m2375getXimpl2, bottom2);
        }
        if (f > right && f2 < m2376getYimpl2) {
            return m4232isWithinEllipseVE1yxkc(f, f2, roundRect.m2451getTopRightCornerRadiuskKHJgLs(), right, m2376getYimpl2);
        }
        if (f <= right2 || f2 <= bottom) {
            return true;
        }
        return m4232isWithinEllipseVE1yxkc(f, f2, roundRect.m2449getBottomRightCornerRadiuskKHJgLs(), right2, bottom);
    }

    private static final boolean cornersFit(RoundRect roundRect) {
        return CornerRadius.m2375getXimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) + CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getWidth() && CornerRadius.m2376getYimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) + CornerRadius.m2376getYimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) <= roundRect.getHeight() && CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) + CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) <= roundRect.getHeight();
    }

    /* renamed from: isWithinEllipse-VE1yxkc, reason: not valid java name */
    private static final boolean m4232isWithinEllipseVE1yxkc(float f, float f2, long j, float f3, float f4) {
        float f5 = f - f3;
        float f6 = f2 - f4;
        float m2375getXimpl = CornerRadius.m2375getXimpl(j);
        float m2376getYimpl = CornerRadius.m2376getYimpl(j);
        return ((f5 * f5) / (m2375getXimpl * m2375getXimpl)) + ((f6 * f6) / (m2376getYimpl * m2376getYimpl)) <= 1.0f;
    }

    private static final boolean isInPath(Path path, float f, float f2, Path path2, Path path3) {
        Rect rect = new Rect(f - 0.005f, f2 - 0.005f, f + 0.005f, f2 + 0.005f);
        if (path2 == null) {
            path2 = AndroidPath_androidKt.Path();
        }
        path2.addRect(rect);
        if (path3 == null) {
            path3 = AndroidPath_androidKt.Path();
        }
        path3.mo2533opN5in7k0(path, path2, PathOperation.INSTANCE.m2925getIntersectb3I0S0c());
        boolean isEmpty = path3.isEmpty();
        path3.reset();
        path2.reset();
        return !isEmpty;
    }
}
