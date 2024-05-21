package io.sentry.compose;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeLayoutDelegate;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import java.lang.reflect.Field;

/* loaded from: classes3.dex */
public class SentryComposeHelper {
    private Field layoutDelegateField;
    private final ILogger logger;

    public SentryComposeHelper(ILogger iLogger) {
        this.layoutDelegateField = null;
        this.logger = iLogger;
        try {
            Field declaredField = Class.forName("androidx.compose.ui.node.LayoutNode").getDeclaredField("layoutDelegate");
            this.layoutDelegateField = declaredField;
            declaredField.setAccessible(true);
        } catch (Exception unused) {
            iLogger.log(SentryLevel.WARNING, "Could not find LayoutNode.layoutDelegate field", new Object[0]);
        }
    }

    public Rect getLayoutNodeBoundsInWindow(LayoutNode layoutNode) {
        Field field = this.layoutDelegateField;
        if (field == null) {
            return null;
        }
        try {
            return LayoutCoordinatesKt.boundsInWindow(((LayoutNodeLayoutDelegate) field.get(layoutNode)).getOuterCoordinator().getCoordinates());
        } catch (Exception e) {
            this.logger.log(SentryLevel.WARNING, "Could not fetch position for LayoutNode", e);
            return null;
        }
    }
}
