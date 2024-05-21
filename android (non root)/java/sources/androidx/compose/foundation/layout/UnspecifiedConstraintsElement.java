package androidx.compose.foundation.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Size.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001c\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\f\u0010\u0015\u001a\u00020\u0013*\u00020\u0016H\u0016R\u001c\u0010\u0005\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\n\u0010\b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/layout/UnspecifiedConstraintsElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/layout/UnspecifiedConstraintsNode;", "minWidth", "Landroidx/compose/ui/unit/Dp;", "minHeight", "(FFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getMinHeight-D9Ej5fM", "()F", "F", "getMinWidth-D9Ej5fM", "create", "equals", "", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation-layout_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class UnspecifiedConstraintsElement extends ModifierNodeElement<UnspecifiedConstraintsNode> {
    private final float minHeight;
    private final float minWidth;

    public /* synthetic */ UnspecifiedConstraintsElement(float f, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(f, f2);
    }

    /* renamed from: getMinHeight-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinHeight() {
        return this.minHeight;
    }

    /* renamed from: getMinWidth-D9Ej5fM, reason: not valid java name and from getter */
    public final float getMinWidth() {
        return this.minWidth;
    }

    public /* synthetic */ UnspecifiedConstraintsElement(float f, float f2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.INSTANCE.m4903getUnspecifiedD9Ej5fM() : f2, null);
    }

    private UnspecifiedConstraintsElement(float f, float f2) {
        this.minWidth = f;
        this.minHeight = f2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public UnspecifiedConstraintsNode create() {
        return new UnspecifiedConstraintsNode(this.minWidth, this.minHeight, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(UnspecifiedConstraintsNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.m559setMinWidth0680j_4(this.minWidth);
        node.m558setMinHeight0680j_4(this.minHeight);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("defaultMinSize");
        inspectorInfo.getProperties().set("minWidth", Dp.m4881boximpl(this.minWidth));
        inspectorInfo.getProperties().set("minHeight", Dp.m4881boximpl(this.minHeight));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (!(other instanceof UnspecifiedConstraintsElement)) {
            return false;
        }
        UnspecifiedConstraintsElement unspecifiedConstraintsElement = (UnspecifiedConstraintsElement) other;
        return Dp.m4888equalsimpl0(this.minWidth, unspecifiedConstraintsElement.minWidth) && Dp.m4888equalsimpl0(this.minHeight, unspecifiedConstraintsElement.minHeight);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return (Dp.m4889hashCodeimpl(this.minWidth) * 31) + Dp.m4889hashCodeimpl(this.minHeight);
    }
}
