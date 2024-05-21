package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsModifier.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\f\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0016¨\u0006\u0007"}, d2 = {"Landroidx/compose/ui/semantics/EmptySemanticsModifier;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "()V", "applySemantics", "", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class EmptySemanticsModifier extends Modifier.Node implements SemanticsModifierNode {
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
    }
}
