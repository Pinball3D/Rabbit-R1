package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.DegreesKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DrawTransform.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0000\u001a\u00020\u0003H\u0086\b\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003H\u0086\b\u001a,\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u000b\u001a,\u0010\f\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\tH\u0086\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"inset", "", "Landroidx/compose/ui/graphics/drawscope/DrawTransform;", "", "horizontal", "vertical", "rotateRad", "radians", "pivot", "Landroidx/compose/ui/geometry/Offset;", "rotateRad-0AR0LA0", "(Landroidx/compose/ui/graphics/drawscope/DrawTransform;FJ)V", "scale", "scale-0AR0LA0", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DrawTransformKt {
    public static /* synthetic */ void inset$default(DrawTransform drawTransform, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f, f2, f, f2);
    }

    public static final void inset(DrawTransform drawTransform, float f, float f2) {
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f, f2, f, f2);
    }

    /* renamed from: rotateRad-0AR0LA0$default, reason: not valid java name */
    public static /* synthetic */ void m3242rotateRad0AR0LA0$default(DrawTransform rotateRad, float f, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = rotateRad.mo3111getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        rotateRad.mo3113rotateUv8p0NA(DegreesKt.degrees(f), j);
    }

    /* renamed from: rotateRad-0AR0LA0, reason: not valid java name */
    public static final void m3241rotateRad0AR0LA0(DrawTransform rotateRad, float f, long j) {
        Intrinsics.checkNotNullParameter(rotateRad, "$this$rotateRad");
        rotateRad.mo3113rotateUv8p0NA(DegreesKt.degrees(f), j);
    }

    /* renamed from: scale-0AR0LA0$default, reason: not valid java name */
    public static /* synthetic */ void m3244scale0AR0LA0$default(DrawTransform scale, float f, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = scale.mo3111getCenterF1C5BW0();
        }
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        scale.mo3114scale0AR0LA0(f, f, j);
    }

    /* renamed from: scale-0AR0LA0, reason: not valid java name */
    public static final void m3243scale0AR0LA0(DrawTransform scale, float f, long j) {
        Intrinsics.checkNotNullParameter(scale, "$this$scale");
        scale.mo3114scale0AR0LA0(f, f, j);
    }

    public static final void inset(DrawTransform drawTransform, float f) {
        Intrinsics.checkNotNullParameter(drawTransform, "<this>");
        drawTransform.inset(f, f, f, f);
    }
}
