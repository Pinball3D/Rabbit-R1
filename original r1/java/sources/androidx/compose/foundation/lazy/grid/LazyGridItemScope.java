package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;

/* compiled from: LazyGridItemScope.kt */
@LazyGridScopeMarker
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001J\u001f\u0010\u0002\u001a\u00020\u0003*\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H'ø\u0001\u0000\u0082\u0001\u0001\u0007ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/grid/LazyGridItemScope;", "", "animateItemPlacement", "Landroidx/compose/ui/Modifier;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntOffset;", "Landroidx/compose/foundation/lazy/grid/LazyGridItemScopeImpl;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyGridItemScope {
    Modifier animateItemPlacement(Modifier modifier, FiniteAnimationSpec<IntOffset> finiteAnimationSpec);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Modifier animateItemPlacement$default(LazyGridItemScope lazyGridItemScope, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: animateItemPlacement");
        }
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.spring$default(0.0f, 400.0f, IntOffset.m4992boximpl(VisibilityThresholdsKt.getVisibilityThreshold(IntOffset.INSTANCE)), 1, null);
        }
        return lazyGridItemScope.animateItemPlacement(modifier, finiteAnimationSpec);
    }
}
