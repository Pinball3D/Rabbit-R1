package androidx.compose.material3;

import androidx.compose.material3.tokens.SliderTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;

/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JE\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000eH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010J3\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007¢\u0006\u0002\u0010\u0014Jy\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00162\b\b\u0002\u0010\u0019\u001a\u00020\u00162\b\b\u0002\u0010\u001a\u001a\u00020\u00162\b\b\u0002\u0010\u001b\u001a\u00020\u00162\b\b\u0002\u0010\u001c\u001a\u00020\u00162\b\b\u0002\u0010\u001d\u001a\u00020\u00162\b\b\u0002\u0010\u001e\u001a\u00020\u00162\b\b\u0002\u0010\u001f\u001a\u00020\u0016H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010!\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\""}, d2 = {"Landroidx/compose/material3/SliderDefaults;", "", "()V", "Thumb", "", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "modifier", "Landroidx/compose/ui/Modifier;", "colors", "Landroidx/compose/material3/SliderColors;", "enabled", "", "thumbSize", "Landroidx/compose/ui/unit/DpSize;", "Thumb-9LiSoMs", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZJLandroidx/compose/runtime/Composer;II)V", "Track", "sliderPositions", "Landroidx/compose/material3/SliderPositions;", "(Landroidx/compose/material3/SliderPositions;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SliderColors;ZLandroidx/compose/runtime/Composer;II)V", "thumbColor", "Landroidx/compose/ui/graphics/Color;", "activeTrackColor", "activeTickColor", "inactiveTrackColor", "inactiveTickColor", "disabledThumbColor", "disabledActiveTrackColor", "disabledActiveTickColor", "disabledInactiveTrackColor", "disabledInactiveTickColor", "colors-q0g_0yA", "(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SliderColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SliderDefaults {
    public static final int $stable = 0;
    public static final SliderDefaults INSTANCE = new SliderDefaults();

    private SliderDefaults() {
    }

    /* renamed from: colors-q0g_0yA, reason: not valid java name */
    public final SliderColors m1392colorsq0g_0yA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(885588574);
        ComposerKt.sourceInformation(composer, "C(colors)P(9:c#ui.graphics.Color,1:c#ui.graphics.Color,0:c#ui.graphics.Color,8:c#ui.graphics.Color,7:c#ui.graphics.Color,6:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,5:c#ui.graphics.Color,4:c#ui.graphics.Color)897@37512L9,898@37587L9,900@37687L9,902@37838L9,903@37929L9,906@38096L9,908@38209L11,911@38340L9,914@38521L9,918@38719L9,921@38892L9:Slider.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(SliderTokens.INSTANCE.getHandleColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(SliderTokens.INSTANCE.getActiveTrackColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i3 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getTickMarksActiveContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long color3 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(SliderTokens.INSTANCE.getInactiveTrackColor(), composer, 6) : j4;
        long m2638copywmQWz5c$default2 = (i3 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getTickMarksInactiveContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j5;
        long m2684compositeOverOWjLjI = (i3 & 32) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getDisabledHandleColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j6;
        long m2638copywmQWz5c$default3 = (i3 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getDisabledActiveTrackColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j7;
        long m2638copywmQWz5c$default4 = (i3 & 128) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getTickMarksDisabledContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long m2638copywmQWz5c$default5 = (i3 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getDisabledInactiveTrackColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j9;
        long m2638copywmQWz5c$default6 = (i3 & 512) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SliderTokens.INSTANCE.getTickMarksDisabledContainerColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(885588574, i, i2, "androidx.compose.material3.SliderDefaults.colors (Slider.kt:896)");
        }
        SliderColors sliderColors = new SliderColors(color, color2, m2638copywmQWz5c$default, color3, m2638copywmQWz5c$default2, m2684compositeOverOWjLjI, m2638copywmQWz5c$default3, m2638copywmQWz5c$default4, m2638copywmQWz5c$default5, m2638copywmQWz5c$default6, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return sliderColors;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0247  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x006d  */
    /* renamed from: Thumb-9LiSoMs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1391Thumb9LiSoMs(final androidx.compose.foundation.interaction.MutableInteractionSource r39, androidx.compose.ui.Modifier r40, androidx.compose.material3.SliderColors r41, boolean r42, long r43, androidx.compose.runtime.Composer r45, final int r46, final int r47) {
        /*
            Method dump skipped, instructions count: 603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderDefaults.m1391Thumb9LiSoMs(androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.Modifier, androidx.compose.material3.SliderColors, boolean, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x015b A[LOOP:0: B:46:0x0158->B:48:0x015b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0194  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void Track(final androidx.compose.material3.SliderPositions r35, androidx.compose.ui.Modifier r36, androidx.compose.material3.SliderColors r37, boolean r38, androidx.compose.runtime.Composer r39, final int r40, final int r41) {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SliderDefaults.Track(androidx.compose.material3.SliderPositions, androidx.compose.ui.Modifier, androidx.compose.material3.SliderColors, boolean, androidx.compose.runtime.Composer, int, int):void");
    }
}
