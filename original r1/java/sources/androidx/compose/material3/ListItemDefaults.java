package androidx.compose.material3;

import androidx.compose.material3.tokens.ListTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import kotlin.Metadata;

/* compiled from: ListItem.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002Jo\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0014\u001a\u00020\t2\b\b\u0002\u0010\u0015\u001a\u00020\t2\b\b\u0002\u0010\u0016\u001a\u00020\t2\b\b\u0002\u0010\u0017\u001a\u00020\t2\b\b\u0002\u0010\u0018\u001a\u00020\t2\b\b\u0002\u0010\u0019\u001a\u00020\t2\b\b\u0002\u0010\u001a\u001a\u00020\t2\b\b\u0002\u0010\u001b\u001a\u00020\tH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u001dR\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\b\u001a\u00020\t8Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\t8Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\r\u0010\u000bR\u0011\u0010\u000e\u001a\u00020\u000f8G¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001e"}, d2 = {"Landroidx/compose/material3/ListItemDefaults;", "", "()V", "Elevation", "Landroidx/compose/ui/unit/Dp;", "getElevation-D9Ej5fM", "()F", "F", "containerColor", "Landroidx/compose/ui/graphics/Color;", "getContainerColor", "(Landroidx/compose/runtime/Composer;I)J", "contentColor", "getContentColor", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "colors", "Landroidx/compose/material3/ListItemColors;", "headlineColor", "leadingIconColor", "overlineColor", "supportingColor", "trailingIconColor", "disabledHeadlineColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "colors-J08w3-E", "(JJJJJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/ListItemColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ListItemDefaults {
    public static final int $stable = 0;
    public static final ListItemDefaults INSTANCE = new ListItemDefaults();
    private static final float Elevation = ListTokens.INSTANCE.m1956getListItemContainerElevationD9Ej5fM();

    /* renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m1265getElevationD9Ej5fM() {
        return Elevation;
    }

    private ListItemDefaults() {
    }

    public final Shape getShape(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -496871597, "C271@10392L9:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-496871597, i, -1, "androidx.compose.material3.ListItemDefaults.<get-shape> (ListItem.kt:271)");
        }
        Shape shape = ShapesKt.toShape(ListTokens.INSTANCE.getListItemContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return shape;
    }

    public final long getContainerColor(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -1253579929, "C276@10569L9:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1253579929, i, -1, "androidx.compose.material3.ListItemDefaults.<get-containerColor> (ListItem.kt:276)");
        }
        long color = ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return color;
    }

    public final long getContentColor(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 1076068327, "C281@10742L9:ListItem.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1076068327, i, -1, "androidx.compose.material3.ListItemDefaults.<get-contentColor> (ListItem.kt:281)");
        }
        long color = ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemLabelTextColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return color;
    }

    /* renamed from: colors-J08w3-E, reason: not valid java name */
    public final ListItemColors m1264colorsJ08w3E(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-352515689);
        ComposerKt.sourceInformation(composer, "C(colors)P(0:c#ui.graphics.Color,4:c#ui.graphics.Color,5:c#ui.graphics.Color,6:c#ui.graphics.Color,7:c#ui.graphics.Color,8:c#ui.graphics.Color,1:c#ui.graphics.Color,2:c#ui.graphics.Color,3:c#ui.graphics.Color)302@11814L9,303@11890L9,304@11971L9,305@12046L9,306@12129L9,307@12212L9,308@12304L9,310@12472L9,312@12644L9:ListItem.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemContainerColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemLabelTextColor(), composer, 6) : j2;
        long color3 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemLeadingIconColor(), composer, 6) : j3;
        long color4 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemOverlineColor(), composer, 6) : j4;
        long color5 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemSupportingTextColor(), composer, 6) : j5;
        long color6 = (i2 & 32) != 0 ? ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemTrailingIconColor(), composer, 6) : j6;
        long m2638copywmQWz5c$default = (i2 & 64) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemDisabledLabelTextColor(), composer, 6), ListTokens.INSTANCE.getListItemDisabledLabelTextOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j7;
        long m2638copywmQWz5c$default2 = (i2 & 128) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemDisabledLeadingIconColor(), composer, 6), ListTokens.INSTANCE.getListItemDisabledLeadingIconOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j8;
        long m2638copywmQWz5c$default3 = (i2 & 256) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(ListTokens.INSTANCE.getListItemDisabledTrailingIconColor(), composer, 6), ListTokens.INSTANCE.getListItemDisabledTrailingIconOpacity(), 0.0f, 0.0f, 0.0f, 14, null) : j9;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-352515689, i, -1, "androidx.compose.material3.ListItemDefaults.colors (ListItem.kt:301)");
        }
        ListItemColors listItemColors = new ListItemColors(color, color2, color3, color4, color5, color6, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, m2638copywmQWz5c$default3, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return listItemColors;
    }
}
