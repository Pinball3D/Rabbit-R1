package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Dp;
import io.sentry.profilemeasurements.ProfileMeasurement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: AbsoluteCutCornerShape.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u001b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007\u001a;\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u00052\b\b\u0002\u0010\t\u001a\u00020\u00052\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\r\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u000e\u001a.\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u000e2\b\b\u0002\u0010\t\u001a\u00020\u000e2\b\b\u0002\u0010\n\u001a\u00020\u000e2\b\b\u0002\u0010\u000b\u001a\u00020\u000e\u001a\u000e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010\u001a.\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u00102\b\b\u0002\u0010\u0014\u001a\u00020\u0010\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"AbsoluteCutCornerShape", "Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;", "corner", "Landroidx/compose/foundation/shape/CornerSize;", "size", "Landroidx/compose/ui/unit/Dp;", "AbsoluteCutCornerShape-0680j_4", "(F)Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;", "topLeft", "topRight", "bottomRight", "bottomLeft", "AbsoluteCutCornerShape-a9UjIt4", "(FFFF)Landroidx/compose/foundation/shape/AbsoluteCutCornerShape;", "", ProfileMeasurement.UNIT_PERCENT, "", "topLeftPercent", "topRightPercent", "bottomRightPercent", "bottomLeftPercent", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AbsoluteCutCornerShapeKt {
    public static final AbsoluteCutCornerShape AbsoluteCutCornerShape(CornerSize corner) {
        Intrinsics.checkNotNullParameter(corner, "corner");
        return new AbsoluteCutCornerShape(corner, corner, corner, corner);
    }

    /* renamed from: AbsoluteCutCornerShape-0680j_4, reason: not valid java name */
    public static final AbsoluteCutCornerShape m727AbsoluteCutCornerShape0680j_4(float f) {
        return AbsoluteCutCornerShape(CornerSizeKt.m735CornerSize0680j_4(f));
    }

    public static final AbsoluteCutCornerShape AbsoluteCutCornerShape(float f) {
        return AbsoluteCutCornerShape(CornerSizeKt.CornerSize(f));
    }

    public static final AbsoluteCutCornerShape AbsoluteCutCornerShape(int i) {
        return AbsoluteCutCornerShape(CornerSizeKt.CornerSize(i));
    }

    /* renamed from: AbsoluteCutCornerShape-a9UjIt4, reason: not valid java name */
    public static final AbsoluteCutCornerShape m728AbsoluteCutCornerShapea9UjIt4(float f, float f2, float f3, float f4) {
        return new AbsoluteCutCornerShape(CornerSizeKt.m735CornerSize0680j_4(f), CornerSizeKt.m735CornerSize0680j_4(f2), CornerSizeKt.m735CornerSize0680j_4(f3), CornerSizeKt.m735CornerSize0680j_4(f4));
    }

    public static /* synthetic */ AbsoluteCutCornerShape AbsoluteCutCornerShape$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = 0.0f;
        }
        if ((i & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i & 4) != 0) {
            f3 = 0.0f;
        }
        if ((i & 8) != 0) {
            f4 = 0.0f;
        }
        return AbsoluteCutCornerShape(f, f2, f3, f4);
    }

    public static final AbsoluteCutCornerShape AbsoluteCutCornerShape(float f, float f2, float f3, float f4) {
        return new AbsoluteCutCornerShape(CornerSizeKt.CornerSize(f), CornerSizeKt.CornerSize(f2), CornerSizeKt.CornerSize(f3), CornerSizeKt.CornerSize(f4));
    }

    public static /* synthetic */ AbsoluteCutCornerShape AbsoluteCutCornerShape$default(int i, int i2, int i3, int i4, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i = 0;
        }
        if ((i5 & 2) != 0) {
            i2 = 0;
        }
        if ((i5 & 4) != 0) {
            i3 = 0;
        }
        if ((i5 & 8) != 0) {
            i4 = 0;
        }
        return AbsoluteCutCornerShape(i, i2, i3, i4);
    }

    public static final AbsoluteCutCornerShape AbsoluteCutCornerShape(int i, int i2, int i3, int i4) {
        return new AbsoluteCutCornerShape(CornerSizeKt.CornerSize(i), CornerSizeKt.CornerSize(i2), CornerSizeKt.CornerSize(i3), CornerSizeKt.CornerSize(i4));
    }

    /* renamed from: AbsoluteCutCornerShape-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ AbsoluteCutCornerShape m729AbsoluteCutCornerShapea9UjIt4$default(float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m4883constructorimpl(0);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m4883constructorimpl(0);
        }
        if ((i & 4) != 0) {
            f3 = Dp.m4883constructorimpl(0);
        }
        if ((i & 8) != 0) {
            f4 = Dp.m4883constructorimpl(0);
        }
        return m728AbsoluteCutCornerShapea9UjIt4(f, f2, f3, f4);
    }
}
