package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: LinearProgressIndicatorTokens.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0011\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0006R\u0011\u0010\u0012\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0006R\u0011\u0010\u0014\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0006R\u0011\u0010\u0016\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0006R\u0011\u0010\u0018\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u0006R\u001c\u0010\u001a\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u001b\u0010\nR\u0011\u0010\u001c\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001e"}, d2 = {"Landroidx/compose/material3/tokens/LinearProgressIndicatorTokens;", "", "()V", "ActiveIndicatorColor", "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "getActiveIndicatorColor", "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "ActiveIndicatorHeight", "Landroidx/compose/ui/unit/Dp;", "getActiveIndicatorHeight-D9Ej5fM", "()F", "F", "ActiveShape", "Landroidx/compose/material3/tokens/ShapeKeyTokens;", "getActiveShape", "()Landroidx/compose/material3/tokens/ShapeKeyTokens;", "FourColorActiveIndicatorFourColor", "getFourColorActiveIndicatorFourColor", "FourColorActiveIndicatorOneColor", "getFourColorActiveIndicatorOneColor", "FourColorActiveIndicatorThreeColor", "getFourColorActiveIndicatorThreeColor", "FourColorActiveIndicatorTwoColor", "getFourColorActiveIndicatorTwoColor", "TrackColor", "getTrackColor", "TrackHeight", "getTrackHeight-D9Ej5fM", "TrackShape", "getTrackShape", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LinearProgressIndicatorTokens {
    private static final float ActiveIndicatorHeight;
    private static final float TrackHeight;
    public static final LinearProgressIndicatorTokens INSTANCE = new LinearProgressIndicatorTokens();
    private static final ColorSchemeKeyTokens ActiveIndicatorColor = ColorSchemeKeyTokens.Primary;
    private static final ShapeKeyTokens ActiveShape = ShapeKeyTokens.CornerNone;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorFourColor = ColorSchemeKeyTokens.TertiaryContainer;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorOneColor = ColorSchemeKeyTokens.Primary;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorThreeColor = ColorSchemeKeyTokens.Tertiary;
    private static final ColorSchemeKeyTokens FourColorActiveIndicatorTwoColor = ColorSchemeKeyTokens.PrimaryContainer;
    private static final ColorSchemeKeyTokens TrackColor = ColorSchemeKeyTokens.SurfaceVariant;
    private static final ShapeKeyTokens TrackShape = ShapeKeyTokens.CornerNone;

    public final ColorSchemeKeyTokens getActiveIndicatorColor() {
        return ActiveIndicatorColor;
    }

    /* renamed from: getActiveIndicatorHeight-D9Ej5fM, reason: not valid java name */
    public final float m1954getActiveIndicatorHeightD9Ej5fM() {
        return ActiveIndicatorHeight;
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

    public final ColorSchemeKeyTokens getTrackColor() {
        return TrackColor;
    }

    /* renamed from: getTrackHeight-D9Ej5fM, reason: not valid java name */
    public final float m1955getTrackHeightD9Ej5fM() {
        return TrackHeight;
    }

    public final ShapeKeyTokens getTrackShape() {
        return TrackShape;
    }

    private LinearProgressIndicatorTokens() {
    }

    static {
        float f = (float) 4.0d;
        ActiveIndicatorHeight = Dp.m4883constructorimpl(f);
        TrackHeight = Dp.m4883constructorimpl(f);
    }
}
