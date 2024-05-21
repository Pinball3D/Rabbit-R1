package androidx.compose.foundation.lazy;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.IntOffset;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyItemScopeImpl.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tJ\u001d\u0010\u000b\u001a\u00020\f*\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0017ø\u0001\u0000J\u0014\u0010\u0010\u001a\u00020\f*\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0014\u0010\u0013\u001a\u00020\f*\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0014\u0010\u0014\u001a\u00020\f*\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/lazy/LazyItemScopeImpl;", "Landroidx/compose/foundation/lazy/LazyItemScope;", "()V", "maxHeightState", "Landroidx/compose/runtime/MutableIntState;", "maxWidthState", "setMaxSize", "", ViewHierarchyNode.JsonKeys.WIDTH, "", ViewHierarchyNode.JsonKeys.HEIGHT, "animateItemPlacement", "Landroidx/compose/ui/Modifier;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntOffset;", "fillParentMaxHeight", "fraction", "", "fillParentMaxSize", "fillParentMaxWidth", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyItemScopeImpl implements LazyItemScope {
    private MutableIntState maxWidthState = SnapshotIntStateKt.mutableIntStateOf(Integer.MAX_VALUE);
    private MutableIntState maxHeightState = SnapshotIntStateKt.mutableIntStateOf(Integer.MAX_VALUE);

    public final void setMaxSize(int width, int height) {
        this.maxWidthState.setIntValue(width);
        this.maxHeightState.setIntValue(height);
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public Modifier fillParentMaxSize(Modifier modifier, float f) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return modifier.then(new ParentSizeElement(f, this.maxWidthState, this.maxHeightState, "fillParentMaxSize"));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public Modifier fillParentMaxWidth(Modifier modifier, float f) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return modifier.then(new ParentSizeElement(f, this.maxWidthState, null, "fillParentMaxWidth", 4, null));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public Modifier fillParentMaxHeight(Modifier modifier, float f) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        return modifier.then(new ParentSizeElement(f, null, this.maxHeightState, "fillParentMaxHeight", 2, null));
    }

    @Override // androidx.compose.foundation.lazy.LazyItemScope
    public Modifier animateItemPlacement(Modifier modifier, FiniteAnimationSpec<IntOffset> animationSpec) {
        Intrinsics.checkNotNullParameter(modifier, "<this>");
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        return modifier.then(new AnimateItemPlacementElement(animationSpec));
    }
}
