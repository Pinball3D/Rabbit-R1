package androidx.compose.material3;

import androidx.compose.material3.tokens.SwitchTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: Switch.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jµ\u0001\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000b2\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\b\b\u0002\u0010\u0010\u001a\u00020\u000b2\b\b\u0002\u0010\u0011\u001a\u00020\u000b2\b\b\u0002\u0010\u0012\u001a\u00020\u000b2\b\b\u0002\u0010\u0013\u001a\u00020\u000b2\b\b\u0002\u0010\u0014\u001a\u00020\u000b2\b\b\u0002\u0010\u0015\u001a\u00020\u000b2\b\b\u0002\u0010\u0016\u001a\u00020\u000b2\b\b\u0002\u0010\u0017\u001a\u00020\u000b2\b\b\u0002\u0010\u0018\u001a\u00020\u000b2\b\b\u0002\u0010\u0019\u001a\u00020\u000b2\b\b\u0002\u0010\u001a\u001a\u00020\u000bH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u001cR\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001d"}, d2 = {"Landroidx/compose/material3/SwitchDefaults;", "", "()V", "IconSize", "Landroidx/compose/ui/unit/Dp;", "getIconSize-D9Ej5fM", "()F", "F", "colors", "Landroidx/compose/material3/SwitchColors;", "checkedThumbColor", "Landroidx/compose/ui/graphics/Color;", "checkedTrackColor", "checkedBorderColor", "checkedIconColor", "uncheckedThumbColor", "uncheckedTrackColor", "uncheckedBorderColor", "uncheckedIconColor", "disabledCheckedThumbColor", "disabledCheckedTrackColor", "disabledCheckedBorderColor", "disabledCheckedIconColor", "disabledUncheckedThumbColor", "disabledUncheckedTrackColor", "disabledUncheckedBorderColor", "disabledUncheckedIconColor", "colors-V1nXRL4", "(JJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/SwitchColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwitchDefaults {
    public static final int $stable = 0;
    public static final SwitchDefaults INSTANCE = new SwitchDefaults();
    private static final float IconSize = Dp.m4883constructorimpl(16);

    /* renamed from: getIconSize-D9Ej5fM, reason: not valid java name */
    public final float m1505getIconSizeD9Ej5fM() {
        return IconSize;
    }

    private SwitchDefaults() {
    }

    /* renamed from: colors-V1nXRL4, reason: not valid java name */
    public final SwitchColors m1504colorsV1nXRL4(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(1937926421);
        ComposerKt.sourceInformation(composer, "C(colors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color,14:c#ui.graphics.Color,15:c#ui.graphics.Color,12:c#ui.graphics.Color,13:c#ui.graphics.Color,6:c#ui.graphics.Color,7:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,10:c#ui.graphics.Color,11:c#ui.graphics.Color,8:c#ui.graphics.Color,9:c#ui.graphics.Color)284@11666L9,285@11744L9,287@11875L9,288@11958L9,289@12040L9,290@12135L9,291@12215L9,292@12310L9,294@12431L11,295@12536L9,297@12648L11,299@12814L9,301@12933L11,302@13043L9,304@13166L11,305@13275L9,307@13387L11,309@13516L9,311@13636L11,312@13743L9,314@13864L11:Switch.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getSelectedHandleColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getSelectedTrackColor(), composer, 6) : j2;
        long m2674getTransparent0d7_KjU = (i3 & 4) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j3;
        long color3 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getSelectedIconColor(), composer, 6) : j4;
        long color4 = (i3 & 16) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getUnselectedHandleColor(), composer, 6) : j5;
        long color5 = (i3 & 32) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getUnselectedTrackColor(), composer, 6) : j6;
        long color6 = (i3 & 64) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getUnselectedFocusTrackOutlineColor(), composer, 6) : j7;
        long color7 = (i3 & 128) != 0 ? ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getUnselectedIconColor(), composer, 6) : j8;
        long m2684compositeOverOWjLjI = (i3 & 256) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledSelectedHandleColor(), composer, 6), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j9;
        long m2684compositeOverOWjLjI2 = (i3 & 512) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledSelectedTrackColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j10;
        long m2674getTransparent0d7_KjU2 = (i3 & 1024) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j11;
        long m2684compositeOverOWjLjI3 = (i3 & 2048) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledSelectedIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j12;
        long m2684compositeOverOWjLjI4 = (i3 & 4096) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledUnselectedHandleColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j13;
        long m2684compositeOverOWjLjI5 = (i3 & 8192) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledUnselectedTrackColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j14;
        long m2684compositeOverOWjLjI6 = (i3 & 16384) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledUnselectedTrackOutlineColor(), composer, 6), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j15;
        long m2684compositeOverOWjLjI7 = (i3 & 32768) != 0 ? ColorKt.m2684compositeOverOWjLjI(Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(SwitchTokens.INSTANCE.getDisabledUnselectedIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.getColorScheme(composer, 6).m1068getSurface0d7_KjU()) : j16;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1937926421, i, i2, "androidx.compose.material3.SwitchDefaults.colors (Switch.kt:283)");
        }
        SwitchColors switchColors = new SwitchColors(color, color2, m2674getTransparent0d7_KjU, color3, color4, color5, color6, color7, m2684compositeOverOWjLjI, m2684compositeOverOWjLjI2, m2674getTransparent0d7_KjU2, m2684compositeOverOWjLjI3, m2684compositeOverOWjLjI4, m2684compositeOverOWjLjI5, m2684compositeOverOWjLjI6, m2684compositeOverOWjLjI7, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return switchColors;
    }
}
