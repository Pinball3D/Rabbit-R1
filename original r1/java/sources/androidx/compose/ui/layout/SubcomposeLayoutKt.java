package androidx.compose.ui.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SubcomposeLayout.kt */
@Metadata(d1 = {"\u0000@\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u001aZ\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001f\b\u0002\u0010\u0004\u001a\u0019\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\t2\u001d\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\f\u001a9\u0010\u0000\u001a\u00020\u00012\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001d\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\r\u001ab\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001f\b\u0002\u0010\u0004\u001a\u0019\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\t2\u001d\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0010\u001aA\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u001d\u0010\n\u001a\u0019\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\b\tH\u0007ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0016"}, d2 = {"SubcomposeLayout", "", "modifier", "Landroidx/compose/ui/Modifier;", "intermediateMeasurePolicy", "Lkotlin/Function2;", "Landroidx/compose/ui/layout/SubcomposeIntermediateMeasureScope;", "Landroidx/compose/ui/unit/Constraints;", "Landroidx/compose/ui/layout/MeasureResult;", "Lkotlin/ExtensionFunctionType;", "measurePolicy", "Landroidx/compose/ui/layout/SubcomposeMeasureScope;", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", SentryThread.JsonKeys.STATE, "Landroidx/compose/ui/layout/SubcomposeLayoutState;", "(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "(Landroidx/compose/ui/layout/SubcomposeLayoutState;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "SubcomposeSlotReusePolicy", "Landroidx/compose/ui/layout/SubcomposeSlotReusePolicy;", "maxSlotsToRetainForReuse", "", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SubcomposeLayoutKt {
    public static final void SubcomposeLayout(final Modifier modifier, final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, Composer composer, final int i, final int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(-1298353104);
        ComposerKt.sourceInformation(startRestartGroup, "C(SubcomposeLayout)P(1)77@3566L36,76@3532L144:SubcomposeLayout.kt#80mrfh");
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i2 & 2) != 0) {
            i3 |= 48;
        } else if ((i & 112) == 0) {
            i3 |= startRestartGroup.changedInstance(measurePolicy) ? 32 : 16;
        }
        if ((i3 & 91) != 18 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1298353104, i3, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:72)");
            }
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new SubcomposeLayoutState();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) rememberedValue;
            int i5 = i3 << 3;
            SubcomposeLayout(subcomposeLayoutState, modifier, measurePolicy, startRestartGroup, (i5 & 112) | 8 | (i5 & 896), 0);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$2
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

            public final void invoke(Composer composer2, int i6) {
                SubcomposeLayoutKt.SubcomposeLayout(Modifier.this, measurePolicy, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final void SubcomposeLayout(Modifier modifier, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function2, final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, Composer composer, final int i, final int i2) {
        int i3;
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(159215138);
        ComposerKt.sourceInformation(startRestartGroup, "C(SubcomposeLayout)P(2)139@6954L36,138@6920L207:SubcomposeLayout.kt#80mrfh");
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
        } else if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(modifier) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        int i5 = i2 & 2;
        if (i5 != 0) {
            i3 |= 48;
        } else if ((i & 112) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 4) != 0) {
            i3 |= 384;
        } else if ((i & 896) == 0) {
            i3 |= startRestartGroup.changedInstance(measurePolicy) ? 256 : 128;
        }
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (i4 != 0) {
                modifier = Modifier.INSTANCE;
            }
            if (i5 != 0) {
                function2 = new Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$3
                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, Constraints constraints) {
                        return m3969invoke0kLqBqw(subcomposeIntermediateMeasureScope, constraints.getValue());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m3969invoke0kLqBqw(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, long j) {
                        Intrinsics.checkNotNullParameter(subcomposeIntermediateMeasureScope, "$this$null");
                        return subcomposeIntermediateMeasureScope.getLookaheadMeasurePolicy().invoke(subcomposeIntermediateMeasureScope, Constraints.m4827boximpl(j));
                    }
                };
            }
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(159215138, i3, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:130)");
            }
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new SubcomposeLayoutState();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutState subcomposeLayoutState = (SubcomposeLayoutState) rememberedValue;
            int i6 = i3 << 3;
            SubcomposeLayout(subcomposeLayoutState, modifier, function2, measurePolicy, startRestartGroup, (i6 & 112) | 8 | (i6 & 896) | (i6 & 7168), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        final Modifier modifier2 = modifier;
        final Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function22 = function2;
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$5
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
                SubcomposeLayoutKt.SubcomposeLayout(Modifier.this, function22, measurePolicy, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final void SubcomposeLayout(final SubcomposeLayoutState state, Modifier modifier, final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, Composer composer, final int i, final int i2) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(-511989831);
        ComposerKt.sourceInformation(startRestartGroup, "C(SubcomposeLayout)P(2,1)260@13431L80:SubcomposeLayout.kt#80mrfh");
        if ((i2 & 2) != 0) {
            modifier = Modifier.INSTANCE;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-511989831, i, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:254)");
        }
        SubcomposeLayout(state, modifier, new Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$6
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, Constraints constraints) {
                return m3970invoke0kLqBqw(subcomposeIntermediateMeasureScope, constraints.getValue());
            }

            /* renamed from: invoke-0kLqBqw, reason: not valid java name */
            public final MeasureResult m3970invoke0kLqBqw(SubcomposeIntermediateMeasureScope SubcomposeLayout, long j) {
                Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                return SubcomposeLayout.getLookaheadMeasurePolicy().invoke(SubcomposeLayout, Constraints.m4827boximpl(j));
            }
        }, measurePolicy, startRestartGroup, (i & 112) | 392 | ((i << 3) & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier2 = modifier;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$7
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
                SubcomposeLayoutKt.SubcomposeLayout(SubcomposeLayoutState.this, modifier2, measurePolicy, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final void SubcomposeLayout(final SubcomposeLayoutState state, Modifier modifier, Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function2, final Function2<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, Composer composer, final int i, final int i2) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        Composer startRestartGroup = composer.startRestartGroup(2129414763);
        ComposerKt.sourceInformation(startRestartGroup, "C(SubcomposeLayout)P(3,2)319@16791L23,320@16844L28,323@17000L604,344@17744L27,345@17799L89,345@17776L112:SubcomposeLayout.kt#80mrfh");
        if ((i2 & 2) != 0) {
            modifier = Modifier.INSTANCE;
        }
        final Modifier modifier2 = modifier;
        if ((i2 & 4) != 0) {
            function2 = new Function2<SubcomposeIntermediateMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$8
                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, Constraints constraints) {
                    return m3971invoke0kLqBqw(subcomposeIntermediateMeasureScope, constraints.getValue());
                }

                /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                public final MeasureResult m3971invoke0kLqBqw(SubcomposeIntermediateMeasureScope subcomposeIntermediateMeasureScope, long j) {
                    Intrinsics.checkNotNullParameter(subcomposeIntermediateMeasureScope, "$this$null");
                    return subcomposeIntermediateMeasureScope.getLookaheadMeasurePolicy().invoke(subcomposeIntermediateMeasureScope, Constraints.m4827boximpl(j));
                }
            };
        }
        final Function2<? super SubcomposeIntermediateMeasureScope, ? super Constraints, ? extends MeasureResult> function22 = function2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(2129414763, i, -1, "androidx.compose.ui.layout.SubcomposeLayout (SubcomposeLayout.kt:310)");
        }
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
        CompositionContext rememberCompositionContext = ComposablesKt.rememberCompositionContext(startRestartGroup, 0);
        Modifier materializeModifier = ComposedModifierKt.materializeModifier(startRestartGroup, modifier2);
        CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
        final Function0<LayoutNode> constructor$ui_release = LayoutNode.INSTANCE.getConstructor$ui_release();
        startRestartGroup.startReplaceableGroup(1886828752);
        ComposerKt.sourceInformation(startRestartGroup, "CC(ComposeNode):Composables.kt#9igjgp");
        if (!(startRestartGroup.getApplier() instanceof Applier)) {
            ComposablesKt.invalidApplier();
        }
        startRestartGroup.startNode();
        if (startRestartGroup.getInserting()) {
            startRestartGroup.createNode(new Function0<LayoutNode>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$$inlined$ComposeNode$1
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.ui.node.LayoutNode, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final LayoutNode invoke() {
                    return Function0.this.invoke();
                }
            });
        } else {
            startRestartGroup.useNode();
        }
        Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
        Updater.m2280setimpl(m2273constructorimpl, state, state.getSetRoot$ui_release());
        Updater.m2280setimpl(m2273constructorimpl, rememberCompositionContext, state.getSetCompositionContext$ui_release());
        Updater.m2280setimpl(m2273constructorimpl, measurePolicy, state.getSetMeasurePolicy$ui_release());
        Updater.m2280setimpl(m2273constructorimpl, function22, state.getSetIntermediateMeasurePolicy$ui_release());
        Updater.m2280setimpl(m2273constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Updater.m2280setimpl(m2273constructorimpl, materializeModifier, ComposeUiNode.INSTANCE.getSetModifier());
        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        startRestartGroup.endNode();
        startRestartGroup.endReplaceableGroup();
        startRestartGroup.startReplaceableGroup(-607836798);
        ComposerKt.sourceInformation(startRestartGroup, "340@17650L65");
        if (!startRestartGroup.getSkipping()) {
            EffectsKt.SideEffect(new Function0<Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$10
                /* JADX INFO: Access modifiers changed from: package-private */
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
                    SubcomposeLayoutState.this.forceRecomposeChildren$ui_release();
                }
            }, startRestartGroup, 0);
        }
        startRestartGroup.endReplaceableGroup();
        final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(state, startRestartGroup, 8);
        Unit unit = Unit.INSTANCE;
        startRestartGroup.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = startRestartGroup.changed(rememberUpdatedState);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$11$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    final State<SubcomposeLayoutState> state2 = rememberUpdatedState;
                    return new DisposableEffectResult() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$11$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            ((SubcomposeLayoutState) State.this.getValue()).disposeCurrentNodes$ui_release();
                        }
                    };
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        EffectsKt.DisposableEffect(unit, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) rememberedValue, startRestartGroup, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.SubcomposeLayoutKt$SubcomposeLayout$12
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
                SubcomposeLayoutKt.SubcomposeLayout(SubcomposeLayoutState.this, modifier2, function22, measurePolicy, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    public static final SubcomposeSlotReusePolicy SubcomposeSlotReusePolicy(int i) {
        return new FixedCountSubcomposeSlotReusePolicy(i);
    }
}
