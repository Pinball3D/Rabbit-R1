package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.SiblingsAlignedNode;
import androidx.compose.ui.layout.Measured;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\f\u0010\u0013\u001a\u00020\u0011*\u00020\u0014H\u0016R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Landroidx/compose/foundation/layout/WithAlignmentLineBlockElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/SiblingsAlignedNode$WithAlignmentLineBlockNode;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/Measured;", "", "(Lkotlin/jvm/functions/Function1;)V", "getBlock", "()Lkotlin/jvm/functions/Function1;", "create", "equals", "", "other", "", "hashCode", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WithAlignmentLineBlockElement extends ModifierNodeElement<SiblingsAlignedNode.WithAlignmentLineBlockNode> {
    private final Function1<Measured, Integer> block;

    public final Function1<Measured, Integer> getBlock() {
        return this.block;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public WithAlignmentLineBlockElement(Function1<? super Measured, Integer> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        this.block = block;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public SiblingsAlignedNode.WithAlignmentLineBlockNode create() {
        return new SiblingsAlignedNode.WithAlignmentLineBlockNode(this.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(SiblingsAlignedNode.WithAlignmentLineBlockNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setBlock(this.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        WithAlignmentLineBlockElement withAlignmentLineBlockElement = other instanceof WithAlignmentLineBlockElement ? (WithAlignmentLineBlockElement) other : null;
        if (withAlignmentLineBlockElement == null) {
            return false;
        }
        return Intrinsics.areEqual(this.block, withAlignmentLineBlockElement.block);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.block.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("alignBy");
        inspectorInfo.setValue(this.block);
    }
}
