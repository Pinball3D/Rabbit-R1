package io.flutter.plugin.platform;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import io.flutter.embedding.android.FlutterImageView;

/* loaded from: classes3.dex */
public class PlatformOverlayView extends FlutterImageView {
    private AccessibilityEventsDelegate accessibilityDelegate;

    public PlatformOverlayView(Context context, int i, int i2, AccessibilityEventsDelegate accessibilityEventsDelegate) {
        super(context, i, i2, FlutterImageView.SurfaceKind.overlay);
        this.accessibilityDelegate = accessibilityEventsDelegate;
    }

    public PlatformOverlayView(Context context) {
        this(context, 1, 1, null);
    }

    public PlatformOverlayView(Context context, AttributeSet attributeSet) {
        this(context, 1, 1, null);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        AccessibilityEventsDelegate accessibilityEventsDelegate = this.accessibilityDelegate;
        if (accessibilityEventsDelegate == null || !accessibilityEventsDelegate.onAccessibilityHoverEvent(motionEvent, true)) {
            return super.onHoverEvent(motionEvent);
        }
        return true;
    }
}
