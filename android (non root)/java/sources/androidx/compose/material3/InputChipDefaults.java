package androidx.compose.material3;

import androidx.compose.material3.tokens.InputChipTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JQ\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00132\b\b\u0002\u0010\u0016\u001a\u00020\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001aJ\u0097\u0001\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u00132\b\b\u0002\u0010\u001e\u001a\u00020\u00132\b\b\u0002\u0010\u001f\u001a\u00020\u00132\b\b\u0002\u0010 \u001a\u00020\u00132\b\b\u0002\u0010!\u001a\u00020\u00132\b\b\u0002\u0010\"\u001a\u00020\u00132\b\b\u0002\u0010#\u001a\u00020\u00132\b\b\u0002\u0010$\u001a\u00020\u00132\b\b\u0002\u0010%\u001a\u00020\u00132\b\b\u0002\u0010&\u001a\u00020\u00132\b\b\u0002\u0010'\u001a\u00020\u00132\b\b\u0002\u0010(\u001a\u00020\u00132\b\b\u0002\u0010)\u001a\u00020\u0013H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010+JQ\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020\u00042\b\b\u0002\u0010/\u001a\u00020\u00042\b\b\u0002\u00100\u001a\u00020\u00042\b\b\u0002\u00101\u001a\u00020\u00042\b\b\u0002\u00102\u001a\u00020\u00042\b\b\u0002\u00103\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b4\u00105R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u0011\u0010\f\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00066"}, d2 = {"Landroidx/compose/material3/InputChipDefaults;", "", "()V", "AvatarSize", "Landroidx/compose/ui/unit/Dp;", "getAvatarSize-D9Ej5fM", "()F", "F", "Height", "getHeight-D9Ej5fM", "IconSize", "getIconSize-D9Ej5fM", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "inputChipBorder", "Landroidx/compose/material3/SelectableChipBorder;", "borderColor", "Landroidx/compose/ui/graphics/Color;", "selectedBorderColor", "disabledBorderColor", "disabledSelectedBorderColor", "borderWidth", "selectedBorderWidth", "inputChipBorder-gHcDVlo", "(JJJJFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipBorder;", "inputChipColors", "Landroidx/compose/material3/SelectableChipColors;", "containerColor", "labelColor", "leadingIconColor", "trailingIconColor", "disabledContainerColor", "disabledLabelColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "selectedContainerColor", "disabledSelectedContainerColor", "selectedLabelColor", "selectedLeadingIconColor", "selectedTrailingIconColor", "inputChipColors-kwJvTHA", "(JJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SelectableChipColors;", "inputChipElevation", "Landroidx/compose/material3/SelectableChipElevation;", "elevation", "pressedElevation", "focusedElevation", "hoveredElevation", "draggedElevation", "disabledElevation", "inputChipElevation-aqJV_2Y", "(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SelectableChipElevation;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InputChipDefaults {
    public static final int $stable = 0;
    public static final InputChipDefaults INSTANCE = new InputChipDefaults();
    private static final float Height = InputChipTokens.INSTANCE.m1948getContainerHeightD9Ej5fM();
    private static final float IconSize = InputChipTokens.INSTANCE.m1950getLeadingIconSizeD9Ej5fM();
    private static final float AvatarSize = InputChipTokens.INSTANCE.m1946getAvatarSizeD9Ej5fM();

    /* renamed from: getAvatarSize-D9Ej5fM, reason: not valid java name */
    public final float m1248getAvatarSizeD9Ej5fM() {
        return AvatarSize;
    }

    /* renamed from: getHeight-D9Ej5fM, reason: not valid java name */
    public final float m1249getHeightD9Ej5fM() {
        return Height;
    }

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m1250getIconSizeD9Ej5fM() {
        return IconSize;
    }

    private InputChipDefaults() {
    }

    /* renamed from: inputChipColors-kwJvTHA, reason: not valid java name */
    public final SelectableChipColors m1252inputChipColorskwJvTHA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(1312840646);
        ComposerKt.sourceInformation(composer, "C(inputChipColors)P(0:c#ui.graphics.Color,6:c#ui.graphics.Color,7:c#ui.graphics.Color,12:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,8:c#ui.graphics.Color,4:c#ui.graphics.Color,9:c#ui.graphics.Color,10:c#ui.graphics.Color,11:c#ui.graphics.Color)1040@52762L9,1041@52850L9,1042@52940L9,1044@53085L9,1046@53247L9,1048@53413L9,1050@53574L9,1052@53692L9,1054@53858L9,1055@53952L9,1056@54048L9:Chip.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i3 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        long color = (i3 & 2) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getUnselectedLabelTextColor(), composer, 6) : j2;
        long color2 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getUnselectedLeadingIconColor(), composer, 6) : j3;
        long color3 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getUnselectedTrailingIconColor(), composer, 6) : j4;
        long m2674getTransparent0d7_KjU2 = (i3 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long m2638copywmQWz5c$default = (i3 & 32) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j6;
        long m2638copywmQWz5c$default2 = (i3 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j7;
        long m2638copywmQWz5c$default3 = (i3 & 128) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long color4 = (i3 & 256) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getSelectedContainerColor(), composer, 6) : j9;
        long m2638copywmQWz5c$default4 = (i3 & 512) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getDisabledSelectedContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long color5 = (i3 & 1024) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getSelectedLabelTextColor(), composer, 6) : j11;
        long color6 = (i3 & 2048) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getSelectedLeadingIconColor(), composer, 6) : j12;
        long color7 = (i3 & 4096) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getSelectedTrailingIconColor(), composer, 6) : j13;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1312840646, i, i2, "androidx.compose.material3.InputChipDefaults.inputChipColors (Chip.kt:1038)");
        }
        SelectableChipColors selectableChipColors = new SelectableChipColors(m2674getTransparent0d7_KjU, color, color2, color3, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, m2638copywmQWz5c$default3, color4, m2638copywmQWz5c$default4, color5, color6, color7, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipColors;
    }

    /* renamed from: inputChipElevation-aqJV_2Y, reason: not valid java name */
    public final SelectableChipElevation m1253inputChipElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1745270109);
        ComposerKt.sourceInformation(composer, "C(inputChipElevation)P(2:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,1:c#ui.unit.Dp,0:c#ui.unit.Dp):Chip.kt#uh7d8r");
        float m1947getContainerElevationD9Ej5fM = (i2 & 1) != 0 ? InputChipTokens.INSTANCE.m1947getContainerElevationD9Ej5fM() : f;
        float f7 = (i2 & 2) != 0 ? m1947getContainerElevationD9Ej5fM : f2;
        float f8 = (i2 & 4) != 0 ? m1947getContainerElevationD9Ej5fM : f3;
        float f9 = (i2 & 8) != 0 ? m1947getContainerElevationD9Ej5fM : f4;
        float m1949getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? InputChipTokens.INSTANCE.m1949getDraggedContainerElevationD9Ej5fM() : f5;
        float f10 = (i2 & 32) != 0 ? m1947getContainerElevationD9Ej5fM : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1745270109, i, -1, "androidx.compose.material3.InputChipDefaults.inputChipElevation (Chip.kt:1086)");
        }
        SelectableChipElevation selectableChipElevation = new SelectableChipElevation(m1947getContainerElevationD9Ej5fM, f7, f8, f9, m1949getDraggedContainerElevationD9Ej5fM, f10, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipElevation;
    }

    /* renamed from: inputChipBorder-gHcDVlo, reason: not valid java name */
    public final SelectableChipBorder m1251inputChipBordergHcDVlo(long j, long j2, long j3, long j4, float f, float f2, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-324924235);
        ComposerKt.sourceInformation(composer, "C(inputChipBorder)P(0:c#ui.graphics.Color,4:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,1:c#ui.unit.Dp,5:c#ui.unit.Dp)1116@56932L9,1118@57083L9:Chip.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getUnselectedOutlineColor(), composer, 6) : j;
        long m2674getTransparent0d7_KjU = (i2 & 2) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(InputChipTokens.INSTANCE.getDisabledUnselectedOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2674getTransparent0d7_KjU2 = (i2 & 8) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j4;
        float m1953getUnselectedOutlineWidthD9Ej5fM = (i2 & 16) != 0 ? InputChipTokens.INSTANCE.m1953getUnselectedOutlineWidthD9Ej5fM() : f;
        float m1951getSelectedOutlineWidthD9Ej5fM = (i2 & 32) != 0 ? InputChipTokens.INSTANCE.m1951getSelectedOutlineWidthD9Ej5fM() : f2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-324924235, i, -1, "androidx.compose.material3.InputChipDefaults.inputChipBorder (Chip.kt:1115)");
        }
        SelectableChipBorder selectableChipBorder = new SelectableChipBorder(color, m2674getTransparent0d7_KjU, m2638copywmQWz5c$default, m2674getTransparent0d7_KjU2, m1953getUnselectedOutlineWidthD9Ej5fM, m1951getSelectedOutlineWidthD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return selectableChipBorder;
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(1052444143);
        ComposerKt.sourceInformation(composer, "C1133@57835L9:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1052444143, i, -1, "androidx.compose.material3.InputChipDefaults.<get-shape> (Chip.kt:1133)");
        }
        Shape shape = ShapesKt.toShape(InputChipTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }
}
