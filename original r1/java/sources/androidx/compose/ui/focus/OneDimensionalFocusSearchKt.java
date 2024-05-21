package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: OneDimensionalFocusSearch.kt */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000b\u001a \u0010\u0006\u001a\u00020\u0007*\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002\u001aE\u0010\u000b\u001a\u00020\f\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u000e2\u0006\u0010\u000f\u001a\u0002H\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\f0\nH\u0082\b\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0002\u0010\u0011\u001aE\u0010\u0012\u001a\u00020\f\"\u0004\b\u0000\u0010\r*\b\u0012\u0004\u0012\u0002H\r0\u000e2\u0006\u0010\u000f\u001a\u0002H\r2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u0002H\r\u0012\u0004\u0012\u00020\f0\nH\u0082\b\u0082\u0002\b\n\u0006\b\u0001\u0012\u0002\u0010\u0002¢\u0006\u0002\u0010\u0011\u001a \u0010\u0013\u001a\u00020\u0007*\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002\u001a=\u0010\u0014\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0018\u0010\u0019\u001a\f\u0010\u001a\u001a\u00020\u0007*\u00020\bH\u0002\u001a5\u0010\u001b\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001c\u0010\u001d\u001a \u0010\u001e\u001a\u00020\u0007*\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002\u001a \u0010\u001f\u001a\u00020\u0007*\u00020\b2\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002\u001a=\u0010 \u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0016\u001a\u00020\u00172\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00070\nH\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b!\u0010\u0019\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\""}, d2 = {"InvalidFocusDirection", "", "getInvalidFocusDirection$annotations", "()V", "NoActiveChild", "getNoActiveChild$annotations", "backwardFocusSearch", "", "Landroidx/compose/ui/focus/FocusTargetNode;", "onFound", "Lkotlin/Function1;", "forEachItemAfter", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/runtime/collection/MutableVector;", "item", "action", "(Landroidx/compose/runtime/collection/MutableVector;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V", "forEachItemBefore", "forwardFocusSearch", "generateAndSearchChildren", "focusedItem", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "generateAndSearchChildren-4C6V_qg", "(Landroidx/compose/ui/focus/FocusTargetNode;Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "isRoot", "oneDimensionalFocusSearch", "oneDimensionalFocusSearch--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Z", "pickChildForBackwardSearch", "pickChildForForwardSearch", "searchChildren", "searchChildren-4C6V_qg", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OneDimensionalFocusSearchKt {
    private static final String InvalidFocusDirection = "This function should only be used for 1-D focus search";
    private static final String NoActiveChild = "ActiveParent must have a focusedChild";

    /* compiled from: OneDimensionalFocusSearch.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FocusStateImpl.values().length];
            try {
                iArr[FocusStateImpl.ActiveParent.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FocusStateImpl.Active.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static /* synthetic */ void getInvalidFocusDirection$annotations() {
    }

    private static /* synthetic */ void getNoActiveChild$annotations() {
    }

    /* renamed from: oneDimensionalFocusSearch--OM-vw8, reason: not valid java name */
    public static final boolean m2356oneDimensionalFocusSearchOMvw8(FocusTargetNode oneDimensionalFocusSearch, int i, Function1<? super FocusTargetNode, Boolean> onFound) {
        Intrinsics.checkNotNullParameter(oneDimensionalFocusSearch, "$this$oneDimensionalFocusSearch");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s())) {
            return forwardFocusSearch(oneDimensionalFocusSearch, onFound);
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s())) {
            return backwardFocusSearch(oneDimensionalFocusSearch, onFound);
        }
        throw new IllegalStateException(InvalidFocusDirection.toString());
    }

    private static final boolean forwardFocusSearch(FocusTargetNode focusTargetNode, Function1<? super FocusTargetNode, Boolean> function1) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i == 1) {
            FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
            if (activeChild != null) {
                return forwardFocusSearch(activeChild, function1) || m2355generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.INSTANCE.m2332getNextdhqQ8s(), function1);
            }
            throw new IllegalStateException(NoActiveChild.toString());
        }
        if (i == 2 || i == 3) {
            return pickChildForForwardSearch(focusTargetNode, function1);
        }
        if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
        if (focusTargetNode.fetchFocusProperties$ui_release().getCanFocus()) {
            return function1.invoke(focusTargetNode).booleanValue();
        }
        return pickChildForForwardSearch(focusTargetNode, function1);
    }

    private static final boolean backwardFocusSearch(FocusTargetNode focusTargetNode, Function1<? super FocusTargetNode, Boolean> function1) {
        int i = WhenMappings.$EnumSwitchMapping$0[focusTargetNode.getFocusState().ordinal()];
        if (i == 1) {
            FocusTargetNode activeChild = FocusTraversalKt.getActiveChild(focusTargetNode);
            if (activeChild == null) {
                throw new IllegalStateException(NoActiveChild.toString());
            }
            int i2 = WhenMappings.$EnumSwitchMapping$0[activeChild.getFocusState().ordinal()];
            if (i2 != 1) {
                if (i2 == 2 || i2 == 3) {
                    return m2355generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s(), function1);
                }
                if (i2 == 4) {
                    throw new IllegalStateException(NoActiveChild.toString());
                }
                throw new NoWhenBranchMatchedException();
            }
            if (!backwardFocusSearch(activeChild, function1) && !m2355generateAndSearchChildren4C6V_qg(focusTargetNode, activeChild, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s(), function1) && (!activeChild.fetchFocusProperties$ui_release().getCanFocus() || !function1.invoke(activeChild).booleanValue())) {
                return false;
            }
        } else {
            if (i == 2 || i == 3) {
                return pickChildForBackwardSearch(focusTargetNode, function1);
            }
            if (i != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (!pickChildForBackwardSearch(focusTargetNode, function1) && (!focusTargetNode.fetchFocusProperties$ui_release().getCanFocus() || !function1.invoke(focusTargetNode).booleanValue())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: generateAndSearchChildren-4C6V_qg, reason: not valid java name */
    private static final boolean m2355generateAndSearchChildren4C6V_qg(final FocusTargetNode focusTargetNode, final FocusTargetNode focusTargetNode2, final int i, final Function1<? super FocusTargetNode, Boolean> function1) {
        if (m2357searchChildren4C6V_qg(focusTargetNode, focusTargetNode2, i, function1)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.m2315searchBeyondBoundsOMvw8(focusTargetNode, i, new Function1<BeyondBoundsLayout.BeyondBoundsScope, Boolean>() { // from class: androidx.compose.ui.focus.OneDimensionalFocusSearchKt$generateAndSearchChildren$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(BeyondBoundsLayout.BeyondBoundsScope searchBeyondBounds) {
                boolean m2357searchChildren4C6V_qg;
                Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
                m2357searchChildren4C6V_qg = OneDimensionalFocusSearchKt.m2357searchChildren4C6V_qg(FocusTargetNode.this, focusTargetNode2, i, function1);
                Boolean valueOf = Boolean.valueOf(m2357searchChildren4C6V_qg);
                if (valueOf.booleanValue() || !searchBeyondBounds.getHasMoreContent()) {
                    return valueOf;
                }
                return null;
            }
        });
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: searchChildren-4C6V_qg, reason: not valid java name */
    public static final boolean m2357searchChildren4C6V_qg(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, int i, Function1<? super FocusTargetNode, Boolean> function1) {
        if (focusTargetNode.getFocusState() != FocusStateImpl.ActiveParent) {
            throw new IllegalStateException("This function should only be used within a parent that has focus.".toString());
        }
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        FocusTargetNode focusTargetNode3 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode3.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = focusTargetNode3.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode3.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) node);
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector3);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s())) {
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s())) {
                IntRange intRange = new IntRange(0, mutableVector.getSize() - 1);
                int first = intRange.getFirst();
                int last = intRange.getLast();
                if (first <= last) {
                    boolean z = false;
                    while (true) {
                        if (z) {
                            FocusTargetNode focusTargetNode4 = (FocusTargetNode) mutableVector.getContent()[last];
                            if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode4) && backwardFocusSearch(focusTargetNode4, function1)) {
                                return true;
                            }
                        }
                        if (Intrinsics.areEqual(mutableVector.getContent()[last], focusTargetNode2)) {
                            z = true;
                        }
                        if (last == first) {
                            break;
                        }
                        last--;
                    }
                }
            } else {
                throw new IllegalStateException(InvalidFocusDirection.toString());
            }
        } else {
            IntRange intRange2 = new IntRange(0, mutableVector.getSize() - 1);
            int first2 = intRange2.getFirst();
            int last2 = intRange2.getLast();
            if (first2 <= last2) {
                boolean z2 = false;
                while (true) {
                    if (z2) {
                        FocusTargetNode focusTargetNode5 = (FocusTargetNode) mutableVector.getContent()[first2];
                        if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode5) && forwardFocusSearch(focusTargetNode5, function1)) {
                            return true;
                        }
                    }
                    if (Intrinsics.areEqual(mutableVector.getContent()[first2], focusTargetNode2)) {
                        z2 = true;
                    }
                    if (first2 == last2) {
                        break;
                    }
                    first2++;
                }
            }
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s()) || !focusTargetNode.fetchFocusProperties$ui_release().getCanFocus() || isRoot(focusTargetNode)) {
            return false;
        }
        return function1.invoke(focusTargetNode).booleanValue();
    }

    private static final boolean isRoot(FocusTargetNode focusTargetNode) {
        Modifier.Node node;
        NodeChain nodes;
        FocusTargetNode focusTargetNode2 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode2.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = focusTargetNode2.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode2);
        loop0: while (true) {
            node = null;
            if (requireLayoutNode == null) {
                break;
            }
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                        Modifier.Node node2 = parent;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            if (node2 instanceof FocusTargetNode) {
                                node = node2;
                                break loop0;
                            }
                            if ((node2.getKindSet() & m4091constructorimpl) != 0 && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node2).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node2 = delegate;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node2 != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(node2);
                                                }
                                                node2 = null;
                                            }
                                            if (mutableVector != null) {
                                                mutableVector.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node2 = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return node == null;
    }

    private static final boolean pickChildForForwardSearch(FocusTargetNode focusTargetNode, Function1<? super FocusTargetNode, Boolean> function1) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        FocusTargetNode focusTargetNode2 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode2.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = focusTargetNode2.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode2.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) node);
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector3);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        int size = mutableVector.getSize();
        if (size <= 0) {
            return false;
        }
        Object[] content = mutableVector.getContent();
        int i2 = 0;
        do {
            FocusTargetNode focusTargetNode3 = (FocusTargetNode) content[i2];
            if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode3) && forwardFocusSearch(focusTargetNode3, function1)) {
                return true;
            }
            i2++;
        } while (i2 < size);
        return false;
    }

    private static final boolean pickChildForBackwardSearch(FocusTargetNode focusTargetNode, Function1<? super FocusTargetNode, Boolean> function1) {
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16], 0);
        FocusTargetNode focusTargetNode2 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode2.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = focusTargetNode2.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, focusTargetNode2.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector2, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                mutableVector.add((FocusTargetNode) node);
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector3);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
        mutableVector.sortWith(FocusableChildrenComparator.INSTANCE);
        int size = mutableVector.getSize();
        if (size > 0) {
            int i2 = size - 1;
            Object[] content = mutableVector.getContent();
            do {
                FocusTargetNode focusTargetNode3 = (FocusTargetNode) content[i2];
                if (FocusTraversalKt.isEligibleForFocusSearch(focusTargetNode3) && backwardFocusSearch(focusTargetNode3, function1)) {
                    return true;
                }
                i2--;
            } while (i2 >= 0);
        }
        return false;
    }

    private static final <T> void forEachItemAfter(MutableVector<T> mutableVector, T t, Function1<? super T, Unit> function1) {
        boolean z = false;
        IntRange intRange = new IntRange(0, mutableVector.getSize() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first > last) {
            return;
        }
        while (true) {
            if (z) {
                function1.invoke(mutableVector.getContent()[first]);
            }
            if (Intrinsics.areEqual(mutableVector.getContent()[first], t)) {
                z = true;
            }
            if (first == last) {
                return;
            } else {
                first++;
            }
        }
    }

    private static final <T> void forEachItemBefore(MutableVector<T> mutableVector, T t, Function1<? super T, Unit> function1) {
        boolean z = false;
        IntRange intRange = new IntRange(0, mutableVector.getSize() - 1);
        int first = intRange.getFirst();
        int last = intRange.getLast();
        if (first > last) {
            return;
        }
        while (true) {
            if (z) {
                function1.invoke(mutableVector.getContent()[last]);
            }
            if (Intrinsics.areEqual(mutableVector.getContent()[last], t)) {
                z = true;
            }
            if (last == first) {
                return;
            } else {
                last--;
            }
        }
    }
}
