package androidx.window.layout;

import android.view.DisplayCutout;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DisplayCompatHelper.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\n"}, d2 = {"Landroidx/window/layout/DisplayCompatHelperApi28;", "", "()V", "safeInsetBottom", "", "displayCutout", "Landroid/view/DisplayCutout;", "safeInsetLeft", "safeInsetRight", "safeInsetTop", "window_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class DisplayCompatHelperApi28 {
    public static final DisplayCompatHelperApi28 INSTANCE = new DisplayCompatHelperApi28();

    private DisplayCompatHelperApi28() {
    }

    public final int safeInsetLeft(DisplayCutout displayCutout) {
        Intrinsics.checkNotNullParameter(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetLeft();
    }

    public final int safeInsetTop(DisplayCutout displayCutout) {
        Intrinsics.checkNotNullParameter(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetTop();
    }

    public final int safeInsetRight(DisplayCutout displayCutout) {
        Intrinsics.checkNotNullParameter(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetRight();
    }

    public final int safeInsetBottom(DisplayCutout displayCutout) {
        Intrinsics.checkNotNullParameter(displayCutout, "displayCutout");
        return displayCutout.getSafeInsetBottom();
    }
}
