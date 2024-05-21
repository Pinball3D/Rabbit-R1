package androidx.compose.material3.tokens;

import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import tech.rabbit.r1launcher.BuildConfig;

/* compiled from: ShapeTokens.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u0011\u0010\u000b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0006¨\u0006\u001d"}, d2 = {"Landroidx/compose/material3/tokens/ShapeTokens;", "", "()V", "CornerExtraLarge", "Landroidx/compose/foundation/shape/RoundedCornerShape;", "getCornerExtraLarge", "()Landroidx/compose/foundation/shape/RoundedCornerShape;", "CornerExtraLargeTop", "getCornerExtraLargeTop", "CornerExtraSmall", "getCornerExtraSmall", "CornerExtraSmallTop", "getCornerExtraSmallTop", "CornerFull", "getCornerFull", "CornerLarge", "getCornerLarge", "CornerLargeEnd", "getCornerLargeEnd", "CornerLargeTop", "getCornerLargeTop", "CornerMedium", "getCornerMedium", "CornerNone", "Landroidx/compose/ui/graphics/Shape;", "getCornerNone", "()Landroidx/compose/ui/graphics/Shape;", "CornerSmall", "getCornerSmall", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ShapeTokens {
    private static final RoundedCornerShape CornerExtraLarge;
    private static final RoundedCornerShape CornerExtraLargeTop;
    private static final RoundedCornerShape CornerExtraSmall;
    private static final RoundedCornerShape CornerExtraSmallTop;
    private static final RoundedCornerShape CornerFull;
    private static final RoundedCornerShape CornerLarge;
    private static final RoundedCornerShape CornerLargeEnd;
    private static final RoundedCornerShape CornerLargeTop;
    private static final RoundedCornerShape CornerMedium;
    private static final Shape CornerNone;
    private static final RoundedCornerShape CornerSmall;
    public static final ShapeTokens INSTANCE = new ShapeTokens();

    public final RoundedCornerShape getCornerExtraLarge() {
        return CornerExtraLarge;
    }

    public final RoundedCornerShape getCornerExtraLargeTop() {
        return CornerExtraLargeTop;
    }

    public final RoundedCornerShape getCornerExtraSmall() {
        return CornerExtraSmall;
    }

    public final RoundedCornerShape getCornerExtraSmallTop() {
        return CornerExtraSmallTop;
    }

    public final RoundedCornerShape getCornerFull() {
        return CornerFull;
    }

    public final RoundedCornerShape getCornerLarge() {
        return CornerLarge;
    }

    public final RoundedCornerShape getCornerLargeEnd() {
        return CornerLargeEnd;
    }

    public final RoundedCornerShape getCornerLargeTop() {
        return CornerLargeTop;
    }

    public final RoundedCornerShape getCornerMedium() {
        return CornerMedium;
    }

    public final Shape getCornerNone() {
        return CornerNone;
    }

    public final RoundedCornerShape getCornerSmall() {
        return CornerSmall;
    }

    private ShapeTokens() {
    }

    static {
        float f = (float) 28.0d;
        CornerExtraLarge = RoundedCornerShapeKt.m743RoundedCornerShape0680j_4(Dp.m4883constructorimpl(f));
        float m4883constructorimpl = Dp.m4883constructorimpl(f);
        float m4883constructorimpl2 = Dp.m4883constructorimpl(f);
        float f2 = (float) BuildConfig.SENTRY_SAMPLE_RATE;
        CornerExtraLargeTop = RoundedCornerShapeKt.m744RoundedCornerShapea9UjIt4(m4883constructorimpl, m4883constructorimpl2, Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f2));
        float f3 = (float) 4.0d;
        CornerExtraSmall = RoundedCornerShapeKt.m743RoundedCornerShape0680j_4(Dp.m4883constructorimpl(f3));
        CornerExtraSmallTop = RoundedCornerShapeKt.m744RoundedCornerShapea9UjIt4(Dp.m4883constructorimpl(f3), Dp.m4883constructorimpl(f3), Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f2));
        CornerFull = RoundedCornerShapeKt.getCircleShape();
        float f4 = (float) 16.0d;
        CornerLarge = RoundedCornerShapeKt.m743RoundedCornerShape0680j_4(Dp.m4883constructorimpl(f4));
        CornerLargeEnd = RoundedCornerShapeKt.m744RoundedCornerShapea9UjIt4(Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f4), Dp.m4883constructorimpl(f4), Dp.m4883constructorimpl(f2));
        CornerLargeTop = RoundedCornerShapeKt.m744RoundedCornerShapea9UjIt4(Dp.m4883constructorimpl(f4), Dp.m4883constructorimpl(f4), Dp.m4883constructorimpl(f2), Dp.m4883constructorimpl(f2));
        CornerMedium = RoundedCornerShapeKt.m743RoundedCornerShape0680j_4(Dp.m4883constructorimpl((float) 12.0d));
        CornerNone = RectangleShapeKt.getRectangleShape();
        CornerSmall = RoundedCornerShapeKt.m743RoundedCornerShape0680j_4(Dp.m4883constructorimpl((float) 8.0d));
    }
}
