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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SemanticsNode.kt */
@Metadata(d1 = {"\u00002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0000\u001a\"\u0010\n\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\r2\b\b\u0002\u0010\u000b\u001a\u00020\u0002H\u0000\u001a\f\u0010\u000f\u001a\u00020\u0010*\u00020\u0007H\u0002\u001a\"\u0010\u0011\u001a\u0004\u0018\u00010\u0002*\u00020\u00022\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\r0\u0013H\u0000\u001a\f\u0010\u0014\u001a\u00020\u0010*\u00020\u0007H\u0002\"\u001a\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u001d\u0010\u0005\u001a\u0004\u0018\u00010\u0006*\u00020\u00078BX\u0082\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, d2 = {"outerMergingSemantics", "Landroidx/compose/ui/node/SemanticsModifierNode;", "Landroidx/compose/ui/node/LayoutNode;", "getOuterMergingSemantics", "(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;", "role", "Landroidx/compose/ui/semantics/Role;", "Landroidx/compose/ui/semantics/SemanticsNode;", "getRole", "(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/semantics/Role;", "SemanticsNode", "layoutNode", "mergingEnabled", "", "outerSemanticsNode", "contentDescriptionFakeNodeId", "", "findClosestParentNode", "selector", "Lkotlin/Function1;", "roleFakeNodeId", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SemanticsNodeKt {
    public static final SemanticsNode SemanticsNode(LayoutNode layoutNode, boolean z) {
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        NodeChain nodes = layoutNode.getNodes();
        int m4091constructorimpl = NodeKind.m4091constructorimpl(8);
        Object obj = null;
        if ((nodes.getAggregateChildKindSet() & m4091constructorimpl) != 0) {
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
                        node = DelegatableNodeKt.pop(mutableVector);
                    }
                }
                if ((head.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                    break;
                }
                head = head.getChild();
            }
        }
        Intrinsics.checkNotNull(obj);
        Modifier.Node node2 = ((SemanticsModifierNode) obj).getNode();
        SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
        Intrinsics.checkNotNull(collapsedSemantics$ui_release);
        return new SemanticsNode(node2, z, layoutNode, collapsedSemantics$ui_release);
    }

    public static /* synthetic */ SemanticsNode SemanticsNode$default(SemanticsModifierNode semanticsModifierNode, boolean z, LayoutNode layoutNode, int i, Object obj) {
        if ((i & 4) != 0) {
            layoutNode = DelegatableNodeKt.requireLayoutNode(semanticsModifierNode);
        }
        return SemanticsNode(semanticsModifierNode, z, layoutNode);
    }

    public static final SemanticsNode SemanticsNode(SemanticsModifierNode outerSemanticsNode, boolean z, LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(outerSemanticsNode, "outerSemanticsNode");
        Intrinsics.checkNotNullParameter(layoutNode, "layoutNode");
        Modifier.Node node = outerSemanticsNode.getNode();
        SemanticsConfiguration collapsedSemantics$ui_release = layoutNode.getCollapsedSemantics$ui_release();
        if (collapsedSemantics$ui_release == null) {
            collapsedSemantics$ui_release = new SemanticsConfiguration();
        }
        return new SemanticsNode(node, z, layoutNode, collapsedSemantics$ui_release);
    }

    public static final SemanticsModifierNode getOuterMergingSemantics(LayoutNode layoutNode) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        NodeChain nodes = layoutNode.getNodes();
        int m4091constructorimpl = NodeKind.m4091constructorimpl(8);
        Object obj = null;
        if ((nodes.getAggregateChildKindSet() & m4091constructorimpl) != 0) {
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
                            if (((SemanticsModifierNode) node).getShouldMergeDescendantSemantics()) {
                                obj = node;
                                break loop0;
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
                if ((head.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                    break;
                }
                head = head.getChild();
            }
        }
        return (SemanticsModifierNode) obj;
    }

    public static final LayoutNode findClosestParentNode(LayoutNode layoutNode, Function1<? super LayoutNode, Boolean> selector) {
        Intrinsics.checkNotNullParameter(layoutNode, "<this>");
        Intrinsics.checkNotNullParameter(selector, "selector");
        for (LayoutNode parent$ui_release = layoutNode.getParent$ui_release(); parent$ui_release != null; parent$ui_release = parent$ui_release.getParent$ui_release()) {
            if (selector.invoke(parent$ui_release).booleanValue()) {
                return parent$ui_release;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Role getRole(SemanticsNode semanticsNode) {
        return (Role) SemanticsConfigurationKt.getOrNull(semanticsNode.getUnmergedConfig(), SemanticsProperties.INSTANCE.getRole());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int contentDescriptionFakeNodeId(SemanticsNode semanticsNode) {
        return semanticsNode.getId() + 2000000000;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int roleFakeNodeId(SemanticsNode semanticsNode) {
        return semanticsNode.getId() + 1000000000;
    }
}
