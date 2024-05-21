package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FocusTraversal.kt */
@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a)\u0010\u0007\u001a\u00020\b*\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\r\u0010\u000e\u001a\u000e\u0010\u000f\u001a\u0004\u0018\u00010\u0001*\u00020\u0001H\u0000\u001a\u000e\u0010\u0010\u001a\u0004\u0018\u00010\u0001*\u00020\u0001H\u0002\u001a\f\u0010\u0011\u001a\u00020\u0012*\u00020\u0001H\u0000\u001a=\u0010\u0013\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00050\u0015H\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0005*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0006\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u0018"}, d2 = {"activeChild", "Landroidx/compose/ui/focus/FocusTargetNode;", "getActiveChild", "(Landroidx/compose/ui/focus/FocusTargetNode;)Landroidx/compose/ui/focus/FocusTargetNode;", "isEligibleForFocusSearch", "", "(Landroidx/compose/ui/focus/FocusTargetNode;)Z", "customFocusSearch", "Landroidx/compose/ui/focus/FocusRequester;", "focusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "customFocusSearch--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/focus/FocusRequester;", "findActiveFocusNode", "findNonDeactivatedParent", "focusRect", "Landroidx/compose/ui/geometry/Rect;", "focusSearch", "onFound", "Lkotlin/Function1;", "focusSearch-sMXa3k8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILandroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)Z", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FocusTraversalKt {

    /* compiled from: FocusTraversal.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[FocusStateImpl.values().length];
            try {
                iArr2[FocusStateImpl.Active.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[FocusStateImpl.ActiveParent.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[FocusStateImpl.Captured.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[FocusStateImpl.Inactive.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* renamed from: customFocusSearch--OM-vw8, reason: not valid java name */
    public static final FocusRequester m2352customFocusSearchOMvw8(FocusTargetNode customFocusSearch, int i, LayoutDirection layoutDirection) {
        FocusRequester end;
        Intrinsics.checkNotNullParameter(customFocusSearch, "$this$customFocusSearch");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        FocusProperties fetchFocusProperties$ui_release = customFocusSearch.fetchFocusProperties$ui_release();
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s())) {
            return fetchFocusProperties$ui_release.getNext();
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s())) {
            return fetchFocusProperties$ui_release.getPrevious();
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
            return fetchFocusProperties$ui_release.getUp();
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
            return fetchFocusProperties$ui_release.getDown();
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 == 1) {
                end = fetchFocusProperties$ui_release.getStart();
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                end = fetchFocusProperties$ui_release.getEnd();
            }
            if (end == FocusRequester.INSTANCE.getDefault()) {
                end = null;
            }
            if (end == null) {
                return fetchFocusProperties$ui_release.getLeft();
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            int i3 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i3 == 1) {
                end = fetchFocusProperties$ui_release.getEnd();
            } else {
                if (i3 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                end = fetchFocusProperties$ui_release.getStart();
            }
            if (end == FocusRequester.INSTANCE.getDefault()) {
                end = null;
            }
            if (end == null) {
                return fetchFocusProperties$ui_release.getRight();
            }
        } else {
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2328getEnterdhqQ8s())) {
                return fetchFocusProperties$ui_release.getEnter().invoke(FocusDirection.m2316boximpl(i));
            }
            if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2329getExitdhqQ8s())) {
                return fetchFocusProperties$ui_release.getExit().invoke(FocusDirection.m2316boximpl(i));
            }
            throw new IllegalStateException("invalid FocusDirection".toString());
        }
        return end;
    }

    /* renamed from: focusSearch-sMXa3k8, reason: not valid java name */
    public static final boolean m2353focusSearchsMXa3k8(FocusTargetNode focusSearch, int i, LayoutDirection layoutDirection, Function1<? super FocusTargetNode, Boolean> onFound) {
        int m2335getRightdhqQ8s;
        Boolean m2365twoDimensionalFocusSearchOMvw8;
        Intrinsics.checkNotNullParameter(focusSearch, "$this$focusSearch");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(onFound, "onFound");
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s())) {
            return OneDimensionalFocusSearchKt.m2356oneDimensionalFocusSearchOMvw8(focusSearch, i, onFound);
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s()) || FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
            Boolean m2365twoDimensionalFocusSearchOMvw82 = TwoDimensionalFocusSearchKt.m2365twoDimensionalFocusSearchOMvw8(focusSearch, i, onFound);
            if (m2365twoDimensionalFocusSearchOMvw82 != null) {
                return m2365twoDimensionalFocusSearchOMvw82.booleanValue();
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2328getEnterdhqQ8s())) {
            int i2 = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
            if (i2 == 1) {
                m2335getRightdhqQ8s = FocusDirection.INSTANCE.m2335getRightdhqQ8s();
            } else {
                if (i2 != 2) {
                    throw new NoWhenBranchMatchedException();
                }
                m2335getRightdhqQ8s = FocusDirection.INSTANCE.m2331getLeftdhqQ8s();
            }
            FocusTargetNode findActiveFocusNode = findActiveFocusNode(focusSearch);
            if (findActiveFocusNode != null && (m2365twoDimensionalFocusSearchOMvw8 = TwoDimensionalFocusSearchKt.m2365twoDimensionalFocusSearchOMvw8(findActiveFocusNode, m2335getRightdhqQ8s, onFound)) != null) {
                return m2365twoDimensionalFocusSearchOMvw8.booleanValue();
            }
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2329getExitdhqQ8s())) {
            FocusTargetNode findActiveFocusNode2 = findActiveFocusNode(focusSearch);
            FocusTargetNode findNonDeactivatedParent = findActiveFocusNode2 != null ? findNonDeactivatedParent(findActiveFocusNode2) : null;
            if (findNonDeactivatedParent != null && !Intrinsics.areEqual(findNonDeactivatedParent, focusSearch)) {
                return onFound.invoke(findNonDeactivatedParent).booleanValue();
            }
        } else {
            throw new IllegalStateException(("Focus search invoked with invalid FocusDirection " + ((Object) FocusDirection.m2321toStringimpl(i))).toString());
        }
        return false;
    }

    public static final Rect focusRect(FocusTargetNode focusTargetNode) {
        Intrinsics.checkNotNullParameter(focusTargetNode, "<this>");
        NodeCoordinator coordinator$ui_release = focusTargetNode.getCoordinator();
        if (coordinator$ui_release != null) {
            NodeCoordinator nodeCoordinator = coordinator$ui_release;
            Rect localBoundingBoxOf = LayoutCoordinatesKt.findRootCoordinates(nodeCoordinator).localBoundingBoxOf(nodeCoordinator, false);
            if (localBoundingBoxOf != null) {
                return localBoundingBoxOf;
            }
        }
        return Rect.INSTANCE.getZero();
    }

    public static final boolean isEligibleForFocusSearch(FocusTargetNode focusTargetNode) {
        LayoutNode layoutNode;
        NodeCoordinator coordinator$ui_release;
        LayoutNode layoutNode2;
        Intrinsics.checkNotNullParameter(focusTargetNode, "<this>");
        NodeCoordinator coordinator$ui_release2 = focusTargetNode.getCoordinator();
        return (coordinator$ui_release2 == null || (layoutNode = coordinator$ui_release2.getLayoutNode()) == null || !layoutNode.isPlaced() || (coordinator$ui_release = focusTargetNode.getCoordinator()) == null || (layoutNode2 = coordinator$ui_release.getLayoutNode()) == null || !layoutNode2.isAttached()) ? false : true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:0x0042, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.focus.FocusTargetNode getActiveChild(androidx.compose.ui.focus.FocusTargetNode r10) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            androidx.compose.ui.Modifier$Node r0 = r10.getNode()
            boolean r0 = r0.getIsAttached()
            r1 = 0
            if (r0 != 0) goto L11
            return r1
        L11:
            androidx.compose.ui.node.DelegatableNode r10 = (androidx.compose.ui.node.DelegatableNode) r10
            r0 = 1024(0x400, float:1.435E-42)
            int r0 = androidx.compose.ui.node.NodeKind.m4091constructorimpl(r0)
            androidx.compose.ui.Modifier$Node r2 = r10.getNode()
            boolean r2 = r2.getIsAttached()
            if (r2 == 0) goto Ld2
            androidx.compose.runtime.collection.MutableVector r2 = new androidx.compose.runtime.collection.MutableVector
            r3 = 16
            androidx.compose.ui.Modifier$Node[] r4 = new androidx.compose.ui.Modifier.Node[r3]
            r5 = 0
            r2.<init>(r4, r5)
            androidx.compose.ui.Modifier$Node r4 = r10.getNode()
            androidx.compose.ui.Modifier$Node r4 = r4.getChild()
            if (r4 != 0) goto L3f
            androidx.compose.ui.Modifier$Node r10 = r10.getNode()
            androidx.compose.ui.node.DelegatableNodeKt.access$addLayoutNodeChildren(r2, r10)
            goto L42
        L3f:
            r2.add(r4)
        L42:
            boolean r10 = r2.isNotEmpty()
            if (r10 == 0) goto Ld1
            int r10 = r2.getSize()
            r4 = 1
            int r10 = r10 - r4
            java.lang.Object r10 = r2.removeAt(r10)
            androidx.compose.ui.Modifier$Node r10 = (androidx.compose.ui.Modifier.Node) r10
            int r6 = r10.getAggregateChildKindSet()
            r6 = r6 & r0
            if (r6 != 0) goto L5f
            androidx.compose.ui.node.DelegatableNodeKt.access$addLayoutNodeChildren(r2, r10)
            goto L42
        L5f:
            if (r10 == 0) goto L42
            int r6 = r10.getKindSet()
            r6 = r6 & r0
            if (r6 == 0) goto Lcc
            r6 = r1
        L69:
            if (r10 == 0) goto L42
            boolean r7 = r10 instanceof androidx.compose.ui.focus.FocusTargetNode
            if (r7 == 0) goto L87
            androidx.compose.ui.focus.FocusTargetNode r10 = (androidx.compose.ui.focus.FocusTargetNode) r10
            androidx.compose.ui.focus.FocusStateImpl r7 = r10.getFocusState()
            int[] r8 = androidx.compose.ui.focus.FocusTraversalKt.WhenMappings.$EnumSwitchMapping$1
            int r7 = r7.ordinal()
            r7 = r8[r7]
            if (r7 == r4) goto L86
            r8 = 2
            if (r7 == r8) goto L86
            r8 = 3
            if (r7 == r8) goto L86
            goto Lc7
        L86:
            return r10
        L87:
            int r7 = r10.getKindSet()
            r7 = r7 & r0
            if (r7 == 0) goto Lc7
            boolean r7 = r10 instanceof androidx.compose.ui.node.DelegatingNode
            if (r7 == 0) goto Lc7
            r7 = r10
            androidx.compose.ui.node.DelegatingNode r7 = (androidx.compose.ui.node.DelegatingNode) r7
            androidx.compose.ui.Modifier$Node r7 = r7.getDelegate()
            r8 = r5
        L9a:
            if (r7 == 0) goto Lc4
            int r9 = r7.getKindSet()
            r9 = r9 & r0
            if (r9 == 0) goto Lbf
            int r8 = r8 + 1
            if (r8 != r4) goto La9
            r10 = r7
            goto Lbf
        La9:
            if (r6 != 0) goto Lb2
            androidx.compose.runtime.collection.MutableVector r6 = new androidx.compose.runtime.collection.MutableVector
            androidx.compose.ui.Modifier$Node[] r9 = new androidx.compose.ui.Modifier.Node[r3]
            r6.<init>(r9, r5)
        Lb2:
            if (r10 == 0) goto Lba
            if (r6 == 0) goto Lb9
            r6.add(r10)
        Lb9:
            r10 = r1
        Lba:
            if (r6 == 0) goto Lbf
            r6.add(r7)
        Lbf:
            androidx.compose.ui.Modifier$Node r7 = r7.getChild()
            goto L9a
        Lc4:
            if (r8 != r4) goto Lc7
            goto L69
        Lc7:
            androidx.compose.ui.Modifier$Node r10 = androidx.compose.ui.node.DelegatableNodeKt.access$pop(r6)
            goto L69
        Lcc:
            androidx.compose.ui.Modifier$Node r10 = r10.getChild()
            goto L5f
        Ld1:
            return r1
        Ld2:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r0 = "visitChildren called on an unattached node"
            java.lang.String r0 = r0.toString()
            r10.<init>(r0)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.getActiveChild(androidx.compose.ui.focus.FocusTargetNode):androidx.compose.ui.focus.FocusTargetNode");
    }

    /* JADX WARN: Code restructure failed: missing block: B:73:0x0056, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final androidx.compose.ui.focus.FocusTargetNode findActiveFocusNode(androidx.compose.ui.focus.FocusTargetNode r10) {
        /*
            Method dump skipped, instructions count: 228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.focus.FocusTraversalKt.findActiveFocusNode(androidx.compose.ui.focus.FocusTargetNode):androidx.compose.ui.focus.FocusTargetNode");
    }

    private static final FocusTargetNode findNonDeactivatedParent(FocusTargetNode focusTargetNode) {
        NodeChain nodes;
        FocusTargetNode focusTargetNode2 = focusTargetNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode2.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = focusTargetNode2.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode2);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                        Modifier.Node node = parent;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                FocusTargetNode focusTargetNode3 = (FocusTargetNode) node;
                                if (focusTargetNode3.fetchFocusProperties$ui_release().getCanFocus()) {
                                    return focusTargetNode3;
                                }
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(node);
                                                }
                                                node = null;
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
                            node = DelegatableNodeKt.pop(mutableVector);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return null;
    }
}
