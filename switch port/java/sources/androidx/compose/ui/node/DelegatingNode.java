package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DelegatingNode.kt */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\b'\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u0002H\r\"\b\b\u0000\u0010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\rH\u0004¢\u0006\u0002\u0010\u0010J!\u0010\u0011\u001a\u0002H\r\"\b\b\u0000\u0010\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\rH\u0000¢\u0006\u0004\b\u0012\u0010\u0010J%\u0010\u0013\u001a\u00020\u00142\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00140\u0016H\u0080\bø\u0001\u0000¢\u0006\u0002\b\u0017J\r\u0010\u0018\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u0019J\r\u0010\u001a\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u001bJ\r\u0010\u001c\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u001dJ\r\u0010\u001e\u001a\u00020\u0014H\u0010¢\u0006\u0002\b\u001fJ\r\u0010 \u001a\u00020\u0014H\u0010¢\u0006\u0002\b!J\u0010\u0010\"\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u000eH\u0004J\u0015\u0010$\u001a\u00020\u00142\u0006\u0010#\u001a\u00020\u000eH\u0000¢\u0006\u0002\b%J\u0017\u0010&\u001a\u00020\u00142\b\u0010'\u001a\u0004\u0018\u00010(H\u0010¢\u0006\u0002\b)J\u0018\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020\u00142\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\u0001H\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0001X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\tX\u0080\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\n\u0010\u0002\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u00061"}, d2 = {"Landroidx/compose/ui/node/DelegatingNode;", "Landroidx/compose/ui/Modifier$Node;", "()V", "delegate", "getDelegate$ui_release", "()Landroidx/compose/ui/Modifier$Node;", "setDelegate$ui_release", "(Landroidx/compose/ui/Modifier$Node;)V", "selfKindSet", "", "getSelfKindSet$ui_release$annotations", "getSelfKindSet$ui_release", "()I", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/node/DelegatableNode;", "delegatableNode", "(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/DelegatableNode;", "delegateUnprotected", "delegateUnprotected$ui_release", "forEachImmediateDelegate", "", "block", "Lkotlin/Function1;", "forEachImmediateDelegate$ui_release", "markAsAttached", "markAsAttached$ui_release", "markAsDetached", "markAsDetached$ui_release", "reset", "reset$ui_release", "runAttachLifecycle", "runAttachLifecycle$ui_release", "runDetachLifecycle", "runDetachLifecycle$ui_release", "undelegate", "instance", "undelegateUnprotected", "undelegateUnprotected$ui_release", "updateCoordinator", "coordinator", "Landroidx/compose/ui/node/NodeCoordinator;", "updateCoordinator$ui_release", "updateNodeKindSet", "newKindSet", "recalculateOwner", "", "validateDelegateKindSet", "delegateKindSet", "delegateNode", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class DelegatingNode extends Modifier.Node {
    public static final int $stable = 8;
    private Modifier.Node delegate;
    private final int selfKindSet = NodeKindKt.calculateNodeKindSetFrom(this);

    public static /* synthetic */ void getSelfKindSet$ui_release$annotations() {
    }

    /* renamed from: getDelegate$ui_release, reason: from getter */
    public final Modifier.Node getDelegate() {
        return this.delegate;
    }

    /* renamed from: getSelfKindSet$ui_release, reason: from getter */
    public final int getSelfKindSet() {
        return this.selfKindSet;
    }

    public final void setDelegate$ui_release(Modifier.Node node) {
        this.delegate = node;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void updateCoordinator$ui_release(NodeCoordinator coordinator) {
        super.updateCoordinator$ui_release(coordinator);
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.updateCoordinator$ui_release(coordinator);
        }
    }

    public final <T extends DelegatableNode> T delegateUnprotected$ui_release(T delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "delegatableNode");
        return (T) delegate(delegatableNode);
    }

    public final void undelegateUnprotected$ui_release(DelegatableNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        undelegate(instance);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T extends DelegatableNode> T delegate(T delegatableNode) {
        Intrinsics.checkNotNullParameter(delegatableNode, "delegatableNode");
        Modifier.Node node = delegatableNode.getNode();
        if (node != delegatableNode) {
            Modifier.Node node2 = delegatableNode instanceof Modifier.Node ? (Modifier.Node) delegatableNode : null;
            Modifier.Node parent = node2 != null ? node2.getParent() : null;
            if (node == getNode() && Intrinsics.areEqual(parent, this)) {
                return delegatableNode;
            }
            throw new IllegalStateException("Cannot delegate to an already delegated node".toString());
        }
        if (!(!node.getIsAttached())) {
            throw new IllegalStateException("Cannot delegate to an already attached node".toString());
        }
        node.setAsDelegateTo$ui_release(getNode());
        int kindSet$ui_release = getKindSet();
        int calculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
        node.setKindSet$ui_release(calculateNodeKindSetFromIncludingDelegates);
        validateDelegateKindSet(calculateNodeKindSetFromIncludingDelegates, node);
        node.setChild$ui_release(this.delegate);
        this.delegate = node;
        node.setParent$ui_release(this);
        updateNodeKindSet(getKindSet() | calculateNodeKindSetFromIncludingDelegates, false);
        if (getIsAttached()) {
            if ((calculateNodeKindSetFromIncludingDelegates & NodeKind.m4091constructorimpl(2)) != 0 && (kindSet$ui_release & NodeKind.m4091constructorimpl(2)) == 0) {
                NodeChain nodes = DelegatableNodeKt.requireLayoutNode(this).getNodes();
                getNode().updateCoordinator$ui_release(null);
                nodes.syncCoordinators();
            } else {
                updateCoordinator$ui_release(getCoordinator());
            }
            node.markAsAttached$ui_release();
            node.runAttachLifecycle$ui_release();
            NodeKindKt.autoInvalidateInsertedNode(node);
        }
        return delegatableNode;
    }

    protected final void undelegate(DelegatableNode instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        Modifier.Node node = null;
        for (Modifier.Node node2 = this.delegate; node2 != null; node2 = node2.getChild()) {
            if (node2 == instance) {
                if (node2.getIsAttached()) {
                    NodeKindKt.autoInvalidateRemovedNode(node2);
                    node2.runDetachLifecycle$ui_release();
                    node2.markAsDetached$ui_release();
                }
                node2.setAsDelegateTo$ui_release(node2);
                node2.setAggregateChildKindSet$ui_release(0);
                if (node == null) {
                    this.delegate = node2.getChild();
                } else {
                    node.setChild$ui_release(node2.getChild());
                }
                node2.setChild$ui_release(null);
                node2.setParent$ui_release(null);
                int kindSet$ui_release = getKindSet();
                int calculateNodeKindSetFromIncludingDelegates = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(this);
                updateNodeKindSet(calculateNodeKindSetFromIncludingDelegates, true);
                if (getIsAttached() && (kindSet$ui_release & NodeKind.m4091constructorimpl(2)) != 0 && (NodeKind.m4091constructorimpl(2) & calculateNodeKindSetFromIncludingDelegates) == 0) {
                    NodeChain nodes = DelegatableNodeKt.requireLayoutNode(this).getNodes();
                    getNode().updateCoordinator$ui_release(null);
                    nodes.syncCoordinators();
                    return;
                }
                return;
            }
            node = node2;
        }
        throw new IllegalStateException(("Could not find delegate: " + instance).toString());
    }

    private final void validateDelegateKindSet(int delegateKindSet, Modifier.Node delegateNode) {
        int kindSet$ui_release = getKindSet();
        if ((delegateKindSet & NodeKind.m4091constructorimpl(2)) != 0 && (NodeKind.m4091constructorimpl(2) & kindSet$ui_release) != 0 && !(this instanceof LayoutModifierNode)) {
            throw new IllegalStateException(("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + delegateNode).toString());
        }
    }

    private final void updateNodeKindSet(int newKindSet, boolean recalculateOwner) {
        Modifier.Node child;
        int kindSet$ui_release = getKindSet();
        setKindSet$ui_release(newKindSet);
        if (kindSet$ui_release != newKindSet) {
            if (DelegatableNodeKt.isDelegationRoot(this)) {
                setAggregateChildKindSet$ui_release(newKindSet);
            }
            if (getIsAttached()) {
                Modifier.Node node = getNode();
                DelegatingNode delegatingNode = this;
                while (delegatingNode != null) {
                    newKindSet |= delegatingNode.getKindSet();
                    delegatingNode.setKindSet$ui_release(newKindSet);
                    if (delegatingNode == node) {
                        break;
                    } else {
                        delegatingNode = delegatingNode.getParent();
                    }
                }
                if (recalculateOwner && delegatingNode == node) {
                    newKindSet = NodeKindKt.calculateNodeKindSetFromIncludingDelegates(node);
                    node.setKindSet$ui_release(newKindSet);
                }
                int aggregateChildKindSet = newKindSet | ((delegatingNode == null || (child = delegatingNode.getChild()) == null) ? 0 : child.getAggregateChildKindSet());
                while (delegatingNode != null) {
                    aggregateChildKindSet |= delegatingNode.getKindSet();
                    delegatingNode.setAggregateChildKindSet$ui_release(aggregateChildKindSet);
                    delegatingNode = delegatingNode.getParent();
                }
            }
        }
    }

    public final void forEachImmediateDelegate$ui_release(Function1<? super Modifier.Node, Unit> block) {
        Intrinsics.checkNotNullParameter(block, "block");
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            block.invoke(delegate);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsAttached$ui_release() {
        super.markAsAttached$ui_release();
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.updateCoordinator$ui_release(getCoordinator());
            if (!delegate.getIsAttached()) {
                delegate.markAsAttached$ui_release();
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runDetachLifecycle$ui_release() {
        super.runDetachLifecycle$ui_release();
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.runDetachLifecycle$ui_release();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void reset$ui_release() {
        super.reset$ui_release();
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.reset$ui_release();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void runAttachLifecycle$ui_release() {
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.runAttachLifecycle$ui_release();
        }
        super.runAttachLifecycle$ui_release();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void markAsDetached$ui_release() {
        for (Modifier.Node delegate = getDelegate(); delegate != null; delegate = delegate.getChild()) {
            delegate.markAsDetached$ui_release();
        }
        super.markAsDetached$ui_release();
    }
}
