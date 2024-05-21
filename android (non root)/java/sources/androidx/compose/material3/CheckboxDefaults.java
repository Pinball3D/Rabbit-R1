package androidx.compose.material3;

import androidx.compose.material3.tokens.CheckboxTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* compiled from: Checkbox.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JQ\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\u0006H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\f\u0010\r\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000e"}, d2 = {"Landroidx/compose/material3/CheckboxDefaults;", "", "()V", "colors", "Landroidx/compose/material3/CheckboxColors;", "checkedColor", "Landroidx/compose/ui/graphics/Color;", "uncheckedColor", "checkmarkColor", "disabledCheckedColor", "disabledUncheckedColor", "disabledIndeterminateColor", "colors-5tl4gsc", "(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/CheckboxColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CheckboxDefaults {
    public static final int $stable = 0;
    public static final CheckboxDefaults INSTANCE = new CheckboxDefaults();

    private CheckboxDefaults() {
    }

    /* renamed from: colors-5tl4gsc, reason: not valid java name */
    public final CheckboxColors m1030colors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-89536160);
        ComposerKt.sourceInformation(composer, "C(colors)P(0:c#ui.graphics.Color,5:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.Color)199@8691L11,201@8811L11,203@8931L11,205@9052L11,209@9284L11:Checkbox.kt#uh7d8r");
        long fromToken = (i2 & 1) != 0 ? ColorSchemeKt.fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), CheckboxTokens.INSTANCE.getSelectedContainerColor()) : j;
        long fromToken2 = (i2 & 2) != 0 ? ColorSchemeKt.fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), CheckboxTokens.INSTANCE.getUnselectedOutlineColor()) : j2;
        long fromToken3 = (i2 & 4) != 0 ? ColorSchemeKt.fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), CheckboxTokens.INSTANCE.getSelectedIconColor()) : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), CheckboxTokens.INSTANCE.getSelectedDisabledContainerColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long m2638copywmQWz5c$default2 = (i2 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.fromToken(MaterialTheme.INSTANCE.getColorScheme(composer, 6), CheckboxTokens.INSTANCE.getUnselectedDisabledOutlineColor()), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j5;
        long j7 = (i2 & 32) != 0 ? m2638copywmQWz5c$default : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-89536160, i, -1, "androidx.compose.material3.CheckboxDefaults.colors (Checkbox.kt:197)");
        }
        CheckboxColors checkboxColors = new CheckboxColors(fromToken3, Color.m2638copywmQWz5c$default(fromToken3, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), fromToken, Color.m2638copywmQWz5c$default(fromToken, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), m2638copywmQWz5c$default, Color.m2638copywmQWz5c$default(m2638copywmQWz5c$default2, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), j7, fromToken, fromToken2, m2638copywmQWz5c$default, j7, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return checkboxColors;
    }
}
