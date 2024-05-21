package io.flutter.plugin.platform;

import android.view.View;
import io.flutter.view.AccessibilityBridge;

/* loaded from: classes3.dex */
public interface PlatformViewsAccessibilityDelegate {
    void attachAccessibilityBridge(AccessibilityBridge accessibilityBridge);

    void detachAccessibilityBridge();

    View getPlatformViewById(int i);

    boolean usesVirtualDisplay(int i);
}
