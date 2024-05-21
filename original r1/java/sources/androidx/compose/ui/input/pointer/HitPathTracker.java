package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HitPathTracker.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J)\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u0013J\u0006\u0010\u0017\u001a\u00020\nJ\u0006\u0010\u0018\u001a\u00020\nR\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Landroidx/compose/ui/input/pointer/HitPathTracker;", "", "rootCoordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "root", "Landroidx/compose/ui/input/pointer/NodeParent;", "getRoot$ui_release", "()Landroidx/compose/ui/input/pointer/NodeParent;", "addHitPath", "", "pointerId", "Landroidx/compose/ui/input/pointer/PointerId;", "pointerInputNodes", "", "Landroidx/compose/ui/Modifier$Node;", "addHitPath-KNwqfcY", "(JLjava/util/List;)V", "dispatchChanges", "", "internalPointerEvent", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "isInBounds", "processCancel", "removeDetachedPointerInputFilters", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class HitPathTracker {
    private final NodeParent root;
    private final LayoutCoordinates rootCoordinates;

    /* renamed from: getRoot$ui_release, reason: from getter */
    public final NodeParent getRoot() {
        return this.root;
    }

    public HitPathTracker(LayoutCoordinates rootCoordinates) {
        Intrinsics.checkNotNullParameter(rootCoordinates, "rootCoordinates");
        this.rootCoordinates = rootCoordinates;
        this.root = new NodeParent();
    }

    /* renamed from: addHitPath-KNwqfcY, reason: not valid java name */
    public final void m3687addHitPathKNwqfcY(long pointerId, List<? extends Modifier.Node> pointerInputNodes) {
        Node node;
        Intrinsics.checkNotNullParameter(pointerInputNodes, "pointerInputNodes");
        NodeParent nodeParent = this.root;
        int size = pointerInputNodes.size();
        boolean z = true;
        for (int i = 0; i < size; i++) {
            Modifier.Node node2 = pointerInputNodes.get(i);
            if (z) {
                MutableVector<Node> children = nodeParent.getChildren();
                int size2 = children.getSize();
                if (size2 > 0) {
                    Node[] content = children.getContent();
                    int i2 = 0;
                    do {
                        node = content[i2];
                        if (Intrinsics.areEqual(node.getModifierNode(), node2)) {
                            break;
                        } else {
                            i2++;
                        }
                    } while (i2 < size2);
                }
                node = null;
                Node node3 = node;
                if (node3 != null) {
                    node3.markIsIn();
                    if (!node3.getPointerIds().contains(PointerId.m3738boximpl(pointerId))) {
                        node3.getPointerIds().add(PointerId.m3738boximpl(pointerId));
                    }
                    nodeParent = node3;
                } else {
                    z = false;
                }
            }
            Node node4 = new Node(node2);
            node4.getPointerIds().add(PointerId.m3738boximpl(pointerId));
            nodeParent.getChildren().add(node4);
            nodeParent = node4;
        }
    }

    public static /* synthetic */ boolean dispatchChanges$default(HitPathTracker hitPathTracker, InternalPointerEvent internalPointerEvent, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return hitPathTracker.dispatchChanges(internalPointerEvent, z);
    }

    public final boolean dispatchChanges(InternalPointerEvent internalPointerEvent, boolean isInBounds) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        if (this.root.buildCache(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, isInBounds)) {
            return this.root.dispatchFinalEventPass(internalPointerEvent) || this.root.dispatchMainEventPass(internalPointerEvent.getChanges(), this.rootCoordinates, internalPointerEvent, isInBounds);
        }
        return false;
    }

    public final void processCancel() {
        this.root.dispatchCancel();
        this.root.clear();
    }

    public final void removeDetachedPointerInputFilters() {
        this.root.removeDetachedPointerInputFilters();
    }
}
