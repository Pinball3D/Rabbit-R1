package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0002H\u0016J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0002H\u0016J\f\u0010\u0017\u001a\u00020\u0015*\u00020\u0018H\u0016R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0019"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/gestures/MouseWheelScrollNode;", "scrollingLogicState", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "mouseWheelScrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "(Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)V", "getMouseWheelScrollConfig", "()Landroidx/compose/foundation/gestures/ScrollConfig;", "getScrollingLogicState", "()Landroidx/compose/runtime/State;", "create", "equals", "", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MouseWheelScrollElement extends ModifierNodeElement<MouseWheelScrollNode> {
    private final ScrollConfig mouseWheelScrollConfig;
    private final State<ScrollingLogic> scrollingLogicState;

    public final ScrollConfig getMouseWheelScrollConfig() {
        return this.mouseWheelScrollConfig;
    }

    public final State<ScrollingLogic> getScrollingLogicState() {
        return this.scrollingLogicState;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
    }

    public MouseWheelScrollElement(State<ScrollingLogic> scrollingLogicState, ScrollConfig mouseWheelScrollConfig) {
        Intrinsics.checkNotNullParameter(scrollingLogicState, "scrollingLogicState");
        Intrinsics.checkNotNullParameter(mouseWheelScrollConfig, "mouseWheelScrollConfig");
        this.scrollingLogicState = scrollingLogicState;
        this.mouseWheelScrollConfig = mouseWheelScrollConfig;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public MouseWheelScrollNode create() {
        return new MouseWheelScrollNode(this.scrollingLogicState, this.mouseWheelScrollConfig);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(MouseWheelScrollNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setScrollingLogicState(this.scrollingLogicState);
        node.setMouseWheelScrollConfig(this.mouseWheelScrollConfig);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return (this.scrollingLogicState.hashCode() * 31) + this.mouseWheelScrollConfig.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof MouseWheelScrollElement)) {
            return false;
        }
        MouseWheelScrollElement mouseWheelScrollElement = (MouseWheelScrollElement) other;
        return Intrinsics.areEqual(this.scrollingLogicState, mouseWheelScrollElement.scrollingLogicState) && Intrinsics.areEqual(this.mouseWheelScrollConfig, mouseWheelScrollElement.mouseWheelScrollConfig);
    }
}
