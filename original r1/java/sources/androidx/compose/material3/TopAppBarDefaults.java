package androidx.compose.material3;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsSides;
import androidx.compose.material3.tokens.TopAppBarLargeTokens;
import androidx.compose.material3.tokens.TopAppBarMediumTokens;
import androidx.compose.material3.tokens.TopAppBarSmallCenteredTokens;
import androidx.compose.material3.tokens.TopAppBarSmallTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import io.sentry.protocol.SentryThread;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.functions.Function0;

/* compiled from: AppBar.kt */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JG\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\u0010JK\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00192\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u001cH\u0007¢\u0006\u0002\u0010\u001dJK\u0010\u001e\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u00162\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00192\u0010\b\u0002\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u001cH\u0007¢\u0006\u0002\u0010\u001dJG\u0010\u001f\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b \u0010\u0010JG\u0010!\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\"\u0010\u0010J'\u0010#\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u00142\u000e\b\u0002\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016H\u0007¢\u0006\u0002\u0010$JG\u0010%\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b&\u0010\u0010JG\u0010'\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\n2\b\b\u0002\u0010\r\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\nH\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b(\u0010\u0010R\u0011\u0010\u0003\u001a\u00020\u00048G¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006)"}, d2 = {"Landroidx/compose/material3/TopAppBarDefaults;", "", "()V", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "getWindowInsets", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;", "centerAlignedTopAppBarColors", "Landroidx/compose/material3/TopAppBarColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "scrolledContainerColor", "navigationIconContentColor", "titleContentColor", "actionIconContentColor", "centerAlignedTopAppBarColors-zjMxDiM", "(JJJJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarColors;", "enterAlwaysScrollBehavior", "Landroidx/compose/material3/TopAppBarScrollBehavior;", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/TopAppBarState;", "canScroll", "Lkotlin/Function0;", "", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "", "flingAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;Landroidx/compose/animation/core/AnimationSpec;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarScrollBehavior;", "exitUntilCollapsedScrollBehavior", "largeTopAppBarColors", "largeTopAppBarColors-zjMxDiM", "mediumTopAppBarColors", "mediumTopAppBarColors-zjMxDiM", "pinnedScrollBehavior", "(Landroidx/compose/material3/TopAppBarState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarScrollBehavior;", "smallTopAppBarColors", "smallTopAppBarColors-zjMxDiM", "topAppBarColors", "topAppBarColors-zjMxDiM", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TopAppBarDefaults {
    public static final int $stable = 0;
    public static final TopAppBarDefaults INSTANCE = new TopAppBarDefaults();

    private TopAppBarDefaults() {
    }

    /* renamed from: topAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m1686topAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(2142919275);
        ComposerKt.sourceInformation(composer, "C(topAppBarColors)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color)546@26259L9,547@26324L11,551@26568L9,552@26649L9,553@26739L9:AppBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1102applyTonalElevationHht5A8o = (i2 & 2) != 0 ? ColorSchemeKt.m1102applyTonalElevationHht5A8o(MaterialTheme.INSTANCE.getColorScheme(composer, 6), color, TopAppBarSmallTokens.INSTANCE.m2200getOnScrollContainerElevationD9Ej5fM()) : j2;
        long color2 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j3;
        long color3 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getHeadlineColor(), composer, 6) : j4;
        long color4 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2142919275, i, -1, "androidx.compose.material3.TopAppBarDefaults.topAppBarColors (AppBar.kt:545)");
        }
        TopAppBarColors topAppBarColors = new TopAppBarColors(color, m1102applyTonalElevationHht5A8o, color2, color3, color4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return topAppBarColors;
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "Use topAppBarColors instead.", replaceWith = @ReplaceWith(expression = "topAppBarColors(containerColor, scrolledContainerColor, navigationIconContentColor, titleContentColor, actionIconContentColor)", imports = {}))
    /* renamed from: smallTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m1685smallTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1717201472);
        ComposerKt.sourceInformation(composer, "C(smallTopAppBarColors)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color)585@28109L9,586@28174L11,590@28418L9,591@28499L9,592@28589L9,594@28633L196:AppBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1102applyTonalElevationHht5A8o = (i2 & 2) != 0 ? ColorSchemeKt.m1102applyTonalElevationHht5A8o(MaterialTheme.INSTANCE.getColorScheme(composer, 6), color, TopAppBarSmallTokens.INSTANCE.m2200getOnScrollContainerElevationD9Ej5fM()) : j2;
        long color2 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j3;
        long color3 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getHeadlineColor(), composer, 6) : j4;
        long color4 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1717201472, i, -1, "androidx.compose.material3.TopAppBarDefaults.smallTopAppBarColors (AppBar.kt:584)");
        }
        TopAppBarColors m1686topAppBarColorszjMxDiM = m1686topAppBarColorszjMxDiM(color, m1102applyTonalElevationHht5A8o, color2, color3, color4, composer, (i & 14) | (i & 112) | (i & 896) | (i & 7168) | (57344 & i) | (i & 458752), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m1686topAppBarColorszjMxDiM;
    }

    public final WindowInsets getWindowInsets(Composer composer, int i) {
        composer.startReplaceableGroup(2143182847);
        ComposerKt.sourceInformation(composer, "C607@28997L29:AppBar.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2143182847, i, -1, "androidx.compose.material3.TopAppBarDefaults.<get-windowInsets> (AppBar.kt:607)");
        }
        WindowInsets m563onlybOOhFvg = WindowInsetsKt.m563onlybOOhFvg(SystemBarsDefaultInsets_androidKt.getSystemBarsForVisualComponents(WindowInsets.INSTANCE, composer, 8), WindowInsetsSides.m574plusgK_yJZ4(WindowInsetsSides.INSTANCE.m584getHorizontalJoeWqyM(), WindowInsetsSides.INSTANCE.m588getTopJoeWqyM()));
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return m563onlybOOhFvg;
    }

    /* renamed from: centerAlignedTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m1682centerAlignedTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1896017784);
        ComposerKt.sourceInformation(composer, "C(centerAlignedTopAppBarColors)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color)623@29880L9,624@29945L11,628@30197L9,629@30286L9,630@30384L9:AppBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallCenteredTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1102applyTonalElevationHht5A8o = (i2 & 2) != 0 ? ColorSchemeKt.m1102applyTonalElevationHht5A8o(MaterialTheme.INSTANCE.getColorScheme(composer, 6), color, TopAppBarSmallTokens.INSTANCE.m2200getOnScrollContainerElevationD9Ej5fM()) : j2;
        long color2 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallCenteredTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j3;
        long color3 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallCenteredTokens.INSTANCE.getHeadlineColor(), composer, 6) : j4;
        long color4 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(TopAppBarSmallCenteredTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1896017784, i, -1, "androidx.compose.material3.TopAppBarDefaults.centerAlignedTopAppBarColors (AppBar.kt:622)");
        }
        TopAppBarColors topAppBarColors = new TopAppBarColors(color, m1102applyTonalElevationHht5A8o, color2, color3, color4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return topAppBarColors;
    }

    /* renamed from: mediumTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m1684mediumTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-582474442);
        ComposerKt.sourceInformation(composer, "C(mediumTopAppBarColors)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color)654@31423L9,655@31488L11,659@31733L9,660@31815L9,661@31906L9:AppBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(TopAppBarMediumTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1102applyTonalElevationHht5A8o = (i2 & 2) != 0 ? ColorSchemeKt.m1102applyTonalElevationHht5A8o(MaterialTheme.INSTANCE.getColorScheme(composer, 6), color, TopAppBarSmallTokens.INSTANCE.m2200getOnScrollContainerElevationD9Ej5fM()) : j2;
        long color2 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(TopAppBarMediumTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j3;
        long color3 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(TopAppBarMediumTokens.INSTANCE.getHeadlineColor(), composer, 6) : j4;
        long color4 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(TopAppBarMediumTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-582474442, i, -1, "androidx.compose.material3.TopAppBarDefaults.mediumTopAppBarColors (AppBar.kt:653)");
        }
        TopAppBarColors topAppBarColors = new TopAppBarColors(color, m1102applyTonalElevationHht5A8o, color2, color3, color4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return topAppBarColors;
    }

    /* renamed from: largeTopAppBarColors-zjMxDiM, reason: not valid java name */
    public final TopAppBarColors m1683largeTopAppBarColorszjMxDiM(long j, long j2, long j3, long j4, long j5, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1471507700);
        ComposerKt.sourceInformation(composer, "C(largeTopAppBarColors)P(1:c#ui.graphics.Color,3:c#ui.graphics.Color,2:c#ui.graphics.Color,4:c#ui.graphics.Color,0:c#ui.graphics.Color)685@32942L9,686@33007L11,690@33251L9,691@33332L9,692@33422L9:AppBar.kt#uh7d8r");
        long color = (i2 & 1) != 0 ? ColorSchemeKt.toColor(TopAppBarLargeTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long m1102applyTonalElevationHht5A8o = (i2 & 2) != 0 ? ColorSchemeKt.m1102applyTonalElevationHht5A8o(MaterialTheme.INSTANCE.getColorScheme(composer, 6), color, TopAppBarSmallTokens.INSTANCE.m2200getOnScrollContainerElevationD9Ej5fM()) : j2;
        long color2 = (i2 & 4) != 0 ? ColorSchemeKt.toColor(TopAppBarLargeTokens.INSTANCE.getLeadingIconColor(), composer, 6) : j3;
        long color3 = (i2 & 8) != 0 ? ColorSchemeKt.toColor(TopAppBarLargeTokens.INSTANCE.getHeadlineColor(), composer, 6) : j4;
        long color4 = (i2 & 16) != 0 ? ColorSchemeKt.toColor(TopAppBarLargeTokens.INSTANCE.getTrailingIconColor(), composer, 6) : j5;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1471507700, i, -1, "androidx.compose.material3.TopAppBarDefaults.largeTopAppBarColors (AppBar.kt:684)");
        }
        TopAppBarColors topAppBarColors = new TopAppBarColors(color, m1102applyTonalElevationHht5A8o, color2, color3, color4, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return topAppBarColors;
    }

    public final TopAppBarScrollBehavior pinnedScrollBehavior(TopAppBarState topAppBarState, Function0<Boolean> function0, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(286497075);
        ComposerKt.sourceInformation(composer, "C(pinnedScrollBehavior)P(1)714@34279L24:AppBar.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer, 0, 7);
        }
        if ((i2 & 2) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.compose.material3.TopAppBarDefaults$pinnedScrollBehavior$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return true;
                }
            };
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(286497075, i, -1, "androidx.compose.material3.TopAppBarDefaults.pinnedScrollBehavior (AppBar.kt:713)");
        }
        PinnedScrollBehavior pinnedScrollBehavior = new PinnedScrollBehavior(topAppBarState, function0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return pinnedScrollBehavior;
    }

    public final TopAppBarScrollBehavior enterAlwaysScrollBehavior(TopAppBarState topAppBarState, Function0<Boolean> function0, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(959086674);
        ComposerKt.sourceInformation(composer, "C(enterAlwaysScrollBehavior)P(3!1,2)736@35553L24,739@35779L26:AppBar.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer, 0, 7);
        }
        if ((i2 & 2) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.compose.material3.TopAppBarDefaults$enterAlwaysScrollBehavior$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return true;
                }
            };
        }
        if ((i2 & 4) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(959086674, i, -1, "androidx.compose.material3.TopAppBarDefaults.enterAlwaysScrollBehavior (AppBar.kt:735)");
        }
        EnterAlwaysScrollBehavior enterAlwaysScrollBehavior = new EnterAlwaysScrollBehavior(topAppBarState, animationSpec, decayAnimationSpec, function0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return enterAlwaysScrollBehavior;
    }

    public final TopAppBarScrollBehavior exitUntilCollapsedScrollBehavior(TopAppBarState topAppBarState, Function0<Boolean> function0, AnimationSpec<Float> animationSpec, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1757023234);
        ComposerKt.sourceInformation(composer, "C(exitUntilCollapsedScrollBehavior)P(3!1,2)769@37307L24,772@37533L26:AppBar.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            topAppBarState = AppBarKt.rememberTopAppBarState(0.0f, 0.0f, 0.0f, composer, 0, 7);
        }
        if ((i2 & 2) != 0) {
            function0 = new Function0<Boolean>() { // from class: androidx.compose.material3.TopAppBarDefaults$exitUntilCollapsedScrollBehavior$1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Boolean invoke() {
                    return true;
                }
            };
        }
        if ((i2 & 4) != 0) {
            animationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null);
        }
        if ((i2 & 8) != 0) {
            decayAnimationSpec = SplineBasedFloatDecayAnimationSpec_androidKt.rememberSplineBasedDecay(composer, 0);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1757023234, i, -1, "androidx.compose.material3.TopAppBarDefaults.exitUntilCollapsedScrollBehavior (AppBar.kt:768)");
        }
        ExitUntilCollapsedScrollBehavior exitUntilCollapsedScrollBehavior = new ExitUntilCollapsedScrollBehavior(topAppBarState, animationSpec, decayAnimationSpec, function0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return exitUntilCollapsedScrollBehavior;
    }
}
