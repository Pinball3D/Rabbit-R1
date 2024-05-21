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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BeyondBoundsLayout.kt */
@Metadata(d1 = {"\u0000 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aD\u0010\u0000\u001a\u0004\u0018\u0001H\u0001\"\u0004\b\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0019\u0010\u0005\u001a\u0015\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0006¢\u0006\u0002\b\bH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\t\u0010\n\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006\u000b"}, d2 = {"searchBeyondBounds", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/focus/FocusTargetNode;", "direction", "Landroidx/compose/ui/focus/FocusDirection;", "block", "Lkotlin/Function1;", "Landroidx/compose/ui/layout/BeyondBoundsLayout$BeyondBoundsScope;", "Lkotlin/ExtensionFunctionType;", "searchBeyondBounds--OM-vw8", "(Landroidx/compose/ui/focus/FocusTargetNode;ILkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BeyondBoundsLayoutKt {
    /* renamed from: searchBeyondBounds--OM-vw8, reason: not valid java name */
    public static final <T> T m2315searchBeyondBoundsOMvw8(FocusTargetNode searchBeyondBounds, int i, Function1<? super BeyondBoundsLayout.BeyondBoundsScope, ? extends T> block) {
        Modifier.Node node;
        BeyondBoundsLayout beyondBoundsLayoutParent;
        int m3862getBeforehoxUOeE;
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(searchBeyondBounds, "$this$searchBeyondBounds");
        Intrinsics.checkNotNullParameter(block, "block");
        FocusTargetNode focusTargetNode = searchBeyondBounds;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusTargetNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = focusTargetNode.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(focusTargetNode);
        loop0: while (true) {
            if (requireLayoutNode == null) {
                node = null;
                break;
            }
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                        node = parent;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                break loop0;
                            }
                            if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i2++;
                                        if (i2 == 1) {
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
                                if (i2 == 1) {
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
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
        if ((focusTargetNode2 != null && Intrinsics.areEqual(focusTargetNode2.getBeyondBoundsLayoutParent(), searchBeyondBounds.getBeyondBoundsLayoutParent())) || (beyondBoundsLayoutParent = searchBeyondBounds.getBeyondBoundsLayoutParent()) == null) {
            return null;
        }
        if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2336getUpdhqQ8s())) {
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3860getAbovehoxUOeE();
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2327getDowndhqQ8s())) {
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3863getBelowhoxUOeE();
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2331getLeftdhqQ8s())) {
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3864getLefthoxUOeE();
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2335getRightdhqQ8s())) {
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3865getRighthoxUOeE();
        } else if (FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2332getNextdhqQ8s())) {
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3861getAfterhoxUOeE();
        } else {
            if (!FocusDirection.m2319equalsimpl0(i, FocusDirection.INSTANCE.m2334getPreviousdhqQ8s())) {
                throw new IllegalStateException("Unsupported direction for beyond bounds layout".toString());
            }
            m3862getBeforehoxUOeE = BeyondBoundsLayout.LayoutDirection.INSTANCE.m3862getBeforehoxUOeE();
        }
        return (T) beyondBoundsLayoutParent.mo644layouto7g1Pn8(m3862getBeforehoxUOeE, block);
    }
}
