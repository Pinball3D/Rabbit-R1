package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Crossfade.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u000b¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "invoke", "(Landroidx/compose/runtime/Composer;I)V"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CrossfadeKt$Crossfade$5$1 extends Lambda implements Function2<Composer, Integer, Unit> {
    final /* synthetic */ int $$dirty;
    final /* synthetic */ FiniteAnimationSpec<Float> $animationSpec;
    final /* synthetic */ Function3<T, Composer, Integer, Unit> $content;
    final /* synthetic */ T $stateForContent;
    final /* synthetic */ Transition<T> $this_Crossfade;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public CrossfadeKt$Crossfade$5$1(Transition<T> transition, int i, FiniteAnimationSpec<Float> finiteAnimationSpec, T t, Function3<? super T, ? super Composer, ? super Integer, Unit> function3) {
        super(2);
        this.$this_Crossfade = transition;
        this.$$dirty = i;
        this.$animationSpec = finiteAnimationSpec;
        this.$stateForContent = t;
        this.$content = function3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(Composer composer, Integer num) {
        invoke(composer, num.intValue());
        return Unit.INSTANCE;
    }

    public final void invoke(Composer composer, int i) {
        ComposerKt.sourceInformation(composer, "C128@5454L128,131@5626L22,131@5599L115:Crossfade.kt#xbi5r1");
        if ((i & 11) != 2 || !composer.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1426421288, i, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous> (Crossfade.kt:127)");
            }
            Transition<T> transition = this.$this_Crossfade;
            final FiniteAnimationSpec<Float> finiteAnimationSpec = this.$animationSpec;
            Function3 function3 = new Function3<Transition.Segment<T>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$alpha$2
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // kotlin.jvm.functions.Function3
                public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Object obj, Composer composer2, Integer num) {
                    return invoke((Transition.Segment) obj, composer2, num.intValue());
                }

                public final FiniteAnimationSpec<Float> invoke(Transition.Segment<T> animateFloat, Composer composer2, int i2) {
                    Intrinsics.checkNotNullParameter(animateFloat, "$this$animateFloat");
                    composer2.startReplaceableGroup(438406499);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(438406499, i2, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:129)");
                    }
                    FiniteAnimationSpec<Float> finiteAnimationSpec2 = finiteAnimationSpec;
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                    composer2.endReplaceableGroup();
                    return finiteAnimationSpec2;
                }
            };
            T t = this.$stateForContent;
            int i2 = this.$$dirty;
            composer.startReplaceableGroup(-1338768149);
            ComposerKt.sourceInformation(composer, "CC(animateFloat)P(2)939@37552L78:Transition.kt#pdpnli");
            TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
            int i3 = (i2 & 14) << 3;
            int i4 = (i2 & 14) | (i3 & 896) | (i3 & 7168) | (i3 & 57344);
            composer.startReplaceableGroup(-142660079);
            ComposerKt.sourceInformation(composer, "CC(animateValue)P(3,2)857@34142L32,858@34197L31,859@34253L23,861@34289L89:Transition.kt#pdpnli");
            Object currentState = transition.getCurrentState();
            int i5 = (i4 >> 9) & 112;
            composer.startReplaceableGroup(-438678252);
            ComposerKt.sourceInformation(composer, "C:Crossfade.kt#xbi5r1");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-438678252, i5, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:130)");
            }
            float f = Intrinsics.areEqual(currentState, t) ? 1.0f : 0.0f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            Float valueOf = Float.valueOf(f);
            Object targetState = transition.getTargetState();
            composer.startReplaceableGroup(-438678252);
            ComposerKt.sourceInformation(composer, "C:Crossfade.kt#xbi5r1");
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-438678252, i5, -1, "androidx.compose.animation.Crossfade.<anonymous>.<anonymous>.<anonymous> (Crossfade.kt:130)");
            }
            float f2 = Intrinsics.areEqual(targetState, t) ? 1.0f : 0.0f;
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            composer.endReplaceableGroup();
            final State createTransitionAnimation = androidx.compose.animation.core.TransitionKt.createTransitionAnimation(transition, valueOf, Float.valueOf(f2), (FiniteAnimationSpec) function3.invoke(transition.getSegment(), composer, Integer.valueOf((i4 >> 3) & 112)), vectorConverter, "FloatAnimation", composer, (i4 & 14) | (57344 & (i4 << 9)) | ((i4 << 6) & 458752));
            composer.endReplaceableGroup();
            composer.endReplaceableGroup();
            Modifier.Companion companion = Modifier.INSTANCE;
            composer.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = composer.changed(createTransitionAnimation);
            Object rememberedValue = composer.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function1) new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(GraphicsLayerScope graphicsLayerScope) {
                        invoke2(graphicsLayerScope);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(GraphicsLayerScope graphicsLayer) {
                        float invoke$lambda$1;
                        Intrinsics.checkNotNullParameter(graphicsLayer, "$this$graphicsLayer");
                        invoke$lambda$1 = CrossfadeKt$Crossfade$5$1.invoke$lambda$1(createTransitionAnimation);
                        graphicsLayer.setAlpha(invoke$lambda$1);
                    }
                };
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            Modifier graphicsLayer = GraphicsLayerModifierKt.graphicsLayer(companion, (Function1) rememberedValue);
            Function3<T, Composer, Integer, Unit> function32 = this.$content;
            T t2 = this.$stateForContent;
            int i6 = this.$$dirty;
            composer.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(composer, "CC(Box)P(2,1,3)69@3214L67,70@3286L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer, 0);
            composer.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(composer, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(composer, 0);
            CompositionLocalMap currentCompositionLocalMap = composer.getCurrentCompositionLocalMap();
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> modifierMaterializerOf = LayoutKt.modifierMaterializerOf(graphicsLayer);
            if (!(composer.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            composer.startReusableNode();
            if (composer.getInserting()) {
                composer.createNode(constructor);
            } else {
                composer.useNode();
            }
            Composer m2273constructorimpl = Updater.m2273constructorimpl(composer);
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            modifierMaterializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer)), composer, 0);
            composer.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(composer, -1253629358, "C71@3331L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(composer, 2090121434, "C132@5672L24:Crossfade.kt#xbi5r1");
            function32.invoke(t2, composer, Integer.valueOf((i6 >> 9) & 112));
            ComposerKt.sourceInformationMarkerEnd(composer);
            ComposerKt.sourceInformationMarkerEnd(composer);
            composer.endReplaceableGroup();
            composer.endNode();
            composer.endReplaceableGroup();
            composer.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
                return;
            }
            return;
        }
        composer.skipToGroupEnd();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float invoke$lambda$1(State<Float> state) {
        return state.getValue().floatValue();
    }
}
