package io.sentry.compose.viewhierarchy;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import io.sentry.ILogger;
import io.sentry.compose.SentryComposeHelper;
import io.sentry.compose.SentryModifier;
import io.sentry.internal.viewhierarchy.ViewHierarchyExporter;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ComposeViewHierarchyExporter implements ViewHierarchyExporter {
    private volatile SentryComposeHelper composeHelper;
    private final ILogger logger;

    public ComposeViewHierarchyExporter(ILogger iLogger) {
        this.logger = iLogger;
    }

    @Override // io.sentry.internal.viewhierarchy.ViewHierarchyExporter
    public boolean export(ViewHierarchyNode viewHierarchyNode, Object obj) {
        if (!(obj instanceof Owner)) {
            return false;
        }
        if (this.composeHelper == null) {
            synchronized (this) {
                if (this.composeHelper == null) {
                    this.composeHelper = new SentryComposeHelper(this.logger);
                }
            }
        }
        addChild(this.composeHelper, viewHierarchyNode, null, ((Owner) obj).getRoot());
        return true;
    }

    private static void addChild(SentryComposeHelper sentryComposeHelper, ViewHierarchyNode viewHierarchyNode, LayoutNode layoutNode, LayoutNode layoutNode2) {
        if (layoutNode2.isPlaced()) {
            ViewHierarchyNode viewHierarchyNode2 = new ViewHierarchyNode();
            setTag(layoutNode2, viewHierarchyNode2);
            setBounds(sentryComposeHelper, layoutNode2, layoutNode, viewHierarchyNode2);
            if (viewHierarchyNode2.getTag() != null) {
                viewHierarchyNode2.setType(viewHierarchyNode2.getTag());
            } else {
                viewHierarchyNode2.setType("@Composable");
            }
            if (viewHierarchyNode.getChildren() == null) {
                viewHierarchyNode.setChildren(new ArrayList());
            }
            viewHierarchyNode.getChildren().add(viewHierarchyNode2);
            MutableVector<LayoutNode> zSortedChildren = layoutNode2.getZSortedChildren();
            int size = zSortedChildren.getSize();
            for (int i = 0; i < size; i++) {
                addChild(sentryComposeHelper, viewHierarchyNode2, layoutNode2, zSortedChildren.get(i));
            }
        }
    }

    private static void setTag(LayoutNode layoutNode, ViewHierarchyNode viewHierarchyNode) {
        for (ModifierInfo modifierInfo : layoutNode.getModifierInfo()) {
            if (modifierInfo.getModifier() instanceof SemanticsModifier) {
                Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = ((SemanticsModifier) modifierInfo.getModifier()).getSemanticsConfiguration().iterator();
                while (it.hasNext()) {
                    Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object> next = it.next();
                    String name = next.getKey().getName();
                    if (SentryModifier.TAG.equals(name) || "TestTag".equals(name)) {
                        if (next.getValue() instanceof String) {
                            viewHierarchyNode.setTag((String) next.getValue());
                        }
                    }
                }
            }
        }
    }

    private static void setBounds(SentryComposeHelper sentryComposeHelper, LayoutNode layoutNode, LayoutNode layoutNode2, ViewHierarchyNode viewHierarchyNode) {
        Rect layoutNodeBoundsInWindow;
        int height = layoutNode.getHeight();
        int width = layoutNode.getWidth();
        viewHierarchyNode.setHeight(Double.valueOf(height));
        viewHierarchyNode.setWidth(Double.valueOf(width));
        Rect layoutNodeBoundsInWindow2 = sentryComposeHelper.getLayoutNodeBoundsInWindow(layoutNode);
        if (layoutNodeBoundsInWindow2 != null) {
            double left = layoutNodeBoundsInWindow2.getLeft();
            double top = layoutNodeBoundsInWindow2.getTop();
            if (layoutNode2 != null && (layoutNodeBoundsInWindow = sentryComposeHelper.getLayoutNodeBoundsInWindow(layoutNode2)) != null) {
                left -= layoutNodeBoundsInWindow.getLeft();
                top -= layoutNodeBoundsInWindow.getTop();
            }
            viewHierarchyNode.setX(Double.valueOf(left));
            viewHierarchyNode.setY(Double.valueOf(top));
        }
    }
}
