package androidx.compose.ui.node;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ParentDataModifierNode.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"invalidateParentData", "", "Landroidx/compose/ui/node/ParentDataModifierNode;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ParentDataModifierNodeKt {
    public static final void invalidateParentData(ParentDataModifierNode parentDataModifierNode) {
        Intrinsics.checkNotNullParameter(parentDataModifierNode, "<this>");
        DelegatableNodeKt.requireLayoutNode(parentDataModifierNode).invalidateParentData$ui_release();
    }
}
