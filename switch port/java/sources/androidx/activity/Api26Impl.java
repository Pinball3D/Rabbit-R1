package androidx.activity;

import android.app.Activity;
import android.app.PictureInPictureParams;
import android.graphics.Rect;
import kotlin.Metadata;

/* compiled from: PipHintTracker.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÁ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Landroidx/activity/Api26Impl;", "", "()V", "setPipParamsSourceRectHint", "", "activity", "Landroid/app/Activity;", "hint", "Landroid/graphics/Rect;", "activity-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class Api26Impl {
    public static final Api26Impl INSTANCE = new Api26Impl();

    private Api26Impl() {
    }

    public final void setPipParamsSourceRectHint(Activity activity, Rect hint) {
        activity.setPictureInPictureParams(new PictureInPictureParams.Builder().setSourceRectHint(hint).build());
    }
}
