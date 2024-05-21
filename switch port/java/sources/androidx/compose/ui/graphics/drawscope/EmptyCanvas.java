package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Paint;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.Vertices;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: EmptyCanvas.kt */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u0014\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\nJ=\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0007\u001a\u00020\bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001d\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u0015H\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0018\u001a\u00020\u0004H\u0016JH\u0010\u0019\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u001a\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\r2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J-\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b$\u0010%J-\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020(2\u0006\u0010)\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b*\u0010+JE\u0010,\u001a\u00020\u00042\u0006\u0010'\u001a\u00020(2\u0006\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020.2\u0006\u00102\u001a\u0002002\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b3\u00104J-\u00105\u001a\u00020\u00042\u0006\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\"2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b8\u00109J0\u0010:\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010;\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J3\u0010<\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>2\f\u0010?\u001a\b\u0012\u0004\u0012\u00020\"0@2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bA\u0010BJ-\u0010C\u001a\u00020\u00042\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020D2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bE\u0010FJ0\u0010G\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J@\u0010H\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\r2\u0006\u0010I\u001a\u00020\r2\u0006\u0010J\u001a\u00020\r2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J-\u0010K\u001a\u00020\u00042\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020O2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bP\u0010QJ\b\u0010R\u001a\u00020\u0004H\u0016J\b\u0010S\u001a\u00020\u0004H\u0016J\u0010\u0010T\u001a\u00020\u00042\u0006\u0010U\u001a\u00020\rH\u0016J\b\u0010V\u001a\u00020\u0004H\u0016J\u0018\u0010W\u001a\u00020\u00042\u0006\u0010X\u001a\u00020Y2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010Z\u001a\u00020\u00042\u0006\u0010[\u001a\u00020\r2\u0006\u0010\\\u001a\u00020\rH\u0016J\u0018\u0010]\u001a\u00020\u00042\u0006\u0010[\u001a\u00020\r2\u0006\u0010\\\u001a\u00020\rH\u0016J\u0018\u0010^\u001a\u00020\u00042\u0006\u0010_\u001a\u00020\r2\u0006\u0010`\u001a\u00020\rH\u0016\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006a"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/EmptyCanvas;", "Landroidx/compose/ui/graphics/Canvas;", "()V", "clipPath", "", "path", "Landroidx/compose/ui/graphics/Path;", "clipOp", "Landroidx/compose/ui/graphics/ClipOp;", "clipPath-mtrdD-E", "(Landroidx/compose/ui/graphics/Path;I)V", "clipRect", "left", "", "top", "right", "bottom", "clipRect-N_I0leg", "(FFFFI)V", "concat", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "concat-58bKbWc", "([F)V", "disableZ", "drawArc", "startAngle", "sweepAngle", "useCenter", "", "paint", "Landroidx/compose/ui/graphics/Paint;", "drawCircle", "center", "Landroidx/compose/ui/geometry/Offset;", "radius", "drawCircle-9KIMszo", "(JFLandroidx/compose/ui/graphics/Paint;)V", "drawImage", "image", "Landroidx/compose/ui/graphics/ImageBitmap;", "topLeftOffset", "drawImage-d-4ec7I", "(Landroidx/compose/ui/graphics/ImageBitmap;JLandroidx/compose/ui/graphics/Paint;)V", "drawImageRect", "srcOffset", "Landroidx/compose/ui/unit/IntOffset;", "srcSize", "Landroidx/compose/ui/unit/IntSize;", "dstOffset", "dstSize", "drawImageRect-HPBpro0", "(Landroidx/compose/ui/graphics/ImageBitmap;JJJJLandroidx/compose/ui/graphics/Paint;)V", "drawLine", "p1", "p2", "drawLine-Wko1d7g", "(JJLandroidx/compose/ui/graphics/Paint;)V", "drawOval", "drawPath", "drawPoints", "pointMode", "Landroidx/compose/ui/graphics/PointMode;", "points", "", "drawPoints-O7TthRY", "(ILjava/util/List;Landroidx/compose/ui/graphics/Paint;)V", "drawRawPoints", "", "drawRawPoints-O7TthRY", "(I[FLandroidx/compose/ui/graphics/Paint;)V", "drawRect", "drawRoundRect", "radiusX", "radiusY", "drawVertices", "vertices", "Landroidx/compose/ui/graphics/Vertices;", "blendMode", "Landroidx/compose/ui/graphics/BlendMode;", "drawVertices-TPEHhCM", "(Landroidx/compose/ui/graphics/Vertices;ILandroidx/compose/ui/graphics/Paint;)V", "enableZ", "restore", "rotate", "degrees", "save", "saveLayer", "bounds", "Landroidx/compose/ui/geometry/Rect;", "scale", "sx", "sy", "skew", "translate", "dx", "dy", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmptyCanvas implements Canvas {
    @Override // androidx.compose.ui.graphics.Canvas
    public void save() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void restore() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void saveLayer(Rect bounds, Paint paint) {
        Intrinsics.checkNotNullParameter(bounds, "bounds");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void translate(float dx, float dy) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void scale(float sx, float sy) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void rotate(float degrees) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void skew(float sx, float sy) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: concat-58bKbWc */
    public void mo2496concat58bKbWc(float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipRect-N_I0leg */
    public void mo2495clipRectN_I0leg(float left, float top, float right, float bottom, int clipOp) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: clipPath-mtrdD-E */
    public void mo2494clipPathmtrdDE(Path path, int clipOp) {
        Intrinsics.checkNotNullParameter(path, "path");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawLine-Wko1d7g */
    public void mo2500drawLineWko1d7g(long p1, long p2, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRect(float left, float top, float right, float bottom, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawRoundRect(float left, float top, float right, float bottom, float radiusX, float radiusY, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawOval(float left, float top, float right, float bottom, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawCircle-9KIMszo */
    public void mo2497drawCircle9KIMszo(long center, float radius, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawArc(float left, float top, float right, float bottom, float startAngle, float sweepAngle, boolean useCenter, Paint paint) {
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImage-d-4ec7I */
    public void mo2498drawImaged4ec7I(ImageBitmap image, long topLeftOffset, Paint paint) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawImageRect-HPBpro0 */
    public void mo2499drawImageRectHPBpro0(ImageBitmap image, long srcOffset, long srcSize, long dstOffset, long dstSize, Paint paint) {
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawPoints-O7TthRY */
    public void mo2501drawPointsO7TthRY(int pointMode, List<Offset> points, Paint paint) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawRawPoints-O7TthRY */
    public void mo2502drawRawPointsO7TthRY(int pointMode, float[] points, Paint paint) {
        Intrinsics.checkNotNullParameter(points, "points");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    /* renamed from: drawVertices-TPEHhCM */
    public void mo2503drawVerticesTPEHhCM(Vertices vertices, int blendMode, Paint paint) {
        Intrinsics.checkNotNullParameter(vertices, "vertices");
        Intrinsics.checkNotNullParameter(paint, "paint");
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void enableZ() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.compose.ui.graphics.Canvas
    public void disableZ() {
        throw new UnsupportedOperationException();
    }
}
