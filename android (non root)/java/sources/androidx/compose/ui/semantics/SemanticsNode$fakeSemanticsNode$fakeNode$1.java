package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.SemanticsModifierNode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsNode.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\f\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"androidx/compose/ui/semantics/SemanticsNode$fakeSemanticsNode$fakeNode$1", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "applySemantics", "", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsNode$fakeSemanticsNode$fakeNode$1 extends Modifier.Node implements SemanticsModifierNode {
    final /* synthetic */ Function1<SemanticsPropertyReceiver, Unit> $properties;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public SemanticsNode$fakeSemanticsNode$fakeNode$1(Function1<? super SemanticsPropertyReceiver, Unit> function1) {
        this.$properties = function1;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        this.$properties.invoke(semanticsPropertyReceiver);
    }
}
