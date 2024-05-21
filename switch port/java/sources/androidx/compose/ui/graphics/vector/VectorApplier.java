package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.AbstractApplier;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: VectorCompose.kt */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0002H\u0016J \u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\b\u0010\u000f\u001a\u00020\u0006H\u0014J\u0018\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\bH\u0016J\f\u0010\u0011\u001a\u00020\u0012*\u00020\u0002H\u0002¨\u0006\u0013"}, d2 = {"Landroidx/compose/ui/graphics/vector/VectorApplier;", "Landroidx/compose/runtime/AbstractApplier;", "Landroidx/compose/ui/graphics/vector/VNode;", "root", "(Landroidx/compose/ui/graphics/vector/VNode;)V", "insertBottomUp", "", "index", "", "instance", "insertTopDown", "move", "from", "to", MetricSummary.JsonKeys.COUNT, "onClear", "remove", "asGroup", "Landroidx/compose/ui/graphics/vector/GroupComponent;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VectorApplier extends AbstractApplier<VNode> {
    public static final int $stable = 0;

    @Override // androidx.compose.runtime.Applier
    public void insertBottomUp(int index, VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public VectorApplier(VNode root) {
        super(root);
        Intrinsics.checkNotNullParameter(root, "root");
    }

    @Override // androidx.compose.runtime.Applier
    public void insertTopDown(int index, VNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        asGroup(getCurrent()).insertAt(index, instance);
    }

    @Override // androidx.compose.runtime.Applier
    public void remove(int index, int count) {
        asGroup(getCurrent()).remove(index, count);
    }

    @Override // androidx.compose.runtime.AbstractApplier
    protected void onClear() {
        GroupComponent asGroup = asGroup(getRoot());
        asGroup.remove(0, asGroup.getNumChildren());
    }

    @Override // androidx.compose.runtime.Applier
    public void move(int from, int to, int count) {
        asGroup(getCurrent()).move(from, to, count);
    }

    private final GroupComponent asGroup(VNode vNode) {
        if (vNode instanceof GroupComponent) {
            return (GroupComponent) vNode;
        }
        throw new IllegalStateException("Cannot only insert VNode into Group".toString());
    }
}
