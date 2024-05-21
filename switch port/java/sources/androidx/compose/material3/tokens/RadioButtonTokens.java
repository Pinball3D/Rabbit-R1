package androidx.compose.material3.tokens;

import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: RadioButtonTokens.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\t\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0006R\u000e\u0010\u000b\u001a\u00020\bX\u0086T¢\u0006\u0002\n\u0000R\u001c\u0010\f\u001a\u00020\rø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0011\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0006R\u001c\u0010\u0019\u001a\u00020\rø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0010\u001a\u0004\b\u001a\u0010\u000fR\u0011\u0010\u001b\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0006R\u0011\u0010\u001d\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0006R\u0011\u0010\u001f\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u0006R\u0011\u0010!\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006#"}, d2 = {"Landroidx/compose/material3/tokens/RadioButtonTokens;", "", "()V", "DisabledSelectedIconColor", "Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "getDisabledSelectedIconColor", "()Landroidx/compose/material3/tokens/ColorSchemeKeyTokens;", "DisabledSelectedIconOpacity", "", "DisabledUnselectedIconColor", "getDisabledUnselectedIconColor", "DisabledUnselectedIconOpacity", "IconSize", "Landroidx/compose/ui/unit/Dp;", "getIconSize-D9Ej5fM", "()F", "F", "SelectedFocusIconColor", "getSelectedFocusIconColor", "SelectedHoverIconColor", "getSelectedHoverIconColor", "SelectedIconColor", "getSelectedIconColor", "SelectedPressedIconColor", "getSelectedPressedIconColor", "StateLayerSize", "getStateLayerSize-D9Ej5fM", "UnselectedFocusIconColor", "getUnselectedFocusIconColor", "UnselectedHoverIconColor", "getUnselectedHoverIconColor", "UnselectedIconColor", "getUnselectedIconColor", "UnselectedPressedIconColor", "getUnselectedPressedIconColor", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RadioButtonTokens {
    public static final float DisabledSelectedIconOpacity = 0.38f;
    public static final float DisabledUnselectedIconOpacity = 0.38f;
    public static final RadioButtonTokens INSTANCE = new RadioButtonTokens();
    private static final ColorSchemeKeyTokens DisabledSelectedIconColor = ColorSchemeKeyTokens.OnSurface;
    private static final ColorSchemeKeyTokens DisabledUnselectedIconColor = ColorSchemeKeyTokens.OnSurface;
    private static final float IconSize = Dp.m4883constructorimpl((float) 20.0d);
    private static final ColorSchemeKeyTokens SelectedFocusIconColor = ColorSchemeKeyTokens.Primary;
    private static final ColorSchemeKeyTokens SelectedHoverIconColor = ColorSchemeKeyTokens.Primary;
    private static final ColorSchemeKeyTokens SelectedIconColor = ColorSchemeKeyTokens.Primary;
    private static final ColorSchemeKeyTokens SelectedPressedIconColor = ColorSchemeKeyTokens.Primary;
    private static final float StateLayerSize = Dp.m4883constructorimpl((float) 40.0d);
    private static final ColorSchemeKeyTokens UnselectedFocusIconColor = ColorSchemeKeyTokens.OnSurface;
    private static final ColorSchemeKeyTokens UnselectedHoverIconColor = ColorSchemeKeyTokens.OnSurface;
    private static final ColorSchemeKeyTokens UnselectedIconColor = ColorSchemeKeyTokens.OnSurfaceVariant;
    private static final ColorSchemeKeyTokens UnselectedPressedIconColor = ColorSchemeKeyTokens.OnSurface;

    public final ColorSchemeKeyTokens getDisabledSelectedIconColor() {
        return DisabledSelectedIconColor;
    }

    public final ColorSchemeKeyTokens getDisabledUnselectedIconColor() {
        return DisabledUnselectedIconColor;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m2108getIconSizeD9Ej5fM() {
        return IconSize;
    }

    public final ColorSchemeKeyTokens getSelectedFocusIconColor() {
        return SelectedFocusIconColor;
    }

    public final ColorSchemeKeyTokens getSelectedHoverIconColor() {
        return SelectedHoverIconColor;
    }

    public final ColorSchemeKeyTokens getSelectedIconColor() {
        return SelectedIconColor;
    }

    public final ColorSchemeKeyTokens getSelectedPressedIconColor() {
        return SelectedPressedIconColor;
    }

    /* renamed from: getStateLayerSize-D9Ej5fM, reason: not valid java name */
    public final float m2109getStateLayerSizeD9Ej5fM() {
        return StateLayerSize;
    }

    public final ColorSchemeKeyTokens getUnselectedFocusIconColor() {
        return UnselectedFocusIconColor;
    }

    public final ColorSchemeKeyTokens getUnselectedHoverIconColor() {
        return UnselectedHoverIconColor;
    }

    public final ColorSchemeKeyTokens getUnselectedIconColor() {
        return UnselectedIconColor;
    }

    public final ColorSchemeKeyTokens getUnselectedPressedIconColor() {
        return UnselectedPressedIconColor;
    }

    private RadioButtonTokens() {
    }
}
