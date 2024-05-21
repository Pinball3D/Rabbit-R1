package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.material3.tokens.ElevatedCardTokens;
import androidx.compose.material3.tokens.FilledCardTokens;
import androidx.compose.material3.tokens.OutlinedCardTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: Card.kt */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0012\u0010\u0013JQ\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u00172\b\b\u0002\u0010\u001c\u001a\u00020\u0017H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u001eJ=\u0010\u001f\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010\u0013JQ\u0010!\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u00172\b\b\u0002\u0010\u001c\u001a\u00020\u0017H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u001eJ\u0017\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&H\u0007¢\u0006\u0002\u0010'J=\u0010(\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000e2\b\b\u0002\u0010\u0010\u001a\u00020\u000e2\b\b\u0002\u0010\u0011\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b)\u0010\u0013JQ\u0010*\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00172\b\b\u0002\u0010\u0019\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u00172\b\b\u0002\u0010\u001b\u001a\u00020\u00172\b\b\u0002\u0010\u001c\u001a\u00020\u0017H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010\u001eR\u0011\u0010\u0003\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006R\u0011\u0010\t\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\n\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006,"}, d2 = {"Landroidx/compose/material3/CardDefaults;", "", "()V", "elevatedShape", "Landroidx/compose/ui/graphics/Shape;", "getElevatedShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "outlinedShape", "getOutlinedShape", "shape", "getShape", "cardColors", "Landroidx/compose/material3/CardColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "disabledContainerColor", "disabledContentColor", "cardColors-ro_MJ88", "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardColors;", "cardElevation", "Landroidx/compose/material3/CardElevation;", "defaultElevation", "Landroidx/compose/ui/unit/Dp;", "pressedElevation", "focusedElevation", "hoveredElevation", "draggedElevation", "disabledElevation", "cardElevation-aqJV_2Y", "(FFFFFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CardElevation;", "elevatedCardColors", "elevatedCardColors-ro_MJ88", "elevatedCardElevation", "elevatedCardElevation-aqJV_2Y", "outlinedCardBorder", "Landroidx/compose/foundation/BorderStroke;", "enabled", "", "(ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/BorderStroke;", "outlinedCardColors", "outlinedCardColors-ro_MJ88", "outlinedCardElevation", "outlinedCardElevation-aqJV_2Y", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CardDefaults {
    public static final int $stable = 0;
    public static final CardDefaults INSTANCE = new CardDefaults();

    private CardDefaults() {
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(1266660211);
        ComposerKt.sourceInformation(composer, "C354@16330L9:Card.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1266660211, i, -1, "androidx.compose.material3.CardDefaults.<get-shape> (Card.kt:354)");
        }
        Shape shape = ShapesKt.toShape(FilledCardTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getElevatedShape(Composer composer, int i) {
        composer.startReplaceableGroup(-133496185);
        ComposerKt.sourceInformation(composer, "C357@16471L9:Card.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-133496185, i, -1, "androidx.compose.material3.CardDefaults.<get-elevatedShape> (Card.kt:357)");
        }
        Shape shape = ShapesKt.toShape(ElevatedCardTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getOutlinedShape(Composer composer, int i) {
        composer.startReplaceableGroup(1095404023);
        ComposerKt.sourceInformation(composer, "C360@16612L9:Card.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1095404023, i, -1, "androidx.compose.material3.CardDefaults.<get-outlinedShape> (Card.kt:360)");
        }
        Shape shape = ShapesKt.toShape(OutlinedCardTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* renamed from: cardElevation-aqJV_2Y, reason: not valid java name */
    public final CardElevation m1025cardElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-574898487);
        ComposerKt.sourceInformation(composer, "C(cardElevation)P(0:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,2:c#ui.unit.Dp,1:c#ui.unit.Dp):Card.kt#uh7d8r");
        float m1902getContainerElevationD9Ej5fM = (i2 & 1) != 0 ? FilledCardTokens.INSTANCE.m1902getContainerElevationD9Ej5fM() : f;
        float m1908getPressedContainerElevationD9Ej5fM = (i2 & 2) != 0 ? FilledCardTokens.INSTANCE.m1908getPressedContainerElevationD9Ej5fM() : f2;
        float m1905getFocusContainerElevationD9Ej5fM = (i2 & 4) != 0 ? FilledCardTokens.INSTANCE.m1905getFocusContainerElevationD9Ej5fM() : f3;
        float m1906getHoverContainerElevationD9Ej5fM = (i2 & 8) != 0 ? FilledCardTokens.INSTANCE.m1906getHoverContainerElevationD9Ej5fM() : f4;
        float m1904getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? FilledCardTokens.INSTANCE.m1904getDraggedContainerElevationD9Ej5fM() : f5;
        float m1903getDisabledContainerElevationD9Ej5fM = (i2 & 32) != 0 ? FilledCardTokens.INSTANCE.m1903getDisabledContainerElevationD9Ej5fM() : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-574898487, i, -1, "androidx.compose.material3.CardDefaults.cardElevation (Card.kt:373)");
        }
        CardElevation cardElevation = new CardElevation(m1902getContainerElevationD9Ej5fM, m1908getPressedContainerElevationD9Ej5fM, m1905getFocusContainerElevationD9Ej5fM, m1906getHoverContainerElevationD9Ej5fM, m1904getDraggedContainerElevationD9Ej5fM, m1903getDisabledContainerElevationD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardElevation;
    }

    /* renamed from: elevatedCardElevation-aqJV_2Y, reason: not valid java name */
    public final CardElevation m1027elevatedCardElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1154241939);
        ComposerKt.sourceInformation(composer, "C(elevatedCardElevation)P(0:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,2:c#ui.unit.Dp,1:c#ui.unit.Dp):Card.kt#uh7d8r");
        float m1818getContainerElevationD9Ej5fM = (i2 & 1) != 0 ? ElevatedCardTokens.INSTANCE.m1818getContainerElevationD9Ej5fM() : f;
        float m1824getPressedContainerElevationD9Ej5fM = (i2 & 2) != 0 ? ElevatedCardTokens.INSTANCE.m1824getPressedContainerElevationD9Ej5fM() : f2;
        float m1821getFocusContainerElevationD9Ej5fM = (i2 & 4) != 0 ? ElevatedCardTokens.INSTANCE.m1821getFocusContainerElevationD9Ej5fM() : f3;
        float m1822getHoverContainerElevationD9Ej5fM = (i2 & 8) != 0 ? ElevatedCardTokens.INSTANCE.m1822getHoverContainerElevationD9Ej5fM() : f4;
        float m1820getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? ElevatedCardTokens.INSTANCE.m1820getDraggedContainerElevationD9Ej5fM() : f5;
        float m1819getDisabledContainerElevationD9Ej5fM = (i2 & 32) != 0 ? ElevatedCardTokens.INSTANCE.m1819getDisabledContainerElevationD9Ej5fM() : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1154241939, i, -1, "androidx.compose.material3.CardDefaults.elevatedCardElevation (Card.kt:401)");
        }
        CardElevation cardElevation = new CardElevation(m1818getContainerElevationD9Ej5fM, m1824getPressedContainerElevationD9Ej5fM, m1821getFocusContainerElevationD9Ej5fM, m1822getHoverContainerElevationD9Ej5fM, m1820getDraggedContainerElevationD9Ej5fM, m1819getDisabledContainerElevationD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardElevation;
    }

    /* renamed from: outlinedCardElevation-aqJV_2Y, reason: not valid java name */
    public final CardElevation m1029outlinedCardElevationaqJV_2Y(float f, float f2, float f3, float f4, float f5, float f6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-97678773);
        ComposerKt.sourceInformation(composer, "C(outlinedCardElevation)P(0:c#ui.unit.Dp,5:c#ui.unit.Dp,3:c#ui.unit.Dp,4:c#ui.unit.Dp,2:c#ui.unit.Dp,1:c#ui.unit.Dp):Card.kt#uh7d8r");
        float m2004getContainerElevationD9Ej5fM = (i2 & 1) != 0 ? OutlinedCardTokens.INSTANCE.m2004getContainerElevationD9Ej5fM() : f;
        float f7 = (i2 & 2) != 0 ? m2004getContainerElevationD9Ej5fM : f2;
        float f8 = (i2 & 4) != 0 ? m2004getContainerElevationD9Ej5fM : f3;
        float f9 = (i2 & 8) != 0 ? m2004getContainerElevationD9Ej5fM : f4;
        float m2006getDraggedContainerElevationD9Ej5fM = (i2 & 16) != 0 ? OutlinedCardTokens.INSTANCE.m2006getDraggedContainerElevationD9Ej5fM() : f5;
        float m2005getDisabledContainerElevationD9Ej5fM = (i2 & 32) != 0 ? OutlinedCardTokens.INSTANCE.m2005getDisabledContainerElevationD9Ej5fM() : f6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-97678773, i, -1, "androidx.compose.material3.CardDefaults.outlinedCardElevation (Card.kt:429)");
        }
        CardElevation cardElevation = new CardElevation(m2004getContainerElevationD9Ej5fM, f7, f8, f9, m2006getDraggedContainerElevationD9Ej5fM, m2005getDisabledContainerElevationD9Ej5fM, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardElevation;
    }

    /* renamed from: cardColors-ro_MJ88, reason: not valid java name */
    public final CardColors m1024cardColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1589582123);
        ComposerKt.sourceInformation(composer, "C(cardColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)456@21362L9,457@21403L31,459@21528L9,462@21677L11,466@21861L31:Card.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilledCardTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long m2684compositeOverOWjLjI = (i2 & 4) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledCardTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.m1109surfaceColorAtElevation3ABfNKs(MaterialTheme.INSTANCE.getColorScheme(composer, 6), FilledCardTokens.INSTANCE.m1903getDisabledContainerElevationD9Ej5fM())) : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1589582123, i, -1, "androidx.compose.material3.CardDefaults.cardColors (Card.kt:455)");
        }
        CardColors cardColors = new CardColors(color, m1104contentColorForek8zF_U, m2684compositeOverOWjLjI, m2638copywmQWz5c$default, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardColors;
    }

    /* renamed from: elevatedCardColors-ro_MJ88, reason: not valid java name */
    public final CardColors m1026elevatedCardColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(139558303);
        ComposerKt.sourceInformation(composer, "C(elevatedCardColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)485@22754L9,486@22795L31,488@22922L9,491@23073L11:Card.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(ElevatedCardTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long m2684compositeOverOWjLjI = (i2 & 4) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(ElevatedCardTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.m1109surfaceColorAtElevation3ABfNKs(MaterialTheme.INSTANCE.getColorScheme(composer, 6), ElevatedCardTokens.INSTANCE.m1819getDisabledContainerElevationD9Ej5fM())) : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(m1104contentColorForek8zF_U, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(139558303, i, -1, "androidx.compose.material3.CardDefaults.elevatedCardColors (Card.kt:484)");
        }
        CardColors cardColors = new CardColors(color, m1104contentColorForek8zF_U, m2684compositeOverOWjLjI, m2638copywmQWz5c$default, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardColors;
    }

    /* renamed from: outlinedCardColors-ro_MJ88, reason: not valid java name */
    public final CardColors m1028outlinedCardColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1112362409);
        ComposerKt.sourceInformation(composer, "C(outlinedCardColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)515@24161L9,516@24202L31:Card.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(OutlinedCardTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long j5 = (i2 & 4) != 0 ? color : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(m1104contentColorForek8zF_U, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1112362409, i, -1, "androidx.compose.material3.CardDefaults.outlinedCardColors (Card.kt:514)");
        }
        CardColors cardColors = new CardColors(color, m1104contentColorForek8zF_U, j5, m2638copywmQWz5c$default, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return cardColors;
    }

    public final BorderStroke outlinedCardBorder(boolean z, Composer composer, int i, int i2) {
        long m2684compositeOverOWjLjI;
        composer.startReplaceableGroup(-392936593);
        ComposerKt.sourceInformation(composer, "C(outlinedCardBorder)545@25344L72:Card.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            z = true;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-392936593, i, -1, "androidx.compose.material3.CardDefaults.outlinedCardBorder (Card.kt:533)");
        }
        if (z) {
            composer.startReplaceableGroup(-31428837);
            ComposerKt.sourceInformation(composer, "535@24944L9");
            m2684compositeOverOWjLjI = ColorSchemeKt.toColor(OutlinedCardTokens.INSTANCE.getOutlineColor(), composer, 6);
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(-31428766);
            ComposerKt.sourceInformation(composer, "537@25023L9,540@25172L11");
            m2684compositeOverOWjLjI = ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(OutlinedCardTokens.INSTANCE.getDisabledOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), ColorSchemeKt.m1109surfaceColorAtElevation3ABfNKs(MaterialTheme.INSTANCE.getColorScheme(composer, 6), OutlinedCardTokens.INSTANCE.m2005getDisabledContainerElevationD9Ej5fM()));
            composer.endReplaceableGroup();
        }
        Color m2629boximpl = Color.m2629boximpl(m2684compositeOverOWjLjI);
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(m2629boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = BorderStrokeKt.m196BorderStrokecXLIe8U(OutlinedCardTokens.INSTANCE.m2010getOutlineWidthD9Ej5fM(), m2684compositeOverOWjLjI);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        BorderStroke borderStroke = (BorderStroke) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return borderStroke;
    }
}
