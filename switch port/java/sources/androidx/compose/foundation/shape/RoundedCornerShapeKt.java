package androidx.compose.foundation.shape;

import androidx.compose.ui.unit.Dp;
import io.sentry.profilemeasurements.ProfileMeasurement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RoundedCornerShape.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u001b\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u001a;\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\b2\b\b\u0002\u0010\f\u001a\u00020\b2\b\b\u0002\u0010\r\u001a\u00020\b2\b\b\u0002\u0010\u000e\u001a\u00020\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0011\u001a.\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\u00112\b\b\u0002\u0010\f\u001a\u00020\u00112\b\b\u0002\u0010\r\u001a\u00020\u00112\b\b\u0002\u0010\u000e\u001a\u00020\u0011\u001a\u000e\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013\u001a.\u0010\u0004\u001a\u00020\u00012\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u0013\"\u0011\u0010\u0000\u001a\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0002\u0010\u0003\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"CircleShape", "Landroidx/compose/foundation/shape/RoundedCornerShape;", "getCircleShape", "()Landroidx/compose/foundation/shape/RoundedCornerShape;", "RoundedCornerShape", "corner", "Landroidx/compose/foundation/shape/CornerSize;", "size", "Landroidx/compose/ui/unit/Dp;", "RoundedCornerShape-0680j_4", "(F)Landroidx/compose/foundation/shape/RoundedCornerShape;", "topStart", "topEnd", "bottomEnd", "bottomStart", "RoundedCornerShape-a9UjIt4", "(FFFF)Landroidx/compose/foundation/shape/RoundedCornerShape;", "", ProfileMeasurement.UNIT_PERCENT, "", "topStartPercent", "topEndPercent", "bottomEndPercent", "bottomStartPercent", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RoundedCornerShapeKt {
    private static final RoundedCornerShape CircleShape = RoundedCornerShape(50);

    public static final RoundedCornerShape getCircleShape() {
        return CircleShape;
    }

    public static final RoundedCornerShape RoundedCornerShape(CornerSize corner) {
        Intrinsics.checkNotNullParameter(corner, "corner");
        return new RoundedCornerShape(corner, corner, corner, corner);
    }

    /* renamed from: RoundedCornerShape-0680j_4, reason: not valid java name */
    public static final RoundedCornerShape m743RoundedCornerShape0680j_4(float f) {
        return RoundedCornerShape(CornerSizeKt.m735CornerSize0680j_4(f));
    }

    public static final RoundedCornerShape RoundedCornerShape(float f) {
        return RoundedCornerShape(CornerSizeKt.CornerSize(f));
    }

    public static final RoundedCornerShape RoundedCornerShape(int i) {
        return RoundedCornerShape(CornerSizeKt.CornerSize(i));
    }

    /* renamed from: RoundedCornerShape-a9UjIt4, reason: not valid java name */
    public static final RoundedCornerShape m744RoundedCornerShapea9UjIt4(float f, float f2, float f3, float f4) {
        return new RoundedCornerShape(CornerSizeKt.m735CornerSize0680j_4(f), CornerSizeKt.m735CornerSize0680j_4(f2), CornerSizeKt.m735CornerSize0680j_4(f3), CornerSizeKt.m735CornerSize0680j_4(f4));
    }

    public static /* synthetic */ RoundedCornerShape RoundedCornerShape$default(float f, float f2, float f3, float f4, int i, Object obj) {
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
        return RoundedCornerShape(f, f2, f3, f4);
    }

    public static final RoundedCornerShape RoundedCornerShape(float f, float f2, float f3, float f4) {
        return new RoundedCornerShape(CornerSizeKt.CornerSize(f), CornerSizeKt.CornerSize(f2), CornerSizeKt.CornerSize(f3), CornerSizeKt.CornerSize(f4));
    }

    public static /* synthetic */ RoundedCornerShape RoundedCornerShape$default(int i, int i2, int i3, int i4, int i5, Object obj) {
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
        return RoundedCornerShape(i, i2, i3, i4);
    }

    public static final RoundedCornerShape RoundedCornerShape(int i, int i2, int i3, int i4) {
        return new RoundedCornerShape(CornerSizeKt.CornerSize(i), CornerSizeKt.CornerSize(i2), CornerSizeKt.CornerSize(i3), CornerSizeKt.CornerSize(i4));
    }

    /* renamed from: RoundedCornerShape-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ RoundedCornerShape m745RoundedCornerShapea9UjIt4$default(float f, float f2, float f3, float f4, int i, Object obj) {
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
        return m744RoundedCornerShapea9UjIt4(f, f2, f3, f4);
    }
}
