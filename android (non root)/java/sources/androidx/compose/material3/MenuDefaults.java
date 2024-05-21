package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.tokens.MenuTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;

/* compiled from: Menu.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JQ\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\n2\b\b\u0002\u0010\u000f\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/MenuDefaults;", "", "()V", "DropdownMenuItemContentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "getDropdownMenuItemContentPadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "itemColors", "Landroidx/compose/material3/MenuItemColors;", "textColor", "Landroidx/compose/ui/graphics/Color;", "leadingIconColor", "trailingIconColor", "disabledTextColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "itemColors-5tl4gsc", "(JJJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/MenuItemColors;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MenuDefaults {
    public static final int $stable = 0;
    private static final PaddingValues DropdownMenuItemContentPadding;
    public static final MenuDefaults INSTANCE = new MenuDefaults();

    public final PaddingValues getDropdownMenuItemContentPadding() {
        return DropdownMenuItemContentPadding;
    }

    private MenuDefaults() {
    }

    /* renamed from: itemColors-5tl4gsc, reason: not valid java name */
    public final MenuItemColors m1288itemColors5tl4gsc(long j, long j2, long j3, long j4, long j5, long j6, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1278543580);
        ComposerKt.sourceInformation(composer, "C(itemColors)P(4:c#ui.graphics.Color,3:c#ui.graphics.Color,5:c#ui.graphics.Color,1:c#ui.graphics.Color,0:c#ui.graphics.Color,2:c#ui.graphics.Color)235@8727L9,236@8808L9,237@8891L9,239@8991L9,241@9163L9,243@9335L9:Menu.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemLabelTextColor(), composer, 6) : j;
        long color2 = (i2 & 2) != 0 ? ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemLeadingIconColor(), composer, 6) : j2;
        long color3 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemTrailingIconColor(), composer, 6) : j3;
        long m2638copywmQWz5c$default = (i2 & 8) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemDisabledLabelTextColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j4;
        long m2638copywmQWz5c$default2 = (i2 & 16) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemDisabledLeadingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j5;
        long m2638copywmQWz5c$default3 = (i2 & 32) != 0 ? Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(MenuTokens.INSTANCE.getListItemDisabledTrailingIconColor(), composer, 6), 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j6;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1278543580, i, -1, "androidx.compose.material3.MenuDefaults.itemColors (Menu.kt:234)");
        }
        MenuItemColors menuItemColors = new MenuItemColors(color, color2, color3, m2638copywmQWz5c$default, m2638copywmQWz5c$default2, m2638copywmQWz5c$default3, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return menuItemColors;
    }

    static {
        float f;
        f = MenuKt.DropdownMenuItemHorizontalPadding;
        DropdownMenuItemContentPadding = PaddingKt.m484PaddingValuesYgX7TsA(f, Dp.m4883constructorimpl(0));
    }
}
