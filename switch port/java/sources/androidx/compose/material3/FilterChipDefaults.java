package androidx.compose.material3;

import androidx.compose.material3.tokens.FilterChipTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u008d\u0001\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u00112\b\b\u0002\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00112\b\b\u0002\u0010\u001b\u001a\u00020\u00112\b\b\u0002\u0010\u001c\u001a\u00020\u0011H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJQ\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\u00042\b\b\u0002\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010(JQ\u0010)\u001a\u00020*2\b\b\u0002\u0010+\u001a\u00020\u00112\b\b\u0002\u0010,\u001a\u00020\u00112\b\b\u0002\u0010-\u001a\u00020\u00112\b\b\u0002\u0010.\u001a\u00020\u00112\b\b\u0002\u0010/\u001a\u00020\u00042\b\b\u0002\u00100\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u00102J\u008d\u0001\u00103\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0013\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u00112\b\b\u0002\u0010\u0015\u001a\u00020\u00112\b\b\u0002\u0010\u0016\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00112\b\b\u0002\u0010\u0019\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u00112\b\b\u0002\u0010\u001b\u001a\u00020\u00112\b\b\u0002\u0010\u001c\u001a\u00020\u0011H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u0010\u001eJQ\u00105\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\u00042\b\b\u0002\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\u00042\b\b\u0002\u0010$\u001a\u00020\u00042\b\b\u0002\u0010%\u001a\u00020\u00042\b\b\u0002\u0010&\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b6\u0010(R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00067"}, d2 = {"Landroidx/compose/material3/FilterChipDefaults;", "", "()V", "Height", "Landroidx/compose/ui/unit/Dp;", "getHeight-D9Ej5fM", "()F", "F", "IconSize", "getIconSize-D9Ej5fM", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "elevatedFilterChipColors", "Landroidx/compose/material3/SelectableChipColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "labelColor", "iconColor", "disabledContainerColor", "disabledLabelColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "selectedContainerColor", "disabledSelectedContainerColor", "selectedLabelColor", "selectedLeadingIconColor", "selectedTrailingIconColor", "elevatedFilterChipColors-XqyqHi0", "(JJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SelectableChipColors;", "elevatedFilterChipElevation", "Landroidx/compose/material3/SelectableChipElevation;", "elevation", "pressedElevation", "focusedElevation", "hoveredElevation", "draggedElevation", "disabledElevation", "elevatedFilterChipElevation-aqJV_2Y", "(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipElevation;", "filterChipBorder", "Landroidx/compose/material3/SelectableChipBorder;", "borderColor", "selectedBorderColor", "disabledBorderColor", "disabledSelectedBorderColor", "borderWidth", "selectedBorderWidth", "filterChipBorder-gHcDVlo", "(JJJJFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipBorder;", "filterChipColors", "filterChipColors-XqyqHi0", "filterChipElevation", "filterChipElevation-aqJV_2Y", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FilterChipDefaults {
    public static final int $stable = 0;
    public static final FilterChipDefaults INSTANCE = new FilterChipDefaults();
    private static final float Height = FilterChipTokens.INSTANCE.m1927getContainerHeightD9Ej5fM();
    private static final float IconSize = FilterChipTokens.INSTANCE.m1943getIconSizeD9Ej5fM();

    /* renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public final float m1221getHeightD9Ej5fM() {
        return Height;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m1222getIconSizeD9Ej5fM() {
        return IconSize;
    }

    private FilterChipDefaults() {
    }

    /* renamed from: filterChipColors-XqyqHi0, reason: not valid java name */
    public final SelectableChipColors m1219filterChipColorsXqyqHi0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(-1831479801);
        ComposerKt.sourceInformation(composer, "C(filterChipColors)P(0:c#ui.graphics.Color,7:c#ui.graphics.Color,6:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,8:c#ui.graphics.Color,4:c#ui.graphics.Color,9:c#ui.graphics.Color,10:c#ui.graphics.Color,11:c#ui.graphics.Color)822@41024L9,823@41106L9,825@41252L9,827@41416L9,830@41651L9,832@41774L9,834@41946L9,835@42041L9:Chip.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i3 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        long color = (i3 & 2) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getUnselectedLabelTextColor(), composer, 6) : j2;
        long color2 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getLeadingIconUnselectedColor(), composer, 6) : j3;
        long m2674getTransparent0d7_KjU2 = (i3 & 8) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j4;
        long m2638copywmQWz5c$default = (i3 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j5;
        long m2638copywmQWz5c$default2 = (i3 & 32) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j6;
        long j13 = (i3 & 64) != 0 ? m2638copywmQWz5c$default2 : j7;
        long color3 = (i3 & 128) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getFlatSelectedContainerColor(), composer, 6) : j8;
        long m2638copywmQWz5c$default3 = (i3 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getFlatDisabledSelectedContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j9;
        long color4 = (i3 & 512) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getSelectedLabelTextColor(), composer, 6) : j10;
        long color5 = (i3 & 1024) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getSelectedLeadingIconColor(), composer, 6) : j11;
        long j14 = (i3 & 2048) != 0 ? color5 : j12;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1831479801, i, i2, "androidx.compose.material3.FilterChipDefaults.filterChipColors (Chip.kt:820)");
        }
        SelectableChipColors selectableChipColors = new SelectableChipColors(m2674getTransparent0d7_KjU, color, color2, color2, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, j13, color3, m2638copywmQWz5c$default3, color4, color5, j14, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipColors;
    }

    /* renamed from: filterChipElevation-aqJV_2Y, reason: not valid java name */
    public final SelectableChipElevation m1220filterChipElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-757972185);
        ComposerKt.sourceInformation(composer, "C(filterChipElevation)P(2:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,1:c#ui.unit.Dp,0:c#ui.unit.Dp):Chip.kt#uh7d8r");
        float m1934getFlatContainerElevationD9Ej5fM = (i2 & 1) != 0 ? FilterChipTokens.INSTANCE.m1934getFlatContainerElevationD9Ej5fM() : f;
        float m1938getFlatSelectedPressedContainerElevationD9Ej5fM = (i2 & 2) != 0 ? FilterChipTokens.INSTANCE.m1938getFlatSelectedPressedContainerElevationD9Ej5fM() : f2;
        float m1935getFlatSelectedFocusContainerElevationD9Ej5fM = (i2 & 4) != 0 ? FilterChipTokens.INSTANCE.m1935getFlatSelectedFocusContainerElevationD9Ej5fM() : f3;
        float m1936getFlatSelectedHoverContainerElevationD9Ej5fM = (i2 & 8) != 0 ? FilterChipTokens.INSTANCE.m1936getFlatSelectedHoverContainerElevationD9Ej5fM() : f4;
        float m1928getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? FilterChipTokens.INSTANCE.m1928getDraggedContainerElevationD9Ej5fM() : f5;
        float f7 = (i2 & 32) != 0 ? m1934getFlatContainerElevationD9Ej5fM : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-757972185, i, -1, "androidx.compose.material3.FilterChipDefaults.filterChipElevation (Chip.kt:866)");
        }
        SelectableChipElevation selectableChipElevation = new SelectableChipElevation(m1934getFlatContainerElevationD9Ej5fM, m1938getFlatSelectedPressedContainerElevationD9Ej5fM, m1935getFlatSelectedFocusContainerElevationD9Ej5fM, m1936getFlatSelectedHoverContainerElevationD9Ej5fM, m1928getDraggedContainerElevationD9Ej5fM, f7, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipElevation;
    }

    /* renamed from: filterChipBorder-gHcDVlo, reason: not valid java name */
    public final SelectableChipBorder m1218filterChipBordergHcDVlo(long j, long j2, long j3, long j4, float f, float f2, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1884534961);
        ComposerKt.sourceInformation(composer, "C(filterChipBorder)P(0:c#ui.graphics.Color,4:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,1:c#ui.unit.Dp,5:c#ui.unit.Dp)897@45140L9,899@45296L9:Chip.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getFlatUnselectedOutlineColor(), composer, 6) : j;
        long m2674getTransparent0d7_KjU = (i2 & 2) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getFlatDisabledUnselectedOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2674getTransparent0d7_KjU2 = (i2 & 8) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j4;
        float m1941getFlatUnselectedOutlineWidthD9Ej5fM = (i2 & 16) != 0 ? FilterChipTokens.INSTANCE.m1941getFlatUnselectedOutlineWidthD9Ej5fM() : f;
        float m1937getFlatSelectedOutlineWidthD9Ej5fM = (i2 & 32) != 0 ? FilterChipTokens.INSTANCE.m1937getFlatSelectedOutlineWidthD9Ej5fM() : f2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1884534961, i, -1, "androidx.compose.material3.FilterChipDefaults.filterChipBorder (Chip.kt:896)");
        }
        SelectableChipBorder selectableChipBorder = new SelectableChipBorder(color, m2674getTransparent0d7_KjU, m2638copywmQWz5c$default, m2674getTransparent0d7_KjU2, m1941getFlatUnselectedOutlineWidthD9Ej5fM, m1937getFlatSelectedOutlineWidthD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipBorder;
    }

    /* renamed from: elevatedFilterChipColors-XqyqHi0, reason: not valid java name */
    public final SelectableChipColors m1216elevatedFilterChipColorsXqyqHi0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(-915841711);
        ComposerKt.sourceInformation(composer, "C(elevatedFilterChipColors)P(0:c#ui.graphics.Color,7:c#ui.graphics.Color,6:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,8:c#ui.graphics.Color,4:c#ui.graphics.Color,9:c#ui.graphics.Color,10:c#ui.graphics.Color,11:c#ui.graphics.Color)933@47266L9,934@47347L9,935@47429L9,936@47528L9,938@47692L9,940@47856L9,943@48095L9,945@48254L9,946@48349L9:Chip.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getElevatedUnselectedContainerColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getUnselectedLabelTextColor(), composer, 6) : j2;
        long color3 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getLeadingIconUnselectedColor(), composer, 6) : j3;
        long m2638copywmQWz5c$default = (i3 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getElevatedDisabledContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long m2638copywmQWz5c$default2 = (i3 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j5;
        long m2638copywmQWz5c$default3 = (i3 & 32) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j6;
        long j13 = (i3 & 64) != 0 ? m2638copywmQWz5c$default3 : j7;
        long color4 = (i3 & 128) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getElevatedSelectedContainerColor(), composer, 6) : j8;
        long j14 = (i3 & 256) != 0 ? m2638copywmQWz5c$default : j9;
        long color5 = (i3 & 512) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getSelectedLabelTextColor(), composer, 6) : j10;
        long color6 = (i3 & 1024) != 0 ? ColorSchemeKt.toColor(FilterChipTokens.INSTANCE.getSelectedLeadingIconColor(), composer, 6) : j11;
        long j15 = (i3 & 2048) != 0 ? color6 : j12;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-915841711, i, i2, "androidx.compose.material3.FilterChipDefaults.elevatedFilterChipColors (Chip.kt:932)");
        }
        SelectableChipColors selectableChipColors = new SelectableChipColors(color, color2, color3, color3, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, m2638copywmQWz5c$default3, j13, color4, j14, color5, color6, j15, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipColors;
    }

    /* renamed from: elevatedFilterChipElevation-aqJV_2Y, reason: not valid java name */
    public final SelectableChipElevation m1217elevatedFilterChipElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(684803697);
        ComposerKt.sourceInformation(composer, "C(elevatedFilterChipElevation)P(2:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,1:c#ui.unit.Dp,0:c#ui.unit.Dp):Chip.kt#uh7d8r");
        float m1929getElevatedContainerElevationD9Ej5fM = (i2 & 1) != 0 ? FilterChipTokens.INSTANCE.m1929getElevatedContainerElevationD9Ej5fM() : f;
        float m1933getElevatedPressedContainerElevationD9Ej5fM = (i2 & 2) != 0 ? FilterChipTokens.INSTANCE.m1933getElevatedPressedContainerElevationD9Ej5fM() : f2;
        float m1931getElevatedFocusContainerElevationD9Ej5fM = (i2 & 4) != 0 ? FilterChipTokens.INSTANCE.m1931getElevatedFocusContainerElevationD9Ej5fM() : f3;
        float m1932getElevatedHoverContainerElevationD9Ej5fM = (i2 & 8) != 0 ? FilterChipTokens.INSTANCE.m1932getElevatedHoverContainerElevationD9Ej5fM() : f4;
        float m1928getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? FilterChipTokens.INSTANCE.m1928getDraggedContainerElevationD9Ej5fM() : f5;
        float m1930getElevatedDisabledContainerElevationD9Ej5fM = (i2 & 32) != 0 ? FilterChipTokens.INSTANCE.m1930getElevatedDisabledContainerElevationD9Ej5fM() : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(684803697, i, -1, "androidx.compose.material3.FilterChipDefaults.elevatedFilterChipElevation (Chip.kt:977)");
        }
        SelectableChipElevation selectableChipElevation = new SelectableChipElevation(m1929getElevatedContainerElevationD9Ej5fM, m1933getElevatedPressedContainerElevationD9Ej5fM, m1931getElevatedFocusContainerElevationD9Ej5fM, m1932getElevatedHoverContainerElevationD9Ej5fM, m1928getDraggedContainerElevationD9Ej5fM, m1930getElevatedDisabledContainerElevationD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipElevation;
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1598643637);
        ComposerKt.sourceInformation(composer, "C994@50798L9:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1598643637, i, -1, "androidx.compose.material3.FilterChipDefaults.<get-shape> (Chip.kt:994)");
        }
        Shape shape = ShapesKt.toShape(FilterChipTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }
}
