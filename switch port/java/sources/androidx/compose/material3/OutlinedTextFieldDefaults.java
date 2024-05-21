package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: TextFieldDefaults.kt */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b)\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JS\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u001b\u001a\u00020\u00042\b\b\u0002\u0010\u001c\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001eJ\u009c\u0002\u0010\u001f\u001a\u00020\u00132\u0006\u0010 \u001a\u00020!2\u0011\u0010\"\u001a\r\u0012\u0004\u0012\u00020\u00130#¢\u0006\u0002\b$2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020'2\u0006\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0016\u001a\u00020\u00152\u0015\b\u0002\u0010(\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010)\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010*\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010+\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010,\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010-\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\u0015\b\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\u0013\u0018\u00010#¢\u0006\u0002\b$2\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010/\u001a\u0002002\u0013\b\u0002\u00101\u001a\r\u0012\u0004\u0012\u00020\u00130#¢\u0006\u0002\b$H\u0007¢\u0006\u0002\u00102JÃ\u0003\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u00103\u001a\u0002042\b\b\u0002\u00105\u001a\u0002042\b\b\u0002\u00106\u001a\u0002042\b\b\u0002\u00107\u001a\u0002042\b\b\u0002\u00108\u001a\u0002042\b\b\u0002\u00109\u001a\u0002042\b\b\u0002\u0010:\u001a\u0002042\b\b\u0002\u0010;\u001a\u0002042\b\b\u0002\u0010<\u001a\u0002042\b\b\u0002\u0010=\u001a\u0002042\b\b\u0002\u0010>\u001a\u00020?2\b\b\u0002\u0010@\u001a\u0002042\b\b\u0002\u0010A\u001a\u0002042\b\b\u0002\u0010B\u001a\u0002042\b\b\u0002\u0010C\u001a\u0002042\b\b\u0002\u0010D\u001a\u0002042\b\b\u0002\u0010E\u001a\u0002042\b\b\u0002\u0010F\u001a\u0002042\b\b\u0002\u0010G\u001a\u0002042\b\b\u0002\u0010H\u001a\u0002042\b\b\u0002\u0010I\u001a\u0002042\b\b\u0002\u0010J\u001a\u0002042\b\b\u0002\u0010K\u001a\u0002042\b\b\u0002\u0010L\u001a\u0002042\b\b\u0002\u0010M\u001a\u0002042\b\b\u0002\u0010N\u001a\u0002042\b\b\u0002\u0010O\u001a\u0002042\b\b\u0002\u0010P\u001a\u0002042\b\b\u0002\u0010Q\u001a\u0002042\b\b\u0002\u0010R\u001a\u0002042\b\b\u0002\u0010S\u001a\u0002042\b\b\u0002\u0010T\u001a\u0002042\b\b\u0002\u0010U\u001a\u0002042\b\b\u0002\u0010V\u001a\u0002042\b\b\u0002\u0010W\u001a\u0002042\b\b\u0002\u0010X\u001a\u0002042\b\b\u0002\u0010Y\u001a\u0002042\b\b\u0002\u0010Z\u001a\u0002042\b\b\u0002\u0010[\u001a\u0002042\b\b\u0002\u0010\\\u001a\u0002042\b\b\u0002\u0010]\u001a\u0002042\b\b\u0002\u0010^\u001a\u0002042\b\b\u0002\u0010_\u001a\u000204H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b`\u0010aJ;\u0010/\u001a\u0002002\b\b\u0002\u0010b\u001a\u00020\u00042\b\b\u0002\u0010c\u001a\u00020\u00042\b\b\u0002\u0010d\u001a\u00020\u00042\b\b\u0002\u0010e\u001a\u00020\u0004ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bf\u0010gR\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\b\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u000b\u0010\u0006R\u001c\u0010\f\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\r\u0010\u0006R\u0011\u0010\u000e\u001a\u00020\u000f8G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006h"}, d2 = {"Landroidx/compose/material3/OutlinedTextFieldDefaults;", "", "()V", "FocusedBorderThickness", "Landroidx/compose/ui/unit/Dp;", "getFocusedBorderThickness-D9Ej5fM", "()F", "F", "MinHeight", "getMinHeight-D9Ej5fM", "MinWidth", "getMinWidth-D9Ej5fM", "UnfocusedBorderThickness", "getUnfocusedBorderThickness-D9Ej5fM", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "ContainerBox", "", "enabled", "", "isError", "interactionSource", "Landroidx/compose/foundation/interaction/InteractionSource;", "colors", "Landroidx/compose/material3/TextFieldColors;", "focusedBorderThickness", "unfocusedBorderThickness", "ContainerBox-nbWgWpA", "(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V", "DecorationBox", "value", "", "innerTextField", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "singleLine", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "label", "placeholder", "leadingIcon", "trailingIcon", "prefix", "suffix", "supportingText", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "container", "(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material3/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V", "focusedTextColor", "Landroidx/compose/ui/graphics/Color;", "unfocusedTextColor", "disabledTextColor", "errorTextColor", "focusedContainerColor", "unfocusedContainerColor", "disabledContainerColor", "errorContainerColor", "cursorColor", "errorCursorColor", "selectionColors", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "focusedBorderColor", "unfocusedBorderColor", "disabledBorderColor", "errorBorderColor", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "errorLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "errorTrailingIconColor", "focusedLabelColor", "unfocusedLabelColor", "disabledLabelColor", "errorLabelColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "disabledPlaceholderColor", "errorPlaceholderColor", "focusedSupportingTextColor", "unfocusedSupportingTextColor", "disabledSupportingTextColor", "errorSupportingTextColor", "focusedPrefixColor", "unfocusedPrefixColor", "disabledPrefixColor", "errorPrefixColor", "focusedSuffixColor", "unfocusedSuffixColor", "disabledSuffixColor", "errorSuffixColor", "colors-0hiis_0", "(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;IIIIIII)Landroidx/compose/material3/TextFieldColors;", "start", "top", "end", "bottom", "contentPadding-a9UjIt4", "(FFFF)Landroidx/compose/foundation/layout/PaddingValues;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OutlinedTextFieldDefaults {
    public static final int $stable = 0;
    public static final OutlinedTextFieldDefaults INSTANCE = new OutlinedTextFieldDefaults();
    private static final float MinHeight = Dp.m4883constructorimpl(56);
    private static final float MinWidth = Dp.m4883constructorimpl(280);
    private static final float UnfocusedBorderThickness = Dp.m4883constructorimpl(1);
    private static final float FocusedBorderThickness = Dp.m4883constructorimpl(2);

    /* renamed from: getFocusedBorderThickness-D9Ej5fM, reason: not valid java name */
    public final float m1329getFocusedBorderThicknessD9Ej5fM() {
        return FocusedBorderThickness;
    }

    /* renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m1330getMinHeightD9Ej5fM() {
        return MinHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m1331getMinWidthD9Ej5fM() {
        return MinWidth;
    }

    /* renamed from: getUnfocusedBorderThickness-D9Ej5fM, reason: not valid java name */
    public final float m1332getUnfocusedBorderThicknessD9Ej5fM() {
        return UnfocusedBorderThickness;
    }

    private OutlinedTextFieldDefaults() {
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1066756961);
        ComposerKt.sourceInformation(composer, "C1347@74442L9:TextFieldDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1066756961, i, -1, "androidx.compose.material3.OutlinedTextFieldDefaults.<get-shape> (TextFieldDefaults.kt:1347)");
        }
        Shape shape = ShapesKt.toShape(OutlinedTextFieldTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d7  */
    /* renamed from: ContainerBox-nbWgWpA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1326ContainerBoxnbWgWpA(final boolean r21, final boolean r22, final androidx.compose.foundation.interaction.InteractionSource r23, final androidx.compose.material3.TextFieldColors r24, androidx.compose.ui.graphics.Shape r25, float r26, float r27, androidx.compose.runtime.Composer r28, final int r29, final int r30) {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldDefaults.m1326ContainerBoxnbWgWpA(boolean, boolean, androidx.compose.foundation.interaction.InteractionSource, androidx.compose.material3.TextFieldColors, androidx.compose.ui.graphics.Shape, float, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: contentPadding-a9UjIt4$default, reason: not valid java name */
    public static /* synthetic */ PaddingValues m1325contentPaddinga9UjIt4$default(OutlinedTextFieldDefaults outlinedTextFieldDefaults, float f, float f2, float f3, float f4, int i, Object obj) {
        if ((i & 1) != 0) {
            f = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 2) != 0) {
            f2 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 4) != 0) {
            f3 = TextFieldImplKt.getTextFieldPadding();
        }
        if ((i & 8) != 0) {
            f4 = TextFieldImplKt.getTextFieldPadding();
        }
        return outlinedTextFieldDefaults.m1328contentPaddinga9UjIt4(f, f2, f3, f4);
    }

    /* renamed from: contentPadding-a9UjIt4, reason: not valid java name */
    public final PaddingValues m1328contentPaddinga9UjIt4(float start, float top, float end, float bottom) {
        return PaddingKt.m486PaddingValuesa9UjIt4(start, top, end, bottom);
    }

    /* renamed from: colors-0hiis_0, reason: not valid java name */
    public final TextFieldColors m1327colors0hiis_0(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, TextSelectionColors textSelectionColors, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, Composer composer, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        TextSelectionColors textSelectionColors2;
        composer.startReplaceableGroup(1767617725);
        ComposerKt.sourceInformation(composer, "C(colors)P(30:c#ui.graphics.Color,41:c#ui.graphics.Color,9:c#ui.graphics.Color,20:c#ui.graphics.Color,23:c#ui.graphics.Color,34:c#ui.graphics.Color,2:c#ui.graphics.Color,12:c#ui.graphics.Color,0:c#ui.graphics.Color,13:c#ui.graphics.Color,32,22:c#ui.graphics.Color,33:c#ui.graphics.Color,1:c#ui.graphics.Color,11:c#ui.graphics.Color,25:c#ui.graphics.Color,36:c#ui.graphics.Color,4:c#ui.graphics.Color,15:c#ui.graphics.Color,31:c#ui.graphics.Color,42:c#ui.graphics.Color,10:c#ui.graphics.Color,21:c#ui.graphics.Color,24:c#ui.graphics.Color,35:c#ui.graphics.Color,3:c#ui.graphics.Color,14:c#ui.graphics.Color,26:c#ui.graphics.Color,37:c#ui.graphics.Color,5:c#ui.graphics.Color,16:c#ui.graphics.Color,29:c#ui.graphics.Color,40:c#ui.graphics.Color,8:c#ui.graphics.Color,19:c#ui.graphics.Color,27:c#ui.graphics.Color,38:c#ui.graphics.Color,6:c#ui.graphics.Color,17:c#ui.graphics.Color,28:c#ui.graphics.Color,39:c#ui.graphics.Color,7:c#ui.graphics.Color,18:c#ui.graphics.Color)1479@81602L9,1480@81684L9,1481@81773L9,1483@81928L9,1488@82236L9,1489@82326L9,1490@82409L7,1491@82496L9,1492@82582L9,1493@82675L9,1495@82836L9,1496@82934L9,1497@83029L9,1498@83131L9,1500@83305L9,1501@83405L9,1502@83502L9,1504@83619L9,1505@83783L9,1506@83869L9,1507@83952L9,1508@84042L9,1510@84198L9,1511@84296L9,1512@84396L9,1513@84492L9,1515@84660L9,1516@84760L9,1517@84857L9,1519@84974L9,1520@85136L9,1521@85224L9,1522@85314L9,1523@85403L9,1525@85561L9,1526@85649L9,1527@85739L9,1528@85828L9,1530@85986L9:TextFieldDefaults.kt#uh7d8r");
        long color = (i6 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusInputColor(), composer, 6) : j;
        long color2 = (i6 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i6 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i6 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorInputColor(), composer, 6) : j4;
        long m2674getTransparent0d7_KjU = (i6 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long m2674getTransparent0d7_KjU2 = (i6 & 32) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j6;
        long m2674getTransparent0d7_KjU3 = (i6 & 64) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j7;
        long m2674getTransparent0d7_KjU4 = (i6 & 128) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j8;
        long color4 = (i6 & 256) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getCaretColor(), composer, 6) : j9;
        long color5 = (i6 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorFocusCaretColor(), composer, 6) : j10;
        if ((i6 & 1024) != 0) {
            ProvidableCompositionLocal<TextSelectionColors> localTextSelectionColors = TextSelectionColorsKt.getLocalTextSelectionColors();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localTextSelectionColors);
            ComposerKt.sourceInformationMarkerEnd(composer);
            textSelectionColors2 = (TextSelectionColors) consume;
        } else {
            textSelectionColors2 = textSelectionColors;
        }
        long color6 = (i6 & 2048) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusOutlineColor(), composer, 6) : j11;
        long color7 = (i6 & 4096) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getOutlineColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default2 = (i6 & 8192) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long color8 = (i6 & 16384) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorOutlineColor(), composer, 6) : j14;
        long color9 = (32768 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLeadingIconColor(), composer, 6) : j15;
        long color10 = (65536 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j16;
        long m2638copywmQWz5c$default3 = (131072 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j17;
        long color11 = (262144 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLeadingIconColor(), composer, 6) : j18;
        long color12 = (524288 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusTrailingIconColor(), composer, 6) : j19;
        long color13 = (1048576 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j20;
        long m2638copywmQWz5c$default4 = (2097152 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        long color14 = (4194304 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorTrailingIconColor(), composer, 6) : j22;
        long color15 = (8388608 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusLabelColor(), composer, 6) : j23;
        long color16 = (16777216 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getLabelColor(), composer, 6) : j24;
        long m2638copywmQWz5c$default5 = (33554432 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledLabelColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j25;
        long color17 = (67108864 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorLabelColor(), composer, 6) : j26;
        long color18 = (134217728 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j27;
        long color19 = (268435456 & i6) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j28;
        long m2638copywmQWz5c$default6 = (536870912 & i6) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledInputColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j29;
        long color20 = (i6 & 1073741824) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPlaceholderColor(), composer, 6) : j30;
        long color21 = (i7 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getFocusSupportingColor(), composer, 6) : j31;
        long color22 = (i7 & 2) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getSupportingColor(), composer, 6) : j32;
        long m2638copywmQWz5c$default7 = (i7 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getDisabledSupportingColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j33;
        long color23 = (i7 & 8) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getErrorSupportingColor(), composer, 6) : j34;
        long color24 = (i7 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j35;
        long color25 = (i7 & 32) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j36;
        long m2638copywmQWz5c$default8 = (i7 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j37;
        long color26 = (i7 & 128) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputPrefixColor(), composer, 6) : j38;
        long color27 = (i7 & 256) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j39;
        long color28 = (i7 & 512) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j40;
        long m2638copywmQWz5c$default9 = (i7 & 1024) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j41;
        long color29 = (i7 & 2048) != 0 ? ColorSchemeKt.toColor(OutlinedTextFieldTokens.INSTANCE.getInputSuffixColor(), composer, 6) : j42;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1767617725, i, i2, "androidx.compose.material3.OutlinedTextFieldDefaults.colors (TextFieldDefaults.kt:1478)");
        }
        TextFieldColors textFieldColors = new TextFieldColors(color, color2, m2638copywmQWz5c$default, color3, m2674getTransparent0d7_KjU, m2674getTransparent0d7_KjU2, m2674getTransparent0d7_KjU3, m2674getTransparent0d7_KjU4, color4, color5, textSelectionColors2, color6, color7, m2638copywmQWz5c$default2, color8, color9, color10, m2638copywmQWz5c$default3, color11, color12, color13, m2638copywmQWz5c$default4, color14, color15, color16, m2638copywmQWz5c$default5, color17, color18, color19, m2638copywmQWz5c$default6, color20, color21, color22, m2638copywmQWz5c$default7, color23, color24, color25, m2638copywmQWz5c$default8, color26, color27, color28, m2638copywmQWz5c$default9, color29, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return textFieldColors;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02b6  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d5  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0368  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02dd  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x02d7  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x02d1  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02cb  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x024c  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0463  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DecorationBox(final java.lang.String r117, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r118, final boolean r119, final boolean r120, final androidx.compose.ui.text.input.VisualTransformation r121, final androidx.compose.foundation.interaction.InteractionSource r122, boolean r123, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r124, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r125, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r126, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r127, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r128, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r129, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r130, androidx.compose.material3.TextFieldColors r131, androidx.compose.foundation.layout.PaddingValues r132, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r133, androidx.compose.runtime.Composer r134, final int r135, final int r136, final int r137) {
        /*
            Method dump skipped, instructions count: 1194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.OutlinedTextFieldDefaults.DecorationBox(java.lang.String, kotlin.jvm.functions.Function2, boolean, boolean, androidx.compose.ui.text.input.VisualTransformation, androidx.compose.foundation.interaction.InteractionSource, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.material3.TextFieldColors, androidx.compose.foundation.layout.PaddingValues, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int, int):void");
    }
}
