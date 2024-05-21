package androidx.compose.material3;

import androidx.compose.material3.tokens.PlainTooltipTokens;
import androidx.compose.material3.tokens.RichTooltipTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J=\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0003\u001a\u00020\u00048Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u00048Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\f\u0010\u0006R\u0011\u0010\r\u001a\u00020\b8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\n\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0017"}, d2 = {"Landroidx/compose/material3/TooltipDefaults;", "", "()V", "plainTooltipContainerColor", "Landroidx/compose/ui/graphics/Color;", "getPlainTooltipContainerColor", "(Landroidx/compose/runtime/Composer;I)J", "plainTooltipContainerShape", "Landroidx/compose/ui/graphics/Shape;", "getPlainTooltipContainerShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "plainTooltipContentColor", "getPlainTooltipContentColor", "richTooltipContainerShape", "getRichTooltipContainerShape", "richTooltipColors", "Landroidx/compose/material3/RichTooltipColors;", "containerColor", "contentColor", "titleContentColor", "actionContentColor", "richTooltipColors-ro_MJ88", "(JJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/RichTooltipColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TooltipDefaults {
    public static final int $stable = 0;
    public static final TooltipDefaults INSTANCE = new TooltipDefaults();

    private TooltipDefaults() {
    }

    public final Shape getPlainTooltipContainerShape(Composer composer, int i) {
        composer.startReplaceableGroup(49570325);
        ComposerKt.sourceInformation(composer, "C356@13950L9:Tooltip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(49570325, i, -1, "androidx.compose.material3.TooltipDefaults.<get-plainTooltipContainerShape> (Tooltip.kt:356)");
        }
        Shape shape = ShapesKt.toShape(PlainTooltipTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final long getPlainTooltipContainerColor(Composer composer, int i) {
        composer.startReplaceableGroup(102696215);
        ComposerKt.sourceInformation(composer, "C362@14145L9:Tooltip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(102696215, i, -1, "androidx.compose.material3.TooltipDefaults.<get-plainTooltipContainerColor> (Tooltip.kt:362)");
        }
        long color = ColorSchemeKt.toColor(PlainTooltipTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return color;
    }

    public final long getPlainTooltipContentColor(Composer composer, int i) {
        composer.startReplaceableGroup(-1982928937);
        ComposerKt.sourceInformation(composer, "C368@14352L9:Tooltip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1982928937, i, -1, "androidx.compose.material3.TooltipDefaults.<get-plainTooltipContentColor> (Tooltip.kt:368)");
        }
        long color = ColorSchemeKt.toColor(PlainTooltipTokens.INSTANCE.getSupportingTextColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return color;
    }

    public final Shape getRichTooltipContainerShape(Composer composer, int i) {
        composer.startReplaceableGroup(1138709783);
        ComposerKt.sourceInformation(composer, "C374@14544L9:Tooltip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1138709783, i, -1, "androidx.compose.material3.TooltipDefaults.<get-richTooltipContainerShape> (Tooltip.kt:373)");
        }
        Shape shape = ShapesKt.toShape(RichTooltipTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    /* renamed from: richTooltipColors-ro_MJ88, reason: not valid java name */
    public final RichTooltipColors m1672richTooltipColorsro_MJ88(long j, long j2, long j3, long j4, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1498555081);
        ComposerKt.sourceInformation(composer, "C(richTooltipColors)P(1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color,0:c#ui.graphics.Color)382@14809L9,383@14888L9,384@14965L9,385@15051L9:Tooltip.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(RichTooltipTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(RichTooltipTokens.INSTANCE.getSupportingTextColor(), composer, 6) : j2;
        long color3 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(RichTooltipTokens.INSTANCE.getSubheadColor(), composer, 6) : j3;
        long color4 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(RichTooltipTokens.INSTANCE.getActionLabelTextColor(), composer, 6) : j4;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1498555081, i, -1, "androidx.compose.material3.TooltipDefaults.richTooltipColors (Tooltip.kt:381)");
        }
        RichTooltipColors richTooltipColors = new RichTooltipColors(color, color2, color3, color4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return richTooltipColors;
    }
}
