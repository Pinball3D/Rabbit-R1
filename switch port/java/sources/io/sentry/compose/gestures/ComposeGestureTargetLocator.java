package io.sentry.compose.gestures;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Owner;
import androidx.compose.ui.semantics.SemanticsModifier;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import io.sentry.ILogger;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.compose.SentryComposeHelper;
import io.sentry.compose.SentryModifier;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.gestures.UiElement;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ComposeGestureTargetLocator implements GestureTargetLocator {
    private static final String ORIGIN = "jetpack_compose";
    private volatile SentryComposeHelper composeHelper;
    private final ILogger logger;

    public ComposeGestureTargetLocator(ILogger iLogger) {
        this.logger = iLogger;
        SentryIntegrationPackageStorage.getInstance().addIntegration("ComposeUserInteraction");
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-compose", "7.4.0");
    }

    @Override // io.sentry.internal.gestures.GestureTargetLocator
    public UiElement locate(Object obj, float f, float f2, UiElement.Type type) {
        String str;
        if (this.composeHelper == null) {
            synchronized (this) {
                if (this.composeHelper == null) {
                    this.composeHelper = new SentryComposeHelper(this.logger);
                }
            }
        }
        if (!(obj instanceof Owner)) {
            return null;
        }
        LinkedList linkedList = new LinkedList();
        linkedList.add(((Owner) obj).getRoot());
        String str2 = null;
        String str3 = null;
        while (true) {
            if (linkedList.isEmpty()) {
                str = str2;
                break;
            }
            LayoutNode layoutNode = (LayoutNode) linkedList.poll();
            if (layoutNode != null) {
                if (layoutNode.isPlaced() && layoutNodeBoundsContain(this.composeHelper, layoutNode, f, f2)) {
                    boolean z = false;
                    boolean z2 = false;
                    for (ModifierInfo modifierInfo : layoutNode.getModifierInfo()) {
                        if (modifierInfo.getModifier() instanceof SemanticsModifier) {
                            Iterator<Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object>> it = ((SemanticsModifier) modifierInfo.getModifier()).getSemanticsConfiguration().iterator();
                            while (it.hasNext()) {
                                Map.Entry<? extends SemanticsPropertyKey<?>, ? extends Object> next = it.next();
                                String name = next.getKey().getName();
                                if ("ScrollBy".equals(name)) {
                                    z2 = true;
                                } else if ("OnClick".equals(name)) {
                                    z = true;
                                } else if (SentryModifier.TAG.equals(name) || "TestTag".equals(name)) {
                                    if (next.getValue() instanceof String) {
                                        str3 = (String) next.getValue();
                                    }
                                }
                            }
                        } else {
                            String canonicalName = modifierInfo.getModifier().getClass().getCanonicalName();
                            if ("androidx.compose.foundation.ClickableElement".equals(canonicalName) || "androidx.compose.foundation.CombinedClickableElement".equals(canonicalName)) {
                                z = true;
                            } else if ("androidx.compose.foundation.ScrollingLayoutElement".equals(canonicalName)) {
                                z2 = true;
                            }
                        }
                    }
                    if (z && type == UiElement.Type.CLICKABLE) {
                        str2 = str3;
                    }
                    if (z2 && type == UiElement.Type.SCROLLABLE) {
                        str = str3;
                        break;
                    }
                }
                linkedList.addAll(layoutNode.getZSortedChildren().asMutableList());
            }
        }
        if (str == null) {
            return null;
        }
        return new UiElement(null, null, null, str, ORIGIN);
    }

    private static boolean layoutNodeBoundsContain(SentryComposeHelper sentryComposeHelper, LayoutNode layoutNode, float f, float f2) {
        Rect layoutNodeBoundsInWindow = sentryComposeHelper.getLayoutNodeBoundsInWindow(layoutNode);
        return layoutNodeBoundsInWindow != null && f >= layoutNodeBoundsInWindow.getLeft() && f <= layoutNodeBoundsInWindow.getRight() && f2 >= layoutNodeBoundsInWindow.getTop() && f2 <= layoutNodeBoundsInWindow.getBottom();
    }
}
