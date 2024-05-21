package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Outline.kt */
@Metadata(d1 = {"\u0000|\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001a\u0010\u0005\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b\u001aQ\u0010\u0005\u001a\u00020\u0001*\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015\u001aQ\u0010\u0005\u001a\u00020\u0001*\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u0013ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u001a\u009f\u0001\u0010\u001a\u001a\u00020\u0001*\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00042,\u0010\u001b\u001a(\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00010\u001c¢\u0006\u0002\b!2,\u0010\"\u001a(\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110#¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010\u001c¢\u0006\u0002\b!2,\u0010%\u001a(\u0012\u0004\u0012\u00020\t\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00010\u001c¢\u0006\u0002\b!H\u0082\b\u001a\f\u0010'\u001a\u00020(*\u00020#H\u0002\u001a\u0014\u0010)\u001a\u00020**\u00020\u001dH\u0002ø\u0001\u0001¢\u0006\u0002\u0010+\u001a\u0014\u0010)\u001a\u00020**\u00020#H\u0002ø\u0001\u0001¢\u0006\u0002\u0010,\u001a\u0014\u0010-\u001a\u00020.*\u00020\u001dH\u0002ø\u0001\u0001¢\u0006\u0002\u0010+\u001a\u0014\u0010-\u001a\u00020.*\u00020#H\u0002ø\u0001\u0001¢\u0006\u0002\u0010,\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006/"}, d2 = {"addOutline", "", "Landroidx/compose/ui/graphics/Path;", "outline", "Landroidx/compose/ui/graphics/Outline;", "drawOutline", "Landroidx/compose/ui/graphics/Canvas;", "paint", "Landroidx/compose/ui/graphics/Paint;", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "brush", "Landroidx/compose/ui/graphics/Brush;", ViewHierarchyNode.JsonKeys.ALPHA, "", "style", "Landroidx/compose/ui/graphics/drawscope/DrawStyle;", "colorFilter", "Landroidx/compose/ui/graphics/ColorFilter;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawOutline-hn5TExg", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "color", "Landroidx/compose/ui/graphics/Color;", "drawOutline-wDX37Ww", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/Outline;JFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;I)V", "drawOutlineHelper", "drawRectBlock", "Lkotlin/Function2;", "Landroidx/compose/ui/geometry/Rect;", "Lkotlin/ParameterName;", "name", "rect", "Lkotlin/ExtensionFunctionType;", "drawRoundedRectBlock", "Landroidx/compose/ui/geometry/RoundRect;", "rrect", "drawPathBlock", "path", "hasSameCornerRadius", "", "size", "Landroidx/compose/ui/geometry/Size;", "(Landroidx/compose/ui/geometry/Rect;)J", "(Landroidx/compose/ui/geometry/RoundRect;)J", "topLeft", "Landroidx/compose/ui/geometry/Offset;", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OutlineKt {
    public static final void addOutline(Path path, Outline outline) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            path.addRect(((Outline.Rectangle) outline).getRect());
        } else if (outline instanceof Outline.Rounded) {
            path.addRoundRect(((Outline.Rounded) outline).getRoundRect());
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new NoWhenBranchMatchedException();
            }
            Path.m2903addPathUv8p0NA$default(path, ((Outline.Generic) outline).getPath(), 0L, 2, null);
        }
    }

    /* renamed from: drawOutline-hn5TExg$default */
    public static /* synthetic */ void m2890drawOutlinehn5TExg$default(DrawScope drawScope, Outline outline, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            f = 1.0f;
        }
        float f2 = f;
        if ((i2 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i2 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i2 & 32) != 0) {
            i = DrawScope.INSTANCE.m3183getDefaultBlendMode0nO6VwU();
        }
        m2889drawOutlinehn5TExg(drawScope, outline, brush, f2, drawStyle2, colorFilter2, i);
    }

    private static final long topLeft(Rect rect) {
        return OffsetKt.Offset(rect.getLeft(), rect.getTop());
    }

    private static final long size(Rect rect) {
        return SizeKt.Size(rect.getWidth(), rect.getHeight());
    }

    private static final long topLeft(RoundRect roundRect) {
        return OffsetKt.Offset(roundRect.getLeft(), roundRect.getTop());
    }

    private static final long size(RoundRect roundRect) {
        return SizeKt.Size(roundRect.getWidth(), roundRect.getHeight());
    }

    private static final void drawOutlineHelper(DrawScope drawScope, Outline outline, Function2<? super DrawScope, ? super Rect, Unit> function2, Function2<? super DrawScope, ? super RoundRect, Unit> function22, Function2<? super DrawScope, ? super Path, Unit> function23) {
        if (outline instanceof Outline.Rectangle) {
            function2.invoke(drawScope, ((Outline.Rectangle) outline).getRect());
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            Path roundRectPath = rounded.getRoundRectPath();
            if (roundRectPath != null) {
                function23.invoke(drawScope, roundRectPath);
                return;
            } else {
                function22.invoke(drawScope, rounded.getRoundRect());
                return;
            }
        }
        if (!(outline instanceof Outline.Generic)) {
            throw new NoWhenBranchMatchedException();
        }
        function23.invoke(drawScope, ((Outline.Generic) outline).getPath());
    }

    public static final void drawOutline(Canvas canvas, Outline outline, Paint paint) {
        Intrinsics.checkNotNullParameter(canvas, "<this>");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(paint, "paint");
        if (outline instanceof Outline.Rectangle) {
            canvas.drawRect(((Outline.Rectangle) outline).getRect(), paint);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            Path roundRectPath = rounded.getRoundRectPath();
            if (roundRectPath != null) {
                canvas.drawPath(roundRectPath, paint);
                return;
            } else {
                canvas.drawRoundRect(rounded.getRoundRect().getLeft(), rounded.getRoundRect().getTop(), rounded.getRoundRect().getRight(), rounded.getRoundRect().getBottom(), CornerRadius.m2375getXimpl(rounded.getRoundRect().m2448getBottomLeftCornerRadiuskKHJgLs()), CornerRadius.m2376getYimpl(rounded.getRoundRect().m2448getBottomLeftCornerRadiuskKHJgLs()), paint);
                return;
            }
        }
        if (!(outline instanceof Outline.Generic)) {
            throw new NoWhenBranchMatchedException();
        }
        canvas.drawPath(((Outline.Generic) outline).getPath(), paint);
    }

    public static final boolean hasSameCornerRadius(RoundRect roundRect) {
        return ((CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) > CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) == CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) ? 0 : -1)) == 0 && (CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) > CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) ? 0 : -1)) == 0 && (CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) > CornerRadius.m2375getXimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m2375getXimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) ? 0 : -1)) == 0) && ((CornerRadius.m2376getYimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) > CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2376getYimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()) == CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) ? 0 : -1)) == 0 && (CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) > CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs()) == CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) ? 0 : -1)) == 0 && (CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) > CornerRadius.m2376getYimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) ? 1 : (CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs()) == CornerRadius.m2376getYimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs()) ? 0 : -1)) == 0);
    }

    /* renamed from: drawOutline-wDX37Ww */
    public static final void m2891drawOutlinewDX37Ww(DrawScope drawOutline, Outline outline, long j, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Path path;
        Intrinsics.checkNotNullParameter(drawOutline, "$this$drawOutline");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawOutline.mo3099drawRectnJ9OG0(j, topLeft(rect), size(rect), f, style, colorFilter, i);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            path = rounded.getRoundRectPath();
            if (path == null) {
                RoundRect roundRect = rounded.getRoundRect();
                drawOutline.mo3101drawRoundRectuAw5IA(j, topLeft(roundRect), size(roundRect), CornerRadiusKt.CornerRadius$default(CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()), 0.0f, 2, null), style, f, colorFilter, i);
                return;
            }
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new NoWhenBranchMatchedException();
            }
            path = ((Outline.Generic) outline).getPath();
        }
        drawOutline.mo3095drawPathLG529CI(path, j, f, style, colorFilter, i);
    }

    /* renamed from: drawOutline-hn5TExg */
    public static final void m2889drawOutlinehn5TExg(DrawScope drawOutline, Outline outline, Brush brush, float f, DrawStyle style, ColorFilter colorFilter, int i) {
        Path path;
        Intrinsics.checkNotNullParameter(drawOutline, "$this$drawOutline");
        Intrinsics.checkNotNullParameter(outline, "outline");
        Intrinsics.checkNotNullParameter(brush, "brush");
        Intrinsics.checkNotNullParameter(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rect = ((Outline.Rectangle) outline).getRect();
            drawOutline.mo3098drawRectAsUm42w(brush, topLeft(rect), size(rect), f, style, colorFilter, i);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            path = rounded.getRoundRectPath();
            if (path == null) {
                RoundRect roundRect = rounded.getRoundRect();
                drawOutline.mo3100drawRoundRectZuiqVtQ(brush, topLeft(roundRect), size(roundRect), CornerRadiusKt.CornerRadius$default(CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs()), 0.0f, 2, null), f, style, colorFilter, i);
                return;
            }
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new NoWhenBranchMatchedException();
            }
            path = ((Outline.Generic) outline).getPath();
        }
        drawOutline.mo3094drawPathGBMwjPU(path, brush, f, style, colorFilter, i);
    }
}
