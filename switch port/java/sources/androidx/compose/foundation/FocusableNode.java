package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.relocation.BringIntoViewRequesterKt;
import androidx.compose.foundation.relocation.BringIntoViewRequesterNode;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;

/* compiled from: Focusable.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005B\u000f\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001d\u001a\u00020\u00182\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\f\u0010\u001e\u001a\u00020\u0018*\u00020\u001fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Landroidx/compose/foundation/FocusableNode;", "Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/focus/FocusEventModifierNode;", "Landroidx/compose/ui/node/LayoutAwareModifierNode;", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "(Landroidx/compose/foundation/interaction/MutableInteractionSource;)V", "bringIntoViewRequester", "Landroidx/compose/foundation/relocation/BringIntoViewRequester;", "bringIntoViewRequesterNode", "Landroidx/compose/foundation/relocation/BringIntoViewRequesterNode;", "focusState", "Landroidx/compose/ui/focus/FocusState;", "focusableInteractionNode", "Landroidx/compose/foundation/FocusableInteractionNode;", "focusablePinnableContainer", "Landroidx/compose/foundation/FocusablePinnableContainerNode;", "focusableSemanticsNode", "Landroidx/compose/foundation/FocusableSemanticsNode;", "focusedBoundsNode", "Landroidx/compose/foundation/FocusedBoundsNode;", "onFocusEvent", "", "onGloballyPositioned", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "onPlaced", "update", "applySemantics", "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class FocusableNode extends DelegatingNode implements FocusEventModifierNode, LayoutAwareModifierNode, SemanticsModifierNode, GlobalPositionAwareModifierNode {
    private final BringIntoViewRequester bringIntoViewRequester;
    private final BringIntoViewRequesterNode bringIntoViewRequesterNode;
    private FocusState focusState;
    private final FocusableInteractionNode focusableInteractionNode;
    private final FocusableSemanticsNode focusableSemanticsNode = (FocusableSemanticsNode) delegate(new FocusableSemanticsNode());
    private final FocusablePinnableContainerNode focusablePinnableContainer = (FocusablePinnableContainerNode) delegate(new FocusablePinnableContainerNode());
    private final FocusedBoundsNode focusedBoundsNode = (FocusedBoundsNode) delegate(new FocusedBoundsNode());

    public FocusableNode(MutableInteractionSource mutableInteractionSource) {
        this.focusableInteractionNode = (FocusableInteractionNode) delegate(new FocusableInteractionNode(mutableInteractionSource));
        BringIntoViewRequester BringIntoViewRequester = BringIntoViewRequesterKt.BringIntoViewRequester();
        this.bringIntoViewRequester = BringIntoViewRequester;
        this.bringIntoViewRequesterNode = (BringIntoViewRequesterNode) delegate(new BringIntoViewRequesterNode(BringIntoViewRequester));
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.bringIntoViewRequesterNode.onPlaced(coordinates);
    }

    public final void update(MutableInteractionSource interactionSource) {
        this.focusableInteractionNode.update(interactionSource);
    }

    @Override // androidx.compose.ui.focus.FocusEventModifierNode
    public void onFocusEvent(FocusState focusState) {
        Intrinsics.checkNotNullParameter(focusState, "focusState");
        if (Intrinsics.areEqual(this.focusState, focusState)) {
            return;
        }
        boolean isFocused = focusState.isFocused();
        if (isFocused) {
            BuildersKt__Builders_commonKt.launch$default(getCoroutineScope(), null, null, new FocusableNode$onFocusEvent$1(this, null), 3, null);
        }
        if (getIsAttached()) {
            SemanticsModifierNodeKt.invalidateSemantics(this);
        }
        this.focusableInteractionNode.setFocus(isFocused);
        this.focusedBoundsNode.setFocus(isFocused);
        this.focusablePinnableContainer.setFocus(isFocused);
        this.focusableSemanticsNode.setFocus(isFocused);
        this.focusState = focusState;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public void applySemantics(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Intrinsics.checkNotNullParameter(semanticsPropertyReceiver, "<this>");
        this.focusableSemanticsNode.applySemantics(semanticsPropertyReceiver);
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public void onGloballyPositioned(LayoutCoordinates coordinates) {
        Intrinsics.checkNotNullParameter(coordinates, "coordinates");
        this.focusedBoundsNode.onGloballyPositioned(coordinates);
    }
}
