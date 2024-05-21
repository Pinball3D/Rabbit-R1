package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import kotlin.Metadata;

/* compiled from: InnerNodeCoordinator.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\rH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/node/TailModifierNode;", "Landroidx/compose/ui/Modifier$Node;", "()V", "attachHasBeenRun", "", "getAttachHasBeenRun", "()Z", "setAttachHasBeenRun", "(Z)V", "onAttach", "", "onDetach", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TailModifierNode extends Modifier.Node {
    private boolean attachHasBeenRun;

    public final boolean getAttachHasBeenRun() {
        return this.attachHasBeenRun;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        this.attachHasBeenRun = true;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        this.attachHasBeenRun = false;
    }

    public final void setAttachHasBeenRun(boolean z) {
        this.attachHasBeenRun = z;
    }

    public String toString() {
        return "<tail>";
    }

    public TailModifierNode() {
        setAggregateChildKindSet$ui_release(0);
    }
}
