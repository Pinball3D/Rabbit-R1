package androidx.compose.material3;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.material3.tokens.MenuTokens;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Menu.kt */
@Metadata(d1 = {"\u0000j\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aT\u0010\r\u001a\u00020\u000e2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u00102\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\u001c\u0010\u0017\u001a\u0018\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u000e0\u0018¢\u0006\u0002\b\u001a¢\u0006\u0002\b\u001bH\u0001ø\u0001\u0000¢\u0006\u0002\u0010\u001c\u001a\u0080\u0001\u0010\u001d\u001a\u00020\u000e2\u0011\u0010\u001e\u001a\r\u0012\u0004\u0012\u00020\u000e0\u001f¢\u0006\u0002\b\u001a2\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u000e0\u001f2\u0006\u0010\u0015\u001a\u00020\u00162\u0013\u0010!\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001f¢\u0006\u0002\b\u001a2\u0013\u0010\"\u001a\u000f\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u001f¢\u0006\u0002\b\u001a2\u0006\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0001¢\u0006\u0002\u0010*\u001a \u0010+\u001a\u00020\u00142\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020-H\u0000ø\u0001\u0000¢\u0006\u0002\u0010/\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0019\u0010\u0005\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\b\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\"\u0019\u0010\n\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u000b\u0010\u0007\"\u000e\u0010\f\u001a\u00020\tX\u0080T¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"DropdownMenuItemDefaultMaxWidth", "Landroidx/compose/ui/unit/Dp;", "F", "DropdownMenuItemDefaultMinWidth", "DropdownMenuItemHorizontalPadding", "DropdownMenuVerticalPadding", "getDropdownMenuVerticalPadding", "()F", "InTransitionDuration", "", "MenuVerticalMargin", "getMenuVerticalMargin", "OutTransitionDuration", "DropdownMenuContent", "", "expandedStates", "Landroidx/compose/animation/core/MutableTransitionState;", "", "transformOriginState", "Landroidx/compose/runtime/MutableState;", "Landroidx/compose/ui/graphics/TransformOrigin;", "modifier", "Landroidx/compose/ui/Modifier;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "DropdownMenuItemContent", "text", "Lkotlin/Function0;", "onClick", "leadingIcon", "trailingIcon", "enabled", "colors", "Landroidx/compose/material3/MenuItemColors;", "contentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/MenuItemColors;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;I)V", "calculateTransformOrigin", "parentBounds", "Landroidx/compose/ui/unit/IntRect;", "menuBounds", "(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;)J", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MenuKt {
    public static final int InTransitionDuration = 120;
    public static final int OutTransitionDuration = 75;
    private static final float MenuVerticalMargin = Dp.m4883constructorimpl(48);
    private static final float DropdownMenuItemHorizontalPadding = Dp.m4883constructorimpl(12);
    private static final float DropdownMenuVerticalPadding = Dp.m4883constructorimpl(8);
    private static final float DropdownMenuItemDefaultMinWidth = Dp.m4883constructorimpl(112);
    private static final float DropdownMenuItemDefaultMaxWidth = Dp.m4883constructorimpl(280);

    public static final float getDropdownMenuVerticalPadding() {
        return DropdownMenuVerticalPadding;
    }

    public static final float getMenuVerticalMargin() {
        return MenuVerticalMargin;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void DropdownMenuContent(final androidx.compose.animation.core.MutableTransitionState<java.lang.Boolean> r22, final androidx.compose.runtime.MutableState<androidx.compose.ui.graphics.TransformOrigin> r23, androidx.compose.ui.Modifier r24, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.MenuKt.DropdownMenuContent(androidx.compose.animation.core.MutableTransitionState, androidx.compose.runtime.MutableState, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final void DropdownMenuItemContent(final Function2<? super Composer, ? super Integer, Unit> text, final Function0<Unit> onClick, final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final boolean z, final MenuItemColors colors, final PaddingValues contentPadding, final MutableInteractionSource interactionSource, Composer composer, final int i) {
        int i2;
        Composer composer2;
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(onClick, "onClick");
        Intrinsics.checkNotNullParameter(modifier, "modifier");
        Intrinsics.checkNotNullParameter(colors, "colors");
        Intrinsics.checkNotNullParameter(contentPadding, "contentPadding");
        Intrinsics.checkNotNullParameter(interactionSource, "interactionSource");
        Composer startRestartGroup = composer.startRestartGroup(-1564716777);
        ComposerKt.sourceInformation(startRestartGroup, "C(DropdownMenuItemContent)P(7,6,5,4,8,2)159@5627L20,153@5416L2336:Menu.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(text) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(onClick) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(z) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(colors) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changed(contentPadding) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i2 |= startRestartGroup.changed(interactionSource) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        final int i3 = i2;
        if ((191739611 & i3) != 38347922 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1564716777, i3, -1, "androidx.compose.material3.DropdownMenuItemContent (Menu.kt:142)");
            }
            Modifier padding = PaddingKt.padding(SizeKt.m541sizeInqDBjuR0$default(SizeKt.fillMaxWidth$default(ClickableKt.m200clickableO2vRcR0$default(modifier, interactionSource, RippleKt.m976rememberRipple9IZ8Weo(true, 0.0f, 0L, startRestartGroup, 6, 6), z, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, MenuTokens.INSTANCE.m1970getListItemContainerHeightD9Ej5fM(), DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), contentPadding);
            Alignment.Vertical centerVertically = Alignment.INSTANCE.getCenterVertically();
            startRestartGroup.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), centerVertically, startRestartGroup, 48);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(padding);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -326682283, "C80@4021L9:Row.kt#2w3rfo");
            final RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1557318497, "C171@6130L10,171@6099L1647:Menu.kt#uh7d8r");
            composer2 = startRestartGroup;
            TextKt.ProvideTextStyle(TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), MenuTokens.INSTANCE.getListItemLabelTextFont()), ComposableLambdaKt.composableLambda(composer2, 1065051884, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                    invoke(composer3, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer3, int i4) {
                    ComposerKt.sourceInformation(composer3, "C181@6637L18,181@6578L777,203@7492L26,202@7412L310:Menu.kt#uh7d8r");
                    if ((i4 & 11) != 2 || !composer3.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(1065051884, i4, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous> (Menu.kt:171)");
                        }
                        composer3.startReplaceableGroup(1426254055);
                        ComposerKt.sourceInformation(composer3, "174@6323L25,173@6243L308");
                        if (function2 != null) {
                            ProvidableCompositionLocal<Color> localContentColor = ContentColorKt.getLocalContentColor();
                            MenuItemColors menuItemColors = colors;
                            boolean z2 = z;
                            int i5 = i3;
                            ProvidedValue[] providedValueArr = {localContentColor.provides(menuItemColors.leadingIconColor$material3_release(z2, composer3, ((i5 >> 15) & 112) | ((i5 >> 15) & 14)).getValue())};
                            final Function2<Composer, Integer, Unit> function23 = function2;
                            final int i6 = i3;
                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr, ComposableLambdaKt.composableLambda(composer3, 2035552199, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i7) {
                                    ComposerKt.sourceInformation(composer4, "C176@6396L137:Menu.kt#uh7d8r");
                                    if ((i7 & 11) != 2 || !composer4.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(2035552199, i7, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:175)");
                                        }
                                        Modifier m522defaultMinSizeVpY3zN4$default = SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, MenuTokens.INSTANCE.m1971getListItemLeadingIconSizeD9Ej5fM(), 0.0f, 2, null);
                                        Function2<Composer, Integer, Unit> function24 = function23;
                                        int i8 = i6;
                                        composer4.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation(composer4, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer4, 0);
                                        composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation(composer4, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume4 = composer4.consume(localDensity2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        Density density2 = (Density) consume4;
                                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume5 = composer4.consume(localLayoutDirection2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume6 = composer4.consume(localViewConfiguration2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m522defaultMinSizeVpY3zN4$default);
                                        if (!(composer4.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor2);
                                        } else {
                                            composer4.useNode();
                                        }
                                        composer4.disableReusing();
                                        Composer m2273constructorimpl2 = Updater.m2273constructorimpl(composer4);
                                        Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                                        Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                        Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                        composer4.enableReusing();
                                        materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer4)), composer4, 0);
                                        composer4.startReplaceableGroup(2058660585);
                                        ComposerKt.sourceInformationMarkerStart(composer4, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composer4, 116811731, "C177@6498L13:Menu.kt#uh7d8r");
                                        function24.invoke(composer4, Integer.valueOf((i8 >> 9) & 14));
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        composer4.endReplaceableGroup();
                                        composer4.endNode();
                                        composer4.endReplaceableGroup();
                                        composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer4.skipToGroupEnd();
                                }
                            }), composer3, 56);
                        }
                        composer3.endReplaceableGroup();
                        ProvidableCompositionLocal<Color> localContentColor2 = ContentColorKt.getLocalContentColor();
                        MenuItemColors menuItemColors2 = colors;
                        boolean z3 = z;
                        int i7 = i3;
                        ProvidedValue[] providedValueArr2 = {localContentColor2.provides(menuItemColors2.textColor$material3_release(z3, composer3, ((i7 >> 15) & 112) | ((i7 >> 15) & 14)).getValue())};
                        final RowScope rowScope = rowScopeInstance;
                        final Function2<Composer, Integer, Unit> function24 = function2;
                        final Function2<Composer, Integer, Unit> function25 = function22;
                        final Function2<Composer, Integer, Unit> function26 = text;
                        final int i8 = i3;
                        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr2, ComposableLambdaKt.composableLambda(composer3, -1728894036, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.2
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                invoke(composer4, num.intValue());
                                return Unit.INSTANCE;
                            }

                            public final void invoke(Composer composer4, int i9) {
                                float m4883constructorimpl;
                                float m4883constructorimpl2;
                                ComposerKt.sourceInformation(composer4, "C182@6681L660:Menu.kt#uh7d8r");
                                if ((i9 & 11) != 2 || !composer4.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1728894036, i9, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:181)");
                                    }
                                    Modifier weight$default = RowScope.weight$default(RowScope.this, Modifier.INSTANCE, 1.0f, false, 2, null);
                                    if (function24 != null) {
                                        m4883constructorimpl = MenuKt.DropdownMenuItemHorizontalPadding;
                                    } else {
                                        m4883constructorimpl = Dp.m4883constructorimpl(0);
                                    }
                                    float f = m4883constructorimpl;
                                    if (function25 != null) {
                                        m4883constructorimpl2 = MenuKt.DropdownMenuItemHorizontalPadding;
                                    } else {
                                        m4883constructorimpl2 = Dp.m4883constructorimpl(0);
                                    }
                                    Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(weight$default, f, 0.0f, m4883constructorimpl2, 0.0f, 10, null);
                                    Function2<Composer, Integer, Unit> function27 = function26;
                                    int i10 = i8;
                                    composer4.startReplaceableGroup(733328855);
                                    ComposerKt.sourceInformation(composer4, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                    MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer4, 0);
                                    composer4.startReplaceableGroup(-1323940314);
                                    ComposerKt.sourceInformation(composer4, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                    ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume4 = composer4.consume(localDensity2);
                                    ComposerKt.sourceInformationMarkerEnd(composer4);
                                    Density density2 = (Density) consume4;
                                    ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume5 = composer4.consume(localLayoutDirection2);
                                    ComposerKt.sourceInformationMarkerEnd(composer4);
                                    LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                                    ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                                    ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                    Object consume6 = composer4.consume(localViewConfiguration2);
                                    ComposerKt.sourceInformationMarkerEnd(composer4);
                                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                                    Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                    Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
                                    if (!(composer4.getApplier() instanceof Applier)) {
                                        ComposablesKt.invalidApplier();
                                    }
                                    composer4.startReusableNode();
                                    if (composer4.getInserting()) {
                                        composer4.createNode(constructor2);
                                    } else {
                                        composer4.useNode();
                                    }
                                    composer4.disableReusing();
                                    Composer m2273constructorimpl2 = Updater.m2273constructorimpl(composer4);
                                    Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                    Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                                    Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                    Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                    composer4.enableReusing();
                                    materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer4)), composer4, 0);
                                    composer4.startReplaceableGroup(2058660585);
                                    ComposerKt.sourceInformationMarkerStart(composer4, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                    ComposerKt.sourceInformationMarkerStart(composer4, 116812550, "C198@7317L6:Menu.kt#uh7d8r");
                                    function27.invoke(composer4, Integer.valueOf(i10 & 14));
                                    ComposerKt.sourceInformationMarkerEnd(composer4);
                                    ComposerKt.sourceInformationMarkerEnd(composer4);
                                    composer4.endReplaceableGroup();
                                    composer4.endNode();
                                    composer4.endReplaceableGroup();
                                    composer4.endReplaceableGroup();
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer4.skipToGroupEnd();
                            }
                        }), composer3, 56);
                        if (function22 != null) {
                            ProvidableCompositionLocal<Color> localContentColor3 = ContentColorKt.getLocalContentColor();
                            MenuItemColors menuItemColors3 = colors;
                            boolean z4 = z;
                            int i9 = i3;
                            ProvidedValue[] providedValueArr3 = {localContentColor3.provides(menuItemColors3.trailingIconColor$material3_release(z4, composer3, ((i9 >> 15) & 112) | ((i9 >> 15) & 14)).getValue())};
                            final Function2<Composer, Integer, Unit> function27 = function22;
                            final int i10 = i3;
                            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) providedValueArr3, ComposableLambdaKt.composableLambda(composer3, 580312062, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$1$1.3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                /* JADX WARN: Multi-variable type inference failed */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public /* bridge */ /* synthetic */ Unit invoke(Composer composer4, Integer num) {
                                    invoke(composer4, num.intValue());
                                    return Unit.INSTANCE;
                                }

                                public final void invoke(Composer composer4, int i11) {
                                    ComposerKt.sourceInformation(composer4, "C205@7565L139:Menu.kt#uh7d8r");
                                    if ((i11 & 11) != 2 || !composer4.getSkipping()) {
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventStart(580312062, i11, -1, "androidx.compose.material3.DropdownMenuItemContent.<anonymous>.<anonymous>.<anonymous> (Menu.kt:204)");
                                        }
                                        Modifier m522defaultMinSizeVpY3zN4$default = SizeKt.m522defaultMinSizeVpY3zN4$default(Modifier.INSTANCE, MenuTokens.INSTANCE.m1972getListItemTrailingIconSizeD9Ej5fM(), 0.0f, 2, null);
                                        Function2<Composer, Integer, Unit> function28 = function27;
                                        int i12 = i10;
                                        composer4.startReplaceableGroup(733328855);
                                        ComposerKt.sourceInformation(composer4, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                                        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer4, 0);
                                        composer4.startReplaceableGroup(-1323940314);
                                        ComposerKt.sourceInformation(composer4, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume4 = composer4.consume(localDensity2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        Density density2 = (Density) consume4;
                                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume5 = composer4.consume(localLayoutDirection2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                                        ComposerKt.sourceInformationMarkerStart(composer4, 2023513938, "C:CompositionLocal.kt#9igjgp");
                                        Object consume6 = composer4.consume(localViewConfiguration2);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                                        Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m522defaultMinSizeVpY3zN4$default);
                                        if (!(composer4.getApplier() instanceof Applier)) {
                                            ComposablesKt.invalidApplier();
                                        }
                                        composer4.startReusableNode();
                                        if (composer4.getInserting()) {
                                            composer4.createNode(constructor2);
                                        } else {
                                            composer4.useNode();
                                        }
                                        composer4.disableReusing();
                                        Composer m2273constructorimpl2 = Updater.m2273constructorimpl(composer4);
                                        Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                                        Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                                        Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                                        Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                                        composer4.enableReusing();
                                        materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer4)), composer4, 0);
                                        composer4.startReplaceableGroup(2058660585);
                                        ComposerKt.sourceInformationMarkerStart(composer4, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                                        ComposerKt.sourceInformationMarkerStart(composer4, 116812901, "C206@7668L14:Menu.kt#uh7d8r");
                                        function28.invoke(composer4, Integer.valueOf((i12 >> 12) & 14));
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        ComposerKt.sourceInformationMarkerEnd(composer4);
                                        composer4.endReplaceableGroup();
                                        composer4.endNode();
                                        composer4.endReplaceableGroup();
                                        composer4.endReplaceableGroup();
                                        if (ComposerKt.isTraceInProgress()) {
                                            ComposerKt.traceEventEnd();
                                            return;
                                        }
                                        return;
                                    }
                                    composer4.skipToGroupEnd();
                                }
                            }), composer3, 56);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer3.skipToGroupEnd();
                }
            }), composer2, 48);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            ComposerKt.sourceInformationMarkerEnd(composer2);
            composer2.endReplaceableGroup();
            composer2.endNode();
            composer2.endReplaceableGroup();
            composer2.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
            composer2 = startRestartGroup;
        }
        ScopeUpdateScope endRestartGroup = composer2.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.MenuKt$DropdownMenuItemContent$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                invoke(composer3, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer3, int i4) {
                MenuKt.DropdownMenuItemContent(text, onClick, modifier, function2, function22, z, colors, contentPadding, interactionSource, composer3, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long calculateTransformOrigin(androidx.compose.ui.unit.IntRect r5, androidx.compose.ui.unit.IntRect r6) {
        /*
            java.lang.String r0 = "parentBounds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r5, r0)
            java.lang.String r0 = "menuBounds"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r6, r0)
            int r0 = r6.getLeft()
            int r1 = r5.getRight()
            r2 = 1065353216(0x3f800000, float:1.0)
            r3 = 0
            if (r0 < r1) goto L19
        L17:
            r0 = r3
            goto L53
        L19:
            int r0 = r6.getRight()
            int r1 = r5.getLeft()
            if (r0 > r1) goto L25
            r0 = r2
            goto L53
        L25:
            int r0 = r6.getWidth()
            if (r0 != 0) goto L2c
            goto L17
        L2c:
            int r0 = r5.getLeft()
            int r1 = r6.getLeft()
            int r0 = java.lang.Math.max(r0, r1)
            int r1 = r5.getRight()
            int r4 = r6.getRight()
            int r1 = java.lang.Math.min(r1, r4)
            int r0 = r0 + r1
            int r0 = r0 / 2
            int r1 = r6.getLeft()
            int r0 = r0 - r1
            float r0 = (float) r0
            int r1 = r6.getWidth()
            float r1 = (float) r1
            float r0 = r0 / r1
        L53:
            int r1 = r6.getTop()
            int r4 = r5.getBottom()
            if (r1 < r4) goto L5f
        L5d:
            r2 = r3
            goto L99
        L5f:
            int r1 = r6.getBottom()
            int r4 = r5.getTop()
            if (r1 > r4) goto L6a
            goto L99
        L6a:
            int r1 = r6.getHeight()
            if (r1 != 0) goto L71
            goto L5d
        L71:
            int r1 = r5.getTop()
            int r2 = r6.getTop()
            int r1 = java.lang.Math.max(r1, r2)
            int r5 = r5.getBottom()
            int r2 = r6.getBottom()
            int r5 = java.lang.Math.min(r5, r2)
            int r1 = r1 + r5
            int r1 = r1 / 2
            int r5 = r6.getTop()
            int r1 = r1 - r5
            float r5 = (float) r1
            int r6 = r6.getHeight()
            float r6 = (float) r6
            float r2 = r5 / r6
        L99:
            long r5 = androidx.compose.ui.graphics.TransformOriginKt.TransformOrigin(r0, r2)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.MenuKt.calculateTransformOrigin(androidx.compose.ui.unit.IntRect, androidx.compose.ui.unit.IntRect):long");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float DropdownMenuContent$lambda$1(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float DropdownMenuContent$lambda$3(State<Float> state) {
        return state.getValue().floatValue();
    }
}
