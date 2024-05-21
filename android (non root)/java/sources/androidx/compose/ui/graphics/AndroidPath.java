package androidx.compose.ui.graphics;

import android.graphics.Path;
import android.graphics.RectF;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPath.android.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J \u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!H\u0016J \u0010#\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001c2\u0006\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020!H\u0016J\u0010\u0010&\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001cH\u0016J%\u0010'\u001a\u00020\u001e2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020*H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b+\u0010,J\u0010\u0010-\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0010\u0010.\u001a\u00020\u001e2\u0006\u0010/\u001a\u000200H\u0016J(\u00101\u001a\u00020\u001e2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020!2\u0006\u00102\u001a\u00020\u000fH\u0016J\b\u00103\u001a\u00020\u001eH\u0016J8\u00104\u001a\u00020\u001e2\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020!2\u0006\u00107\u001a\u00020!2\u0006\u00108\u001a\u00020!2\u0006\u00109\u001a\u00020!2\u0006\u0010:\u001a\u00020!H\u0016J\b\u0010;\u001a\u00020\u001cH\u0016J\u0018\u0010<\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020!H\u0016J\u0018\u0010?\u001a\u00020\u001e2\u0006\u0010=\u001a\u00020!2\u0006\u0010>\u001a\u00020!H\u0016J-\u0010@\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u00012\u0006\u0010B\u001a\u00020\u00012\u0006\u0010C\u001a\u00020DH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bE\u0010FJ(\u0010G\u001a\u00020\u001e2\u0006\u00105\u001a\u00020!2\u0006\u00106\u001a\u00020!2\u0006\u00107\u001a\u00020!2\u0006\u00108\u001a\u00020!H\u0016J8\u0010H\u001a\u00020\u001e2\u0006\u0010I\u001a\u00020!2\u0006\u0010J\u001a\u00020!2\u0006\u0010K\u001a\u00020!2\u0006\u0010L\u001a\u00020!2\u0006\u0010M\u001a\u00020!2\u0006\u0010N\u001a\u00020!H\u0016J\u0018\u0010O\u001a\u00020\u001e2\u0006\u0010P\u001a\u00020!2\u0006\u0010Q\u001a\u00020!H\u0016J\u0018\u0010R\u001a\u00020\u001e2\u0006\u0010P\u001a\u00020!2\u0006\u0010Q\u001a\u00020!H\u0016J(\u0010S\u001a\u00020\u001e2\u0006\u0010I\u001a\u00020!2\u0006\u0010J\u001a\u00020!2\u0006\u0010K\u001a\u00020!2\u0006\u0010L\u001a\u00020!H\u0016J\b\u0010T\u001a\u00020\u001eH\u0016J\b\u0010U\u001a\u00020\u001eH\u0016J\u001d\u0010V\u001a\u00020\u001e2\u0006\u0010W\u001a\u00020XH\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bY\u0010ZJ\u001d\u0010[\u001a\u00020\u001e2\u0006\u0010)\u001a\u00020*H\u0016ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\\\u0010]R-\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068V@VX\u0096\u000eø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\f\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u000e\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0012R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006^"}, d2 = {"Landroidx/compose/ui/graphics/AndroidPath;", "Landroidx/compose/ui/graphics/Path;", "internalPath", "Landroid/graphics/Path;", "(Landroid/graphics/Path;)V", "value", "Landroidx/compose/ui/graphics/PathFillType;", "fillType", "getFillType-Rg-k1Os", "()I", "setFillType-oQ8Xj4U", "(I)V", "getInternalPath", "()Landroid/graphics/Path;", "isConvex", "", "isConvex$annotations", "()V", "()Z", "isEmpty", "mMatrix", "Landroid/graphics/Matrix;", "radii", "", "rectF", "Landroid/graphics/RectF;", "_rectIsValid", "rect", "Landroidx/compose/ui/geometry/Rect;", "addArc", "", "oval", "startAngleDegrees", "", "sweepAngleDegrees", "addArcRad", "startAngleRadians", "sweepAngleRadians", "addOval", "addPath", "path", "offset", "Landroidx/compose/ui/geometry/Offset;", "addPath-Uv8p0NA", "(Landroidx/compose/ui/graphics/Path;J)V", "addRect", "addRoundRect", "roundRect", "Landroidx/compose/ui/geometry/RoundRect;", "arcTo", "forceMoveTo", "close", "cubicTo", "x1", "y1", "x2", "y2", "x3", "y3", "getBounds", "lineTo", ViewHierarchyNode.JsonKeys.X, ViewHierarchyNode.JsonKeys.Y, "moveTo", "op", "path1", "path2", "operation", "Landroidx/compose/ui/graphics/PathOperation;", "op-N5in7k0", "(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z", "quadraticBezierTo", "relativeCubicTo", "dx1", "dy1", "dx2", "dy2", "dx3", "dy3", "relativeLineTo", "dx", "dy", "relativeMoveTo", "relativeQuadraticBezierTo", "reset", "rewind", "transform", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "transform-58bKbWc", "([F)V", "translate", "translate-k-4lQ0M", "(J)V", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPath implements Path {
    private final android.graphics.Path internalPath;
    private final android.graphics.Matrix mMatrix;
    private final float[] radii;
    private final RectF rectF;

    /* JADX WARN: Multi-variable type inference failed */
    public AndroidPath() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public static /* synthetic */ void isConvex$annotations() {
    }

    public final android.graphics.Path getInternalPath() {
        return this.internalPath;
    }

    public AndroidPath(android.graphics.Path internalPath) {
        Intrinsics.checkNotNullParameter(internalPath, "internalPath");
        this.internalPath = internalPath;
        this.rectF = new RectF();
        this.radii = new float[8];
        this.mMatrix = new android.graphics.Matrix();
    }

    public /* synthetic */ AndroidPath(android.graphics.Path path, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? new android.graphics.Path() : path);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: getFillType-Rg-k1Os, reason: not valid java name */
    public int mo2532getFillTypeRgk1Os() {
        if (this.internalPath.getFillType() == Path.FillType.EVEN_ODD) {
            return PathFillType.INSTANCE.m2915getEvenOddRgk1Os();
        }
        return PathFillType.INSTANCE.m2916getNonZeroRgk1Os();
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: setFillType-oQ8Xj4U, reason: not valid java name */
    public void mo2534setFillTypeoQ8Xj4U(int i) {
        Path.FillType fillType;
        android.graphics.Path path = this.internalPath;
        if (PathFillType.m2911equalsimpl0(i, PathFillType.INSTANCE.m2915getEvenOddRgk1Os())) {
            fillType = Path.FillType.EVEN_ODD;
        } else {
            fillType = Path.FillType.WINDING;
        }
        path.setFillType(fillType);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void moveTo(float x, float y) {
        this.internalPath.moveTo(x, y);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeMoveTo(float dx, float dy) {
        this.internalPath.rMoveTo(dx, dy);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void lineTo(float x, float y) {
        this.internalPath.lineTo(x, y);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeLineTo(float dx, float dy) {
        this.internalPath.rLineTo(dx, dy);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void quadraticBezierTo(float x1, float y1, float x2, float y2) {
        this.internalPath.quadTo(x1, y1, x2, y2);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeQuadraticBezierTo(float dx1, float dy1, float dx2, float dy2) {
        this.internalPath.rQuadTo(dx1, dy1, dx2, dy2);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void cubicTo(float x1, float y1, float x2, float y2, float x3, float y3) {
        this.internalPath.cubicTo(x1, y1, x2, y2, x3, y3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void relativeCubicTo(float dx1, float dy1, float dx2, float dy2, float dx3, float dy3) {
        this.internalPath.rCubicTo(dx1, dy1, dx2, dy2, dx3, dy3);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void arcTo(Rect rect, float startAngleDegrees, float sweepAngleDegrees, boolean forceMoveTo) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        this.rectF.set(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom());
        this.internalPath.arcTo(this.rectF, startAngleDegrees, sweepAngleDegrees, forceMoveTo);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addRect(Rect rect) {
        Intrinsics.checkNotNullParameter(rect, "rect");
        if (!_rectIsValid(rect)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.rectF.set(rect.getLeft(), rect.getTop(), rect.getRight(), rect.getBottom());
        this.internalPath.addRect(this.rectF, Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addOval(Rect oval) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        this.rectF.set(oval.getLeft(), oval.getTop(), oval.getRight(), oval.getBottom());
        this.internalPath.addOval(this.rectF, Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addArcRad(Rect oval, float startAngleRadians, float sweepAngleRadians) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        addArc(oval, DegreesKt.degrees(startAngleRadians), DegreesKt.degrees(sweepAngleRadians));
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addArc(Rect oval, float startAngleDegrees, float sweepAngleDegrees) {
        Intrinsics.checkNotNullParameter(oval, "oval");
        if (!_rectIsValid(oval)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.rectF.set(oval.getLeft(), oval.getTop(), oval.getRight(), oval.getBottom());
        this.internalPath.addArc(this.rectF, startAngleDegrees, sweepAngleDegrees);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void addRoundRect(RoundRect roundRect) {
        Intrinsics.checkNotNullParameter(roundRect, "roundRect");
        this.rectF.set(roundRect.getLeft(), roundRect.getTop(), roundRect.getRight(), roundRect.getBottom());
        this.radii[0] = CornerRadius.m2375getXimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs());
        this.radii[1] = CornerRadius.m2376getYimpl(roundRect.m2450getTopLeftCornerRadiuskKHJgLs());
        this.radii[2] = CornerRadius.m2375getXimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs());
        this.radii[3] = CornerRadius.m2376getYimpl(roundRect.m2451getTopRightCornerRadiuskKHJgLs());
        this.radii[4] = CornerRadius.m2375getXimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs());
        this.radii[5] = CornerRadius.m2376getYimpl(roundRect.m2449getBottomRightCornerRadiuskKHJgLs());
        this.radii[6] = CornerRadius.m2375getXimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs());
        this.radii[7] = CornerRadius.m2376getYimpl(roundRect.m2448getBottomLeftCornerRadiuskKHJgLs());
        this.internalPath.addRoundRect(this.rectF, this.radii, Path.Direction.CCW);
    }

    @Override // androidx.compose.ui.graphics.Path
    public void close() {
        this.internalPath.close();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void reset() {
        this.internalPath.reset();
    }

    @Override // androidx.compose.ui.graphics.Path
    public void rewind() {
        this.internalPath.rewind();
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: translate-k-4lQ0M, reason: not valid java name */
    public void mo2536translatek4lQ0M(long offset) {
        this.mMatrix.reset();
        this.mMatrix.setTranslate(Offset.m2400getXimpl(offset), Offset.m2401getYimpl(offset));
        this.internalPath.transform(this.mMatrix);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: transform-58bKbWc, reason: not valid java name */
    public void mo2535transform58bKbWc(float[] matrix) {
        Intrinsics.checkNotNullParameter(matrix, "matrix");
        AndroidMatrixConversions_androidKt.m2511setFromEL8BTi8(this.mMatrix, matrix);
        this.internalPath.transform(this.mMatrix);
    }

    @Override // androidx.compose.ui.graphics.Path
    public Rect getBounds() {
        this.internalPath.computeBounds(this.rectF, true);
        return new Rect(this.rectF.left, this.rectF.top, this.rectF.right, this.rectF.bottom);
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: op-N5in7k0, reason: not valid java name */
    public boolean mo2533opN5in7k0(Path path1, Path path2, int operation) {
        Path.Op op;
        Intrinsics.checkNotNullParameter(path1, "path1");
        Intrinsics.checkNotNullParameter(path2, "path2");
        if (PathOperation.m2920equalsimpl0(operation, PathOperation.INSTANCE.m2924getDifferenceb3I0S0c())) {
            op = Path.Op.DIFFERENCE;
        } else if (PathOperation.m2920equalsimpl0(operation, PathOperation.INSTANCE.m2925getIntersectb3I0S0c())) {
            op = Path.Op.INTERSECT;
        } else if (PathOperation.m2920equalsimpl0(operation, PathOperation.INSTANCE.m2926getReverseDifferenceb3I0S0c())) {
            op = Path.Op.REVERSE_DIFFERENCE;
        } else {
            op = PathOperation.m2920equalsimpl0(operation, PathOperation.INSTANCE.m2927getUnionb3I0S0c()) ? Path.Op.UNION : Path.Op.XOR;
        }
        android.graphics.Path path = this.internalPath;
        if (!(path1 instanceof AndroidPath)) {
            throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
        }
        android.graphics.Path internalPath = ((AndroidPath) path1).getInternalPath();
        if (path2 instanceof AndroidPath) {
            return path.op(internalPath, ((AndroidPath) path2).getInternalPath(), op);
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isConvex() {
        return this.internalPath.isConvex();
    }

    @Override // androidx.compose.ui.graphics.Path
    public boolean isEmpty() {
        return this.internalPath.isEmpty();
    }

    private final boolean _rectIsValid(Rect rect) {
        if (!(!Float.isNaN(rect.getLeft()))) {
            throw new IllegalStateException("Rect.left is NaN".toString());
        }
        if (!(!Float.isNaN(rect.getTop()))) {
            throw new IllegalStateException("Rect.top is NaN".toString());
        }
        if (!(!Float.isNaN(rect.getRight()))) {
            throw new IllegalStateException("Rect.right is NaN".toString());
        }
        if (!Float.isNaN(rect.getBottom())) {
            return true;
        }
        throw new IllegalStateException("Rect.bottom is NaN".toString());
    }

    @Override // androidx.compose.ui.graphics.Path
    /* renamed from: addPath-Uv8p0NA, reason: not valid java name */
    public void mo2531addPathUv8p0NA(Path path, long offset) {
        Intrinsics.checkNotNullParameter(path, "path");
        android.graphics.Path path2 = this.internalPath;
        if (path instanceof AndroidPath) {
            path2.addPath(((AndroidPath) path).getInternalPath(), Offset.m2400getXimpl(offset), Offset.m2401getYimpl(offset));
            return;
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }
}
