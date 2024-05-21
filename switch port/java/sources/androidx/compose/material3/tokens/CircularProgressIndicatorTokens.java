package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: CircularProgressIndicatorTokens.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0006R\u0011\u0010\u0012\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0006R\u0011\u0010\u0014\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0006R\u0011\u0010\u0016\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0006R\u001c\u0010\u0018\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0019\u0010\n\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001a"}, d2 = {"Landroidx/compose/material3/tokens/CircularProgressIndicatorTokens;", "", "()V", "ActiveIndicatorColor", "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "getActiveIndicatorColor", "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "ActiveIndicatorWidth", "Landroidx/compose/ui/unit/Dp;", "getActiveIndicatorWidth-D9Ej5fM", "()F", "F", "ActiveShape", "Landroidx/compose/material3/tokens/ShapeKeyTokens;", "getActiveShape", "()Landroidx/compose/material3/tokens/ShapeKeyTokens;", "FourColorActiveIndicatorFourColor", "getFourColorActiveIndicatorFourColor", "FourColorActiveIndicatorOneColor", "getFourColorActiveIndicatorOneColor", "FourColorActiveIndicatorThreeColor", "getFourColorActiveIndicatorThreeColor", "FourColorActiveIndicatorTwoColor", "getFourColorActiveIndicatorTwoColor", "Size", "getSize-D9Ej5fM", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CircularProgressIndicatorTokens {
    public static final CircularProgressIndicatorTokens INSTANCE = new CircularProgressIndicatorTokens();
    private static final ColorSchemeKeyTokens ActiveIndicatorColor = ColorSchemeKeyTokens.Primary;
    private static final ShapeKeyTokens ActiveShape = ShapeKeyTokens.CornerNone;
    private static final float ActiveIndicatorWidth = Dp.m4883constructorimpl((float) 4.0d);
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorFourColor = ColorSchemeKeyTokens.TertiaryContainer;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorOneColor = ColorSchemeKeyTokens.Primary;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorThreeColor = ColorSchemeKeyTokens.Tertiary;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorTwoColor = ColorSchemeKeyTokens.PrimaryContainer;
    private static final float Size = Dp.m4883constructorimpl((float) 48.0d);

    public final ColorSchemeKeyTokens getActiveIndicatorColor() {
        return ActiveIndicatorColor;
    }

    /* renamed from: getActiveIndicatorWidth-D9Ej5fM, reason: not valid java name */
    public final float m1726getActiveIndicatorWidthD9Ej5fM() {
        return ActiveIndicatorWidth;
    }

    public final ShapeKeyTokens getActiveShape() {
        return ActiveShape;
    }

    public final ColorSchemeKeyTokens getFourColorActiveIndicatorFourColor() {
        return FourColorActiveIndicatorFourColor;
    }

    public final ColorSchemeKeyTokens getFourColorActiveIndicatorOneColor() {
        return FourColorActiveIndicatorOneColor;
    }

    public final ColorSchemeKeyTokens getFourColorActiveIndicatorThreeColor() {
        return FourColorActiveIndicatorThreeColor;
    }

    public final ColorSchemeKeyTokens getFourColorActiveIndicatorTwoColor() {
        return FourColorActiveIndicatorTwoColor;
    }

    /* renamed from: getSize-D9Ej5fM, reason: not valid java name */
    public final float m1727getSizeD9Ej5fM() {
        return Size;
    }

    private CircularProgressIndicatorTokens() {
    }
}
