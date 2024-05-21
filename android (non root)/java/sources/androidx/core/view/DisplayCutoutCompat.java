package androidx.core.view;

import android.graphics.Rect;
import android.view.DisplayCutout;
import androidx.core.graphics.Insets;
import androidx.core.util.ObjectsCompat;
import java.util.List;

/* loaded from: classes.dex */
public final class DisplayCutoutCompat {
    private final DisplayCutout mDisplayCutout;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DisplayCutout unwrap() {
        return this.mDisplayCutout;
    }

    public DisplayCutoutCompat(Rect rect, List<Rect> list) {
        this(Api28Impl.createDisplayCutout(rect, list));
    }

    public DisplayCutoutCompat(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        this(constructDisplayCutout(insets, rect, rect2, rect3, rect4, insets2));
    }

    private static DisplayCutout constructDisplayCutout(Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, Insets insets2) {
        return Api30Impl.createDisplayCutout(insets.toPlatformInsets(), rect, rect2, rect3, rect4, insets2.toPlatformInsets());
    }

    private DisplayCutoutCompat(DisplayCutout displayCutout) {
        this.mDisplayCutout = displayCutout;
    }

    public int getSafeInsetTop() {
        return Api28Impl.getSafeInsetTop(this.mDisplayCutout);
    }

    public int getSafeInsetBottom() {
        return Api28Impl.getSafeInsetBottom(this.mDisplayCutout);
    }

    public int getSafeInsetLeft() {
        return Api28Impl.getSafeInsetLeft(this.mDisplayCutout);
    }

    public int getSafeInsetRight() {
        return Api28Impl.getSafeInsetRight(this.mDisplayCutout);
    }

    public List<Rect> getBoundingRects() {
        return Api28Impl.getBoundingRects(this.mDisplayCutout);
    }

    public Insets getWaterfallInsets() {
        return Insets.toCompatInsets(Api30Impl.getWaterfallInsets(this.mDisplayCutout));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return ObjectsCompat.equals(this.mDisplayCutout, ((DisplayCutoutCompat) obj).mDisplayCutout);
    }

    public int hashCode() {
        DisplayCutout displayCutout = this.mDisplayCutout;
        if (displayCutout == null) {
            return 0;
        }
        return displayCutout.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.mDisplayCutout + "}";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DisplayCutoutCompat wrap(DisplayCutout displayCutout) {
        if (displayCutout == null) {
            return null;
        }
        return new DisplayCutoutCompat(displayCutout);
    }

    /* loaded from: classes.dex */
    static class Api28Impl {
        private Api28Impl() {
        }

        static DisplayCutout createDisplayCutout(Rect rect, List<Rect> list) {
            return new DisplayCutout(rect, list);
        }

        static int getSafeInsetTop(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetTop();
        }

        static int getSafeInsetBottom(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetBottom();
        }

        static int getSafeInsetLeft(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetLeft();
        }

        static int getSafeInsetRight(DisplayCutout displayCutout) {
            return displayCutout.getSafeInsetRight();
        }

        static List<Rect> getBoundingRects(DisplayCutout displayCutout) {
            return displayCutout.getBoundingRects();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        private Api30Impl() {
        }

        static DisplayCutout createDisplayCutout(android.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4, android.graphics.Insets insets2) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4, insets2);
        }

        static android.graphics.Insets getWaterfallInsets(DisplayCutout displayCutout) {
            return displayCutout.getWaterfallInsets();
        }
    }

    /* loaded from: classes.dex */
    static class Api29Impl {
        private Api29Impl() {
        }

        static DisplayCutout createDisplayCutout(android.graphics.Insets insets, Rect rect, Rect rect2, Rect rect3, Rect rect4) {
            return new DisplayCutout(insets, rect, rect2, rect3, rect4);
        }
    }
}
