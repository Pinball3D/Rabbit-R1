package androidx.compose.foundation;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Scroll.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\b\u0010\f\u001a\u00020\u0002H\u0016J\u0013\u0010\r\u001a\u00020\u00062\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0016J\f\u0010\u0015\u001a\u00020\u0013*\u00020\u0016H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\tR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u0017"}, d2 = {"Landroidx/compose/foundation/ScrollingLayoutElement;", "Landroidx/compose/ui/node/ModifierNodeElement;", "Landroidx/compose/foundation/ScrollingLayoutNode;", "scrollState", "Landroidx/compose/foundation/ScrollState;", "isReversed", "", "isVertical", "(Landroidx/compose/foundation/ScrollState;ZZ)V", "()Z", "getScrollState", "()Landroidx/compose/foundation/ScrollState;", "create", "equals", "other", "", "hashCode", "", "update", "", "node", "inspectableProperties", "Landroidx/compose/ui/platform/InspectorInfo;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ScrollingLayoutElement extends ModifierNodeElement<ScrollingLayoutNode> {
    private final boolean isReversed;
    private final boolean isVertical;
    private final ScrollState scrollState;

    public final ScrollState getScrollState() {
        return this.scrollState;
    }

    /* renamed from: isReversed, reason: from getter */
    public final boolean getIsReversed() {
        return this.isReversed;
    }

    /* renamed from: isVertical, reason: from getter */
    public final boolean getIsVertical() {
        return this.isVertical;
    }

    public ScrollingLayoutElement(ScrollState scrollState, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(scrollState, "scrollState");
        this.scrollState = scrollState;
        this.isReversed = z;
        this.isVertical = z2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public ScrollingLayoutNode create() {
        return new ScrollingLayoutNode(this.scrollState, this.isReversed, this.isVertical);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(ScrollingLayoutNode node) {
        Intrinsics.checkNotNullParameter(node, "node");
        node.setScrollerState(this.scrollState);
        node.setReversed(this.isReversed);
        node.setVertical(this.isVertical);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return (((this.scrollState.hashCode() * 31) + Boolean.hashCode(this.isReversed)) * 31) + Boolean.hashCode(this.isVertical);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object other) {
        if (!(other instanceof ScrollingLayoutElement)) {
            return false;
        }
        ScrollingLayoutElement scrollingLayoutElement = (ScrollingLayoutElement) other;
        return Intrinsics.areEqual(this.scrollState, scrollingLayoutElement.scrollState) && this.isReversed == scrollingLayoutElement.isReversed && this.isVertical == scrollingLayoutElement.isVertical;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        Intrinsics.checkNotNullParameter(inspectorInfo, "<this>");
        inspectorInfo.setName("layoutInScroll");
        inspectorInfo.getProperties().set(SentryThread.JsonKeys.STATE, this.scrollState);
        inspectorInfo.getProperties().set("isReversed", Boolean.valueOf(this.isReversed));
        inspectorInfo.getProperties().set("isVertical", Boolean.valueOf(this.isVertical));
    }
}
