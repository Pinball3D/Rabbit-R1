package androidx.compose.material3;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.material3.tokens.SwitchTokens;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: Switch.kt */
@Metadata(d1 = {"\u0000^\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001aj\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\u0015\b\u0002\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017¢\u0006\u0002\b\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u00112\b\b\u0002\u0010\u001a\u001a\u00020\u001b2\b\b\u0002\u0010\u001c\u001a\u00020\u001dH\u0007¢\u0006\u0002\u0010\u001e\u001a|\u0010\u001f\u001a\u00020\u000f*\u00020 2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\"2\u0013\u0010\u0016\u001a\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u0017¢\u0006\u0002\b\u00182\u0006\u0010\u001c\u001a\u00020#2\u0006\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00042\u0006\u0010'\u001a\u00020\u00042\u0006\u0010(\u001a\u00020\u0004H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b)\u0010*\"\u0014\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\u0003\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005\"\u0013\u0010\u0006\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005\"\u0019\u0010\u0007\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0005\u001a\u0004\b\b\u0010\t\"\u0013\u0010\n\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005\"\u0013\u0010\u000b\u001a\u00020\u0004X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0005\"\u0019\u0010\f\u001a\u00020\u0004X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0005\u001a\u0004\b\r\u0010\t\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006+"}, d2 = {"AnimationSpec", "Landroidx/compose/animation/core/TweenSpec;", "", "SwitchHeight", "Landroidx/compose/ui/unit/Dp;", "F", "SwitchWidth", "ThumbDiameter", "getThumbDiameter", "()F", "ThumbPadding", "ThumbPathLength", "UncheckedThumbDiameter", "getUncheckedThumbDiameter", "Switch", "", "checked", "", "onCheckedChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "thumbContent", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "enabled", "colors", "Landroidx/compose/material3/SwitchColors;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/material3/SwitchColors;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "SwitchImpl", "Landroidx/compose/foundation/layout/BoxScope;", "thumbValue", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/interaction/InteractionSource;", "thumbShape", "Landroidx/compose/ui/graphics/Shape;", "uncheckedThumbDiameter", "minBound", "maxBound", "SwitchImpl-0DmnUew", "(Landroidx/compose/foundation/layout/BoxScope;ZZLandroidx/compose/material3/SwitchColors;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwitchKt {
    private static final TweenSpec<Float> AnimationSpec;
    private static final float SwitchHeight;
    private static final float SwitchWidth;
    private static final float ThumbDiameter;
    private static final float ThumbPadding;
    private static final float ThumbPathLength;
    private static final float UncheckedThumbDiameter;

    public static final float getThumbDiameter() {
        return ThumbDiameter;
    }

    public static final float getUncheckedThumbDiameter() {
        return UncheckedThumbDiameter;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0195  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0283  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02eb  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x038c  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0444  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0390  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02f4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x025f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Switch(final boolean r52, final kotlin.jvm.functions.Function1<? super java.lang.Boolean, kotlin.Unit> r53, androidx.compose.ui.Modifier r54, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r55, boolean r56, androidx.compose.material3.SwitchColors r57, androidx.compose.foundation.interaction.MutableInteractionSource r58, androidx.compose.runtime.Composer r59, final int r60, final int r61) {
        /*
            Method dump skipped, instructions count: 1131
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SwitchKt.Switch(boolean, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, boolean, androidx.compose.material3.SwitchColors, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: SwitchImpl-0DmnUew, reason: not valid java name */
    public static final void m1506SwitchImpl0DmnUew(final BoxScope boxScope, final boolean z, final boolean z2, final SwitchColors switchColors, final State<Float> state, final Function2<? super Composer, ? super Integer, Unit> function2, final InteractionSource interactionSource, final Shape shape, final float f, final float f2, final float f3, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        float m4883constructorimpl;
        final float floatValue;
        float m2156getTrackOutlineWidthD9Ej5fM;
        Composer startRestartGroup = composer.startRestartGroup(-1968109941);
        ComposerKt.sourceInformation(startRestartGroup, "C(SwitchImpl)P(!1,2!1,8,6!1,7,9:c#ui.unit.Dp,5:c#ui.unit.Dp,4:c#ui.unit.Dp)187@7372L28,188@7440L25,*190@7508L7,210@8141L9,217@8350L29,222@8469L951:Switch.kt#uh7d8r");
        if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(boxScope) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(z) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changed(z2) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changed(switchColors) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i3 |= startRestartGroup.changed(state) ? 16384 : 8192;
        }
        if ((i & 458752) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 131072 : 65536;
        }
        if ((i & 3670016) == 0) {
            i3 |= startRestartGroup.changed(interactionSource) ? 1048576 : 524288;
        }
        if ((i & 29360128) == 0) {
            i3 |= startRestartGroup.changed(shape) ? 8388608 : 4194304;
        }
        if ((i & 234881024) == 0) {
            i3 |= startRestartGroup.changed(f) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 1879048192) == 0) {
            i3 |= startRestartGroup.changed(f2) ? 536870912 : 268435456;
        }
        if ((i2 & 14) == 0) {
            i4 = i2 | (startRestartGroup.changed(f3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i3 & 1533916891) != 306783378 || (i4 & 11) != 2 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1968109941, i3, i4, "androidx.compose.material3.SwitchImpl (Switch.kt:175)");
            }
            int i5 = ((i3 >> 6) & 14) | (i3 & 112) | ((i3 >> 3) & 896);
            State<Color> trackColor$material3_release = switchColors.trackColor$material3_release(z2, z, startRestartGroup, i5);
            State<Boolean> collectIsPressedAsState = PressInteractionKt.collectIsPressedAsState(interactionSource, startRestartGroup, (i3 >> 18) & 14);
            int i6 = i3;
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            float mo331toDpu2uoSUM = ((Density) consume).mo331toDpu2uoSUM(state.getValue().floatValue());
            if (SwitchImpl_0DmnUew$lambda$7(collectIsPressedAsState)) {
                m4883constructorimpl = SwitchTokens.INSTANCE.m2150getPressedHandleWidthD9Ej5fM();
            } else {
                m4883constructorimpl = Dp.m4883constructorimpl(Dp.m4883constructorimpl(Dp.m4883constructorimpl(ThumbDiameter - f) * (Dp.m4883constructorimpl(mo331toDpu2uoSUM - f2) / Dp.m4883constructorimpl(f3 - f2))) + f);
            }
            startRestartGroup.startReplaceableGroup(-993794105);
            ComposerKt.sourceInformation(startRestartGroup, "*199@7849L7");
            if (SwitchImpl_0DmnUew$lambda$7(collectIsPressedAsState)) {
                ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
                Object consume2 = startRestartGroup.consume(localDensity2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density = (Density) consume2;
                if (!z) {
                    m2156getTrackOutlineWidthD9Ej5fM = SwitchTokens.INSTANCE.m2156getTrackOutlineWidthD9Ej5fM();
                } else {
                    m2156getTrackOutlineWidthD9Ej5fM = Dp.m4883constructorimpl(ThumbPathLength - SwitchTokens.INSTANCE.m2156getTrackOutlineWidthD9Ej5fM());
                }
                floatValue = density.mo335toPx0680j_4(m2156getTrackOutlineWidthD9Ej5fM);
            } else {
                floatValue = state.getValue().floatValue();
            }
            startRestartGroup.endReplaceableGroup();
            Shape shape2 = ShapesKt.toShape(SwitchTokens.INSTANCE.getTrackShape(), startRestartGroup, 6);
            Modifier m168backgroundbw27NRU = BackgroundKt.m168backgroundbw27NRU(BorderKt.m180borderxT4_qwU(SizeKt.m523height3ABfNKs(SizeKt.m542width3ABfNKs(boxScope.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenter()), SwitchWidth), SwitchHeight), SwitchTokens.INSTANCE.m2156getTrackOutlineWidthD9Ej5fM(), switchColors.borderColor$material3_release(z2, z, startRestartGroup, i5).getValue().m2649unboximpl(), shape2), SwitchImpl_0DmnUew$lambda$6(trackColor$material3_release), shape2);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localDensity3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density2 = (Density) consume3;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume4 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume4;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume5 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume5;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m168backgroundbw27NRU);
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
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density2, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 1420969751, "C223@8518L28,228@8706L42,231@8870L64,225@8599L815:Switch.kt#uh7d8r");
            long SwitchImpl_0DmnUew$lambda$13$lambda$10 = SwitchImpl_0DmnUew$lambda$13$lambda$10(switchColors.thumbColor$material3_release(z2, z, startRestartGroup, i5));
            Modifier align = boxScopeInstance.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterStart());
            Float valueOf = Float.valueOf(floatValue);
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(valueOf);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<Density, IntOffset>() { // from class: androidx.compose.material3.SwitchKt$SwitchImpl$1$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ IntOffset invoke(Density density3) {
                        return IntOffset.m4992boximpl(m1508invokeBjo55l4(density3));
                    }

                    /* renamed from: invoke-Bjo55l4, reason: not valid java name */
                    public final long m1508invokeBjo55l4(Density offset) {
                        Intrinsics.checkNotNullParameter(offset, "$this$offset");
                        return IntOffsetKt.IntOffset(MathKt.roundToInt(floatValue), 0);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier m168backgroundbw27NRU2 = BackgroundKt.m168backgroundbw27NRU(SizeKt.m529requiredSize3ABfNKs(IndicationKt.indication(OffsetKt.offset(align, (Function1) rememberedValue), interactionSource, RippleKt.m976rememberRipple9IZ8Weo(false, Dp.m4883constructorimpl(SwitchTokens.INSTANCE.m2154getStateLayerSizeD9Ej5fM() / 2), 0L, startRestartGroup, 54, 4)), m4883constructorimpl), SwitchImpl_0DmnUew$lambda$13$lambda$10, shape);
            Alignment center = Alignment.INSTANCE.getCenter();
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(center, false, startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume6 = startRestartGroup.consume(localDensity4);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density3 = (Density) consume6;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume7 = startRestartGroup.consume(localLayoutDirection2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection2 = (LayoutDirection) consume7;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume8 = startRestartGroup.consume(localViewConfiguration2);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume8;
            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m168backgroundbw27NRU2);
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
            Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl2, density3, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -2040677196, "C:Switch.kt#uh7d8r");
            startRestartGroup.startReplaceableGroup(1420970387);
            ComposerKt.sourceInformation(startRestartGroup, "238@9196L27,239@9240L150");
            if (function2 != null) {
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(switchColors.iconColor$material3_release(z2, z, startRestartGroup, i5).getValue())}, function2, startRestartGroup, ((i6 >> 12) & 112) | 8);
            }
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SwitchKt$SwitchImpl$2
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

            public final void invoke(Composer composer2, int i7) {
                SwitchKt.m1506SwitchImpl0DmnUew(BoxScope.this, z, z2, switchColors, state, function2, interactionSource, shape, f, f2, f3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    static {
        float m2152getSelectedHandleWidthD9Ej5fM = SwitchTokens.INSTANCE.m2152getSelectedHandleWidthD9Ej5fM();
        ThumbDiameter = m2152getSelectedHandleWidthD9Ej5fM;
        UncheckedThumbDiameter = SwitchTokens.INSTANCE.m2159getUnselectedHandleWidthD9Ej5fM();
        float m2157getTrackWidthD9Ej5fM = SwitchTokens.INSTANCE.m2157getTrackWidthD9Ej5fM();
        SwitchWidth = m2157getTrackWidthD9Ej5fM;
        float m2155getTrackHeightD9Ej5fM = SwitchTokens.INSTANCE.m2155getTrackHeightD9Ej5fM();
        SwitchHeight = m2155getTrackHeightD9Ej5fM;
        float m4883constructorimpl = Dp.m4883constructorimpl(Dp.m4883constructorimpl(m2155getTrackHeightD9Ej5fM - m2152getSelectedHandleWidthD9Ej5fM) / 2);
        ThumbPadding = m4883constructorimpl;
        ThumbPathLength = Dp.m4883constructorimpl(Dp.m4883constructorimpl(m2157getTrackWidthD9Ej5fM - m2152getSelectedHandleWidthD9Ej5fM) - m4883constructorimpl);
        AnimationSpec = new TweenSpec<>(100, 0, null, 6, null);
    }

    private static final long SwitchImpl_0DmnUew$lambda$6(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }

    private static final boolean SwitchImpl_0DmnUew$lambda$7(State<Boolean> state) {
        return state.getValue().booleanValue();
    }

    private static final long SwitchImpl_0DmnUew$lambda$13$lambda$10(State<Color> state) {
        return state.getValue().m2649unboximpl();
    }
}
