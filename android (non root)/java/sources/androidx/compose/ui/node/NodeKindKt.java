package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusEventModifierNodeKt;
import androidx.compose.ui.focus.FocusOrderModifier;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusPropertiesModifierNodeKt;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTargetNodeKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.SoftKeyboardInterceptionModifierNode;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.layout.IntermediateLayoutModifierNode;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.OnGloballyPositionedModifier;
import androidx.compose.ui.layout.OnPlacedModifier;
import androidx.compose.ui.layout.OnRemeasuredModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.modifier.ModifierLocalConsumer;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.semantics.SemanticsModifier;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NodeKind.kt */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a \u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001H\u0000\u001a \u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0001H\u0002\u001a\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0010\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u0019\u001a\u00020\u001aH\u0000\u001a\u0010\u0010\u0018\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a\u0010\u0010\u001b\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u001a&\u0010\u001c\u001a\u00020\t*\u00020\u00012\n\u0010\u001d\u001a\u0006\u0012\u0002\b\u00030\nH\u0080\nø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a&\u0010 \u001a\u00020\u0001*\u00020\u00012\n\u0010!\u001a\u0006\u0012\u0002\b\u00030\nH\u0080\fø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\"\u0010#\u001a\f\u0010$\u001a\u00020\u000e*\u00020%H\u0002\u001a\f\u0010&\u001a\u00020\t*\u00020%H\u0002\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0002\u0010\u0003\"\u0014\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\b\n\u0000\u0012\u0004\b\u0007\u0010\u0003\"\u001f\u0010\b\u001a\u00020\t*\u0006\u0012\u0002\b\u00030\n8@X\u0080\u0004ø\u0001\u0000¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006'"}, d2 = {"Inserted", "", "getInserted$annotations", "()V", "Removed", "getRemoved$annotations", "Updated", "getUpdated$annotations", "includeSelfInTraversal", "", "Landroidx/compose/ui/node/NodeKind;", "getIncludeSelfInTraversal-H91voCI", "(I)Z", "autoInvalidateInsertedNode", "", "node", "Landroidx/compose/ui/Modifier$Node;", "autoInvalidateNodeIncludingDelegates", "remainingSet", "phase", "autoInvalidateNodeSelf", "selfKindSet", "autoInvalidateRemovedNode", "autoInvalidateUpdatedNode", "calculateNodeKindSetFrom", "element", "Landroidx/compose/ui/Modifier$Element;", "calculateNodeKindSetFromIncludingDelegates", "contains", "value", "contains-64DMado", "(II)Z", "or", "other", "or-64DMado", "(II)I", "scheduleInvalidationOfAssociatedFocusTargets", "Landroidx/compose/ui/focus/FocusPropertiesModifierNode;", "specifiesCanFocusProperty", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class NodeKindKt {
    private static final int Inserted = 1;
    private static final int Removed = 2;
    private static final int Updated = 0;

    /* renamed from: contains-64DMado, reason: not valid java name */
    public static final boolean m4099contains64DMado(int i, int i2) {
        return (i & i2) != 0;
    }

    private static /* synthetic */ void getInserted$annotations() {
    }

    private static /* synthetic */ void getRemoved$annotations() {
    }

    private static /* synthetic */ void getUpdated$annotations() {
    }

    /* renamed from: or-64DMado, reason: not valid java name */
    public static final int m4101or64DMado(int i, int i2) {
        return i | i2;
    }

    public static final int calculateNodeKindSetFrom(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (node.getKindSet() != 0) {
            return node.getKindSet();
        }
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1);
        if (node instanceof LayoutModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(2);
        }
        if (node instanceof DrawModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(4);
        }
        if (node instanceof SemanticsModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(8);
        }
        if (node instanceof PointerInputModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(16);
        }
        if (node instanceof ModifierLocalModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(32);
        }
        if (node instanceof ParentDataModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(64);
        }
        if (node instanceof LayoutAwareModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(128);
        }
        if (node instanceof GlobalPositionAwareModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(256);
        }
        if (node instanceof IntermediateLayoutModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(512);
        }
        if (node instanceof FocusTargetNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(1024);
        }
        if (node instanceof FocusPropertiesModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(2048);
        }
        if (node instanceof FocusEventModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(4096);
        }
        if (node instanceof KeyInputModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(8192);
        }
        if (node instanceof RotaryInputModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(16384);
        }
        if (node instanceof CompositionLocalConsumerModifierNode) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(32768);
        }
        return node instanceof SoftKeyboardInterceptionModifierNode ? m4091constructorimpl | NodeKind.m4091constructorimpl(131072) : m4091constructorimpl;
    }

    public static final void autoInvalidateRemovedNode(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (!node.getIsAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 2);
    }

    public static final void autoInvalidateInsertedNode(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (!node.getIsAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 1);
    }

    public static final void autoInvalidateUpdatedNode(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (!node.getIsAttached()) {
            throw new IllegalStateException("Check failed.".toString());
        }
        autoInvalidateNodeIncludingDelegates(node, -1, 0);
    }

    public static final void autoInvalidateNodeIncludingDelegates(Modifier.Node node, int i, int i2) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (node instanceof DelegatingNode) {
            DelegatingNode delegatingNode = (DelegatingNode) node;
            autoInvalidateNodeSelf(node, delegatingNode.getSelfKindSet() & i, i2);
            int i3 = (~delegatingNode.getSelfKindSet()) & i;
            for (Modifier.Node delegate = delegatingNode.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                autoInvalidateNodeIncludingDelegates(delegate, i3, i2);
            }
            return;
        }
        autoInvalidateNodeSelf(node, i & node.getKindSet(), i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void autoInvalidateNodeSelf(Modifier.Node node, int i, int i2) {
        if (i2 != 0 || node.getShouldAutoInvalidate()) {
            if ((NodeKind.m4091constructorimpl(2) & i) != 0 && (node instanceof LayoutModifierNode)) {
                LayoutModifierNodeKt.invalidateMeasurement((LayoutModifierNode) node);
                if (i2 == 2) {
                    DelegatableNodeKt.m3989requireCoordinator64DMado(node, NodeKind.m4091constructorimpl(2)).onRelease();
                }
            }
            if ((NodeKind.m4091constructorimpl(256) & i) != 0 && (node instanceof GlobalPositionAwareModifierNode)) {
                DelegatableNodeKt.requireLayoutNode(node).invalidateMeasurements$ui_release();
            }
            if ((NodeKind.m4091constructorimpl(4) & i) != 0 && (node instanceof DrawModifierNode)) {
                DrawModifierNodeKt.invalidateDraw((DrawModifierNode) node);
            }
            if ((NodeKind.m4091constructorimpl(8) & i) != 0 && (node instanceof SemanticsModifierNode)) {
                SemanticsModifierNodeKt.invalidateSemantics((SemanticsModifierNode) node);
            }
            if ((NodeKind.m4091constructorimpl(64) & i) != 0 && (node instanceof ParentDataModifierNode)) {
                ParentDataModifierNodeKt.invalidateParentData((ParentDataModifierNode) node);
            }
            if ((NodeKind.m4091constructorimpl(1024) & i) != 0 && (node instanceof FocusTargetNode)) {
                if (i2 == 2) {
                    node.onReset();
                } else {
                    DelegatableNodeKt.requireOwner(node).getFocusOwner().scheduleInvalidation((FocusTargetNode) node);
                }
            }
            if ((NodeKind.m4091constructorimpl(2048) & i) != 0 && (node instanceof FocusPropertiesModifierNode)) {
                FocusPropertiesModifierNode focusPropertiesModifierNode = (FocusPropertiesModifierNode) node;
                if (specifiesCanFocusProperty(focusPropertiesModifierNode)) {
                    if (i2 == 2) {
                        scheduleInvalidationOfAssociatedFocusTargets(focusPropertiesModifierNode);
                    } else {
                        FocusPropertiesModifierNodeKt.invalidateFocusProperties(focusPropertiesModifierNode);
                    }
                }
            }
            if ((i & NodeKind.m4091constructorimpl(4096)) == 0 || !(node instanceof FocusEventModifierNode)) {
                return;
            }
            FocusEventModifierNodeKt.invalidateFocusEvent((FocusEventModifierNode) node);
        }
    }

    private static final void scheduleInvalidationOfAssociatedFocusTargets(FocusPropertiesModifierNode focusPropertiesModifierNode) {
        FocusPropertiesModifierNode focusPropertiesModifierNode2 = focusPropertiesModifierNode;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1024);
        if (!focusPropertiesModifierNode2.getNode().getIsAttached()) {
            throw new IllegalStateException("visitChildren called on an unattached node".toString());
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16], 0);
        Modifier.Node child = focusPropertiesModifierNode2.getNode().getChild();
        if (child == null) {
            DelegatableNodeKt.addLayoutNodeChildren(mutableVector, focusPropertiesModifierNode2.getNode());
        } else {
            mutableVector.add(child);
        }
        while (mutableVector.isNotEmpty()) {
            Modifier.Node node = (Modifier.Node) mutableVector.removeAt(mutableVector.getSize() - 1);
            if ((node.getAggregateChildKindSet() & m4091constructorimpl) == 0) {
                DelegatableNodeKt.addLayoutNodeChildren(mutableVector, node);
            } else {
                while (true) {
                    if (node == null) {
                        break;
                    }
                    if ((node.getKindSet() & m4091constructorimpl) != 0) {
                        MutableVector mutableVector2 = null;
                        while (node != null) {
                            if (node instanceof FocusTargetNode) {
                                FocusTargetNodeKt.invalidateFocusTarget((FocusTargetNode) node);
                            } else if ((node.getKindSet() & m4091constructorimpl) != 0 && (node instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node delegate = ((DelegatingNode) node).getDelegate(); delegate != null; delegate = delegate.getChild()) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        if (i == 1) {
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
                                if (i == 1) {
                                }
                            }
                            node = DelegatableNodeKt.pop(mutableVector2);
                        }
                    } else {
                        node = node.getChild();
                    }
                }
            }
        }
    }

    private static final boolean specifiesCanFocusProperty(FocusPropertiesModifierNode focusPropertiesModifierNode) {
        CanFocusChecker.INSTANCE.reset();
        focusPropertiesModifierNode.applyFocusProperties(CanFocusChecker.INSTANCE);
        return CanFocusChecker.INSTANCE.isCanFocusSet();
    }

    public static final int calculateNodeKindSetFromIncludingDelegates(Modifier.Node node) {
        Intrinsics.checkNotNullParameter(node, "node");
        if (node instanceof DelegatingNode) {
            DelegatingNode delegatingNode = (DelegatingNode) node;
            int selfKindSet = delegatingNode.getSelfKindSet();
            for (Modifier.Node delegate = delegatingNode.getDelegate(); delegate != null; delegate = delegate.getChild()) {
                selfKindSet |= calculateNodeKindSetFromIncludingDelegates(delegate);
            }
            return selfKindSet;
        }
        return calculateNodeKindSetFrom(node);
    }

    /* renamed from: getIncludeSelfInTraversal-H91voCI, reason: not valid java name */
    public static final boolean m4100getIncludeSelfInTraversalH91voCI(int i) {
        return (i & NodeKind.m4091constructorimpl(128)) != 0;
    }

    public static final int calculateNodeKindSetFrom(Modifier.Element element) {
        Intrinsics.checkNotNullParameter(element, "element");
        int m4091constructorimpl = NodeKind.m4091constructorimpl(1);
        if (element instanceof LayoutModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(2);
        }
        if (element instanceof DrawModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(4);
        }
        if (element instanceof SemanticsModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(8);
        }
        if (element instanceof PointerInputModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(16);
        }
        if ((element instanceof ModifierLocalConsumer) || (element instanceof ModifierLocalProvider)) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(32);
        }
        if (element instanceof FocusEventModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(4096);
        }
        if (element instanceof FocusOrderModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(2048);
        }
        if (element instanceof OnGloballyPositionedModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(256);
        }
        if (element instanceof ParentDataModifier) {
            m4091constructorimpl |= NodeKind.m4091constructorimpl(64);
        }
        return ((element instanceof OnPlacedModifier) || (element instanceof OnRemeasuredModifier)) ? m4091constructorimpl | NodeKind.m4091constructorimpl(128) : m4091constructorimpl;
    }
}
