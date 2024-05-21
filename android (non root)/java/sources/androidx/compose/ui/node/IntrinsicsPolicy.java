package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.layout.MeasurePolicy;
import io.sentry.protocol.ViewHierarchyNode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: IntrinsicsPolicy.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\b\u0010\u0017\u001a\u00020\bH\u0002J\u000e\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u001a\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R/\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\b8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006 "}, d2 = {"Landroidx/compose/ui/node/IntrinsicsPolicy;", "", "layoutNode", "Landroidx/compose/ui/node/LayoutNode;", "(Landroidx/compose/ui/node/LayoutNode;)V", "getLayoutNode", "()Landroidx/compose/ui/node/LayoutNode;", "<set-?>", "Landroidx/compose/ui/layout/MeasurePolicy;", "measurePolicyState", "getMeasurePolicyState", "()Landroidx/compose/ui/layout/MeasurePolicy;", "setMeasurePolicyState", "(Landroidx/compose/ui/layout/MeasurePolicy;)V", "measurePolicyState$delegate", "Landroidx/compose/runtime/MutableState;", "maxIntrinsicHeight", "", ViewHierarchyNode.JsonKeys.WIDTH, "maxIntrinsicWidth", ViewHierarchyNode.JsonKeys.HEIGHT, "maxLookaheadIntrinsicHeight", "maxLookaheadIntrinsicWidth", "measurePolicyFromState", "minIntrinsicHeight", "minIntrinsicWidth", "minLookaheadIntrinsicHeight", "minLookaheadIntrinsicWidth", "updateFrom", "", "measurePolicy", "Companion", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class IntrinsicsPolicy {
    private static final Companion Companion = new Companion(null);
    private static final String NoPolicyError = "Intrinsic size is queried but there is no measure policy in place.";
    private final LayoutNode layoutNode;

    /* renamed from: measurePolicyState$delegate, reason: from kotlin metadata */
    private final MutableState measurePolicyState;

    public final LayoutNode getLayoutNode() {
        return this.layoutNode;
    }

    public IntrinsicsPolicy(LayoutNode layoutNode) {
        MutableState mutableStateOf$default;
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        this.layoutNode = layoutNode;
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(null, null, 2, null);
        this.measurePolicyState = mutableStateOf$default;
    }

    private final MeasurePolicy getMeasurePolicyState() {
        return (MeasurePolicy) this.measurePolicyState.getValue();
    }

    public final void updateFrom(MeasurePolicy measurePolicy) {
        Intrinsics.checkNotNullParameter(measurePolicy, "measurePolicy");
        setMeasurePolicyState(measurePolicy);
    }

    public final int minIntrinsicWidth(int height) {
        return measurePolicyFromState().minIntrinsicWidth(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildMeasurables$ui_release(), height);
    }

    public final int minIntrinsicHeight(int width) {
        return measurePolicyFromState().minIntrinsicHeight(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildMeasurables$ui_release(), width);
    }

    public final int maxIntrinsicWidth(int height) {
        return measurePolicyFromState().maxIntrinsicWidth(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildMeasurables$ui_release(), height);
    }

    public final int maxIntrinsicHeight(int width) {
        return measurePolicyFromState().maxIntrinsicHeight(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildMeasurables$ui_release(), width);
    }

    public final int minLookaheadIntrinsicWidth(int height) {
        return measurePolicyFromState().minIntrinsicWidth(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildLookaheadMeasurables$ui_release(), height);
    }

    public final int minLookaheadIntrinsicHeight(int width) {
        return measurePolicyFromState().minIntrinsicHeight(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildLookaheadMeasurables$ui_release(), width);
    }

    public final int maxLookaheadIntrinsicWidth(int height) {
        return measurePolicyFromState().maxIntrinsicWidth(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildLookaheadMeasurables$ui_release(), height);
    }

    public final int maxLookaheadIntrinsicHeight(int width) {
        return measurePolicyFromState().maxIntrinsicHeight(this.layoutNode.getOuterCoordinator$ui_release(), this.layoutNode.getChildLookaheadMeasurables$ui_release(), width);
    }

    private final MeasurePolicy measurePolicyFromState() {
        MeasurePolicy measurePolicyState = getMeasurePolicyState();
        if (measurePolicyState != null) {
            return measurePolicyState;
        }
        throw new IllegalStateException(NoPolicyError.toString());
    }

    /* compiled from: IntrinsicsPolicy.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/node/IntrinsicsPolicy$Companion;", "", "()V", "NoPolicyError", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    private final void setMeasurePolicyState(MeasurePolicy measurePolicy) {
        this.measurePolicyState.setValue(measurePolicy);
    }
}
