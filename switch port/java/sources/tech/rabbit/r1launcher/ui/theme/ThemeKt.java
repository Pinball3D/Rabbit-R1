package tech.rabbit.r1launcher.ui.theme;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.Window;
import androidx.compose.foundation.DarkThemeKt;
import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.material3.DynamicTonalPaletteKt;
import androidx.compose.material3.MaterialThemeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.view.WindowCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Theme.kt */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a4\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\u0011\u0010\b\u001a\r\u0012\u0004\u0012\u00020\u00040\t¢\u0006\u0002\b\nH\u0007¢\u0006\u0002\u0010\u000b\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"DarkColorScheme", "Landroidx/compose/material3/ColorScheme;", "LightColorScheme", "R1LauncherTheme", "", "darkTheme", "", "dynamicColor", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(ZZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "app_productionEnvRelease"}, k = 2, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ThemeKt {
    private static final ColorScheme DarkColorScheme = ColorSchemeKt.m1106darkColorSchemeG1PFcw$default(ColorKt.getPurple80(), 0, 0, 0, 0, ColorKt.getPurpleGrey80(), 0, 0, 0, ColorKt.getPink80(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 536870366, null);
    private static final ColorScheme LightColorScheme = ColorSchemeKt.m1108lightColorSchemeG1PFcw$default(ColorKt.getPurple40(), 0, 0, 0, 0, ColorKt.getPurpleGrey40(), 0, 0, 0, ColorKt.getPink40(), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 536870366, null);

    public static final void R1LauncherTheme(final boolean z, boolean z2, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i, final int i2) {
        int i3;
        final ColorScheme colorScheme;
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(840787947);
        if ((i & 14) == 0) {
            i3 = (((i2 & 1) == 0 && startRestartGroup.changed(z)) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i4 = i2 & 2;
        if (i4 != 0) {
            i3 |= 48;
        } else if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(z2) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(content) ? 256 : 128;
        }
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            startRestartGroup.startDefaults();
            if ((i & 1) == 0 || startRestartGroup.getDefaultsInvalid()) {
                if ((i2 & 1) != 0) {
                    z = DarkThemeKt.isSystemInDarkTheme(startRestartGroup, 0);
                    i3 &= -15;
                }
                if (i4 != 0) {
                    z2 = true;
                }
            } else {
                startRestartGroup.skipToGroupEnd();
                if ((i2 & 1) != 0) {
                    i3 &= -15;
                }
            }
            startRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(840787947, i3, -1, "tech.rabbit.r1launcher.ui.theme.R1LauncherTheme (Theme.kt:45)");
            }
            startRestartGroup.startReplaceableGroup(-1320198594);
            if (z2) {
                ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume = startRestartGroup.consume(localContext);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Context context = (Context) consume;
                colorScheme = z ? DynamicTonalPaletteKt.dynamicDarkColorScheme(context) : DynamicTonalPaletteKt.dynamicLightColorScheme(context);
            } else {
                colorScheme = z ? DarkColorScheme : LightColorScheme;
            }
            startRestartGroup.endReplaceableGroup();
            ProvidableCompositionLocal<View> localView = AndroidCompositionLocals_androidKt.getLocalView();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localView);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            final View view = (View) consume2;
            startRestartGroup.startReplaceableGroup(-1320198243);
            if (!view.isInEditMode()) {
                EffectsKt.SideEffect(new Function0<Unit>() { // from class: tech.rabbit.r1launcher.ui.theme.ThemeKt$R1LauncherTheme$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        Context context2 = view.getContext();
                        Intrinsics.checkNotNull(context2, "null cannot be cast to non-null type android.app.Activity");
                        Window window = ((Activity) context2).getWindow();
                        window.setStatusBarColor(androidx.compose.ui.graphics.ColorKt.m2693toArgb8_81llA(colorScheme.m1063getPrimary0d7_KjU()));
                        WindowCompat.getInsetsController(window, view).setAppearanceLightStatusBars(z);
                    }
                }, startRestartGroup, 0);
            }
            startRestartGroup.endReplaceableGroup();
            MaterialThemeKt.MaterialTheme(colorScheme, null, TypeKt.getTypography(), content, startRestartGroup, ((i3 << 3) & 7168) | 384, 2);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final boolean z3 = z;
        final boolean z4 = z2;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup != null) {
            endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: tech.rabbit.r1launcher.ui.theme.ThemeKt$R1LauncherTheme$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i5) {
                    ThemeKt.R1LauncherTheme(z3, z4, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
                }
            });
        }
    }
}
