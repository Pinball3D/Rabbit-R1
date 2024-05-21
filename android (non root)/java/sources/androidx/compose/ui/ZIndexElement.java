package androidx.compose.ui;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ZIndexModifier.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0080\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\t\u0010\b\u001a\u00020\u0004HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0004HÆ\u0001J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016J\f\u0010\u0016\u001a\u00020\u0014*\u00020\u0017H\u0016R\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Landroidx/compose/ui/ZIndexElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/ZIndexNode;", "zIndex", "", "(F)V", "getZIndex", "()F", "component1", "copy", "create", "equals", "", "other", "", "hashCode", "", "toString", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class ZIndexElement extends ModifierNodeElement<ZIndexNode> {
    private final float zIndex;

    public static /* synthetic */ ZIndexElement copy$default(ZIndexElement zIndexElement, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = zIndexElement.zIndex;
        }
        return zIndexElement.copy(f);
    }

    /* renamed from: component1, reason: from getter */
    public final float getZIndex() {
        return this.zIndex;
    }

    public final ZIndexElement copy(float zIndex) {
        return new ZIndexElement(zIndex);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ZIndexElement) && Float.compare(this.zIndex, ((ZIndexElement) other).zIndex) == 0;
    }

    public final float getZIndex() {
        return this.zIndex;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Float.hashCode(this.zIndex);
    }

    public String toString() {
        return "ZIndexElement(zIndex=" + this.zIndex + ')';
    }

    public ZIndexElement(float f) {
        this.zIndex = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ZIndexNode create() {
        return new ZIndexNode(this.zIndex);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ZIndexNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setZIndex(this.zIndex);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("zIndex");
        inspectorInfo.getProperties().set("zIndex", Float.valueOf(this.zIndex));
    }
}
