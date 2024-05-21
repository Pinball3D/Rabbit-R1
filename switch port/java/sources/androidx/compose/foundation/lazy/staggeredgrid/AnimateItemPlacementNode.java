package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.lazy.layout.LazyLayoutAnimateItemModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyStaggeredGridItemScope.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u0016\u0010\u000b\u001a\u00020\f*\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\fH\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Landroidx/compose/foundation/lazy/staggeredgrid/AnimateItemPlacementNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/ParentDataModifierNode;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntOffset;", "(Landroidx/compose/animation/core/FiniteAnimationSpec;)V", "delegatingNode", "Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "getDelegatingNode", "()Landroidx/compose/foundation/lazy/layout/LazyLayoutAnimateItemModifierNode;", "modifyParentData", "", "Landroidx/compose/ui/unit/Density;", "parentData", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AnimateItemPlacementNode extends DelegatingNode implements ParentDataModifierNode {
    private final LazyLayoutAnimateItemModifierNode delegatingNode;

    public final LazyLayoutAnimateItemModifierNode getDelegatingNode() {
        return this.delegatingNode;
    }

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public Object modifyParentData(Density density, Object obj) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        return this.delegatingNode;
    }

    public AnimateItemPlacementNode(FiniteAnimationSpec<IntOffset> animationSpec) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        this.delegatingNode = (LazyLayoutAnimateItemModifierNode) delegate(new LazyLayoutAnimateItemModifierNode(animationSpec));
    }
}
