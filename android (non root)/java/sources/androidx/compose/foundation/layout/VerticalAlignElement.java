package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: RowColumnImpl.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0002H\u0016J\f\u0010\u0012\u001a\u00020\u0010*\u00020\u0013H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, d2 = {"Landroidx/compose/foundation/layout/VerticalAlignElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/VerticalAlignNode;", "alignment", "Landroidx/compose/ui/Alignment$Vertical;", "(Landroidx/compose/ui/Alignment$Vertical;)V", "getAlignment", "()Landroidx/compose/ui/Alignment$Vertical;", "create", "equals", "", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VerticalAlignElement extends ModifierNodeElement<VerticalAlignNode> {
    private final Alignment.Vertical alignment;

    public final Alignment.Vertical getAlignment() {
        return this.alignment;
    }

    public VerticalAlignElement(Alignment.Vertical alignment) {
        Intrinsics.checkNotNullParameter(alignment, "alignment");
        this.alignment = alignment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public VerticalAlignNode create() {
        return new VerticalAlignNode(this.alignment);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(VerticalAlignNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setVertical(this.alignment);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("align");
        inspectorInfo.setValue(this.alignment);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.alignment.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        VerticalAlignElement verticalAlignElement = other instanceof VerticalAlignElement ? (VerticalAlignElement) other : null;
        if (verticalAlignElement == null) {
            return false;
        }
        return Intrinsics.areEqual(this.alignment, verticalAlignElement.alignment);
    }
}
