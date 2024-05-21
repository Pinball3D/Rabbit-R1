package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutKeyIndexMap;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnableItemKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: LazyGridItemProvider.kt */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u001d\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0017¢\u0006\u0002\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0096\u0002J\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0015\u001a\u00020\nH\u0016J\u0010\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001e\u001a\u00020\u00172\u0006\u0010\u0015\u001a\u00020\nH\u0016J\b\u0010\u001f\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridItemProviderImpl;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemProvider;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/lazy/grid/LazyGridState;", "intervalContent", "Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;", "keyIndexMap", "Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "(Landroidx/compose/foundation/lazy/grid/LazyGridState;Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;)V", "itemCount", "", "getItemCount", "()I", "getKeyIndexMap", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutKeyIndexMap;", "spanLayoutProvider", "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "getSpanLayoutProvider", "()Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;", "Item", "", "index", "key", "", "(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V", "equals", "", "other", "getContentType", "getIndex", "getKey", "hashCode", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyGridItemProviderImpl implements LazyGridItemProvider {
    private final LazyGridIntervalContent intervalContent;
    private final LazyLayoutKeyIndexMap keyIndexMap;
    private final LazyGridState state;

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemProvider
    public LazyLayoutKeyIndexMap getKeyIndexMap() {
        return this.keyIndexMap;
    }

    public LazyGridItemProviderImpl(LazyGridState state, LazyGridIntervalContent intervalContent, LazyLayoutKeyIndexMap keyIndexMap) {
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(intervalContent, "intervalContent");
        Intrinsics.checkNotNullParameter(keyIndexMap, "keyIndexMap");
        this.state = state;
        this.intervalContent = intervalContent;
        this.keyIndexMap = keyIndexMap;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public int getItemCount() {
        return this.intervalContent.getItemCount();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public Object getKey(int index) {
        Object key = getKeyIndexMap().getKey(index);
        return key == null ? this.intervalContent.getKey(index) : key;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public Object getContentType(int index) {
        return this.intervalContent.getContentType(index);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public void Item(final int i, final Object key, Composer composer, final int i2) {
        Intrinsics.checkNotNullParameter(key, "key");
        Composer startRestartGroup = composer.startRestartGroup(1493551140);
        ComposerKt.sourceInformation(startRestartGroup, "C(Item)75@2884L216:LazyGridItemProvider.kt#7791vq");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1493551140, i2, -1, "androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl.Item (LazyGridItemProvider.kt:74)");
        }
        LazyLayoutPinnableItemKt.LazyLayoutPinnableItem(key, i, this.state.getPinnedItems(), ComposableLambdaKt.composableLambda(startRestartGroup, 726189336, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl$Item$1
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

            public final void invoke(Composer composer2, int i3) {
                LazyGridIntervalContent lazyGridIntervalContent;
                ComposerKt.sourceInformation(composer2, "C*77@3037L39:LazyGridItemProvider.kt#7791vq");
                if ((i3 & 11) != 2 || !composer2.getSkipping()) {
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventStart(726189336, i3, -1, "androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl.Item.<anonymous> (LazyGridItemProvider.kt:75)");
                    }
                    lazyGridIntervalContent = LazyGridItemProviderImpl.this.intervalContent;
                    int i4 = i;
                    IntervalList.Interval<LazyGridInterval> interval = lazyGridIntervalContent.getIntervals().get(i4);
                    interval.getValue().getItem().invoke(LazyGridItemScopeImpl.INSTANCE, Integer.valueOf(i4 - interval.getStartIndex()), composer2, 6);
                    if (ComposerKt.isTraceInProgress()) {
                        ComposerKt.traceEventEnd();
                        return;
                    }
                    return;
                }
                composer2.skipToGroupEnd();
            }
        }), startRestartGroup, ((i2 << 3) & 112) | 3592);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.lazy.grid.LazyGridItemProviderImpl$Item$2
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

            public final void invoke(Composer composer2, int i3) {
                LazyGridItemProviderImpl.this.Item(i, key, composer2, RecomposeScopeImplKt.updateChangedFlags(i2 | 1));
            }
        });
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridItemProvider
    public LazyGridSpanLayoutProvider getSpanLayoutProvider() {
        return this.intervalContent.getSpanLayoutProvider();
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutItemProvider
    public int getIndex(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getKeyIndexMap().getIndex(key);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof LazyGridItemProviderImpl) {
            return Intrinsics.areEqual(this.intervalContent, ((LazyGridItemProviderImpl) other).intervalContent);
        }
        return false;
    }

    public int hashCode() {
        return this.intervalContent.hashCode();
    }
}
