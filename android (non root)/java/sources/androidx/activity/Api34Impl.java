package androidx.activity;

import android.window.BackEvent;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BackEventCompat.kt */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\b\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0004H\u0007¨\u0006\f"}, d2 = {"Landroidx/activity/Api34Impl;", "", "()V", "createOnBackEvent", "Landroid/window/BackEvent;", "touchX", "", "touchY", NotificationCompat.CATEGORY_PROGRESS, "swipeEdge", "", "backEvent", "activity_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api34Impl {
    public static final Api34Impl INSTANCE = new Api34Impl();

    private Api34Impl() {
    }

    public final BackEvent createOnBackEvent(float touchX, float touchY, float progress, int swipeEdge) {
        return new BackEvent(touchX, touchY, progress, swipeEdge);
    }

    public final float progress(BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getProgress();
    }

    public final float touchX(BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchX();
    }

    public final float touchY(BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getTouchY();
    }

    public final int swipeEdge(BackEvent backEvent) {
        Intrinsics.checkNotNullParameter(backEvent, "backEvent");
        return backEvent.getSwipeEdge();
    }
}
