package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.SaveableStateHolder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: LazyLayoutItemContentFactory.kt */
@Metadata(d1 = {"\u0000&\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u001aA\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\b2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005H\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000b\u0010\f\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\r"}, d2 = {"SkippableItem", "", "itemProvider", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "saveableStateHolder", "Landroidx/compose/foundation/lazy/layout/StableValue;", "Landroidx/compose/runtime/saveable/SaveableStateHolder;", "index", "", "key", "", "SkippableItem-JVlU9Rs", "(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;Ljava/lang/Object;ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutItemContentFactoryKt {
    /* renamed from: access$SkippableItem-JVlU9Rs */
    public static final /* synthetic */ void m646access$SkippableItemJVlU9Rs(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i, Object obj2, Composer composer, int i2) {
        m645SkippableItemJVlU9Rs(lazyLayoutItemProvider, obj, i, obj2, composer, i2);
    }

    /* renamed from: SkippableItem-JVlU9Rs */
    public static final void m645SkippableItemJVlU9Rs(final LazyLayoutItemProvider lazyLayoutItemProvider, final Object obj, final int i, final Object obj2, Composer composer, final int i2) {
        final int i3;
        Composer startRestartGroup = composer.startRestartGroup(1439843069);
        ComposerKt.sourceInformation(startRestartGroup, "C(SkippableItem)P(1,3:c#foundation.lazy.layout.StableValue!,2:c#foundation.lazy.layout.StableValue)133@4709L84:LazyLayoutItemContentFactory.kt#wow0x6");
        if ((i2 & 14) == 0) {
            i3 = (startRestartGroup.changed(lazyLayoutItemProvider) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 112) == 0) {
            i3 |= startRestartGroup.changed(obj) ? 32 : 16;
        }
        if ((i2 & 896) == 0) {
            i3 |= startRestartGroup.changed(i) ? 256 : 128;
        }
        if ((i2 & 7168) == 0) {
            i3 |= startRestartGroup.changed(obj2) ? 2048 : 1024;
        }
        if ((i3 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1439843069, i3, -1, "androidx.compose.foundation.lazy.layout.SkippableItem (LazyLayoutItemContentFactory.kt:127)");
            }
            ((SaveableStateHolder) obj).SaveableStateProvider(obj2, ComposableLambdaKt.composableLambda(startRestartGroup, 980966366, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt$SkippableItem$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                    invoke(composer2, num.intValue());
                    return Unit.INSTANCE;
                }

                public final void invoke(Composer composer2, int i4) {
                    ComposerKt.sourceInformation(composer2, "C134@4765L22:LazyLayoutItemContentFactory.kt#wow0x6");
                    if ((i4 & 11) == 2 && composer2.getSkipping()) {
                        composer2.skipToGroupEnd();
                        return;
                    }
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(980966366, i4, -1, "androidx.compose.foundation.lazy.layout.SkippableItem.<anonymous> (LazyLayoutItemContentFactory.kt:133)");
                    }
                    LazyLayoutItemProvider lazyLayoutItemProvider2 = LazyLayoutItemProvider.this;
                    int i5 = i;
                    Object obj3 = obj2;
                    int i6 = i3;
                    lazyLayoutItemProvider2.Item(i5, obj3, composer2, ((i6 << 6) & 896) | ((i6 >> 6) & 14) | 64);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                    }
                }
            }), startRestartGroup, 568);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutItemContentFactoryKt$SkippableItem$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                LazyLayoutItemContentFactoryKt.m645SkippableItemJVlU9Rs(LazyLayoutItemProvider.this, obj, i, obj2, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }
}
