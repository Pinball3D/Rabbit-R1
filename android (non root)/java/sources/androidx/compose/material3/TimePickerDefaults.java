package androidx.compose.material3;

import androidx.compose.material3.tokens.TimePickerTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* compiled from: TimePicker.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J¡\u0001\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u00062\b\b\u0002\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000e\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u00062\b\b\u0002\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u0011\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00062\b\b\u0002\u0010\u0013\u001a\u00020\u0006H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0018\u0010\u0016\u001a\u00020\u0017H\u0007ø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u0082\u0002\u000f\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001a"}, d2 = {"Landroidx/compose/material3/TimePickerDefaults;", "", "()V", "colors", "Landroidx/compose/material3/TimePickerColors;", "clockDialColor", "Landroidx/compose/ui/graphics/Color;", "clockDialSelectedContentColor", "clockDialUnselectedContentColor", "selectorColor", "containerColor", "periodSelectorBorderColor", "periodSelectorSelectedContainerColor", "periodSelectorUnselectedContainerColor", "periodSelectorSelectedContentColor", "periodSelectorUnselectedContentColor", "timeSelectorSelectedContainerColor", "timeSelectorUnselectedContainerColor", "timeSelectorSelectedContentColor", "timeSelectorUnselectedContentColor", "colors-u3YEpmA", "(JJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/TimePickerColors;", "layoutType", "Landroidx/compose/material3/TimePickerLayoutType;", "layoutType-sDNSZnc", "(Landroidx/compose/runtime/Composer;I)I", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TimePickerDefaults {
    public static final int $stable = 0;
    public static final TimePickerDefaults INSTANCE = new TimePickerDefaults();

    private TimePickerDefaults() {
    }

    /* renamed from: colors-u3YEpmA, reason: not valid java name */
    public final TimePickerColors m1574colorsu3YEpmA(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(-646352288);
        ComposerKt.sourceInformation(composer, "C(colors)P(0:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,9:c#ui.graphics.Color,3:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,7:c#ui.graphics.Color,6:c#ui.graphics.Color,8:c#ui.graphics.Color,10:c#ui.graphics.Color,12:c#ui.graphics.Color,11:c#ui.graphics.Color,13:c#ui.graphics.Color)275@13668L9,276@13758L9,277@13852L9,278@13932L9,279@13990L9,280@14071L9,282@14185L9,285@14372L9,287@14488L9,289@14598L9,291@14712L9,293@14820L9,295@14932L9:TimePicker.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getClockDialColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getClockDialSelectedLabelTextColor(), composer, 6) : j2;
        long color3 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getClockDialUnselectedLabelTextColor(), composer, 6) : j3;
        long color4 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getClockDialSelectorHandleContainerColor(), composer, 6) : j4;
        long color5 = (i3 & 16) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getContainerColor(), composer, 6) : j5;
        long color6 = (i3 & 32) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getPeriodSelectorOutlineColor(), composer, 6) : j6;
        long color7 = (i3 & 64) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getPeriodSelectorSelectedContainerColor(), composer, 6) : j7;
        long m2674getTransparent0d7_KjU = (i3 & 128) != 0 ? Color.INSTANCE.m2674getTransparent0d7_KjU() : j8;
        long color8 = (i3 & 256) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getPeriodSelectorSelectedLabelTextColor(), composer, 6) : j9;
        long color9 = (i3 & 512) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getPeriodSelectorUnselectedLabelTextColor(), composer, 6) : j10;
        long color10 = (i3 & 1024) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getTimeSelectorSelectedContainerColor(), composer, 6) : j11;
        long color11 = (i3 & 2048) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getTimeSelectorUnselectedContainerColor(), composer, 6) : j12;
        long color12 = (i3 & 4096) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getTimeSelectorSelectedLabelTextColor(), composer, 6) : j13;
        long color13 = (i3 & 8192) != 0 ? ColorSchemeKt.toColor(TimePickerTokens.INSTANCE.getTimeSelectorUnselectedLabelTextColor(), composer, 6) : j14;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-646352288, i, i2, "androidx.compose.material3.TimePickerDefaults.colors (TimePicker.kt:274)");
        }
        TimePickerColors timePickerColors = new TimePickerColors(color, color4, color5, color6, color2, color3, color7, m2674getTransparent0d7_KjU, color8, color9, color10, color11, color12, color13, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return timePickerColors;
    }

    /* renamed from: layoutType-sDNSZnc, reason: not valid java name */
    public final int m1575layoutTypesDNSZnc(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 517161502, "C(layoutType)316@16146L27:TimePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(517161502, i, -1, "androidx.compose.material3.TimePickerDefaults.layoutType (TimePicker.kt:316)");
        }
        int defaultTimePickerLayoutType = TimePicker_androidKt.getDefaultTimePickerLayoutType(composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return defaultTimePickerLayoutType;
    }
}
