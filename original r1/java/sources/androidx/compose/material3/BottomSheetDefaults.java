package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.tokens.ScrimTokens;
import androidx.compose.material3.tokens.SheetBottomTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;

/* compiled from: SheetDefaults.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JG\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001d2\b\b\u0002\u0010\u001e\u001a\u00020\b2\b\b\u0002\u0010\u001f\u001a\u00020\b2\b\b\u0002\u0010 \u001a\u00020\r2\b\b\u0002\u0010!\u001a\u00020\u0004H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#R\u001a\u0010\u0003\u001a\u00020\u00048Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0007\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\f\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\r8G¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u000fR\u001a\u0010\u0012\u001a\u00020\u00048Gø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0006R\u001c\u0010\u0014\u001a\u00020\bø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\u0015\u0010\nR\u0011\u0010\u0016\u001a\u00020\u00178G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006$"}, d2 = {"Landroidx/compose/material3/BottomSheetDefaults;", "", "()V", "ContainerColor", "Landroidx/compose/ui/graphics/Color;", "getContainerColor", "(Landroidx/compose/runtime/Composer;I)J", "Elevation", "Landroidx/compose/ui/unit/Dp;", "getElevation-D9Ej5fM", "()F", "F", "ExpandedShape", "Landroidx/compose/ui/graphics/Shape;", "getExpandedShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "HiddenShape", "getHiddenShape", "ScrimColor", "getScrimColor", "SheetPeekHeight", "getSheetPeekHeight-D9Ej5fM", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "getWindowInsets", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;", "DragHandle", "", "modifier", "Landroidx/compose/ui/Modifier;", ViewHierarchyNode.JsonKeys.WIDTH, ViewHierarchyNode.JsonKeys.HEIGHT, "shape", "color", "DragHandle-lgZ2HuY", "(Landroidx/compose/ui/Modifier;FFLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BottomSheetDefaults {
    public static final int $stable = 0;
    public static final BottomSheetDefaults INSTANCE = new BottomSheetDefaults();
    private static final float Elevation = SheetBottomTokens.INSTANCE.m2119getDockedModalContainerElevationD9Ej5fM();
    private static final float SheetPeekHeight = Dp.m4883constructorimpl(56);

    /* renamed from: getElevation-D9Ej5fM, reason: not valid java name */
    public final float m1003getElevationD9Ej5fM() {
        return Elevation;
    }

    /* renamed from: getSheetPeekHeight-D9Ej5fM, reason: not valid java name */
    public final float m1004getSheetPeekHeightD9Ej5fM() {
        return SheetPeekHeight;
    }

    private BottomSheetDefaults() {
    }

    public final Shape getHiddenShape(Composer composer, int i) {
        composer.startReplaceableGroup(-1971658024);
        ComposerKt.sourceInformation(composer, "C289@10707L9:SheetDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1971658024, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-HiddenShape> (SheetDefaults.kt:288)");
        }
        Shape shape = ShapesKt.toShape(SheetBottomTokens.INSTANCE.getDockedMinimizedContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final Shape getExpandedShape(Composer composer, int i) {
        composer.startReplaceableGroup(1683783414);
        ComposerKt.sourceInformation(composer, "C294@10917L9:SheetDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1683783414, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ExpandedShape> (SheetDefaults.kt:293)");
        }
        Shape shape = ShapesKt.toShape(SheetBottomTokens.INSTANCE.getDockedContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }

    public final long getContainerColor(Composer composer, int i) {
        composer.startReplaceableGroup(433375448);
        ComposerKt.sourceInformation(composer, "C299@11092L9:SheetDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(433375448, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ContainerColor> (SheetDefaults.kt:298)");
        }
        long color = ColorSchemeKt.toColor(SheetBottomTokens.INSTANCE.getDockedContainerColor(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return color;
    }

    public final long getScrimColor(Composer composer, int i) {
        composer.startReplaceableGroup(-2040719176);
        ComposerKt.sourceInformation(composer, "C307@11388L9:SheetDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2040719176, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-ScrimColor> (SheetDefaults.kt:306)");
        }
        long m2638copywmQWz5c$default = Color.m2638copywmQWz5c$default(ColorSchemeKt.toColor(ScrimTokens.INSTANCE.getContainerColor(), composer, 6), 0.32f, 0.0f, 0.0f, 0.0f, 14, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m2638copywmQWz5c$default;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        composer.startReplaceableGroup(-511309409);
        ComposerKt.sourceInformation(composer, "C319@11725L29:SheetDefaults.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-511309409, i, -1, "androidx.compose.material3.BottomSheetDefaults.<get-windowInsets> (SheetDefaults.kt:319)");
        }
        WindowInsets m563onlybOOhFvg = WindowInsetsKt.m563onlybOOhFvg(SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.INSTANCE, composer, 8), WindowInsetsSides.INSTANCE.m589getVerticalJoeWqyM());
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m563onlybOOhFvg;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0051  */
    /* renamed from: DragHandle-lgZ2HuY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1002DragHandlelgZ2HuY(androidx.compose.ui.Modifier r25, float r26, float r27, androidx.compose.ui.graphics.Shape r28, long r29, androidx.compose.runtime.Composer r31, final int r32, final int r33) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BottomSheetDefaults.m1002DragHandlelgZ2HuY(androidx.compose.ui.Modifier, float, float, androidx.compose.ui.graphics.Shape, long, androidx.compose.runtime.Composer, int, int):void");
    }
}
