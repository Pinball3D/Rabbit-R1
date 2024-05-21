package androidx.compose.foundation.lazy.grid;

import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyGridItemScopeImpl.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\u0002H\u0016J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\f\u0010\u0013\u001a\u00020\u0011*\u00020\u0014H\u0016R\u001a\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/lazy/grid/AnimateItemPlacementElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/lazy/grid/AnimateItemPlacementNode;", "animationSpec", "Landroidx/compose/animation/core/FiniteAnimationSpec;", "Landroidx/compose/ui/unit/IntOffset;", "(Landroidx/compose/animation/core/FiniteAnimationSpec;)V", "getAnimationSpec", "()Landroidx/compose/animation/core/FiniteAnimationSpec;", "create", "equals", "", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class AnimateItemPlacementElement extends ModifierNodeElement<AnimateItemPlacementNode> {
    private final FiniteAnimationSpec<IntOffset> animationSpec;

    public final FiniteAnimationSpec<IntOffset> getAnimationSpec() {
        return this.animationSpec;
    }

    public AnimateItemPlacementElement(FiniteAnimationSpec<IntOffset> animationSpec) {
        Intrinsics.checkNotNullParameter(animationSpec, "animationSpec");
        this.animationSpec = animationSpec;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public AnimateItemPlacementNode create() {
        return new AnimateItemPlacementNode(this.animationSpec);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(AnimateItemPlacementNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.getDelegatingNode().setPlacementAnimationSpec(this.animationSpec);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof AnimateItemPlacementElement) {
            return !Intrinsics.areEqual(this.animationSpec, ((AnimateItemPlacementElement) other).animationSpec);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.animationSpec.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("animateItemPlacement");
        inspectorInfo.setValue(this.animationSpec);
    }
}
