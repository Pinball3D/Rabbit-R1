package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.layout.PinnableContainerKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutPinnableItem.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a:\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0011\u0010\b\u001a\r\u0012\u0004\u0012\u00020\u00010\t¢\u0006\u0002\b\nH\u0007¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"LazyLayoutPinnableItem", "", "key", "", "index", "", "pinnedItemList", "Landroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;", "content", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "(Ljava/lang/Object;ILandroidx/compose/foundation/lazy/layout/LazyLayoutPinnedItemList;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutPinnableItemKt {
    public static final void LazyLayoutPinnableItem(final Object obj, final int i, final LazyLayoutPinnedItemList pinnedItemList, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i2) {
        Intrinsics.checkNotNullParameter(pinnedItemList, "pinnedItemList");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-2079116560);
        ComposerKt.sourceInformation(startRestartGroup, "C(LazyLayoutPinnableItem)P(2,1,3)49@1914L77,51@2089L7,52@2132L43,52@2101L74,53@2180L103:LazyLayoutPinnableItem.kt#wow0x6");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2079116560, i2, -1, "androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItem (LazyLayoutPinnableItem.kt:43)");
        }
        startRestartGroup.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = startRestartGroup.changed(obj) | startRestartGroup.changed(pinnedItemList);
        Object rememberedValue = startRestartGroup.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new LazyLayoutPinnableItem(obj, pinnedItemList);
            startRestartGroup.updateRememberedValue(rememberedValue);
        }
        startRestartGroup.endReplaceableGroup();
        final LazyLayoutPinnableItem lazyLayoutPinnableItem = (LazyLayoutPinnableItem) rememberedValue;
        lazyLayoutPinnableItem.setIndex(i);
        ProvidableCompositionLocal<PinnableContainer> localPinnableContainer = PinnableContainerKt.getLocalPinnableContainer();
        ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = startRestartGroup.consume(localPinnableContainer);
        ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
        lazyLayoutPinnableItem.setParentPinnableContainer((PinnableContainer) consume);
        startRestartGroup.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed2 = startRestartGroup.changed(lazyLayoutPinnableItem);
        Object rememberedValue2 = startRestartGroup.rememberedValue();
        if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = (Function1) new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$1$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    final LazyLayoutPinnableItem lazyLayoutPinnableItem2 = LazyLayoutPinnableItem.this;
                    return new DisposableEffectResult() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$1$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            LazyLayoutPinnableItem.this.onDisposed();
                        }
                    };
                }
            };
            startRestartGroup.updateRememberedValue(rememberedValue2);
        }
        startRestartGroup.endReplaceableGroup();
        EffectsKt.DisposableEffect(lazyLayoutPinnableItem, (Function1<? super DisposableEffectScope, ? extends DisposableEffectResult>) rememberedValue2, startRestartGroup, 0);
        CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{PinnableContainerKt.getLocalPinnableContainer().provides(lazyLayoutPinnableItem)}, content, startRestartGroup, ((i2 >> 6) & 112) | 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt$LazyLayoutPinnableItem$2
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
                LazyLayoutPinnableItemKt.LazyLayoutPinnableItem(obj, i, pinnedItemList, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }
}
