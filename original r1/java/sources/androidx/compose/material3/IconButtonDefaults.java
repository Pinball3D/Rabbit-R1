package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.material3.tokens.FilledIconButtonTokens;
import androidx.compose.material3.tokens.FilledTonalIconButtonTokens;
import androidx.compose.material3.tokens.IconButtonTokens;
import androidx.compose.material3.tokens.OutlinedIconButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: IconButton.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\t\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011JQ\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017J=\u0010\u0018\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u0011JQ\u0010\u001a\u001a\u00020\u00132\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001b\u0010\u0017J=\u0010\u001c\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001d\u0010\u0011JQ\u0010\u001e\u001a\u00020\u00132\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010\u0017J\u0015\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0007¢\u0006\u0002\u0010$J=\u0010%\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0011J\u001f\u0010'\u001a\u0004\u0018\u00010!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010(\u001a\u00020#H\u0007¢\u0006\u0002\u0010)JQ\u0010*\u001a\u00020\u00132\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\f2\b\b\u0002\u0010\u000f\u001a\u00020\f2\b\b\u0002\u0010\u0014\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\fH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b+\u0010\u0017R\u0011\u0010\u0003\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006,"}, d2 = {"Landroidx/compose/material3/IconButtonDefaults;", "", "()V", "filledShape", "Landroidx/compose/ui/graphics/Shape;", "getFilledShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "outlinedShape", "getOutlinedShape", "filledIconButtonColors", "Landroidx/compose/material3/IconButtonColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "disabledContainerColor", "disabledContentColor", "filledIconButtonColors-ro_MJ88", "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/IconButtonColors;", "filledIconToggleButtonColors", "Landroidx/compose/material3/IconToggleButtonColors;", "checkedContainerColor", "checkedContentColor", "filledIconToggleButtonColors-5tl4gsc", "(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/IconToggleButtonColors;", "filledTonalIconButtonColors", "filledTonalIconButtonColors-ro_MJ88", "filledTonalIconToggleButtonColors", "filledTonalIconToggleButtonColors-5tl4gsc", "iconButtonColors", "iconButtonColors-ro_MJ88", "iconToggleButtonColors", "iconToggleButtonColors-5tl4gsc", "outlinedIconButtonBorder", "Landroidx/compose/foundation/BorderStroke;", "enabled", "", "(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;", "outlinedIconButtonColors", "outlinedIconButtonColors-ro_MJ88", "outlinedIconToggleButtonBorder", "checked", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/BorderStroke;", "outlinedIconToggleButtonColors", "outlinedIconToggleButtonColors-5tl4gsc", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IconButtonDefaults {
    public static final int $stable = 0;
    public static final IconButtonDefaults INSTANCE = new IconButtonDefaults();

    private IconButtonDefaults() {
    }

    public final Shape getFilledShape(Composer composer, int i) {
        composer.startReplaceableGroup(1265841879);
        ComposerKt.sourceInformation(composer, "C537@26248L9:IconButton.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1265841879, i, -1, "androidx.compose.material3.IconButtonDefaults.<get-filledShape> (IconButton.kt:537)");
        }
        Shape shape = ShapesKt.toShape(FilledIconButtonTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getOutlinedShape(Composer composer, int i) {
        composer.startReplaceableGroup(1327125527);
        ComposerKt.sourceInformation(composer, "C542@26422L9:IconButton.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1327125527, i, -1, "androidx.compose.material3.IconButtonDefaults.<get-outlinedShape> (IconButton.kt:541)");
        }
        Shape shape = ShapesKt.toShape(OutlinedIconButtonTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* renamed from: iconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m1240iconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        long j5;
        composer.startReplaceableGroup(999008085);
        ComposerKt.sourceInformation(composer, "C(iconButtonColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)555@27040L7:IconButton.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i2 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        if ((i2 & 2) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            j5 = ((Color) consume).m2649unboximpl();
        } else {
            j5 = j2;
        }
        long m2674getTransparent0d7_KjU2 = (i2 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(j5, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(999008085, i, -1, "androidx.compose.material3.IconButtonDefaults.iconButtonColors (IconButton.kt:553)");
        }
        IconButtonColors iconButtonColors = new IconButtonColors(m2674getTransparent0d7_KjU, j5, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconButtonColors;
    }

    /* renamed from: iconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m1241iconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        composer.startReplaceableGroup(-2020719549);
        ComposerKt.sourceInformation(composer, "C(iconToggleButtonColors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)581@28297L7,586@28610L9:IconButton.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i2 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        if ((i2 & 2) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            j7 = ((Color) consume).m2649unboximpl();
        } else {
            j7 = j2;
        }
        long m2674getTransparent0d7_KjU2 = (i2 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(j7, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long m2674getTransparent0d7_KjU3 = (i2 & 16) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j5;
        long color = (i2 & 32) != 0 ? ColorSchemeKt.toColor(IconButtonTokens.INSTANCE.getSelectedIconColor(), composer, 6) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2020719549, i, -1, "androidx.compose.material3.IconButtonDefaults.iconToggleButtonColors (IconButton.kt:579)");
        }
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(m2674getTransparent0d7_KjU, j7, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, m2674getTransparent0d7_KjU3, color, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconToggleButtonColors;
    }

    /* renamed from: filledIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m1236filledIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-669858473);
        ComposerKt.sourceInformation(composer, "C(filledIconButtonColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)607@29603L9,608@29644L31,609@29763L9,611@29924L9:IconButton.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2638copywmQWz5c$default2 = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getDisabledColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-669858473, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconButtonColors (IconButton.kt:606)");
        }
        IconButtonColors iconButtonColors = new IconButtonColors(color, m1104contentColorForek8zF_U, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconButtonColors;
    }

    /* renamed from: filledIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m1237filledIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1887173701);
        ComposerKt.sourceInformation(composer, "C(filledIconToggleButtonColors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)634@31068L9,637@31287L9,638@31384L9,640@31545L9,642@31707L9,643@31755L38:IconButton.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getUnselectedContainerColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getToggleUnselectedColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2638copywmQWz5c$default2 = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getDisabledColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long color3 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(FilledIconButtonTokens.INSTANCE.getSelectedContainerColor(), composer, 6) : j5;
        long m1104contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color3, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1887173701, i, -1, "androidx.compose.material3.IconButtonDefaults.filledIconToggleButtonColors (IconButton.kt:633)");
        }
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(color, color2, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, color3, m1104contentColorForek8zF_U, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconToggleButtonColors;
    }

    /* renamed from: filledTonalIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m1238filledTonalIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-18532843);
        ComposerKt.sourceInformation(composer, "C(filledTonalIconButtonColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)665@32799L9,666@32840L31,667@32964L9,669@33135L9:IconButton.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2638copywmQWz5c$default2 = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getDisabledColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-18532843, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconButtonColors (IconButton.kt:664)");
        }
        IconButtonColors iconButtonColors = new IconButtonColors(color, m1104contentColorForek8zF_U, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconButtonColors;
    }

    /* renamed from: filledTonalIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m1239filledTonalIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-19426557);
        ComposerKt.sourceInformation(composer, "C(filledTonalIconToggleButtonColors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)692@34299L9,693@34340L31,694@34464L9,696@34635L9,699@34819L9,700@34915L9:IconButton.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getUnselectedContainerColor(), composer, 6) : j;
        long m1104contentColorForek8zF_U = (i2 & 2) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, i & 14) : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getDisabledContainerColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2638copywmQWz5c$default2 = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getDisabledColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long color2 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getSelectedContainerColor(), composer, 6) : j5;
        long color3 = (i2 & 32) != 0 ? ColorSchemeKt.toColor(FilledTonalIconButtonTokens.INSTANCE.getToggleSelectedColor(), composer, 6) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-19426557, i, -1, "androidx.compose.material3.IconButtonDefaults.filledTonalIconToggleButtonColors (IconButton.kt:691)");
        }
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(color, m1104contentColorForek8zF_U, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, color2, color3, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconToggleButtonColors;
    }

    /* renamed from: outlinedIconButtonColors-ro_MJ88, reason: not valid java name */
    public final IconButtonColors m1242outlinedIconButtonColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        long j5;
        composer.startReplaceableGroup(-1030517545);
        ComposerKt.sourceInformation(composer, "C(outlinedIconButtonColors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)723@35948L7:IconButton.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i2 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        if ((i2 & 2) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            j5 = ((Color) consume).m2649unboximpl();
        } else {
            j5 = j2;
        }
        long m2674getTransparent0d7_KjU2 = (i2 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(j5, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1030517545, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonColors (IconButton.kt:721)");
        }
        IconButtonColors iconButtonColors = new IconButtonColors(m2674getTransparent0d7_KjU, j5, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconButtonColors;
    }

    /* renamed from: outlinedIconToggleButtonColors-5tl4gsc, reason: not valid java name */
    public final IconToggleButtonColors m1243outlinedIconToggleButtonColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        long j7;
        composer.startReplaceableGroup(2130592709);
        ComposerKt.sourceInformation(composer, "C(outlinedIconToggleButtonColors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)749@37225L7,754@37511L9,755@37559L38:IconButton.kt#uh7d8r");
        long m2674getTransparent0d7_KjU = (i2 & 1) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j;
        if ((i2 & 2) != 0) {
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            j7 = ((Color) consume).m2649unboximpl();
        } else {
            j7 = j2;
        }
        long m2674getTransparent0d7_KjU2 = (i2 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(j7, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long color = (i2 & 16) != 0 ? ColorSchemeKt.toColor(OutlinedIconButtonTokens.INSTANCE.getSelectedContainerColor(), composer, 6) : j5;
        long m1104contentColorForek8zF_U = (i2 & 32) != 0 ? ColorSchemeKt.m1104contentColorForek8zF_U(color, composer, (i >> 12) & 14) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2130592709, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonColors (IconButton.kt:747)");
        }
        IconToggleButtonColors iconToggleButtonColors = new IconToggleButtonColors(m2674getTransparent0d7_KjU, j7, m2674getTransparent0d7_KjU2, m2638copywmQWz5c$default, color, m1104contentColorForek8zF_U, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return iconToggleButtonColors;
    }

    public final BorderStroke outlinedIconToggleButtonBorder(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(1244729690);
        ComposerKt.sourceInformation(composer, "C(outlinedIconToggleButtonBorder)P(1)778@38429L33:IconButton.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1244729690, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconToggleButtonBorder (IconButton.kt:774)");
        }
        if (z2) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            return null;
        }
        BorderStroke outlinedIconButtonBorder = outlinedIconButtonBorder(z, composer, (i & 14) | ((i >> 3) & 112));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return outlinedIconButtonBorder;
    }

    public final BorderStroke outlinedIconButtonBorder(boolean z, Composer composer, int i) {
        long m2638copywmQWz5c$default;
        composer.startReplaceableGroup(-511461558);
        ComposerKt.sourceInformation(composer, "C(outlinedIconButtonBorder)794@38982L108:IconButton.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-511461558, i, -1, "androidx.compose.material3.IconButtonDefaults.outlinedIconButtonBorder (IconButton.kt:787)");
        }
        if (z) {
            composer.startReplaceableGroup(1252615214);
            ComposerKt.sourceInformation(composer, "789@38805L7");
            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = composer.consume(localContentColor);
            ComposerKt.sourceInformationMarkerEnd(composer);
            m2638copywmQWz5c$default = ((Color) consume).m2649unboximpl();
            composer.endReplaceableGroup();
        } else {
            composer.startReplaceableGroup(1252615269);
            ComposerKt.sourceInformation(composer, "791@38860L7");
            ProvidableCompositionLocal<Color> localContentColor2 = ContentColorKt.getLocalContentColor();
            ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = composer.consume(localContentColor2);
            ComposerKt.sourceInformationMarkerEnd(composer);
            m2638copywmQWz5c$default = Color.m2638copywmQWz5c$default(((Color) consume2).m2649unboximpl(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null);
            composer.endReplaceableGroup();
        }
        Color m2629boximpl = Color.m2629boximpl(m2638copywmQWz5c$default);
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(m2629boximpl);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = BorderStrokeKt.m196BorderStrokecXLIe8U(OutlinedIconButtonTokens.INSTANCE.m2014getUnselectedOutlineWidthD9Ej5fM(), m2638copywmQWz5c$default);
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
