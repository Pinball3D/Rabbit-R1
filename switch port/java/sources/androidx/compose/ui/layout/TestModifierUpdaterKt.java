package androidx.compose.ui.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: TestModifierUpdater.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a!\u0010\u0000\u001a\u00020\u00012\u0012\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003H\u0007¢\u0006\u0002\u0010\u0005¨\u0006\u0006"}, d2 = {"TestModifierUpdaterLayout", "", "onAttached", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/TestModifierUpdater;", "(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TestModifierUpdaterKt {
    @Deprecated(level = DeprecationLevel.ERROR, message = "It is a test API, do not use it in the real applications")
    public static final void TestModifierUpdaterLayout(final Function1<? super TestModifierUpdater, Unit> onAttached, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(onAttached, "onAttached");
        Composer startRestartGroup = composer.startRestartGroup(-1673066036);
        ComposerKt.sourceInformation(startRestartGroup, "C(TestModifierUpdaterLayout)49@1728L23,53@1883L330:TestModifierUpdater.kt#80mrfh");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(onAttached) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i2 & 11) != 2 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1673066036, i, -1, "androidx.compose.ui.layout.TestModifierUpdaterLayout (TestModifierUpdater.kt:48)");
            }
            int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
            TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(MeasureScope MeasurePolicy, List<? extends Measurable> list, long j) {
                    Intrinsics.checkNotNullParameter(MeasurePolicy, "$this$MeasurePolicy");
                    Intrinsics.checkNotNullParameter(list, "<anonymous parameter 0>");
                    return MeasureScope.layout$default(MeasurePolicy, Constraints.m4839getMaxWidthimpl(j), Constraints.m4838getMaxHeightimpl(j), null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Placeable.PlacementScope layout) {
                            Intrinsics.checkNotNullParameter(layout, "$this$layout");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                            invoke2(placementScope);
                            return Unit.INSTANCE;
                        }
                    }, 4, null);
                }
            };
            final Function0<LayoutNode> constructor$ui_release = LayoutNode.INSTANCE.getConstructor$ui_release();
            startRestartGroup.startReplaceableGroup(1886828752);
            ComposerKt.sourceInformation(startRestartGroup, "CC(ComposeNode):Composables.kt#9igjgp");
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(new Function0<LayoutNode>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1
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
            Updater.m2280setimpl(m2273constructorimpl, testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
            if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
                m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
                m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
            }
            Updater.m2277initimpl(m2273constructorimpl, new Function1<LayoutNode, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(LayoutNode layoutNode) {
                    invoke2(layoutNode);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(LayoutNode init) {
                    Intrinsics.checkNotNullParameter(init, "$this$init");
                    onAttached.invoke(new TestModifierUpdater(init));
                }
            });
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$2
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
                TestModifierUpdaterKt.TestModifierUpdaterLayout(onAttached, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }
}
