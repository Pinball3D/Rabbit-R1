package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.exifinterface.media.ExifInterface;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelegatableNode.kt */
@Metadata(d1 = {"\u0000p\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0016\u001a\u001a\u0010\u0004\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0002\u001a8\u0010\t\u001a\n\u0012\u0004\u0012\u0002H\u000b\u0018\u00010\n\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\rH\u0080\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u000e\u0010\u000f\u001a\u000e\u0010\u0010\u001a\u0004\u0018\u00010\u0011*\u00020\u0007H\u0000\u001aG\u0010\u0012\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00072\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a%\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0019\u0010\u001a\u001a\n\u0010\u001b\u001a\u00020\u0005*\u00020\u0002\u001a6\u0010\u001c\u001a\u0004\u0018\u0001H\u000b\"\n\b\u0000\u0010\u000b\u0018\u0001*\u00020\u001d*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\rH\u0080\bø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u0016\u0010\u001c\u001a\u0004\u0018\u00010\u0007*\u00020\u00022\u0006\u0010 \u001a\u00020!H\u0000\u001a\u0016\u0010\"\u001a\u0004\u0018\u00010\u0007*\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006H\u0002\u001a%\u0010#\u001a\u00020$*\u00020\u00022\n\u0010\u0013\u001a\u0006\u0012\u0002\b\u00030\rH\u0000ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b%\u0010&\u001a\n\u0010'\u001a\u00020(*\u00020\u0002\u001a\n\u0010)\u001a\u00020**\u00020\u0002\u001a\f\u0010+\u001a\u00020,*\u00020\u0002H\u0000\u001a\f\u0010-\u001a\u00020.*\u00020\u0002H\u0000\u001aQ\u0010/\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\b\b\u0002\u00100\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b1\u00102\u001a6\u0010/\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\b\b\u0002\u00100\u001a\u00020\u00012\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002\u001aG\u00103\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b4\u00105\u001a,\u00103\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002\u001aG\u00106\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b7\u00105\u001a,\u00106\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002\u001aG\u00108\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b9\u00105\u001a,\u00108\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002\u001aS\u0010:\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\n\u0010;\u001a\u0006\u0012\u0002\b\u00030\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b<\u0010=\u001aG\u0010>\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b?\u00105\u001aG\u0010@\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bA\u00105\u001a,\u0010@\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u0015H\u0080\bø\u0001\u0002\u001aG\u0010B\u001a\u00020\u0005\"\u0006\b\u0000\u0010\u000b\u0018\u0001*\u00020\u00022\f\u0010\f\u001a\b\u0012\u0004\u0012\u0002H\u000b0\r2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u0002H\u000b\u0012\u0004\u0012\u00020\u00010\u0015H\u0080\bø\u0001\u0002ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bC\u00105\u001a,\u0010B\u001a\u00020\u0005*\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0012\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00010\u0015H\u0080\bø\u0001\u0002\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0000\u0010\u0003\u0082\u0002\u0012\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0005\b\u009920\u0001¨\u0006D"}, d2 = {"isDelegationRoot", "", "Landroidx/compose/ui/node/DelegatableNode;", "(Landroidx/compose/ui/node/DelegatableNode;)Z", "addLayoutNodeChildren", "", "Landroidx/compose/runtime/collection/MutableVector;", "Landroidx/compose/ui/Modifier$Node;", "node", "ancestors", "", ExifInterface.GPS_DIRECTION_TRUE, "type", "Landroidx/compose/ui/node/NodeKind;", "ancestors-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/util/List;", "asLayoutModifierNode", "Landroidx/compose/ui/node/LayoutModifierNode;", "dispatchForKind", "kind", "block", "Lkotlin/Function1;", "dispatchForKind-6rFNWt0", "(Landroidx/compose/ui/Modifier$Node;ILkotlin/jvm/functions/Function1;)V", "has", "has-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Z", "invalidateSubtree", "nearestAncestor", "", "nearestAncestor-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Ljava/lang/Object;", "mask", "", "pop", "requireCoordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "requireCoordinator-64DMado", "(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;", "requireDensity", "Landroidx/compose/ui/unit/Density;", "requireLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "requireLayoutNode", "Landroidx/compose/ui/node/LayoutNode;", "requireOwner", "Landroidx/compose/ui/node/Owner;", "visitAncestors", "includeSelf", "visitAncestors-Y-YKmho", "(Landroidx/compose/ui/node/DelegatableNode;IZLkotlin/jvm/functions/Function1;)V", "visitChildren", "visitChildren-6rFNWt0", "(Landroidx/compose/ui/node/DelegatableNode;ILkotlin/jvm/functions/Function1;)V", "visitLocalAncestors", "visitLocalAncestors-6rFNWt0", "visitLocalDescendants", "visitLocalDescendants-6rFNWt0", "visitSelfAndAncestors", "untilType", "visitSelfAndAncestors-5BbP62I", "(Landroidx/compose/ui/node/DelegatableNode;IILkotlin/jvm/functions/Function1;)V", "visitSelfAndChildren", "visitSelfAndChildren-6rFNWt0", "visitSubtree", "visitSubtree-6rFNWt0", "visitSubtreeIf", "visitSubtreeIf-6rFNWt0", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DelegatableNodeKt {
    public static final /* synthetic */ Modifier.Node access$pop(MutableVector mutableVector) {
        return pop(mutableVector);
    }

    public static final boolean isDelegationRoot(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        return delegatableNode.getNode() == delegatableNode;
    }

    public static /* synthetic */ void visitAncestors$default(DelegatableNode delegatableNode, int i, boolean z, Function1 block, int i2, Object obj) {
        NodeChain nodes;
        if ((i2 & 2) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node = z ? delegatableNode.getNode() : delegatableNode.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (node != null) {
                    if ((node.getKindSet() & i) != 0) {
                        block.invoke(node);
                    }
                    node = node.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
    }

    public static final void visitAncestors(DelegatableNode delegatableNode, int i, boolean z, Function1<? super Modifier.Node, Unit> block) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node = z ? delegatableNode.getNode() : delegatableNode.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (node != null) {
                    if ((node.getKindSet() & i) != 0) {
                        block.invoke(node);
                    }
                    node = node.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
    }

    public static final Modifier.Node nearestAncestor(DelegatableNode delegatableNode, int i) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("nearestAncestor called on an unattached node".toString());
        }
        Modifier.Node parent = delegatableNode.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & i) != 0) {
                        return parent;
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return null;
    }

    public static final void visitSubtree(DelegatableNode delegatableNode, int i, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitSubtree called on an unattached node".toString());
        }
        Modifier.Node child = delegatableNode.getNode().getChild();
        LayoutNode requireLayoutNode = requireLayoutNode(delegatableNode);
        NestedVectorStack nestedVectorStack = new NestedVectorStack();
        while (requireLayoutNode != null) {
            if (child == null) {
                child = requireLayoutNode.getNodes().getHead();
            }
            if ((child.getAggregateChildKindSet() & i) != 0) {
                while (child != null) {
                    if ((child.getKindSet() & i) != 0) {
                        block.invoke(child);
                    }
                    child = child.getChild();
                }
            }
            nestedVectorStack.push(requireLayoutNode.get_children$ui_release());
            child = null;
            requireLayoutNode = nestedVectorStack.isNotEmpty() ? (LayoutNode) nestedVectorStack.pop() : null;
        }
    }

    public static final void addLayoutNodeChildren(MutableVector<Modifier.Node> mutableVector, Modifier.Node node) {
        MutableVector<LayoutNode> mutableVector2 = requireLayoutNode(node).get_children$ui_release();
        int size = mutableVector2.getSize();
        if (size > 0) {
            int i = size - 1;
            LayoutNode[] content = mutableVector2.getContent();
            do {
                mutableVector.add(content[i].getNodes().getHead());
                i--;
            } while (i >= 0);
        }
    }

    public static final void visitChildren(DelegatableNode delegatableNode, int i, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = delegatableNode.getNode().getChild();
        if (child == null) {
            addLayoutNodeChildren(mutableVector, delegatableNode.getNode());
        } else {
            mutableVector.add(child);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet() & i) == 0) {
                addLayoutNodeChildren(mutableVector, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & i) != 0) {
                        block.invoke(node);
                        break;
                    }
                    node = node.getChild();
                }
            }
        }
    }

    public static final void visitSubtreeIf(DelegatableNode delegatableNode, int i, Function1<? super Modifier.Node, Boolean> block) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitSubtreeIf called on an unattached node".toString());
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = delegatableNode.getNode().getChild();
        if (child == null) {
            addLayoutNodeChildren(mutableVector, delegatableNode.getNode());
        } else {
            mutableVector.add(child);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet() & i) != 0) {
                for (Modifier.Node node2 = node; node2 != null; node2 = node2.getChild()) {
                    if ((node2.getKindSet() & i) == 0 || block.invoke(node2).booleanValue()) {
                    }
                }
            }
            addLayoutNodeChildren(mutableVector, node);
        }
    }

    public static final void visitLocalDescendants(DelegatableNode delegatableNode, int i, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitLocalDescendants called on an unattached node".toString());
        }
        Modifier.Node node = delegatableNode.getNode();
        if ((node.getAggregateChildKindSet() & i) == 0) {
            return;
        }
        for (Modifier.Node child = node.getChild(); child != null; child = child.getChild()) {
            if ((child.getKindSet() & i) != 0) {
                block.invoke(child);
            }
        }
    }

    public static final void visitLocalAncestors(DelegatableNode delegatableNode, int i, Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!delegatableNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitLocalAncestors called on an unattached node".toString());
        }
        for (Modifier.Node parent = delegatableNode.getNode().getParent(); parent != null; parent = parent.getParent()) {
            if ((parent.getKindSet() & i) != 0) {
                block.invoke(parent);
            }
        }
    }

    /* renamed from: visitAncestors-Y-YKmho$default */
    public static /* synthetic */ void m3991visitAncestorsYYKmho$default(DelegatableNode visitAncestors, int i, boolean z, Function1 block, int i2, Object obj) {
        NodeChain nodes;
        if ((i2 & 2) != 0) {
            z = false;
        }
        Intrinsics.checkNotNullParameter(visitAncestors, "$this$visitAncestors");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitAncestors.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node = z ? visitAncestors.getNode() : visitAncestors.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(visitAncestors);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (node != null) {
                    if ((node.getKindSet() & i) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (!(node2 instanceof Object)) {
                                if ((node2.getKindSet() & i) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i3 = 0;
                                    for (Modifier.Node delegate = ((DelegatingNode) node2).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                        if ((delegate.getKindSet() & i) != 0) {
                                            i3++;
                                            if (i3 == 1) {
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
                                    if (i3 == 1) {
                                    }
                                }
                            } else {
                                block.invoke(node2);
                            }
                            node2 = pop(mutableVector);
                        }
                    }
                    node = node.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
    }

    /* renamed from: visitSelfAndAncestors-5BbP62I */
    public static final /* synthetic */ <T> void m3995visitSelfAndAncestors5BbP62I(DelegatableNode visitSelfAndAncestors, int i, int i2, Function1<? super T, Unit> block) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(visitSelfAndAncestors, "$this$visitSelfAndAncestors");
        Intrinsics.checkNotNullParameter(block, "block");
        Modifier.Node node = visitSelfAndAncestors.getNode();
        int i3 = i | i2;
        if (!visitSelfAndAncestors.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node2 = visitSelfAndAncestors.getNode();
        LayoutNode requireLayoutNode = requireLayoutNode(visitSelfAndAncestors);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i3) != 0) {
                while (node2 != null) {
                    if ((node2.getKindSet() & i3) != 0) {
                        if (node2 != node && (node2.getKindSet() & i2) != 0) {
                            return;
                        }
                        if ((node2.getKindSet() & i) != 0) {
                            Modifier.Node node3 = node2;
                            MutableVector mutableVector = null;
                            while (node3 != null) {
                                Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                                if (node3 instanceof Object) {
                                    block.invoke(node3);
                                } else if ((node3.getKindSet() & i) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i4 = 0;
                                    for (Modifier.Node delegate = ((DelegatingNode) node3).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                        if ((delegate.getKindSet() & i) != 0) {
                                            i4++;
                                            if (i4 == 1) {
                                                node3 = delegate;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                                }
                                                if (node3 != null) {
                                                    if (mutableVector != null) {
                                                        mutableVector.add(node3);
                                                    }
                                                    node3 = null;
                                                }
                                                if (mutableVector != null) {
                                                    mutableVector.add(delegate);
                                                }
                                            }
                                        }
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                node3 = pop(mutableVector);
                            }
                        }
                    }
                    node2 = node2.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node2 = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
    }

    /* renamed from: visitSelfAndChildren-6rFNWt0 */
    public static final /* synthetic */ <T> void m3996visitSelfAndChildren6rFNWt0(DelegatableNode visitSelfAndChildren, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(visitSelfAndChildren, "$this$visitSelfAndChildren");
        Intrinsics.checkNotNullParameter(block, "block");
        Modifier.Node node = visitSelfAndChildren.getNode();
        MutableVector mutableVector = null;
        while (node != null) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (node instanceof Object) {
                block.invoke(node);
            } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                int i2 = 0;
                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                    if ((delegate.getKindSet() & i) != 0) {
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
            node = pop(mutableVector);
        }
        if (!visitSelfAndChildren.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = visitSelfAndChildren.getNode().getChild();
        if (child == null) {
            addLayoutNodeChildren(mutableVector2, visitSelfAndChildren.getNode());
        } else {
            mutableVector2.add(child);
        }
        while (mutableVector2.isNotEmpty()) {
            Modifier.Node node2 = (Modifier.Node) mutableVector2.removeAt(mutableVector2.getSize() - 1);
            if ((node2.getAggregateChildKindSet() & i) == 0) {
                addLayoutNodeChildren(mutableVector2, node2);
            } else {
                while (true) {
                    if (node2 == null) {
                        break;
                    }
                    if ((node2.getKindSet() & i) != 0) {
                        MutableVector mutableVector3 = null;
                        while (node2 != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node2 instanceof Object) {
                                block.invoke(node2);
                            } else if ((node2.getKindSet() & i) != 0 && (node2 instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node delegate2 = ((DelegatingNode) node2).getDelegate(); delegate2 != null; delegate2 = delegate2.getChild()) {
                                    if ((delegate2.getKindSet() & i) != 0) {
                                        i3++;
                                        if (i3 == 1) {
                                            node2 = delegate2;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node2 != null) {
                                                if (mutableVector3 != null) {
                                                    mutableVector3.add(node2);
                                                }
                                                node2 = null;
                                            }
                                            if (mutableVector3 != null) {
                                                mutableVector3.add(delegate2);
                                            }
                                        }
                                    }
                                }
                                if (i3 == 1) {
                                }
                            }
                            node2 = pop(mutableVector3);
                        }
                    } else {
                        node2 = node2.getChild();
                    }
                }
            }
        }
    }

    /* renamed from: has-64DMado */
    public static final boolean m3987has64DMado(DelegatableNode has, int i) {
        Intrinsics.checkNotNullParameter(has, "$this$has");
        return (has.getNode().getAggregateChildKindSet() & i) != 0;
    }

    /* renamed from: requireCoordinator-64DMado */
    public static final NodeCoordinator m3989requireCoordinator64DMado(DelegatableNode requireCoordinator, int i) {
        Intrinsics.checkNotNullParameter(requireCoordinator, "$this$requireCoordinator");
        NodeCoordinator coordinator = requireCoordinator.getNode().getCoordinator();
        Intrinsics.checkNotNull(coordinator);
        if (coordinator.getTail() != requireCoordinator || !NodeKindKt.m4100getIncludeSelfInTraversalH91voCI(i)) {
            return coordinator;
        }
        NodeCoordinator wrapped = coordinator.getWrapped();
        Intrinsics.checkNotNull(wrapped);
        return wrapped;
    }

    public static final LayoutNode requireLayoutNode(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        NodeCoordinator coordinator = delegatableNode.getNode().getCoordinator();
        if (coordinator == null) {
            throw new IllegalStateException("Cannot obtain node coordinator. Is the Modifier.Node attached?".toString());
        }
        return coordinator.getLayoutNode();
    }

    public static final Owner requireOwner(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        Owner owner = requireLayoutNode(delegatableNode).getOwner();
        if (owner != null) {
            return owner;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    public static final Density requireDensity(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        return requireLayoutNode(delegatableNode).getDensity();
    }

    public static final LayoutDirection requireLayoutDirection(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        return requireLayoutNode(delegatableNode).getLayoutDirection();
    }

    public static final void invalidateSubtree(DelegatableNode delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "<this>");
        if (delegatableNode.getNode().getIsAttached()) {
            LayoutNode.invalidateSubtree$default(requireLayoutNode(delegatableNode), false, 1, null);
        }
    }

    /* renamed from: dispatchForKind-6rFNWt0 */
    public static final /* synthetic */ <T> void m3986dispatchForKind6rFNWt0(Modifier.Node dispatchForKind, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(dispatchForKind, "$this$dispatchForKind");
        Intrinsics.checkNotNullParameter(block, "block");
        MutableVector mutableVector = null;
        while (dispatchForKind != null) {
            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
            if (dispatchForKind instanceof Object) {
                block.invoke(dispatchForKind);
            } else if ((dispatchForKind.getKindSet() & i) != 0 && (dispatchForKind instanceof DelegatingNode)) {
                int i2 = 0;
                for (Modifier.Node delegate = ((DelegatingNode) dispatchForKind).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                    if ((delegate.getKindSet() & i) != 0) {
                        i2++;
                        if (i2 == 1) {
                            dispatchForKind = delegate;
                        } else {
                            if (mutableVector == null) {
                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                            }
                            if (dispatchForKind != null) {
                                if (mutableVector != null) {
                                    mutableVector.add(dispatchForKind);
                                }
                                dispatchForKind = null;
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
            dispatchForKind = pop(mutableVector);
        }
    }

    public static final Modifier.Node pop(MutableVector<Modifier.Node> mutableVector) {
        if (mutableVector == null || mutableVector.isEmpty()) {
            return null;
        }
        return mutableVector.removeAt(mutableVector.getSize() - 1);
    }

    /* renamed from: visitLocalDescendants-6rFNWt0 */
    public static final /* synthetic */ <T> void m3994visitLocalDescendants6rFNWt0(DelegatableNode visitLocalDescendants, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(visitLocalDescendants, "$this$visitLocalDescendants");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitLocalDescendants.getNode().getIsAttached()) {
            throw new IllegalStateException("visitLocalDescendants called on an unattached node".toString());
        }
        Modifier.Node node = visitLocalDescendants.getNode();
        if ((node.getAggregateChildKindSet() & i) != 0) {
            for (Modifier.Node child = node.getChild(); child != null; child = child.getChild()) {
                if ((child.getKindSet() & i) != 0) {
                    Modifier.Node node2 = child;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                        if (node2 instanceof Object) {
                            block.invoke(node2);
                        } else if ((node2.getKindSet() & i) != 0 && (node2 instanceof DelegatingNode)) {
                            int i2 = 0;
                            for (Modifier.Node delegate = ((DelegatingNode) node2).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                if ((delegate.getKindSet() & i) != 0) {
                                    i2++;
                                    if (i2 == 1) {
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
                            if (i2 == 1) {
                            }
                        }
                        node2 = pop(mutableVector);
                    }
                }
            }
        }
    }

    /* renamed from: visitLocalAncestors-6rFNWt0 */
    public static final /* synthetic */ <T> void m3993visitLocalAncestors6rFNWt0(DelegatableNode visitLocalAncestors, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(visitLocalAncestors, "$this$visitLocalAncestors");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitLocalAncestors.getNode().getIsAttached()) {
            throw new IllegalStateException("visitLocalAncestors called on an unattached node".toString());
        }
        for (Modifier.Node parent = visitLocalAncestors.getNode().getParent(); parent != null; parent = parent.getParent()) {
            if ((parent.getKindSet() & i) != 0) {
                Modifier.Node node = parent;
                MutableVector mutableVector = null;
                while (node != null) {
                    Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                    if (node instanceof Object) {
                        block.invoke(node);
                    } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                        int i2 = 0;
                        for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                            if ((delegate.getKindSet() & i) != 0) {
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
                    node = pop(mutableVector);
                }
            }
        }
    }

    /* renamed from: visitAncestors-Y-YKmho */
    public static final /* synthetic */ <T> void m3990visitAncestorsYYKmho(DelegatableNode visitAncestors, int i, boolean z, Function1<? super T, Unit> block) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(visitAncestors, "$this$visitAncestors");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitAncestors.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node node = z ? visitAncestors.getNode() : visitAncestors.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(visitAncestors);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (node != null) {
                    if ((node.getKindSet() & i) != 0) {
                        Modifier.Node node2 = node;
                        MutableVector mutableVector = null;
                        while (node2 != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node2 instanceof Object) {
                                block.invoke(node2);
                            } else if ((node2.getKindSet() & i) != 0 && (node2 instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node2).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
                                        i2++;
                                        if (i2 == 1) {
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
                                if (i2 == 1) {
                                }
                            }
                            node2 = pop(mutableVector);
                        }
                    }
                    node = node.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            node = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
    }

    /* renamed from: ancestors-64DMado */
    public static final /* synthetic */ <T> List<T> m3985ancestors64DMado(DelegatableNode ancestors, int i) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(ancestors, "$this$ancestors");
        if (!ancestors.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = ancestors.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(ancestors);
        ArrayList arrayList = null;
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & i) != 0) {
                        Modifier.Node node = parent;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node instanceof Object) {
                                if (arrayList == null) {
                                    arrayList = new ArrayList();
                                }
                                arrayList.add(node);
                            } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
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
                            node = pop(mutableVector);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return arrayList;
    }

    /* renamed from: nearestAncestor-64DMado */
    public static final /* synthetic */ <T> T m3988nearestAncestor64DMado(DelegatableNode nearestAncestor, int i) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(nearestAncestor, "$this$nearestAncestor");
        if (!nearestAncestor.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = nearestAncestor.getNode().getParent();
        LayoutNode requireLayoutNode = requireLayoutNode(nearestAncestor);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & i) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & i) != 0) {
                        Object obj = (T) parent;
                        MutableVector mutableVector = null;
                        while (obj != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (obj instanceof Object) {
                                return (T) obj;
                            }
                            Object obj2 = obj;
                            if ((((Modifier.Node) obj).getKindSet() & i) != 0 && (obj instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = obj.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            obj = (T) delegate;
                                        } else {
                                            if (mutableVector == null) {
                                                mutableVector = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            Object obj3 = obj;
                                            if (obj != null) {
                                                if (mutableVector != null) {
                                                    mutableVector.add(obj);
                                                }
                                                obj = (T) null;
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
                            obj = (T) pop(mutableVector);
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

    /* renamed from: visitSubtree-6rFNWt0 */
    public static final /* synthetic */ <T> void m3997visitSubtree6rFNWt0(DelegatableNode visitSubtree, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(visitSubtree, "$this$visitSubtree");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitSubtree.getNode().getIsAttached()) {
            throw new IllegalStateException("visitSubtree called on an unattached node".toString());
        }
        Modifier.Node child = visitSubtree.getNode().getChild();
        LayoutNode requireLayoutNode = requireLayoutNode(visitSubtree);
        NestedVectorStack nestedVectorStack = new NestedVectorStack();
        while (requireLayoutNode != null) {
            if (child == null) {
                child = requireLayoutNode.getNodes().getHead();
            }
            if ((child.getAggregateChildKindSet() & i) != 0) {
                while (child != null) {
                    if ((child.getKindSet() & i) != 0) {
                        Modifier.Node node = child;
                        MutableVector mutableVector = null;
                        while (node != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node instanceof Object) {
                                block.invoke(node);
                            } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
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
                            node = pop(mutableVector);
                        }
                    }
                    child = child.getChild();
                }
            }
            nestedVectorStack.push(requireLayoutNode.get_children$ui_release());
            requireLayoutNode = nestedVectorStack.isNotEmpty() ? (LayoutNode) nestedVectorStack.pop() : null;
            child = null;
        }
    }

    /* renamed from: visitChildren-6rFNWt0 */
    public static final /* synthetic */ <T> void m3992visitChildren6rFNWt0(DelegatableNode visitChildren, int i, Function1<? super T, Unit> block) {
        Intrinsics.checkNotNullParameter(visitChildren, "$this$visitChildren");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitChildren.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = visitChildren.getNode().getChild();
        if (child == null) {
            addLayoutNodeChildren(mutableVector, visitChildren.getNode());
        } else {
            mutableVector.add(child);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet() & i) == 0) {
                addLayoutNodeChildren(mutableVector, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & i) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node instanceof Object) {
                                block.invoke(node);
                            } else if ((node.getKindSet() & i) != 0 && (node instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node = delegate;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node != null) {
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(node);
                                                }
                                                node = null;
                                            }
                                            if (mutableVector2 != null) {
                                                mutableVector2.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node = pop(mutableVector2);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
    }

    /* renamed from: visitSubtreeIf-6rFNWt0 */
    public static final /* synthetic */ <T> void m3998visitSubtreeIf6rFNWt0(DelegatableNode visitSubtreeIf, int i, Function1<? super T, Boolean> block) {
        Intrinsics.checkNotNullParameter(visitSubtreeIf, "$this$visitSubtreeIf");
        Intrinsics.checkNotNullParameter(block, "block");
        if (!visitSubtreeIf.getNode().getIsAttached()) {
            throw new IllegalStateException("visitSubtreeIf called on an unattached node".toString());
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = visitSubtreeIf.getNode().getChild();
        if (child == null) {
            addLayoutNodeChildren(mutableVector, visitSubtreeIf.getNode());
        } else {
            mutableVector.add(child);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet() & i) != 0) {
                for (Modifier.Node node2 = node; node2 != null; node2 = node2.getChild()) {
                    if ((node2.getKindSet() & i) != 0) {
                        Modifier.Node node3 = node2;
                        MutableVector mutableVector2 = null;
                        while (node3 != null) {
                            Intrinsics.reifiedOperationMarker(3, ExifInterface.GPS_DIRECTION_TRUE);
                            if (node3 instanceof Object) {
                                if (!block.invoke(node3).booleanValue()) {
                                    break;
                                }
                            } else if ((node3.getKindSet() & i) != 0 && (node3 instanceof DelegatingNode)) {
                                int i2 = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node3).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & i) != 0) {
                                        i2++;
                                        if (i2 == 1) {
                                            node3 = delegate;
                                        } else {
                                            if (mutableVector2 == null) {
                                                mutableVector2 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (node3 != null) {
                                                if (mutableVector2 != null) {
                                                    mutableVector2.add(node3);
                                                }
                                                node3 = null;
                                            }
                                            if (mutableVector2 != null) {
                                                mutableVector2.add(delegate);
                                            }
                                        }
                                    }
                                }
                                if (i2 == 1) {
                                }
                            }
                            node3 = pop(mutableVector2);
                        }
                    }
                }
            }
            addLayoutNodeChildren(mutableVector, node);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final LayoutModifierNode asLayoutModifierNode(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "<this>");
        if ((NodeKind.m4091constructorimpl(2) & node.getKindSet()) != 0) {
            if (node instanceof LayoutModifierNode) {
                return (LayoutModifierNode) node;
            }
            if (node instanceof DelegatingNode) {
                Modifier.Node delegate = ((DelegatingNode) node).getDelegate();
                while (delegate != 0) {
                    if (delegate instanceof LayoutModifierNode) {
                        return (LayoutModifierNode) delegate;
                    }
                    if ((delegate instanceof DelegatingNode) && (NodeKind.m4091constructorimpl(2) & delegate.getKindSet()) != 0) {
                        delegate = ((DelegatingNode) delegate).getDelegate();
                    } else {
                        delegate = delegate.getChild();
                    }
                }
            }
        }
        return null;
    }
}
