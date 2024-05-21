package io.sentry.android.core.internal.gestures;

import android.content.res.Resources;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ScrollView;
import androidx.core.view.ScrollingView;
import io.sentry.android.core.internal.util.ClassUtil;
import io.sentry.internal.gestures.GestureTargetLocator;
import io.sentry.internal.gestures.UiElement;

/* loaded from: classes3.dex */
public final class AndroidViewGestureTargetLocator implements GestureTargetLocator {
    private static final String ORIGIN = "old_view_system";
    private final int[] coordinates = new int[2];
    private final boolean isAndroidXAvailable;

    public AndroidViewGestureTargetLocator(boolean z) {
        this.isAndroidXAvailable = z;
    }

    @Override // io.sentry.internal.gestures.GestureTargetLocator
    public UiElement locate(Object obj, float f, float f2, UiElement.Type type) {
        if (!(obj instanceof View)) {
            return null;
        }
        View view = (View) obj;
        if (touchWithinBounds(view, f, f2)) {
            if (type == UiElement.Type.CLICKABLE && isViewTappable(view)) {
                return createUiElement(view);
            }
            if (type == UiElement.Type.SCROLLABLE && isViewScrollable(view, this.isAndroidXAvailable)) {
                return createUiElement(view);
            }
        }
        return null;
    }

    private UiElement createUiElement(View view) {
        try {
            return new UiElement(view, ClassUtil.getClassName(view), ViewUtils.getResourceId(view), null, ORIGIN);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }

    private boolean touchWithinBounds(View view, float f, float f2) {
        view.getLocationOnScreen(this.coordinates);
        int[] iArr = this.coordinates;
        int i = iArr[0];
        int i2 = iArr[1];
        return f >= ((float) i) && f <= ((float) (i + view.getWidth())) && f2 >= ((float) i2) && f2 <= ((float) (i2 + view.getHeight()));
    }

    private static boolean isViewTappable(View view) {
        return view.isClickable() && view.getVisibility() == 0;
    }

    private static boolean isViewScrollable(View view, boolean z) {
        return (isJetpackScrollingView(view, z) || AbsListView.class.isAssignableFrom(view.getClass()) || ScrollView.class.isAssignableFrom(view.getClass())) && view.getVisibility() == 0;
    }

    private static boolean isJetpackScrollingView(View view, boolean z) {
        if (z) {
            return ScrollingView.class.isAssignableFrom(view.getClass());
        }
        return false;
    }
}
