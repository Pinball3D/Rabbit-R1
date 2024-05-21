package androidx.compose.foundation;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequesterModifierNode;
import androidx.compose.ui.focus.FocusRequesterModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Focusable.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0006J\f\u0010\f\u001a\u00020\n*\u00020\rH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Landroidx/compose/foundation/FocusableSemanticsNode;", "Landroidx/compose/ui/Modifier$Node;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/focus/FocusRequesterModifierNode;", "()V", "isFocused", "", "semanticsConfigurationCache", "Landroidx/compose/ui/semantics/SemanticsConfiguration;", "setFocus", "", "focused", "applySemantics", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusableSemanticsNode extends Modifier.Node implements SemanticsModifierNode, FocusRequesterModifierNode {
    private boolean isFocused;
    private SemanticsConfiguration semanticsConfigurationCache = new SemanticsConfiguration();

    public final void setFocus(boolean focused) {
        this.isFocused = focused;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        SemanticsPropertiesKt.setFocused(semanticsPropertyReceiver, this.isFocused);
        SemanticsPropertiesKt.requestFocus$default(semanticsPropertyReceiver, null, new Function0<Boolean>() { // from class: androidx.compose.foundation.FocusableSemanticsNode$applySemantics$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Boolean invoke() {
                return Boolean.valueOf(FocusRequesterModifierNodeKt.requestFocus(FocusableSemanticsNode.this));
            }
        }, 1, null);
    }
}
