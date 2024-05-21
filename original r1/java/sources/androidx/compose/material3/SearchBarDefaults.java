package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.tokens.FilledTextFieldTokens;
import androidx.compose.material3.tokens.SearchBarTokens;
import androidx.compose.material3.tokens.SearchViewTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;

/* compiled from: SearchBar.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0011\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J3\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u00192\b\b\u0002\u0010\u001b\u001a\u00020\u001cH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u008d\u0001\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001f\u001a\u00020\u00192\b\b\u0002\u0010 \u001a\u00020\u00192\b\b\u0002\u0010!\u001a\u00020\u00192\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u00192\b\b\u0002\u0010%\u001a\u00020\u00192\b\b\u0002\u0010&\u001a\u00020\u00192\b\b\u0002\u0010'\u001a\u00020\u00192\b\b\u0002\u0010(\u001a\u00020\u00192\b\b\u0002\u0010)\u001a\u00020\u00192\b\b\u0002\u0010*\u001a\u00020\u00192\b\b\u0002\u0010+\u001a\u00020\u0019H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010-J¡\u0001\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010.\u001a\u00020\u00192\b\b\u0002\u0010/\u001a\u00020\u00192\b\b\u0002\u0010 \u001a\u00020\u00192\b\b\u0002\u0010!\u001a\u00020\u00192\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020\u00192\b\b\u0002\u0010%\u001a\u00020\u00192\b\b\u0002\u0010&\u001a\u00020\u00192\b\b\u0002\u0010'\u001a\u00020\u00192\b\b\u0002\u0010(\u001a\u00020\u00192\b\b\u0002\u0010)\u001a\u00020\u00192\b\b\u0002\u00100\u001a\u00020\u00192\b\b\u0002\u00101\u001a\u00020\u00192\b\b\u0002\u0010+\u001a\u00020\u0019H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b2\u00103R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u0011\u0010\n\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u000b8G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\rR\u0011\u0010\u0012\u001a\u00020\u00138G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u00064"}, d2 = {"Landroidx/compose/material3/SearchBarDefaults;", "", "()V", "Elevation", "Landroidx/compose/ui/unit/Dp;", "getElevation-D9Ej5fM", "()F", "F", "InputFieldHeight", "getInputFieldHeight-D9Ej5fM", "dockedShape", "Landroidx/compose/ui/graphics/Shape;", "getDockedShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "fullScreenShape", "getFullScreenShape", "inputFieldShape", "getInputFieldShape", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "getWindowInsets", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;", "colors", "Landroidx/compose/material3/SearchBarColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "dividerColor", "inputFieldColors", "Landroidx/compose/material3/TextFieldColors;", "colors-Klgx-Pg", "(JJLandroidx/compose/material3/TextFieldColors;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SearchBarColors;", "textColor", "disabledTextColor", "cursorColor", "selectionColors", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "placeholderColor", "disabledPlaceholderColor", "inputFieldColors--u-KgnY", "(JJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;", "focusedTextColor", "unfocusedTextColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "inputFieldColors-ITpI4ow", "(JJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TextFieldColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SearchBarDefaults {
    public static final int $stable = 0;
    public static final SearchBarDefaults INSTANCE = new SearchBarDefaults();
    private static final float Elevation = SearchBarTokens.INSTANCE.m2112getContainerElevationD9Ej5fM();
    private static final float InputFieldHeight = SearchBarTokens.INSTANCE.m2113getContainerHeightD9Ej5fM();

    /* renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m1373getElevationD9Ej5fM() {
        return Elevation;
    }

    /* renamed from: getInputFieldHeight-D9Ej5fM, reason: not valid java name */
    public final float m1374getInputFieldHeightD9Ej5fM() {
        return InputFieldHeight;
    }

    private SearchBarDefaults() {
    }

    public final Shape getInputFieldShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1770571533);
        ComposerKt.sourceInformation(composer, "C504@23164L9:SearchBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1770571533, i, -1, "androidx.compose.material3.SearchBarDefaults.<get-inputFieldShape> (SearchBar.kt:504)");
        }
        Shape shape = ShapesKt.toShape(SearchBarTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getFullScreenShape(Composer composer, int i) {
        composer.startReplaceableGroup(-2009956471);
        ComposerKt.sourceInformation(composer, "C508@23340L9:SearchBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2009956471, i, -1, "androidx.compose.material3.SearchBarDefaults.<get-fullScreenShape> (SearchBar.kt:508)");
        }
        Shape shape = ShapesKt.toShape(SearchViewTokens.INSTANCE.getFullScreenContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getDockedShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1447354121);
        ComposerKt.sourceInformation(composer, "C511@23486L9:SearchBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1447354121, i, -1, "androidx.compose.material3.SearchBarDefaults.<get-dockedShape> (SearchBar.kt:511)");
        }
        Shape shape = ShapesKt.toShape(SearchViewTokens.INSTANCE.getDockedContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        composer.startReplaceableGroup(-1795925906);
        ComposerKt.sourceInformation(composer, "C514@23617L10:SearchBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1795925906, i, -1, "androidx.compose.material3.SearchBarDefaults.<get-windowInsets> (SearchBar.kt:514)");
        }
        WindowInsets statusBars = WindowInsets_androidKt.getStatusBars(WindowInsets.INSTANCE, composer, 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return statusBars;
    }

    /* renamed from: colors-Klgx-Pg, reason: not valid java name */
    public final SearchBarColors m1372colorsKlgxPg(long j, long j2, TextFieldColors textFieldColors, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(701925149);
        ComposerKt.sourceInformation(composer, "C(colors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color)526@24106L9,527@24177L9,528@24232L18:SearchBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(SearchViewTokens.INSTANCE.getDividerColor(), composer, 6) : j2;
        TextFieldColors m1376inputFieldColorsITpI4ow = (i2 & 4) != 0 ? m1376inputFieldColorsITpI4ow(0L, 0L, 0L, 0L, null, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, 0, (i << 3) & 57344, 16383) : textFieldColors;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(701925149, i, -1, "androidx.compose.material3.SearchBarDefaults.colors (SearchBar.kt:525)");
        }
        SearchBarColors searchBarColors = new SearchBarColors(color, color2, m1376inputFieldColorsITpI4ow, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return searchBarColors;
    }

    /* renamed from: inputFieldColors-ITpI4ow, reason: not valid java name */
    public final TextFieldColors m1376inputFieldColorsITpI4ow(long j, long j2, long j3, long j4, TextSelectionColors textSelectionColors, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, Composer composer, int i, int i2, int i3) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(-2048506052);
        ComposerKt.sourceInformation(composer, "C(inputFieldColors)P(7:c#ui.graphics.Color,12:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,9,5:c#ui.graphics.Color,10:c#ui.graphics.Color,1:c#ui.graphics.Color,8:c#ui.graphics.Color,13:c#ui.graphics.Color,4:c#ui.graphics.Color,6:c#ui.graphics.Color,11:c#ui.graphics.Color,2:c#ui.graphics.Color)561@26199L9,562@26277L9,563@26364L9,565@26507L9,566@26590L7,567@26673L9,568@26760L9,570@26873L9,571@27023L9,572@27112L9,574@27227L9,575@27379L9,576@27469L9,577@27563L9,580@27695L847:SearchBar.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getInputTextColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getInputTextColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i3 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j4;
        if ((i3 & 16) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color4 = (i3 & 32) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j5;
        long color5 = (i3 & 64) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j6;
        long m2638copywmQWz5c$default2 = (i3 & 128) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j7;
        long color6 = (i3 & 256) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j8;
        long color7 = (i3 & 512) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j9;
        long m2638copywmQWz5c$default3 = (i3 & 1024) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long color8 = (i3 & 2048) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getSupportingTextColor(), composer, 6) : j11;
        long color9 = (i3 & 4096) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getSupportingTextColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default4 = (i3 & 8192) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2048506052, i, i2, "androidx.compose.material3.SearchBarDefaults.inputFieldColors (SearchBar.kt:560)");
        }
        int i4 = i2 << 18;
        TextFieldColors m1532colors0hiis_0 = TextFieldDefaults.INSTANCE.m1532colors0hiis_0(color, color2, m2638copywmQWz5c$default, 0L, 0L, 0L, 0L, 0L, color3, 0L, textSelectionColors2, 0L, 0L, 0L, 0L, color4, color5, m2638copywmQWz5c$default2, 0L, color6, color7, m2638copywmQWz5c$default3, 0L, 0L, 0L, 0L, 0L, color8, color9, m2638copywmQWz5c$default4, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composer, (i & 14) | (i & 112) | (i & 896) | ((i << 15) & 234881024), ((i >> 12) & 14) | (458752 & i) | (3670016 & i) | (i & 29360128) | ((i << 3) & 1879048192), ((i >> 27) & 14) | ((i2 << 3) & 112) | (i4 & 29360128) | (i4 & 234881024) | (i4 & 1879048192), 0, 3072, 1204058872, 4095);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1532colors0hiis_0;
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: inputFieldColors--u-KgnY, reason: not valid java name */
    public final /* synthetic */ TextFieldColors m1375inputFieldColorsuKgnY(long j, long j2, long j3, TextSelectionColors textSelectionColors, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, Composer composer, int i, int i2, int i3) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(1842555178);
        ComposerKt.sourceInformation(composer, "C(inputFieldColors)P(9:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,8,5:c#ui.graphics.Color,10:c#ui.graphics.Color,1:c#ui.graphics.Color,6:c#ui.graphics.Color,11:c#ui.graphics.Color,4:c#ui.graphics.Color,7:c#ui.graphics.Color,2:c#ui.graphics.Color)600@28732L9,601@28819L9,603@28962L9,604@29045L7,605@29128L9,606@29215L9,608@29328L9,609@29478L9,610@29567L9,612@29682L9,613@29827L9,614@29921L9,616@30010L765:SearchBar.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getInputTextColor(), composer, 6) : j;
        long m2638copywmQWz5c$default = (i3 & 2) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j2;
        long color2 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j3;
        if ((i3 & 8) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color3 = (i3 & 16) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j4;
        long color4 = (i3 & 32) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j5;
        long m2638copywmQWz5c$default2 = (i3 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j6;
        long color5 = (i3 & 128) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j7;
        long color6 = (i3 & 256) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j8;
        long m2638copywmQWz5c$default3 = (i3 & 512) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j9;
        long color7 = (i3 & 1024) != 0 ? ColorSchemeKt.toColor(SearchBarTokens.INSTANCE.getSupportingTextColor(), composer, 6) : j10;
        long m2638copywmQWz5c$default4 = (i3 & 2048) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1842555178, i, i2, "androidx.compose.material3.SearchBarDefaults.inputFieldColors (SearchBar.kt:599)");
        }
        int i4 = i << 3;
        int i5 = i2 << 6;
        TextFieldColors m1376inputFieldColorsITpI4ow = m1376inputFieldColorsITpI4ow(color, color, m2638copywmQWz5c$default, color2, textSelectionColors2, color3, color4, m2638copywmQWz5c$default2, color5, color6, m2638copywmQWz5c$default3, color7, color7, m2638copywmQWz5c$default4, composer, (i & 14) | (i4 & 112) | (i4 & 896) | (i4 & 7168) | (i4 & 57344) | (458752 & i4) | (3670016 & i4) | (29360128 & i4) | (234881024 & i4) | (i4 & 1879048192), ((i >> 27) & 14) | ((i2 << 3) & 112) | (i5 & 896) | (i5 & 7168) | (i5 & 57344), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1376inputFieldColorsITpI4ow;
    }
}
