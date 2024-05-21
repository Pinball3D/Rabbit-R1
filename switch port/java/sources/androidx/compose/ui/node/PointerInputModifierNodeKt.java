package androidx.compose.ui.node;

import androidx.compose.ui.layout.LayoutCoordinates;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PointerInputModifierNode.kt */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0000\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0005*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"isAttached", "", "Landroidx/compose/ui/node/PointerInputModifierNode;", "(Landroidx/compose/ui/node/PointerInputModifierNode;)Z", "layoutCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "getLayoutCoordinates", "(Landroidx/compose/ui/node/PointerInputModifierNode;)Landroidx/compose/ui/layout/LayoutCoordinates;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PointerInputModifierNodeKt {
    public static final boolean isAttached(PointerInputModifierNode pointerInputModifierNode) {
        Intrinsics.checkNotNullParameter(pointerInputModifierNode, "<this>");
        return pointerInputModifierNode.getNode().getIsAttached();
    }

    public static final LayoutCoordinates getLayoutCoordinates(PointerInputModifierNode pointerInputModifierNode) {
        Intrinsics.checkNotNullParameter(pointerInputModifierNode, "<this>");
        return DelegatableNodeKt.m3989requireCoordinator64DMado(pointerInputModifierNode, NodeKind.m4091constructorimpl(16));
    }
}
