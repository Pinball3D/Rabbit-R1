package androidx.compose.ui.semantics;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.compose.ui.node.SemanticsModifierNode;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsOwner.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\t\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\n\u0010\b¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/semantics/SemanticsOwner;", "", "rootNode", "Landroidx/compose/ui/node/LayoutNode;", "(Landroidx/compose/ui/node/LayoutNode;)V", "rootSemanticsNode", "Landroidx/compose/ui/semantics/SemanticsNode;", "getRootSemanticsNode", "()Landroidx/compose/ui/semantics/SemanticsNode;", "unmergedRootSemanticsNode", "getUnmergedRootSemanticsNode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsOwner {
    public static final int $stable = 8;
    private final LayoutNode rootNode;

    public SemanticsOwner(LayoutNode rootNode) {
        Intrinsics.checkNotNullParameter(rootNode, "rootNode");
        this.rootNode = rootNode;
    }

    public final SemanticsNode getRootSemanticsNode() {
        return SemanticsNodeKt.SemanticsNode(this.rootNode, true);
    }

    public final SemanticsNode getUnmergedRootSemanticsNode() {
        NodeChain nodes = this.rootNode.getNodes();
        int m4091constructorimpl = NodeKind.m4091constructorimpl(8);
        Object obj = null;
        if ((NodeChain.access$getAggregateChildKindSet(nodes) & m4091constructorimpl) != 0) {
            Modifier.Node head = nodes.getHead();
            loop0: while (true) {
                if (head == null) {
                    break;
                }
                if ((head.getKindSet() & m4091constructorimpl) != 0) {
                    Modifier.Node node = head;
                    MutableVector mutableVector = null;
                    while (node != null) {
                        if (node instanceof SemanticsModifierNode) {
                            obj = node;
                            break loop0;
                        }
                        if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
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
                        node = DelegatableNodeKt.access$pop(mutableVector);
                    }
                }
                if ((head.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                    break;
                }
                head = head.getChild();
            }
        }
        Intrinsics.checkNotNull(obj);
        return new SemanticsNode(((SemanticsModifierNode) obj).getNode(), false, this.rootNode, new SemanticsConfiguration());
    }
}
