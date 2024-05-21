package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LayoutModifierNode.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\f\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0007"}, d2 = {"invalidateLayer", "", "Landroidx/compose/ui/node/LayoutModifierNode;", "invalidateMeasurement", "invalidatePlacement", "remeasureSync", "requestRemeasure", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LayoutModifierNodeKt {
    public static final void remeasureSync(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<this>");
        DelegatableNodeKt.requireLayoutNode(layoutModifierNode).forceRemeasure();
    }

    public static final void invalidateLayer(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<this>");
        DelegatableNodeKt.m3989requireCoordinator64DMado(layoutModifierNode, NodeKind.m4091constructorimpl(2)).invalidateLayer();
    }

    public static final void invalidatePlacement(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<this>");
        LayoutNode.requestRelayout$ui_release$default(DelegatableNodeKt.requireLayoutNode(layoutModifierNode), false, 1, null);
    }

    public static final void invalidateMeasurement(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<this>");
        DelegatableNodeKt.requireLayoutNode(layoutModifierNode).invalidateMeasurements$ui_release();
    }

    public static final void requestRemeasure(LayoutModifierNode layoutModifierNode) {
        Intrinsics.checkNotNullParameter(layoutModifierNode, "<this>");
        LayoutNode.requestRemeasure$ui_release$default(DelegatableNodeKt.requireLayoutNode(layoutModifierNode), false, false, 3, null);
    }
}
