package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.tokens.BottomAppBarTokens;
import androidx.compose.material3.tokens.FabSecondaryTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;

/* compiled from: AppBar.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\r8Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\r8Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00138G¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0016"}, d2 = {"Landroidx/compose/material3/BottomAppBarDefaults;", "", "()V", "ContainerElevation", "Landroidx/compose/ui/unit/Dp;", "getContainerElevation-D9Ej5fM", "()F", "F", "ContentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "getContentPadding", "()Landroidx/compose/foundation/layout/PaddingValues;", "bottomAppBarFabColor", "Landroidx/compose/ui/graphics/Color;", "getBottomAppBarFabColor", "(Landroidx/compose/runtime/Composer;I)J", "containerColor", "getContainerColor", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "getWindowInsets", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BottomAppBarDefaults {
    public static final int $stable = 0;
    private static final PaddingValues ContentPadding;
    public static final BottomAppBarDefaults INSTANCE = new BottomAppBarDefaults();
    private static final float ContainerElevation = BottomAppBarTokens.INSTANCE.m1704getContainerElevationD9Ej5fM();

    /* renamed from: getContainerElevation-D9Ej5fM, reason: not valid java name */
    public final float m1001getContainerElevationD9Ej5fM() {
        return ContainerElevation;
    }

    public final PaddingValues getContentPadding() {
        return ContentPadding;
    }

    private BottomAppBarDefaults() {
    }

    public final long getContainerColor(Composer composer, int i) {
        composer.startReplaceableGroup(-368340078);
        ComposerKt.sourceInformation(composer, "C972@45013L9:AppBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-368340078, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-containerColor> (AppBar.kt:972)");
        }
        long color = ColorSchemeKt.toColor(BottomAppBarTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return color;
    }

    static {
        float f;
        float f2;
        f = AppBarKt.BottomAppBarHorizontalPadding;
        float bottomAppBarVerticalPadding = AppBarKt.getBottomAppBarVerticalPadding();
        f2 = AppBarKt.BottomAppBarHorizontalPadding;
        ContentPadding = PaddingKt.m487PaddingValuesa9UjIt4$default(f, bottomAppBarVerticalPadding, f2, 0.0f, 8, null);
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        composer.startReplaceableGroup(688896409);
        ComposerKt.sourceInformation(composer, "C993@45695L29:AppBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(688896409, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-windowInsets> (AppBar.kt:992)");
        }
        WindowInsets m563onlybOOhFvg = WindowInsetsKt.m563onlybOOhFvg(SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.INSTANCE, composer, 8), WindowInsetsSides.m574plusgK_yJZ4(WindowInsetsSides.INSTANCE.m584getHorizontalJoeWqyM(), WindowInsetsSides.INSTANCE.m582getBottomJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m563onlybOOhFvg;
    }

    public final long getBottomAppBarFabColor(Composer composer, int i) {
        composer.startReplaceableGroup(-1464561486);
        ComposerKt.sourceInformation(composer, "C1000@45991L9:AppBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1464561486, i, -1, "androidx.compose.material3.BottomAppBarDefaults.<get-bottomAppBarFabColor> (AppBar.kt:999)");
        }
        long color = ColorSchemeKt.toColor(FabSecondaryTokens.INSTANCE.getContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return color;
    }
}
