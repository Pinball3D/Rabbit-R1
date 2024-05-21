package androidx.compose.foundation.gestures;

import androidx.compose.runtime.State;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Scrollable.kt */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J-\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Landroidx/compose/foundation/gestures/MouseWheelScrollNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/node/PointerInputModifierNode;", "scrollingLogicState", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/gestures/ScrollingLogic;", "mouseWheelScrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "(Landroidx/compose/runtime/State;Landroidx/compose/foundation/gestures/ScrollConfig;)V", "getMouseWheelScrollConfig", "()Landroidx/compose/foundation/gestures/ScrollConfig;", "setMouseWheelScrollConfig", "(Landroidx/compose/foundation/gestures/ScrollConfig;)V", "pointerInputNode", "Landroidx/compose/ui/input/pointer/SuspendingPointerInputModifierNode;", "getScrollingLogicState", "()Landroidx/compose/runtime/State;", "setScrollingLogicState", "(Landroidx/compose/runtime/State;)V", "onCancelPointerInput", "", "onPointerEvent", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pass", "Landroidx/compose/ui/input/pointer/PointerEventPass;", "bounds", "Landroidx/compose/ui/unit/IntSize;", "onPointerEvent-H0pRuoY", "(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MouseWheelScrollNode extends DelegatingNode implements PointerInputModifierNode {
    private ScrollConfig mouseWheelScrollConfig;
    private final SuspendingPointerInputModifierNode pointerInputNode;
    private State<ScrollingLogic> scrollingLogicState;

    public final ScrollConfig getMouseWheelScrollConfig() {
        return this.mouseWheelScrollConfig;
    }

    public final State<ScrollingLogic> getScrollingLogicState() {
        return this.scrollingLogicState;
    }

    public final void setMouseWheelScrollConfig(ScrollConfig scrollConfig) {
        Intrinsics.checkNotNullParameter(scrollConfig, "<set-?>");
        this.mouseWheelScrollConfig = scrollConfig;
    }

    public final void setScrollingLogicState(State<ScrollingLogic> state) {
        Intrinsics.checkNotNullParameter(state, "<set-?>");
        this.scrollingLogicState = state;
    }

    public MouseWheelScrollNode(State<ScrollingLogic> scrollingLogicState, ScrollConfig mouseWheelScrollConfig) {
        Intrinsics.checkNotNullParameter(scrollingLogicState, "scrollingLogicState");
        Intrinsics.checkNotNullParameter(mouseWheelScrollConfig, "mouseWheelScrollConfig");
        this.scrollingLogicState = scrollingLogicState;
        this.mouseWheelScrollConfig = mouseWheelScrollConfig;
        this.pointerInputNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new MouseWheelScrollNode$pointerInputNode$1(this, null)));
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* renamed from: onPointerEvent-H0pRuoY */
    public void mo152onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pass, long bounds) {
        Intrinsics.checkNotNullParameter(pointerEvent, "pointerEvent");
        Intrinsics.checkNotNullParameter(pass, "pass");
        this.pointerInputNode.mo152onPointerEventH0pRuoY(pointerEvent, pass, bounds);
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputNode.onCancelPointerInput();
    }
}
