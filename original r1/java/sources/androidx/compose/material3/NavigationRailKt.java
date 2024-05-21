package androidx.compose.material3;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.tokens.NavigationRailTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
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
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
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

/* compiled from: NavigationRail.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a}\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001b2 \b\u0002\u0010\u001d\u001a\u001a\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u001e¢\u0006\u0002\b ¢\u0006\u0002\b!2\b\b\u0002\u0010\"\u001a\u00020#2\u001c\u0010$\u001a\u0018\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u00170\u001e¢\u0006\u0002\b ¢\u0006\u0002\b!H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b%\u0010&\u001a\u007f\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\f\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00170+2\u0011\u0010,\u001a\r\u0012\u0004\u0012\u00020\u00170+¢\u0006\u0002\b 2\b\b\u0002\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010-\u001a\u00020)2\u0015\b\u0002\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010+¢\u0006\u0002\b 2\b\b\u0002\u0010/\u001a\u00020)2\b\b\u0002\u00100\u001a\u0002012\b\b\u0002\u00102\u001a\u000203H\u0007¢\u0006\u0002\u00104\u001ak\u00105\u001a\u00020\u00172\u0011\u00106\u001a\r\u0012\u0004\u0012\u00020\u00170+¢\u0006\u0002\b 2\u0011\u00107\u001a\r\u0012\u0004\u0012\u00020\u00170+¢\u0006\u0002\b 2\u0011\u0010,\u001a\r\u0012\u0004\u0012\u00020\u00170+¢\u0006\u0002\b 2\u0013\u0010.\u001a\u000f\u0012\u0004\u0012\u00020\u0017\u0018\u00010+¢\u0006\u0002\b 2\u0006\u0010/\u001a\u00020)2\u0006\u00108\u001a\u000209H\u0003¢\u0006\u0002\u0010:\u001a;\u0010;\u001a\u00020<*\u00020=2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?2\b\u0010A\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020CH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bD\u0010E\u001aS\u0010F\u001a\u00020<*\u00020=2\u0006\u0010G\u001a\u00020?2\u0006\u0010>\u001a\u00020?2\u0006\u0010@\u001a\u00020?2\b\u0010A\u001a\u0004\u0018\u00010?2\u0006\u0010B\u001a\u00020C2\u0006\u0010/\u001a\u00020)2\u0006\u00108\u001a\u000209H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bH\u0010I\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0013\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u0013\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0019\u0010\r\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u000e\u0010\u000f\"\u0019\u0010\u0010\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0011\u0010\u000f\"\u0019\u0010\u0012\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0013\u0010\u000f\"\u0019\u0010\u0014\u001a\u00020\u0003X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0004\u001a\u0004\b\u0015\u0010\u000f\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006J"}, d2 = {"IconLayoutIdTag", "", "IndicatorHorizontalPadding", "Landroidx/compose/ui/unit/Dp;", "F", "IndicatorLayoutIdTag", "IndicatorRippleLayoutIdTag", "IndicatorVerticalPaddingNoLabel", "IndicatorVerticalPaddingWithLabel", "ItemAnimationDurationMillis", "", "LabelLayoutIdTag", "NavigationRailHeaderPadding", "NavigationRailItemHeight", "getNavigationRailItemHeight", "()F", "NavigationRailItemVerticalPadding", "getNavigationRailItemVerticalPadding", "NavigationRailItemWidth", "getNavigationRailItemWidth", "NavigationRailVerticalPadding", "getNavigationRailVerticalPadding", "NavigationRail", "", "modifier", "Landroidx/compose/ui/Modifier;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "header", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "content", "NavigationRail-qi6gXK8", "(Landroidx/compose/ui/Modifier;JJLkotlin/jvm/functions/Function3;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "NavigationRailItem", "selected", "", "onClick", "Lkotlin/Function0;", NavigationRailKt.IconLayoutIdTag, "enabled", NavigationRailKt.LabelLayoutIdTag, "alwaysShowLabel", "colors", "Landroidx/compose/material3/NavigationRailItemColors;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "(ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/NavigationRailItemColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "NavigationRailItemBaselineLayout", NavigationRailKt.IndicatorRippleLayoutIdTag, NavigationRailKt.IndicatorLayoutIdTag, "animationProgress", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZFLandroidx/compose/runtime/Composer;I)V", "placeIcon", "Landroidx/compose/ui/layout/MeasureResult;", "Landroidx/compose/ui/layout/MeasureScope;", "iconPlaceable", "Landroidx/compose/ui/layout/Placeable;", "indicatorRipplePlaceable", "indicatorPlaceable", "constraints", "Landroidx/compose/ui/unit/Constraints;", "placeIcon-X9ElhV4", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;J)Landroidx/compose/ui/layout/MeasureResult;", "placeLabelAndIcon", "labelPlaceable", "placeLabelAndIcon-zUg2_y0", "(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;JZF)Landroidx/compose/ui/layout/MeasureResult;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NavigationRailKt {
    private static final String IconLayoutIdTag = "icon";
    private static final float IndicatorHorizontalPadding;
    private static final String IndicatorLayoutIdTag = "indicator";
    private static final String IndicatorRippleLayoutIdTag = "indicatorRipple";
    private static final float IndicatorVerticalPaddingNoLabel;
    private static final float IndicatorVerticalPaddingWithLabel;
    private static final int ItemAnimationDurationMillis = 150;
    private static final String LabelLayoutIdTag = "label";
    private static final float NavigationRailItemVerticalPadding;
    private static final float NavigationRailVerticalPadding;
    private static final float NavigationRailHeaderPadding = Dp.m4883constructorimpl(8);
    private static final float NavigationRailItemWidth = NavigationRailTokens.INSTANCE.m1987getContainerWidthD9Ej5fM();
    private static final float NavigationRailItemHeight = NavigationRailTokens.INSTANCE.m1990getNoLabelActiveIndicatorHeightD9Ej5fM();

    public static final float getNavigationRailItemHeight() {
        return NavigationRailItemHeight;
    }

    public static final float getNavigationRailItemVerticalPadding() {
        return NavigationRailItemVerticalPadding;
    }

    public static final float getNavigationRailItemWidth() {
        return NavigationRailItemWidth;
    }

    public static final float getNavigationRailVerticalPadding() {
        return NavigationRailVerticalPadding;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0188  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x00a0  */
    /* renamed from: NavigationRail-qi6gXK8, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1320NavigationRailqi6gXK8(androidx.compose.ui.Modifier r25, long r26, long r28, kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.foundation.layout.WindowInsets r31, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, androidx.compose.runtime.Composer r33, final int r34, final int r35) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.NavigationRailKt.m1320NavigationRailqi6gXK8(androidx.compose.ui.Modifier, long, long, kotlin.jvm.functions.Function3, androidx.compose.foundation.layout.WindowInsets, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x01a1  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x045c  */
    /* JADX WARN: Removed duplicated region for block: B:47:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x014c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0448  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x016c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x017e  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void NavigationRailItem(final boolean r32, final kotlin.jvm.functions.Function0<kotlin.Unit> r33, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r34, androidx.compose.ui.Modifier r35, boolean r36, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, boolean r38, androidx.compose.material3.NavigationRailItemColors r39, androidx.compose.foundation.interaction.MutableInteractionSource r40, androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 1140
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.NavigationRailKt.NavigationRailItem(boolean, kotlin.jvm.functions.Function0, kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, boolean, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.NavigationRailItemColors, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void NavigationRailItemBaselineLayout(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final Function2<? super Composer, ? super Integer, Unit> function24, final boolean z, final float f, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-876426901);
        ComposerKt.sourceInformation(startRestartGroup, "C(NavigationRailItemBaselineLayout)P(4,3,2,5)434@18778L2562:NavigationRail.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function24) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(z) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? 131072 : 65536;
        }
        if ((374491 & i2) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-876426901, i2, -1, "androidx.compose.material3.NavigationRailItemBaselineLayout (NavigationRail.kt:426)");
            }
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItemBaselineLayout$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(MeasureScope Layout, List<? extends Measurable> measurables, long j) {
                    float f2;
                    float f3;
                    Object obj;
                    Placeable placeable;
                    MeasureResult m1324placeLabelAndIconzUg2_y0;
                    MeasureResult m1323placeIconX9ElhV4;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable), "icon")) {
                            Placeable mo3876measureBRTryo0 = measurable.mo3876measureBRTryo0(j);
                            int width = mo3876measureBRTryo0.getWidth();
                            f2 = NavigationRailKt.IndicatorHorizontalPadding;
                            float f4 = 2;
                            int i3 = width + Layout.mo329roundToPx0680j_4(Dp.m4883constructorimpl(f2 * f4));
                            int roundToInt = MathKt.roundToInt(i3 * f);
                            if (function24 == null) {
                                f3 = NavigationRailKt.IndicatorVerticalPaddingNoLabel;
                            } else {
                                f3 = NavigationRailKt.IndicatorVerticalPaddingWithLabel;
                            }
                            int height = mo3876measureBRTryo0.getHeight() + Layout.mo329roundToPx0680j_4(Dp.m4883constructorimpl(f3 * f4));
                            for (Measurable measurable2 : list) {
                                if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable2), "indicatorRipple")) {
                                    Placeable mo3876measureBRTryo02 = measurable2.mo3876measureBRTryo0(Constraints.INSTANCE.m4847fixedJhjzzOo(i3, height));
                                    Iterator<T> it = list.iterator();
                                    while (true) {
                                        if (!it.hasNext()) {
                                            obj = null;
                                            break;
                                        }
                                        obj = it.next();
                                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj), "indicator")) {
                                            break;
                                        }
                                    }
                                    Measurable measurable3 = (Measurable) obj;
                                    Placeable mo3876measureBRTryo03 = measurable3 != null ? measurable3.mo3876measureBRTryo0(Constraints.INSTANCE.m4847fixedJhjzzOo(roundToInt, height)) : null;
                                    if (function24 != null) {
                                        for (Measurable measurable4 : list) {
                                            if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable4), "label")) {
                                                placeable = measurable4.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null));
                                            }
                                        }
                                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                                    }
                                    placeable = null;
                                    if (function24 == null) {
                                        m1323placeIconX9ElhV4 = NavigationRailKt.m1323placeIconX9ElhV4(Layout, mo3876measureBRTryo0, mo3876measureBRTryo02, mo3876measureBRTryo03, j);
                                        return m1323placeIconX9ElhV4;
                                    }
                                    Intrinsics.checkNotNull(placeable);
                                    m1324placeLabelAndIconzUg2_y0 = NavigationRailKt.m1324placeLabelAndIconzUg2_y0(Layout, placeable, mo3876measureBRTryo0, mo3876measureBRTryo02, mo3876measureBRTryo03, j, z, f);
                                    return m1324placeLabelAndIconzUg2_y0;
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
            Modifier.Companion companion = Modifier.INSTANCE;
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
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
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 935757153, "C435@18795L17,440@18893L50:NavigationRail.kt#uh7d8r");
            function2.invoke(startRestartGroup, Integer.valueOf(i2 & 14));
            startRestartGroup.startReplaceableGroup(935757179);
            ComposerKt.sourceInformation(startRestartGroup, "437@18862L11");
            if (f > 0.0f) {
                function22.invoke(startRestartGroup, Integer.valueOf((i2 >> 3) & 14));
            }
            startRestartGroup.endReplaceableGroup();
            Modifier layoutId = LayoutIdKt.layoutId(Modifier.INSTANCE, IconLayoutIdTag);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(layoutId);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -601536754, "C440@18935L6:NavigationRail.kt#uh7d8r");
            function23.invoke(startRestartGroup, Integer.valueOf((i2 >> 6) & 14));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-853550242);
            ComposerKt.sourceInformation(startRestartGroup, "443@18986L178");
            if (function24 != null) {
                Modifier alpha = AlphaKt.alpha(LayoutIdKt.layoutId(Modifier.INSTANCE, LabelLayoutIdTag), z ? 1.0f : f);
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
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(alpha);
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -601536534, "C447@19155L7:NavigationRail.kt#uh7d8r");
                function24.invoke(startRestartGroup, Integer.valueOf((i2 >> 9) & 14));
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.NavigationRailKt$NavigationRailItemBaselineLayout$3
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

            public final void invoke(Composer composer2, int i3) {
                NavigationRailKt.NavigationRailItemBaselineLayout(function2, function22, function23, function24, z, f, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeIcon-X9ElhV4, reason: not valid java name */
    public static final MeasureResult m1323placeIconX9ElhV4(MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, long j) {
        final int m4853constrainWidthK40F9xA = ConstraintsKt.m4853constrainWidthK40F9xA(j, Math.max(placeable.getWidth(), Math.max(placeable2.getWidth(), placeable3 != null ? placeable3.getWidth() : 0)));
        final int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
        final int width = (m4853constrainWidthK40F9xA - placeable.getWidth()) / 2;
        final int height = (m4838getMaxHeightimpl - placeable.getHeight()) / 2;
        final int width2 = (m4853constrainWidthK40F9xA - placeable2.getWidth()) / 2;
        final int height2 = (m4838getMaxHeightimpl - placeable2.getHeight()) / 2;
        return MeasureScope.layout$default(measureScope, m4853constrainWidthK40F9xA, m4838getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.NavigationRailKt$placeIcon$1
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable4 = Placeable.this;
                if (placeable4 != null) {
                    Placeable.PlacementScope.placeRelative$default(layout, placeable4, (m4853constrainWidthK40F9xA - placeable4.getWidth()) / 2, (m4838getMaxHeightimpl - placeable4.getHeight()) / 2, 0.0f, 4, null);
                }
                Placeable.PlacementScope.placeRelative$default(layout, placeable, width, height, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default(layout, placeable2, width2, height2, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: placeLabelAndIcon-zUg2_y0, reason: not valid java name */
    public static final MeasureResult m1324placeLabelAndIconzUg2_y0(final MeasureScope measureScope, final Placeable placeable, final Placeable placeable2, final Placeable placeable3, final Placeable placeable4, long j, final boolean z, final float f) {
        int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j);
        int height = m4838getMaxHeightimpl - placeable.getHeight();
        float f2 = NavigationRailItemVerticalPadding;
        final int i = height - measureScope.mo329roundToPx0680j_4(f2);
        final int i2 = measureScope.mo329roundToPx0680j_4(f2);
        final int roundToInt = MathKt.roundToInt(((z ? i2 : (m4838getMaxHeightimpl - placeable2.getHeight()) / 2) - i2) * (1 - f));
        final int m4853constrainWidthK40F9xA = ConstraintsKt.m4853constrainWidthK40F9xA(j, Math.max(placeable2.getWidth(), Math.max(placeable.getWidth(), placeable4 != null ? placeable4.getWidth() : 0)));
        final int width = (m4853constrainWidthK40F9xA - placeable.getWidth()) / 2;
        final int width2 = (m4853constrainWidthK40F9xA - placeable2.getWidth()) / 2;
        final int width3 = (m4853constrainWidthK40F9xA - placeable3.getWidth()) / 2;
        final int i3 = i2 - measureScope.mo329roundToPx0680j_4(IndicatorVerticalPaddingWithLabel);
        return MeasureScope.layout$default(measureScope, m4853constrainWidthK40F9xA, m4838getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.NavigationRailKt$placeLabelAndIcon$1
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
                Intrinsics.checkNotNullParameter(layout, "$this$layout");
                Placeable placeable5 = Placeable.this;
                if (placeable5 != null) {
                    int i4 = m4853constrainWidthK40F9xA;
                    int i5 = i2;
                    MeasureScope measureScope2 = measureScope;
                    int i6 = roundToInt;
                    int width4 = (i4 - placeable5.getWidth()) / 2;
                    f3 = NavigationRailKt.IndicatorVerticalPaddingWithLabel;
                    Placeable.PlacementScope.placeRelative$default(layout, placeable5, width4, i6 + (i5 - measureScope2.mo329roundToPx0680j_4(f3)), 0.0f, 4, null);
                }
                if (z || f != 0.0f) {
                    Placeable.PlacementScope.placeRelative$default(layout, placeable, width, i + roundToInt, 0.0f, 4, null);
                }
                Placeable.PlacementScope.placeRelative$default(layout, placeable2, width2, i2 + roundToInt, 0.0f, 4, null);
                Placeable.PlacementScope.placeRelative$default(layout, placeable3, width3, i3 + roundToInt, 0.0f, 4, null);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float NavigationRailItem$lambda$5$lambda$2(State<Float> state) {
        return state.getValue().floatValue();
    }

    static {
        float f = 4;
        NavigationRailVerticalPadding = Dp.m4883constructorimpl(f);
        NavigationRailItemVerticalPadding = Dp.m4883constructorimpl(f);
        float f2 = 2;
        IndicatorHorizontalPadding = Dp.m4883constructorimpl(Dp.m4883constructorimpl(NavigationRailTokens.INSTANCE.m1985getActiveIndicatorWidthD9Ej5fM() - NavigationRailTokens.INSTANCE.m1988getIconSizeD9Ej5fM()) / f2);
        IndicatorVerticalPaddingWithLabel = Dp.m4883constructorimpl(Dp.m4883constructorimpl(NavigationRailTokens.INSTANCE.m1984getActiveIndicatorHeightD9Ej5fM() - NavigationRailTokens.INSTANCE.m1988getIconSizeD9Ej5fM()) / f2);
        IndicatorVerticalPaddingNoLabel = Dp.m4883constructorimpl(Dp.m4883constructorimpl(NavigationRailTokens.INSTANCE.m1990getNoLabelActiveIndicatorHeightD9Ej5fM() - NavigationRailTokens.INSTANCE.m1988getIconSizeD9Ej5fM()) / f2);
    }
}
