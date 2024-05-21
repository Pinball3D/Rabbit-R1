package androidx.compose.material3;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import io.sentry.protocol.SentryThread;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.RangesKt;

/* compiled from: AppBar.kt */
@Metadata(d1 = {"\u0000¢\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0086\u0001\u0010\u0010\u001a\u00020\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0015\b\u0002\u0010\u0019\u001a\u000f\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b#\u0010$\u001ao\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u001b\u001a\u00020\u001c2\b\b\u0002\u0010\u001d\u001a\u00020\u001c2\b\b\u0002\u0010\u001e\u001a\u00020\u00012\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\u001c\u0010%\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u0016H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b&\u0010'\u001a\u007f\u0010(\u001a\u00020\u00112\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/\u001a\u007f\u00100\u001a\u00020\u00112\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/\u001a\u007f\u00101\u001a\u00020\u00112\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/\u001a\u0085\u0001\u00102\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\u0006\u0010!\u001a\u00020\"2\u0006\u0010+\u001a\u00020,2\b\u0010-\u001a\u0004\u0018\u00010.H\u0003¢\u0006\u0002\u00107\u001a\u007f\u00108\u001a\u00020\u00112\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/\u001a\u007f\u00109\u001a\u00020\u00112\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0013\b\u0002\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001e\b\u0002\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020,2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010.H\u0007¢\u0006\u0002\u0010/\u001a¦\u0001\u0010:\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010;\u001a\u00020<2\u0006\u0010=\u001a\u00020\u001c2\u0006\u0010>\u001a\u00020\u001c2\u0006\u0010?\u001a\u00020\u001c2\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u00103\u001a\u0002042\u0006\u0010@\u001a\u00020<2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020F2\u0006\u0010G\u001a\u0002062\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u0015H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010I\u001a¸\u0001\u0010J\u001a\u00020\u00112\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u0010)\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u00103\u001a\u0002042\u0006\u0010E\u001a\u00020\u00012\u0011\u0010K\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u0006\u0010L\u001a\u0002042\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u00110\u001a¢\u0006\u0002\b\u00152\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00110\u0013¢\u0006\u0002\b\u0015¢\u0006\u0002\b\u00162\u0006\u0010!\u001a\u00020\"2\u0006\u0010+\u001a\u00020,2\u0006\u0010M\u001a\u00020\u00012\u0006\u0010N\u001a\u00020\u00012\b\u0010-\u001a\u0004\u0018\u00010.H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bO\u0010P\u001a+\u0010Q\u001a\u00020R2\b\b\u0002\u0010S\u001a\u00020<2\b\b\u0002\u0010T\u001a\u00020<2\b\b\u0002\u0010U\u001a\u00020<H\u0007¢\u0006\u0002\u0010V\u001aD\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020R2\u0006\u0010Z\u001a\u00020<2\u000e\u0010[\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010\\2\u000e\u0010]\u001a\n\u0012\u0004\u0012\u00020<\u0018\u00010^H\u0082@ø\u0001\u0000ø\u0001\u0000¢\u0006\u0002\u0010_\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0019\u0010\u0003\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0004\u0010\u0005\"\u0013\u0010\u0006\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0007\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\b\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\t\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\n\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u000b\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0014\u0010\f\u001a\u00020\rX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006`"}, d2 = {"BottomAppBarHorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "F", "BottomAppBarVerticalPadding", "getBottomAppBarVerticalPadding", "()F", "FABHorizontalPadding", "FABVerticalPadding", "LargeTitleBottomPadding", "MediumTitleBottomPadding", "TopAppBarHorizontalPadding", "TopAppBarTitleInset", "TopTitleAlphaEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "getTopTitleAlphaEasing", "()Landroidx/compose/animation/core/CubicBezierEasing;", "BottomAppBar", "", "actions", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "modifier", "Landroidx/compose/ui/Modifier;", "floatingActionButton", "Lkotlin/Function0;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "tonalElevation", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "BottomAppBar-Snr_uVM", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/runtime/Composer;II)V", "content", "BottomAppBar-1oL4kX8", "(Landroidx/compose/ui/Modifier;JJFLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "CenterAlignedTopAppBar", "title", "navigationIcon", "colors", "Landroidx/compose/material3/TopAppBarColors;", "scrollBehavior", "Landroidx/compose/material3/TopAppBarScrollBehavior;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "LargeTopAppBar", "MediumTopAppBar", "SingleRowTopAppBar", "titleTextStyle", "Landroidx/compose/ui/text/TextStyle;", "centeredTitle", "", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;Landroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;II)V", "SmallTopAppBar", "TopAppBar", "TopAppBarLayout", "heightPx", "", "navigationIconContentColor", "titleContentColor", "actionIconContentColor", "titleAlpha", "titleVerticalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Vertical;", "titleHorizontalArrangement", "Landroidx/compose/foundation/layout/Arrangement$Horizontal;", "titleBottomPadding", "", "hideTitleSemantics", "TopAppBarLayout-kXwM9vE", "(Landroidx/compose/ui/Modifier;FJJJLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLandroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/foundation/layout/Arrangement$Horizontal;IZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "TwoRowsTopAppBar", "smallTitle", "smallTitleTextStyle", "maxHeight", "pinnedHeight", "TwoRowsTopAppBar-tjU4iQQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;FLkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/material3/TopAppBarColors;FFLandroidx/compose/material3/TopAppBarScrollBehavior;Landroidx/compose/runtime/Composer;III)V", "rememberTopAppBarState", "Landroidx/compose/material3/TopAppBarState;", "initialHeightOffsetLimit", "initialHeightOffset", "initialContentOffset", "(FFFLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/TopAppBarState;", "settleAppBar", "Landroidx/compose/ui/unit/Velocity;", SentryThread.JsonKeys.STATE, "velocity", "flingAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "snapAnimationSpec", "Landroidx/compose/animation/core/AnimationSpec;", "(Landroidx/compose/material3/TopAppBarState;FLandroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/animation/core/AnimationSpec;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AppBarKt {
    private static final float BottomAppBarHorizontalPadding;
    private static final float BottomAppBarVerticalPadding;
    private static final float FABHorizontalPadding;
    private static final float FABVerticalPadding;
    private static final float LargeTitleBottomPadding;
    private static final float MediumTitleBottomPadding;
    private static final float TopAppBarHorizontalPadding;
    private static final float TopAppBarTitleInset;
    private static final CubicBezierEasing TopTitleAlphaEasing;

    public static final float getBottomAppBarVerticalPadding() {
        return BottomAppBarVerticalPadding;
    }

    public static final CubicBezierEasing getTopTitleAlphaEasing() {
        return TopTitleAlphaEasing;
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void TopAppBar(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.ui.Modifier r31, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, androidx.compose.foundation.layout.WindowInsets r34, androidx.compose.material3.TopAppBarColors r35, androidx.compose.material3.TopAppBarScrollBehavior r36, androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.TopAppBar(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016e  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x006e  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.WARNING, message = "Use TopAppBar instead.", replaceWith = @kotlin.ReplaceWith(expression = "TopAppBar(title, modifier, navigationIcon, actions, windowInsets, colors, scrollBehavior)", imports = {}))
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SmallTopAppBar(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.ui.Modifier r31, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, androidx.compose.foundation.layout.WindowInsets r34, androidx.compose.material3.TopAppBarColors r35, androidx.compose.material3.TopAppBarScrollBehavior r36, androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.SmallTopAppBar(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01f5  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CenterAlignedTopAppBar(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.ui.Modifier r31, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, androidx.compose.foundation.layout.WindowInsets r34, androidx.compose.material3.TopAppBarColors r35, androidx.compose.material3.TopAppBarScrollBehavior r36, androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 519
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.CenterAlignedTopAppBar(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void MediumTopAppBar(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.ui.Modifier r32, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r34, androidx.compose.foundation.layout.WindowInsets r35, androidx.compose.material3.TopAppBarColors r36, androidx.compose.material3.TopAppBarScrollBehavior r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.MediumTopAppBar(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void LargeTopAppBar(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.ui.Modifier r32, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r33, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r34, androidx.compose.foundation.layout.WindowInsets r35, androidx.compose.material3.TopAppBarColors r36, androidx.compose.material3.TopAppBarScrollBehavior r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.LargeTopAppBar(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0209  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0159  */
    /* renamed from: BottomAppBar-Snr_uVM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m988BottomAppBarSnr_uVM(final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r27, androidx.compose.ui.Modifier r28, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r29, long r30, long r32, float r34, androidx.compose.foundation.layout.PaddingValues r35, androidx.compose.foundation.layout.WindowInsets r36, androidx.compose.runtime.Composer r37, final int r38, final int r39) {
        /*
            Method dump skipped, instructions count: 547
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m988BottomAppBarSnr_uVM(kotlin.jvm.functions.Function3, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, long, long, float, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.WindowInsets, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x012a  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0091  */
    /* renamed from: BottomAppBar-1oL4kX8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m987BottomAppBar1oL4kX8(androidx.compose.ui.Modifier r24, long r25, long r27, float r29, androidx.compose.foundation.layout.PaddingValues r30, androidx.compose.foundation.layout.WindowInsets r31, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 491
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m987BottomAppBar1oL4kX8(androidx.compose.ui.Modifier, long, long, float, androidx.compose.foundation.layout.PaddingValues, androidx.compose.foundation.layout.WindowInsets, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final TopAppBarState rememberTopAppBarState(final float f, final float f2, final float f3, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(1801969826);
        ComposerKt.sourceInformation(composer, "C(rememberTopAppBarState)P(2,1)799@38640L145,799@38593L192:AppBar.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            f = -3.4028235E38f;
        }
        if ((i2 & 2) != 0) {
            f2 = 0.0f;
        }
        if ((i2 & 4) != 0) {
            f3 = 0.0f;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1801969826, i, -1, "androidx.compose.material3.rememberTopAppBarState (AppBar.kt:794)");
        }
        Object[] objArr = new Object[0];
        Saver<TopAppBarState, ?> saver = TopAppBarState.INSTANCE.getSaver();
        Float valueOf = Float.valueOf(f);
        Float valueOf2 = Float.valueOf(f2);
        Float valueOf3 = Float.valueOf(f3);
        composer.startReplaceableGroup(1618982084);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
        boolean changed = composer.changed(valueOf) | composer.changed(valueOf2) | composer.changed(valueOf3);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function0) new Function0<TopAppBarState>() { // from class: androidx.compose.material3.AppBarKt$rememberTopAppBarState$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final TopAppBarState invoke() {
                    return new TopAppBarState(f, f2, f3);
                }
            };
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        TopAppBarState topAppBarState = (TopAppBarState) RememberSaveableKt.m2286rememberSaveable(objArr, (Saver) saver, (String) null, (Function0) rememberedValue, composer, 72, 4);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return topAppBarState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ae  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00c7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void SingleRowTopAppBar(androidx.compose.ui.Modifier r34, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r35, final androidx.compose.ui.text.TextStyle r36, final boolean r37, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r38, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r39, final androidx.compose.foundation.layout.WindowInsets r40, final androidx.compose.material3.TopAppBarColors r41, final androidx.compose.material3.TopAppBarScrollBehavior r42, androidx.compose.runtime.Composer r43, final int r44, final int r45) {
        /*
            Method dump skipped, instructions count: 776
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.SingleRowTopAppBar(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.ui.text.TextStyle, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:100:0x03b7  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x014e  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x014b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01ad  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01c8  */
    /* renamed from: TwoRowsTopAppBar-tjU4iQQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m990TwoRowsTopAppBartjU4iQQ(androidx.compose.ui.Modifier r39, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r40, final androidx.compose.ui.text.TextStyle r41, final float r42, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, final androidx.compose.ui.text.TextStyle r44, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r46, final androidx.compose.foundation.layout.WindowInsets r47, final androidx.compose.material3.TopAppBarColors r48, final float r49, final float r50, final androidx.compose.material3.TopAppBarScrollBehavior r51, androidx.compose.runtime.Composer r52, final int r53, final int r54, final int r55) {
        /*
            Method dump skipped, instructions count: 959
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.m990TwoRowsTopAppBartjU4iQQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, androidx.compose.ui.text.TextStyle, float, kotlin.jvm.functions.Function2, androidx.compose.ui.text.TextStyle, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, androidx.compose.material3.TopAppBarColors, float, float, androidx.compose.material3.TopAppBarScrollBehavior, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TopAppBarLayout-kXwM9vE, reason: not valid java name */
    public static final void m989TopAppBarLayoutkXwM9vE(final Modifier modifier, final float f, final long j, final long j2, final long j3, final Function2<? super Composer, ? super Integer, Unit> function2, final TextStyle textStyle, final float f2, final Arrangement.Vertical vertical, final Arrangement.Horizontal horizontal, final int i, final boolean z, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, Composer composer, final int i2, final int i3) {
        int i4;
        int i5;
        Composer startRestartGroup = composer.startRestartGroup(-6794037);
        ComposerKt.sourceInformation(startRestartGroup, "C(TopAppBarLayout)P(4,2,6:c#ui.graphics.Color,10:c#ui.graphics.Color,0:c#ui.graphics.Color,7,12,8,13,11,9,3,5)1296@58560L4308:AppBar.kt#uh7d8r");
        if ((i2 & 14) == 0) {
            i4 = i2 | (startRestartGroup.changed(modifier) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i2 & 112) == 0) {
            i4 |= startRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i4 |= startRestartGroup.changed(j) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i4 |= startRestartGroup.changed(j2) ? 2048 : 1024;
        }
        if ((57344 & i2) == 0) {
            i4 |= startRestartGroup.changed(j3) ? 16384 : 8192;
        }
        if ((458752 & i2) == 0) {
            i4 |= startRestartGroup.changedInstance(function2) ? 131072 : 65536;
        }
        if ((3670016 & i2) == 0) {
            i4 |= startRestartGroup.changed(textStyle) ? 1048576 : 524288;
        }
        if ((29360128 & i2) == 0) {
            i4 |= startRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        if ((i2 & 234881024) == 0) {
            i4 |= startRestartGroup.changed(vertical) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i2 & 1879048192) == 0) {
            i4 |= startRestartGroup.changed(horizontal) ? 536870912 : 268435456;
        }
        final int i6 = i4;
        if ((i3 & 14) == 0) {
            i5 = i3 | (startRestartGroup.changed(i) ? 4 : 2);
        } else {
            i5 = i3;
        }
        if ((i3 & 112) == 0) {
            i5 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i3 & 896) == 0) {
            i5 |= startRestartGroup.changedInstance(function22) ? 256 : 128;
        }
        if ((i3 & 7168) == 0) {
            i5 |= startRestartGroup.changedInstance(function23) ? 2048 : 1024;
        }
        if ((1533916891 & i6) != 306783378 || (i5 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-6794037, i6, i5, "androidx.compose.material3.TopAppBarLayout (AppBar.kt:1280)");
            }
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(final MeasureScope Layout, List<? extends Measurable> measurables, final long j4) {
                    int coerceAtLeast;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "navigationIcon")) {
                            final Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j4, 0, 0, 0, 0, 14, null));
                            for (Measurable measurable2 : list) {
                                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "actionIcons")) {
                                    final Placeable mo3876measureBRTryo02 = measurable2.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j4, 0, 0, 0, 0, 14, null));
                                    if (Constraints.m4839getMaxWidthimpl(j4) == Integer.MAX_VALUE) {
                                        coerceAtLeast = Constraints.m4839getMaxWidthimpl(j4);
                                    } else {
                                        coerceAtLeast = RangesKt.coerceAtLeast((Constraints.m4839getMaxWidthimpl(j4) - mo3876measureBRTryo0.getWidth()) - mo3876measureBRTryo02.getWidth(), 0);
                                    }
                                    int i7 = coerceAtLeast;
                                    for (Measurable measurable3 : list) {
                                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable3), "title")) {
                                            final Placeable mo3876measureBRTryo03 = measurable3.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j4, 0, i7, 0, 0, 12, null));
                                            final int i8 = mo3876measureBRTryo03.get(AlignmentLineKt.getLastBaseline()) != Integer.MIN_VALUE ? mo3876measureBRTryo03.get(AlignmentLineKt.getLastBaseline()) : 0;
                                            final int roundToInt = MathKt.roundToInt(f);
                                            int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j4);
                                            final Arrangement.Horizontal horizontal2 = horizontal;
                                            final Arrangement.Vertical vertical2 = vertical;
                                            final int i9 = i;
                                            return MeasureScope.layout$default(Layout, m4839getMaxWidthimpl, roundToInt, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$2$measure$1
                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                                    invoke2(placementScope);
                                                    return Unit.INSTANCE;
                                                }

                                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                                public final void invoke2(Placeable.PlacementScope layout) {
                                                    float f3;
                                                    int max;
                                                    int i10;
                                                    int height;
                                                    int max2;
                                                    int i11;
                                                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                                    Placeable placeable = Placeable.this;
                                                    Placeable.PlacementScope.placeRelative$default(layout, placeable, 0, (roundToInt - placeable.getHeight()) / 2, 0.0f, 4, null);
                                                    Placeable placeable2 = mo3876measureBRTryo03;
                                                    Arrangement.Horizontal horizontal3 = horizontal2;
                                                    if (Intrinsics.areEqual(horizontal3, Arrangement.INSTANCE.getCenter())) {
                                                        max = (Constraints.m4839getMaxWidthimpl(j4) - mo3876measureBRTryo03.getWidth()) / 2;
                                                    } else if (Intrinsics.areEqual(horizontal3, Arrangement.INSTANCE.getEnd())) {
                                                        max = (Constraints.m4839getMaxWidthimpl(j4) - mo3876measureBRTryo03.getWidth()) - mo3876measureBRTryo02.getWidth();
                                                    } else {
                                                        MeasureScope measureScope = Layout;
                                                        f3 = AppBarKt.TopAppBarTitleInset;
                                                        max = Math.max(measureScope.mo329roundToPx0680j_4(f3), Placeable.this.getWidth());
                                                    }
                                                    int i12 = max;
                                                    Arrangement.Vertical vertical3 = vertical2;
                                                    if (Intrinsics.areEqual(vertical3, Arrangement.INSTANCE.getCenter())) {
                                                        i11 = (roundToInt - mo3876measureBRTryo03.getHeight()) / 2;
                                                    } else if (!Intrinsics.areEqual(vertical3, Arrangement.INSTANCE.getBottom())) {
                                                        i10 = 0;
                                                        Placeable.PlacementScope.placeRelative$default(layout, placeable2, i12, i10, 0.0f, 4, null);
                                                        Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo02, Constraints.m4839getMaxWidthimpl(j4) - mo3876measureBRTryo02.getWidth(), (roundToInt - mo3876measureBRTryo02.getHeight()) / 2, 0.0f, 4, null);
                                                    } else {
                                                        if (i9 == 0) {
                                                            height = roundToInt;
                                                            max2 = mo3876measureBRTryo03.getHeight();
                                                        } else {
                                                            height = roundToInt - mo3876measureBRTryo03.getHeight();
                                                            max2 = Math.max(0, (i9 - mo3876measureBRTryo03.getHeight()) + i8);
                                                        }
                                                        i11 = height - max2;
                                                    }
                                                    i10 = i11;
                                                    Placeable.PlacementScope.placeRelative$default(layout, placeable2, i12, i10, 0.0f, 4, null);
                                                    Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo02, Constraints.m4839getMaxWidthimpl(j4) - mo3876measureBRTryo02.getWidth(), (roundToInt - mo3876measureBRTryo02.getHeight()) / 2, 0.0f, 4, null);
                                                }
                                            }, 4, null);
                                        }
                                    }
                                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(modifier);
            int i7 = ((((i6 << 3) & 112) << 9) & 7168) | 6;
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, Integer.valueOf((i7 >> 3) & 112));
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -290535407, "C1298@58590L352,1308@58955L577,1322@59545L336:AppBar.kt#uh7d8r");
            Modifier layoutId = LayoutIdKt.layoutId(Modifier.INSTANCE, "navigationIcon");
            float f3 = TopAppBarHorizontalPadding;
            Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(layoutId, f3, 0.0f, 0.0f, 0.0f, 14, null);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume4 = startRestartGroup.consume(localDensity2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density2 = (Density) consume4;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume5 = startRestartGroup.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume6 = startRestartGroup.consume(localViewConfiguration2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor2);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl2 = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1090283935, "C1303@58765L163:AppBar.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j))}, function22, startRestartGroup, ((i5 >> 3) & 112) | 8);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier m492paddingVpY3zN4$default = PaddingKt.m492paddingVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "title"), f3, 0.0f, 2, null);
            Modifier.Companion companion = Modifier.INSTANCE;
            if (z) {
                companion = SemanticsModifierKt.clearAndSetSemantics(companion, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$1$2
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                        Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                        invoke2(semanticsPropertyReceiver);
                        return Unit.INSTANCE;
                    }
                });
            }
            Modifier m2796graphicsLayerAp8cVGQ$default = GraphicsLayerModifierKt.m2796graphicsLayerAp8cVGQ$default(m492paddingVpY3zN4$default.then(companion), 0.0f, 0.0f, f2, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131067, null);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume7 = startRestartGroup.consume(localDensity3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density3 = (Density) consume7;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume8 = startRestartGroup.consume(localLayoutDirection3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection3 = (LayoutDirection) consume8;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume9 = startRestartGroup.consume(localViewConfiguration3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume9;
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m2796graphicsLayerAp8cVGQ$default);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor3);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl3 = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl3, rememberBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl3, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1090283420, "C1315@59280L238:AppBar.kt#uh7d8r");
            TextKt.ProvideTextStyle(textStyle, ComposableLambdaKt.composableLambda(startRestartGroup, 824316656, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$1$3$1
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

                public final void invoke(Composer composer2, int i8) {
                    ComposerKt.sourceInformation(composer2, "C1316@59343L157:AppBar.kt#uh7d8r");
                    if ((i8 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(824316656, i8, -1, "androidx.compose.material3.TopAppBarLayout.<anonymous>.<anonymous>.<anonymous> (AppBar.kt:1315)");
                        }
                        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j2))}, function2, composer2, ((i6 >> 12) & 112) | 8);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }), startRestartGroup, ((i6 >> 18) & 14) | 48);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier m494paddingqDBjuR0$default2 = PaddingKt.m494paddingqDBjuR0$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "actionIcons"), 0.0f, 0.0f, f3, 0.0f, 11, null);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume10 = startRestartGroup.consume(localDensity4);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density4 = (Density) consume10;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume11 = startRestartGroup.consume(localLayoutDirection4);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection4 = (LayoutDirection) consume11;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration4 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume12 = startRestartGroup.consume(localViewConfiguration4);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration4 = (ViewConfiguration) consume12;
            Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(m494paddingqDBjuR0$default2);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor4);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl4 = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl4, rememberBoxMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl4, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1090282985, "C1327@59715L152:AppBar.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j3))}, function23, startRestartGroup, ((i5 >> 6) & 112) | 8);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.AppBarKt$TopAppBarLayout$3
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

            public final void invoke(Composer composer2, int i8) {
                AppBarKt.m989TopAppBarLayoutkXwM9vE(Modifier.this, f, j, j2, j3, function2, textStyle, f2, vertical, horizontal, i, z, function22, function23, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1), RecomposeScopeImplKt.updateChangedFlags(i3));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0113 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object settleAppBar(androidx.compose.material3.TopAppBarState r22, float r23, androidx.compose.animation.core.DecayAnimationSpec<java.lang.Float> r24, androidx.compose.animation.core.AnimationSpec<java.lang.Float> r25, kotlin.coroutines.Continuation<? super androidx.compose.ui.unit.Velocity> r26) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.AppBarKt.settleAppBar(androidx.compose.material3.TopAppBarState, float, androidx.compose.animation.core.DecayAnimationSpec, androidx.compose.animation.core.AnimationSpec, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private static final long SingleRowTopAppBar$lambda$3(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }

    private static final long TwoRowsTopAppBar_tjU4iQQ$lambda$8(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }

    static {
        float f = 16;
        float f2 = 12;
        float m4883constructorimpl = Dp.m4883constructorimpl(Dp.m4883constructorimpl(f) - Dp.m4883constructorimpl(f2));
        BottomAppBarHorizontalPadding = m4883constructorimpl;
        float m4883constructorimpl2 = Dp.m4883constructorimpl(Dp.m4883constructorimpl(f) - Dp.m4883constructorimpl(f2));
        BottomAppBarVerticalPadding = m4883constructorimpl2;
        FABHorizontalPadding = Dp.m4883constructorimpl(Dp.m4883constructorimpl(f) - m4883constructorimpl);
        FABVerticalPadding = Dp.m4883constructorimpl(Dp.m4883constructorimpl(f2) - m4883constructorimpl2);
        TopTitleAlphaEasing = new CubicBezierEasing(0.8f, 0.0f, 0.8f, 0.15f);
        MediumTitleBottomPadding = Dp.m4883constructorimpl(24);
        LargeTitleBottomPadding = Dp.m4883constructorimpl(28);
        float m4883constructorimpl3 = Dp.m4883constructorimpl(4);
        TopAppBarHorizontalPadding = m4883constructorimpl3;
        TopAppBarTitleInset = Dp.m4883constructorimpl(Dp.m4883constructorimpl(f) - m4883constructorimpl3);
    }
}
