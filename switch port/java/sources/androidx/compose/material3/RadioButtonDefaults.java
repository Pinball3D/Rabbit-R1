package androidx.compose.material3;

import androidx.compose.material3.tokens.RadioButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;

/* compiled from: RadioButton.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u0006H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Landroidx/compose/material3/RadioButtonDefaults;", "", "()V", "colors", "Landroidx/compose/material3/RadioButtonColors;", "selectedColor", "Landroidx/compose/ui/graphics/Color;", "unselectedColor", "disabledSelectedColor", "disabledUnselectedColor", "colors-ro_MJ88", "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RadioButtonColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RadioButtonDefaults {
    public static final int $stable = 0;
    public static final RadioButtonDefaults INSTANCE = new RadioButtonDefaults();

    private RadioButtonDefaults() {
    }

    /* renamed from: colors-ro_MJ88, reason: not valid java name */
    public final RadioButtonColors m1361colorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-351083046);
        ComposerKt.sourceInformation(composer, "C(colors)P(2:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color,1:c#ui.graphics.Color)145@6275L9,146@6357L9,148@6464L9,151@6648L9:RadioButton.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(RadioButtonTokens.INSTANCE.getSelectedIconColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(RadioButtonTokens.INSTANCE.getUnselectedIconColor(), composer, 6) : j2;
        long m2638copywmQWz5c$default = (i2 & 4) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(RadioButtonTokens.INSTANCE.getDisabledSelectedIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j3;
        long m2638copywmQWz5c$default2 = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(RadioButtonTokens.INSTANCE.getDisabledUnselectedIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-351083046, i, -1, "androidx.compose.material3.RadioButtonDefaults.colors (RadioButton.kt:144)");
        }
        RadioButtonColors radioButtonColors = new RadioButtonColors(color, color2, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return radioButtonColors;
    }
}
