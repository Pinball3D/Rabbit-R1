package androidx.compose.ui.layout;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OnGloballyPositionedModifier.kt */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0019\u0012\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0002\u0010\u0007J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J\f\u0010\u0013\u001a\u00020\u0006*\u00020\u0014H\u0016R\u001d\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\u0015"}, d2 = {"Landroidx/compose/ui/layout/OnGloballyPositionedElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/ui/layout/OnGloballyPositionedNode;", "onGloballyPositioned", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "", "(Lkotlin/jvm/functions/Function1;)V", "getOnGloballyPositioned", "()Lkotlin/jvm/functions/Function1;", "create", "equals", "", "other", "", "hashCode", "", "update", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OnGloballyPositionedElement extends ModifierNodeElement<OnGloballyPositionedNode> {
    private final Function1<LayoutCoordinates, Unit> onGloballyPositioned;

    public final Function1<LayoutCoordinates, Unit> getOnGloballyPositioned() {
        return this.onGloballyPositioned;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OnGloballyPositionedElement(Function1<? super LayoutCoordinates, Unit> onGloballyPositioned) {
        Intrinsics.checkNotNullParameter(onGloballyPositioned, "onGloballyPositioned");
        this.onGloballyPositioned = onGloballyPositioned;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public OnGloballyPositionedNode create() {
        return new OnGloballyPositionedNode(this.onGloballyPositioned);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other instanceof OnGloballyPositionedElement) {
            return Intrinsics.areEqual(this.onGloballyPositioned, ((OnGloballyPositionedElement) other).onGloballyPositioned);
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.onGloballyPositioned.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(OnGloballyPositionedNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setCallback(this.onGloballyPositioned);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("onGloballyPositioned");
        inspectorInfo.getProperties().set("onGloballyPositioned", this.onGloballyPositioned);
    }
}
