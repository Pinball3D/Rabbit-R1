package androidx.compose.ui.modifier;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeKind;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ModifierLocalModifierNode.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u00012\u00020\u0002J)\u0010\f\u001a\u00020\r\"\u0004\b\u0000\u0010\b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\b0\t2\u0006\u0010\u000f\u001a\u0002H\bH\u0016¢\u0006\u0002\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R$\u0010\u0007\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0011À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/modifier/ModifierLocalModifierNode;", "Landroidx/compose/ui/modifier/ModifierLocalReadScope;", "Landroidx/compose/ui/node/DelegatableNode;", "providedValues", "Landroidx/compose/ui/modifier/ModifierLocalMap;", "getProvidedValues", "()Landroidx/compose/ui/modifier/ModifierLocalMap;", SentryThread.JsonKeys.CURRENT, ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/compose/ui/modifier/ModifierLocal;", "getCurrent", "(Landroidx/compose/ui/modifier/ModifierLocal;)Ljava/lang/Object;", "provide", "", "key", "value", "(Landroidx/compose/ui/modifier/ModifierLocal;Ljava/lang/Object;)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ModifierLocalModifierNode extends ModifierLocalReadScope, DelegatableNode {
    default ModifierLocalMap getProvidedValues() {
        return EmptyMap.INSTANCE;
    }

    default <T> void provide(ModifierLocal<T> key, T value) {
        Intrinsics.checkNotNullParameter(key, "key");
        if (getProvidedValues() == EmptyMap.INSTANCE) {
            throw new IllegalArgumentException("In order to provide locals you must override providedValues: ModifierLocalMap".toString());
        }
        if (!getProvidedValues().contains$ui_release(key)) {
            throw new IllegalArgumentException(("Any provided key must be initially provided in the overridden providedValues: ModifierLocalMap property. Key " + key + " was not found.").toString());
        }
        getProvidedValues().mo3972set$ui_release(key, value);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v17 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // androidx.compose.ui.modifier.ModifierLocalReadScope
    default <T> T getCurrent(ModifierLocal<T> modifierLocal) {
        NodeChain nodes;
        Intrinsics.checkNotNullParameter(modifierLocal, "<this>");
        if (!getNode().getIsAttached()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        ModifierLocalModifierNode modifierLocalModifierNode = this;
        int m4091constructorimpl = NodeKind.m4091constructorimpl(32);
        if (!modifierLocalModifierNode.getNode().getIsAttached()) {
            throw new IllegalStateException("visitAncestors called on an unattached node".toString());
        }
        Modifier.Node parent = modifierLocalModifierNode.getNode().getParent();
        LayoutNode requireLayoutNode = DelegatableNodeKt.requireLayoutNode(modifierLocalModifierNode);
        while (requireLayoutNode != null) {
            if ((requireLayoutNode.getNodes().getHead().getAggregateChildKindSet() & m4091constructorimpl) != 0) {
                while (parent != null) {
                    if ((parent.getKindSet() & m4091constructorimpl) != 0) {
                        DelegatingNode delegatingNode = parent;
                        ?? r4 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof ModifierLocalModifierNode) {
                                ModifierLocalModifierNode modifierLocalModifierNode2 = (ModifierLocalModifierNode) delegatingNode;
                                if (modifierLocalModifierNode2.getProvidedValues().contains$ui_release(modifierLocal)) {
                                    return (T) modifierLocalModifierNode2.getProvidedValues().get$ui_release(modifierLocal);
                                }
                            } else if ((delegatingNode.getKindSet() & m4091constructorimpl) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node delegate = delegatingNode.getDelegate();
                                int i = 0;
                                delegatingNode = delegatingNode;
                                r4 = r4;
                                while (delegate != null) {
                                    if ((delegate.getKindSet() & m4091constructorimpl) != 0) {
                                        i++;
                                        r4 = r4;
                                        if (i == 1) {
                                            delegatingNode = delegate;
                                        } else {
                                            if (r4 == 0) {
                                                r4 = new MutableVector(new Modifier.Node[16], 0);
                                            }
                                            if (delegatingNode != 0) {
                                                if (r4 != 0) {
                                                    r4.add(delegatingNode);
                                                }
                                                delegatingNode = 0;
                                            }
                                            if (r4 != 0) {
                                                r4.add(delegate);
                                            }
                                        }
                                    }
                                    delegate = delegate.getChild();
                                    delegatingNode = delegatingNode;
                                    r4 = r4;
                                }
                                if (i == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.pop(r4);
                        }
                    }
                    parent = parent.getParent();
                }
            }
            requireLayoutNode = requireLayoutNode.getParent$ui_release();
            parent = (requireLayoutNode == null || (nodes = requireLayoutNode.getNodes()) == null) ? null : nodes.getTail();
        }
        return modifierLocal.getDefaultFactory$ui_release().invoke();
    }
}
