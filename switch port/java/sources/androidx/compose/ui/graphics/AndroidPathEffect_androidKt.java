package androidx.compose.ui.graphics;

import android.graphics.ComposePathEffect;
import android.graphics.CornerPathEffect;
import android.graphics.DashPathEffect;
import android.graphics.PathDashPathEffect;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AndroidPathEffect.android.kt */
@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0014\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0000\u001a5\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0011\u0010\u0012\u001a\n\u0010\u0013\u001a\u00020\u0014*\u00020\u0001\u001a\u0019\u0010\u0015\u001a\u00020\u0016*\u00020\u0010H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0017\u0010\u0018\u001a\n\u0010\u0019\u001a\u00020\u0001*\u00020\u0014\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001a"}, d2 = {"actualChainPathEffect", "Landroidx/compose/ui/graphics/PathEffect;", "outer", "inner", "actualCornerPathEffect", "radius", "", "actualDashPathEffect", "intervals", "", "phase", "actualStampedPathEffect", "shape", "Landroidx/compose/ui/graphics/Path;", "advance", "style", "Landroidx/compose/ui/graphics/StampedPathEffectStyle;", "actualStampedPathEffect-7aD1DOk", "(Landroidx/compose/ui/graphics/Path;FFI)Landroidx/compose/ui/graphics/PathEffect;", "asAndroidPathEffect", "Landroid/graphics/PathEffect;", "toAndroidPathDashPathEffectStyle", "Landroid/graphics/PathDashPathEffect$Style;", "toAndroidPathDashPathEffectStyle-oQv6xUo", "(I)Landroid/graphics/PathDashPathEffect$Style;", "toComposePathEffect", "ui-graphics_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidPathEffect_androidKt {
    public static final android.graphics.PathEffect asAndroidPathEffect(PathEffect pathEffect) {
        Intrinsics.checkNotNullParameter(pathEffect, "<this>");
        return ((AndroidPathEffect) pathEffect).getNativePathEffect();
    }

    public static final PathEffect toComposePathEffect(android.graphics.PathEffect pathEffect) {
        Intrinsics.checkNotNullParameter(pathEffect, "<this>");
        return new AndroidPathEffect(pathEffect);
    }

    public static final PathEffect actualCornerPathEffect(float f) {
        return new AndroidPathEffect(new CornerPathEffect(f));
    }

    public static final PathEffect actualDashPathEffect(float[] intervals, float f) {
        Intrinsics.checkNotNullParameter(intervals, "intervals");
        return new AndroidPathEffect(new DashPathEffect(intervals, f));
    }

    public static final PathEffect actualChainPathEffect(PathEffect outer, PathEffect inner) {
        Intrinsics.checkNotNullParameter(outer, "outer");
        Intrinsics.checkNotNullParameter(inner, "inner");
        return new AndroidPathEffect(new ComposePathEffect(((AndroidPathEffect) outer).getNativePathEffect(), ((AndroidPathEffect) inner).getNativePathEffect()));
    }

    /* renamed from: actualStampedPathEffect-7aD1DOk, reason: not valid java name */
    public static final PathEffect m2537actualStampedPathEffect7aD1DOk(Path shape, float f, float f2, int i) {
        Intrinsics.checkNotNullParameter(shape, "shape");
        if (shape instanceof AndroidPath) {
            return new AndroidPathEffect(new PathDashPathEffect(((AndroidPath) shape).getInternalPath(), f, f2, m2538toAndroidPathDashPathEffectStyleoQv6xUo(i)));
        }
        throw new UnsupportedOperationException("Unable to obtain android.graphics.Path");
    }

    /* renamed from: toAndroidPathDashPathEffectStyle-oQv6xUo, reason: not valid java name */
    public static final PathDashPathEffect.Style m2538toAndroidPathDashPathEffectStyleoQv6xUo(int i) {
        return StampedPathEffectStyle.m2971equalsimpl0(i, StampedPathEffectStyle.INSTANCE.m2975getMorphYpspkwk()) ? PathDashPathEffect.Style.MORPH : StampedPathEffectStyle.m2971equalsimpl0(i, StampedPathEffectStyle.INSTANCE.m2976getRotateYpspkwk()) ? PathDashPathEffect.Style.ROTATE : StampedPathEffectStyle.m2971equalsimpl0(i, StampedPathEffectStyle.INSTANCE.m2977getTranslateYpspkwk()) ? PathDashPathEffect.Style.TRANSLATE : PathDashPathEffect.Style.TRANSLATE;
    }
}
