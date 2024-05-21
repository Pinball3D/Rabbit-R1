package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;
import kotlin.Metadata;

/* compiled from: DrawTransform.kt */
@DrawScopeMarker
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH&ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\u0010JG\u0010\u0011\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00132\b\b\u0002\u0010\r\u001a\u00020\u000eH&ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0018J(\u0010\u0019\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0013H&J'\u0010\u001a\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00132\b\b\u0002\u0010\u001c\u001a\u00020\u0003H&ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ/\u0010\u001f\u001a\u00020\n2\u0006\u0010 \u001a\u00020\u00132\u0006\u0010!\u001a\u00020\u00132\b\b\u0002\u0010\u001c\u001a\u00020\u0003H&ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#J\u001d\u0010$\u001a\u00020\n2\u0006\u0010%\u001a\u00020&H&ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010(J\u001c\u0010)\u001a\u00020\n2\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u0013H&R\u001d\u0010\u0002\u001a\u00020\u00038VX\u0096\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001b\u0010\u0006\u001a\u00020\u0007X¦\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\b\u0010\u0005ø\u0001\u0003\u0082\u0002\u0015\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!\n\u0004\b!0\u0001¨\u0006*À\u0006\u0003"}, d2 = {"Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "", "center", "Landroidx/compose/ui/geometry/Offset;", "getCenter-F1C5BW0", "()J", "size", "Landroidx/compose/ui/geometry/Size;", "getSize-NH-jbRc", "clipPath", "", "path", "Landroidx/compose/ui/graphics/Path;", "clipOp", "Landroidx/compose/ui/graphics/ClipOp;", "clipPath-mtrdD-E", "(Landroidx/compose/ui/graphics/Path;I)V", "clipRect", "left", "", "top", "right", "bottom", "clipRect-N_I0leg", "(FFFFI)V", "inset", "rotate", "degrees", "pivot", "rotate-Uv8p0NA", "(FJ)V", "scale", "scaleX", "scaleY", "scale-0AR0LA0", "(FFJ)V", "transform", "matrix", "Landroidx/compose/ui/graphics/Matrix;", "transform-58bKbWc", "([F)V", "translate", "ui-graphics_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface DrawTransform {
    /* renamed from: clipPath-mtrdD-E */
    void mo3109clipPathmtrdDE(Path path, int clipOp);

    /* renamed from: clipRect-N_I0leg */
    void mo3110clipRectN_I0leg(float left, float top, float right, float bottom, int clipOp);

    /* renamed from: getSize-NH-jbRc */
    long mo3112getSizeNHjbRc();

    void inset(float left, float top, float right, float bottom);

    /* renamed from: rotate-Uv8p0NA */
    void mo3113rotateUv8p0NA(float degrees, long pivot);

    /* renamed from: scale-0AR0LA0 */
    void mo3114scale0AR0LA0(float scaleX, float scaleY, long pivot);

    /* renamed from: transform-58bKbWc */
    void mo3115transform58bKbWc(float[] matrix);

    void translate(float left, float top);

    /* compiled from: DrawTransform.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
        @Deprecated
        /* renamed from: getCenter-F1C5BW0, reason: not valid java name */
        public static long m3238getCenterF1C5BW0(DrawTransform drawTransform) {
            return DrawTransform.super.mo3111getCenterF1C5BW0();
        }
    }

    /* renamed from: getCenter-F1C5BW0 */
    default long mo3111getCenterF1C5BW0() {
        float f = 2;
        return OffsetKt.Offset(Size.m2469getWidthimpl(mo3112getSizeNHjbRc()) / f, Size.m2466getHeightimpl(mo3112getSizeNHjbRc()) / f);
    }

    /* renamed from: clipRect-N_I0leg$default, reason: not valid java name */
    static /* synthetic */ void m3233clipRectN_I0leg$default(DrawTransform drawTransform, float f, float f2, float f3, float f4, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
        }
        if ((i2 & 1) != 0) {
            f = 0.0f;
        }
        if ((i2 & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            f3 = Size.m2469getWidthimpl(drawTransform.mo3112getSizeNHjbRc());
        }
        if ((i2 & 8) != 0) {
            f4 = Size.m2466getHeightimpl(drawTransform.mo3112getSizeNHjbRc());
        }
        if ((i2 & 16) != 0) {
            i = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        }
        drawTransform.mo3110clipRectN_I0leg(f, f2, f3, f4, i);
    }

    /* renamed from: clipPath-mtrdD-E$default, reason: not valid java name */
    static /* synthetic */ void m3232clipPathmtrdDE$default(DrawTransform drawTransform, Path path, int i, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
        }
        if ((i2 & 2) != 0) {
            i = ClipOp.INSTANCE.m2628getIntersectrtfAjoo();
        }
        drawTransform.mo3109clipPathmtrdDE(path, i);
    }

    static /* synthetic */ void translate$default(DrawTransform drawTransform, float f, float f2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: translate");
        }
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        drawTransform.translate(f, f2);
    }

    /* renamed from: rotate-Uv8p0NA$default, reason: not valid java name */
    static /* synthetic */ void m3234rotateUv8p0NA$default(DrawTransform drawTransform, float f, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: rotate-Uv8p0NA");
        }
        if ((i & 2) != 0) {
            j = drawTransform.mo3111getCenterF1C5BW0();
        }
        drawTransform.mo3113rotateUv8p0NA(f, j);
    }

    /* renamed from: scale-0AR0LA0$default, reason: not valid java name */
    static /* synthetic */ void m3235scale0AR0LA0$default(DrawTransform drawTransform, float f, float f2, long j, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scale-0AR0LA0");
        }
        if ((i & 4) != 0) {
            j = drawTransform.mo3111getCenterF1C5BW0();
        }
        drawTransform.mo3114scale0AR0LA0(f, f2, j);
    }
}
