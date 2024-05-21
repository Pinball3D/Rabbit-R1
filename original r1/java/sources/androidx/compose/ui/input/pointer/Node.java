package androidx.compose.ui.input.pointer;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.PointerInputModifierNodeKt;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: HitPathTracker.kt */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J7\u0010\u0017\u001a\u00020\b2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\bH\u0016ø\u0001\u0000J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\b\u0010 \u001a\u00020\u001fH\u0002J\b\u0010!\u001a\u00020\u001fH\u0016J\u0010\u0010\"\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0017\u0010#\u001a\u00020\b2\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u001f0%H\u0082\bJ7\u0010&\u001a\u00020\b2\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00150\u00192\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\bH\u0016ø\u0001\u0000J\u001a\u0010'\u001a\u00020\b2\b\u0010(\u001a\u0004\u0018\u00010\r2\u0006\u0010)\u001a\u00020\rH\u0002J\u0006\u0010*\u001a\u00020\u001fJ\b\u0010+\u001a\u00020,H\u0016R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001d\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Landroidx/compose/ui/input/pointer/Node;", "Landroidx/compose/ui/input/pointer/NodeParent;", "modifierNode", "Landroidx/compose/ui/Modifier$Node;", "(Landroidx/compose/ui/Modifier$Node;)V", "coordinates", "Landroidx/compose/ui/layout/LayoutCoordinates;", "hasExited", "", "isIn", "getModifierNode", "()Landroidx/compose/ui/Modifier$Node;", "pointerEvent", "Landroidx/compose/ui/input/pointer/PointerEvent;", "pointerIds", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/input/pointer/PointerId;", "getPointerIds", "()Landroidx/compose/runtime/collection/MutableVector;", "relevantChanges", "", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "wasIn", "buildCache", "changes", "", "parentCoordinates", "internalPointerEvent", "Landroidx/compose/ui/input/pointer/InternalPointerEvent;", "isInBounds", "cleanUpHits", "", "clearCache", "dispatchCancel", "dispatchFinalEventPass", "dispatchIfNeeded", "block", "Lkotlin/Function0;", "dispatchMainEventPass", "hasPositionChanged", "oldEvent", "newEvent", "markIsIn", "toString", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Node extends NodeParent {
    private LayoutCoordinates coordinates;
    private boolean hasExited;
    private boolean isIn;
    private final Modifier.Node modifierNode;
    private PointerEvent pointerEvent;
    private final MutableVector<PointerId> pointerIds;
    private final Map<PointerId, PointerInputChange> relevantChanges;
    private boolean wasIn;

    public final Modifier.Node getModifierNode() {
        return this.modifierNode;
    }

    public final MutableVector<PointerId> getPointerIds() {
        return this.pointerIds;
    }

    public final void markIsIn() {
        this.isIn = true;
    }

    public Node(Modifier.Node modifierNode) {
        Intrinsics.checkNotNullParameter(modifierNode, "modifierNode");
        this.modifierNode = modifierNode;
        this.pointerIds = new MutableVector<>(new PointerId[16], 0);
        this.relevantChanges = new LinkedHashMap();
        this.isIn = true;
        this.hasExited = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v20 */
    /* JADX WARN: Type inference failed for: r5v21, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v22, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v23 */
    /* JADX WARN: Type inference failed for: r5v24 */
    /* JADX WARN: Type inference failed for: r5v25 */
    /* JADX WARN: Type inference failed for: r5v26 */
    /* JADX WARN: Type inference failed for: r5v27 */
    /* JADX WARN: Type inference failed for: r5v28 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean buildCache(Map<PointerId, PointerInputChange> changes, LayoutCoordinates parentCoordinates, InternalPointerEvent internalPointerEvent, boolean isInBounds) {
        int i;
        PointerInputChange pointerInputChange;
        boolean z;
        boolean z2;
        int m3713getExit7fucELk;
        PointerInputChange m3754copyOHpmEuE;
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(parentCoordinates, "parentCoordinates");
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        boolean buildCache = super.buildCache(changes, parentCoordinates, internalPointerEvent, isInBounds);
        int i2 = 1;
        if (!this.modifierNode.getIsAttached()) {
            return true;
        }
        DelegatingNode delegatingNode = this.modifierNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(16);
        MutableVector mutableVector = null;
        while (true) {
            i = 0;
            if (delegatingNode == 0) {
                break;
            }
            if (delegatingNode instanceof PointerInputModifierNode) {
                this.coordinates = PointerInputModifierNodeKt.getLayoutCoordinates((PointerInputModifierNode) delegatingNode);
            } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                Modifier.Node delegate = delegatingNode.getDelegate();
                int i3 = 0;
                delegatingNode = delegatingNode;
                while (delegate != null) {
                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                        i3++;
                        if (i3 == 1) {
                            delegatingNode = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (delegatingNode != 0) {
                                if (mutableVector != null) {
                                    mutableVector.add(delegatingNode);
                                }
                                delegatingNode = 0;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(delegate);
                            }
                        }
                    }
                    delegate = delegate.getChild();
                    delegatingNode = delegatingNode;
                }
                if (i3 == 1) {
                }
            }
            delegatingNode = DelegatableNodeKt.pop(mutableVector);
        }
        for (Map.Entry<PointerId, PointerInputChange> entry : changes.entrySet()) {
            long m3744unboximpl = entry.getKey().m3744unboximpl();
            PointerInputChange value = entry.getValue();
            int size = this.pointerIds.getSize() - i2;
            if (size >= 0) {
                int i4 = i;
                while (true) {
                    if (this.pointerIds.getContent()[i4].m3744unboximpl() == m3744unboximpl) {
                        ArrayList arrayList = new ArrayList(value.getHistorical().size());
                        List<HistoricalChange> historical = value.getHistorical();
                        int size2 = historical.size();
                        int i5 = i;
                        while (i5 < size2) {
                            HistoricalChange historicalChange = historical.get(i5);
                            long uptimeMillis = historicalChange.getUptimeMillis();
                            LayoutCoordinates layoutCoordinates = this.coordinates;
                            Intrinsics.checkNotNull(layoutCoordinates);
                            ArrayList arrayList2 = arrayList;
                            arrayList2.add(new HistoricalChange(uptimeMillis, layoutCoordinates.mo3884localPositionOfR5De75A(parentCoordinates, historicalChange.getPosition()), null));
                            i5++;
                            arrayList = arrayList2;
                        }
                        ArrayList arrayList3 = arrayList;
                        Map<PointerId, PointerInputChange> map = this.relevantChanges;
                        PointerId m3738boximpl = PointerId.m3738boximpl(m3744unboximpl);
                        LayoutCoordinates layoutCoordinates2 = this.coordinates;
                        Intrinsics.checkNotNull(layoutCoordinates2);
                        long mo3884localPositionOfR5De75A = layoutCoordinates2.mo3884localPositionOfR5De75A(parentCoordinates, value.getPreviousPosition());
                        LayoutCoordinates layoutCoordinates3 = this.coordinates;
                        Intrinsics.checkNotNull(layoutCoordinates3);
                        m3754copyOHpmEuE = value.m3754copyOHpmEuE((r34 & 1) != 0 ? value.id : 0L, (r34 & 2) != 0 ? value.uptimeMillis : 0L, (r34 & 4) != 0 ? value.position : layoutCoordinates3.mo3884localPositionOfR5De75A(parentCoordinates, value.getPosition()), (r34 & 8) != 0 ? value.pressed : false, (r34 & 16) != 0 ? value.previousUptimeMillis : 0L, (r34 & 32) != 0 ? value.previousPosition : mo3884localPositionOfR5De75A, (r34 & 64) != 0 ? value.previousPressed : false, (r34 & 128) != 0 ? value.type : 0, arrayList3, (r34 & 512) != 0 ? value.scrollDelta : 0L);
                        map.put(m3738boximpl, m3754copyOHpmEuE);
                    } else if (i4 != size) {
                        i4++;
                        i = 0;
                    }
                }
            }
            i2 = 1;
            i = 0;
        }
        if (this.relevantChanges.isEmpty()) {
            this.pointerIds.clear();
            getChildren().clear();
            return true;
        }
        for (int size3 = this.pointerIds.getSize() - 1; -1 < size3; size3--) {
            if (!changes.containsKey(PointerId.m3738boximpl(this.pointerIds.getContent()[size3].m3744unboximpl()))) {
                this.pointerIds.removeAt(size3);
            }
        }
        PointerEvent pointerEvent = new PointerEvent(CollectionsKt.toList(this.relevantChanges.values()), internalPointerEvent);
        List<PointerInputChange> changes2 = pointerEvent.getChanges();
        int size4 = changes2.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size4) {
                pointerInputChange = null;
                break;
            }
            PointerInputChange pointerInputChange2 = changes2.get(i6);
            if (internalPointerEvent.m3688issuesEnterExitEvent0FcD4WY(pointerInputChange2.getId())) {
                pointerInputChange = pointerInputChange2;
                break;
            }
            i6++;
        }
        PointerInputChange pointerInputChange3 = pointerInputChange;
        if (pointerInputChange3 != null) {
            if (isInBounds) {
                z = false;
                if (!this.isIn && (pointerInputChange3.getPressed() || pointerInputChange3.getPreviousPressed())) {
                    Intrinsics.checkNotNull(this.coordinates);
                    z2 = true;
                    this.isIn = !PointerEventKt.m3703isOutOfBoundsO0kMr_c(pointerInputChange3, r3.mo3883getSizeYbymL2g());
                    if (this.isIn == this.wasIn && (PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3714getMove7fucELk()) || PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3712getEnter7fucELk()) || PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3713getExit7fucELk()))) {
                        if (this.isIn) {
                            m3713getExit7fucELk = PointerEventType.INSTANCE.m3712getEnter7fucELk();
                        } else {
                            m3713getExit7fucELk = PointerEventType.INSTANCE.m3713getExit7fucELk();
                        }
                        pointerEvent.m3702setTypeEhbLWgg$ui_release(m3713getExit7fucELk);
                    } else if (!PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3712getEnter7fucELk()) && this.wasIn && !this.hasExited) {
                        pointerEvent.m3702setTypeEhbLWgg$ui_release(PointerEventType.INSTANCE.m3714getMove7fucELk());
                    } else if (PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3713getExit7fucELk()) && this.isIn && pointerInputChange3.getPressed()) {
                        pointerEvent.m3702setTypeEhbLWgg$ui_release(PointerEventType.INSTANCE.m3714getMove7fucELk());
                    }
                }
            } else {
                z = false;
                this.isIn = false;
            }
            z2 = true;
            if (this.isIn == this.wasIn) {
            }
            if (!PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3712getEnter7fucELk())) {
            }
            if (PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3713getExit7fucELk())) {
                pointerEvent.m3702setTypeEhbLWgg$ui_release(PointerEventType.INSTANCE.m3714getMove7fucELk());
            }
        } else {
            z = false;
            z2 = true;
        }
        boolean z3 = (buildCache || !PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3714getMove7fucELk()) || hasPositionChanged(this.pointerEvent, pointerEvent)) ? z2 : z;
        this.pointerEvent = pointerEvent;
        return z3;
    }

    private final boolean hasPositionChanged(PointerEvent oldEvent, PointerEvent newEvent) {
        if (oldEvent == null || oldEvent.getChanges().size() != newEvent.getChanges().size()) {
            return true;
        }
        int size = newEvent.getChanges().size();
        for (int i = 0; i < size; i++) {
            if (!Offset.m2397equalsimpl0(oldEvent.getChanges().get(i).getPosition(), newEvent.getChanges().get(i).getPosition())) {
                return true;
            }
        }
        return false;
    }

    private final void clearCache() {
        this.relevantChanges.clear();
        this.coordinates = null;
    }

    private final boolean dispatchIfNeeded(Function0<Unit> block) {
        if (this.relevantChanges.isEmpty() || !this.modifierNode.getIsAttached()) {
            return false;
        }
        block.invoke();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v10 */
    /* JADX WARN: Type inference failed for: r9v11 */
    /* JADX WARN: Type inference failed for: r9v12 */
    /* JADX WARN: Type inference failed for: r9v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Type inference failed for: r9v9 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void dispatchCancel() {
        MutableVector<Node> children = getChildren();
        int size = children.getSize();
        if (size > 0) {
            Node[] content = children.getContent();
            int i = 0;
            do {
                content[i].dispatchCancel();
                i++;
            } while (i < size);
        }
        DelegatingNode delegatingNode = this.modifierNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(16);
        MutableVector mutableVector = null;
        while (delegatingNode != 0) {
            if (delegatingNode instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) delegatingNode).onCancelPointerInput();
            } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                Modifier.Node delegate = delegatingNode.getDelegate();
                int i2 = 0;
                delegatingNode = delegatingNode;
                while (delegate != null) {
                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                        i2++;
                        if (i2 == 1) {
                            delegatingNode = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (delegatingNode != 0) {
                                if (mutableVector != null) {
                                    mutableVector.add(delegatingNode);
                                }
                                delegatingNode = 0;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(delegate);
                            }
                        }
                    }
                    delegate = delegate.getChild();
                    delegatingNode = delegatingNode;
                }
                if (i2 == 1) {
                }
            }
            delegatingNode = DelegatableNodeKt.pop(mutableVector);
        }
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public void cleanUpHits(InternalPointerEvent internalPointerEvent) {
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        super.cleanUpHits(internalPointerEvent);
        PointerEvent pointerEvent = this.pointerEvent;
        if (pointerEvent == null) {
            return;
        }
        this.wasIn = this.isIn;
        List<PointerInputChange> changes = pointerEvent.getChanges();
        int size = changes.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = changes.get(i);
            if (!pointerInputChange.getPressed() && (!internalPointerEvent.m3688issuesEnterExitEvent0FcD4WY(pointerInputChange.getId()) || !this.isIn)) {
                this.pointerIds.remove(PointerId.m3738boximpl(pointerInputChange.getId()));
            }
        }
        this.isIn = false;
        this.hasExited = PointerEventType.m3708equalsimpl0(pointerEvent.getType(), PointerEventType.INSTANCE.m3713getExit7fucELk());
    }

    public String toString() {
        return "Node(pointerInputFilter=" + this.modifierNode + ", children=" + getChildren() + ", pointerIds=" + this.pointerIds + ')';
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v18, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v25 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchMainEventPass(Map<PointerId, PointerInputChange> changes, LayoutCoordinates parentCoordinates, InternalPointerEvent internalPointerEvent, boolean isInBounds) {
        MutableVector<Node> children;
        int size;
        Intrinsics.checkNotNullParameter(changes, "changes");
        Intrinsics.checkNotNullParameter(parentCoordinates, "parentCoordinates");
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        if (this.relevantChanges.isEmpty() || !this.modifierNode.getIsAttached()) {
            return false;
        }
        PointerEvent pointerEvent = this.pointerEvent;
        Intrinsics.checkNotNull(pointerEvent);
        LayoutCoordinates layoutCoordinates = this.coordinates;
        Intrinsics.checkNotNull(layoutCoordinates);
        long mo3883getSizeYbymL2g = layoutCoordinates.mo3883getSizeYbymL2g();
        DelegatingNode delegatingNode = this.modifierNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(16);
        MutableVector mutableVector = null;
        while (delegatingNode != 0) {
            if (delegatingNode instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) delegatingNode).mo152onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Initial, mo3883getSizeYbymL2g);
            } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                Modifier.Node delegate = delegatingNode.getDelegate();
                int i = 0;
                delegatingNode = delegatingNode;
                while (delegate != null) {
                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                        i++;
                        if (i == 1) {
                            delegatingNode = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (delegatingNode != 0) {
                                if (mutableVector != null) {
                                    mutableVector.add(delegatingNode);
                                }
                                delegatingNode = 0;
                            }
                            if (mutableVector != null) {
                                mutableVector.add(delegate);
                            }
                        }
                    }
                    delegate = delegate.getChild();
                    delegatingNode = delegatingNode;
                }
                if (i == 1) {
                }
            }
            delegatingNode = DelegatableNodeKt.pop(mutableVector);
        }
        if (this.modifierNode.getIsAttached() && (size = (children = getChildren()).getSize()) > 0) {
            Node[] content = children.getContent();
            int i2 = 0;
            do {
                Node node = content[i2];
                Map<PointerId, PointerInputChange> map = this.relevantChanges;
                LayoutCoordinates layoutCoordinates2 = this.coordinates;
                Intrinsics.checkNotNull(layoutCoordinates2);
                node.dispatchMainEventPass(map, layoutCoordinates2, internalPointerEvent, isInBounds);
                i2++;
            } while (i2 < size);
        }
        if (this.modifierNode.getIsAttached()) {
            DelegatingNode delegatingNode2 = this.modifierNode;
            int m4091constructorimpl2 = NodeKind.m4091constructorimpl(16);
            MutableVector mutableVector2 = null;
            while (delegatingNode2 != 0) {
                if (delegatingNode2 instanceof PointerInputModifierNode) {
                    ((PointerInputModifierNode) delegatingNode2).mo152onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Main, mo3883getSizeYbymL2g);
                } else if ((delegatingNode2.getKindSet() & m4091constructorimpl2) != 0 && (delegatingNode2 instanceof DelegatingNode)) {
                    Modifier.Node delegate2 = delegatingNode2.getDelegate();
                    int i3 = 0;
                    delegatingNode2 = delegatingNode2;
                    while (delegate2 != null) {
                        if ((delegate2.getKindSet() & m4091constructorimpl2) != 0) {
                            i3++;
                            if (i3 == 1) {
                                delegatingNode2 = delegate2;
                            } else {
                                if (mutableVector2 == null) {
                                    mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (delegatingNode2 != 0) {
                                    if (mutableVector2 != null) {
                                        mutableVector2.add(delegatingNode2);
                                    }
                                    delegatingNode2 = 0;
                                }
                                if (mutableVector2 != null) {
                                    mutableVector2.add(delegate2);
                                }
                            }
                        }
                        delegate2 = delegate2.getChild();
                        delegatingNode2 = delegatingNode2;
                    }
                    if (i3 == 1) {
                    }
                }
                delegatingNode2 = DelegatableNodeKt.pop(mutableVector2);
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public boolean dispatchFinalEventPass(InternalPointerEvent internalPointerEvent) {
        MutableVector<Node> children;
        int size;
        Intrinsics.checkNotNullParameter(internalPointerEvent, "internalPointerEvent");
        boolean z = false;
        int i = 0;
        z = false;
        if (!this.relevantChanges.isEmpty() && this.modifierNode.getIsAttached()) {
            PointerEvent pointerEvent = this.pointerEvent;
            Intrinsics.checkNotNull(pointerEvent);
            LayoutCoordinates layoutCoordinates = this.coordinates;
            Intrinsics.checkNotNull(layoutCoordinates);
            long mo3883getSizeYbymL2g = layoutCoordinates.mo3883getSizeYbymL2g();
            DelegatingNode delegatingNode = this.modifierNode;
            int m4091constructorimpl = NodeKind.m4091constructorimpl(16);
            MutableVector mutableVector = null;
            while (delegatingNode != 0) {
                if (delegatingNode instanceof PointerInputModifierNode) {
                    ((PointerInputModifierNode) delegatingNode).mo152onPointerEventH0pRuoY(pointerEvent, PointerEventPass.Final, mo3883getSizeYbymL2g);
                } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                    Modifier.Node delegate = delegatingNode.getDelegate();
                    int i2 = 0;
                    delegatingNode = delegatingNode;
                    while (delegate != null) {
                        if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                            i2++;
                            if (i2 == 1) {
                                delegatingNode = delegate;
                            } else {
                                if (mutableVector == null) {
                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                }
                                if (delegatingNode != 0) {
                                    if (mutableVector != null) {
                                        mutableVector.add(delegatingNode);
                                    }
                                    delegatingNode = 0;
                                }
                                if (mutableVector != null) {
                                    mutableVector.add(delegate);
                                }
                            }
                        }
                        delegate = delegate.getChild();
                        delegatingNode = delegatingNode;
                    }
                    if (i2 == 1) {
                    }
                }
                delegatingNode = DelegatableNodeKt.pop(mutableVector);
            }
            if (this.modifierNode.getIsAttached() && (size = (children = getChildren()).getSize()) > 0) {
                Node[] content = children.getContent();
                do {
                    content[i].dispatchFinalEventPass(internalPointerEvent);
                    i++;
                } while (i < size);
            }
            z = true;
        }
        cleanUpHits(internalPointerEvent);
        clearCache();
        return z;
    }
}
