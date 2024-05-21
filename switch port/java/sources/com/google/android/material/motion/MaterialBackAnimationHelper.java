package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.Log;
import android.view.View;
import androidx.activity.BackEventCompat;
import androidx.core.view.animation.PathInterpolatorCompat;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public abstract class MaterialBackAnimationHelper<V extends View> {
    private static final int CANCEL_DURATION_DEFAULT = 100;
    private static final int HIDE_DURATION_MAX_DEFAULT = 300;
    private static final int HIDE_DURATION_MIN_DEFAULT = 150;
    private static final String TAG = "MaterialBackHelper";
    private BackEventCompat backEvent;
    protected final int cancelDuration;
    protected final int hideDurationMax;
    protected final int hideDurationMin;
    private final TimeInterpolator progressInterpolator;
    protected final V view;

    public BackEventCompat onHandleBackInvoked() {
        BackEventCompat backEventCompat = this.backEvent;
        this.backEvent = null;
        return backEventCompat;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onStartBackProgress(BackEventCompat backEventCompat) {
        this.backEvent = backEventCompat;
    }

    public MaterialBackAnimationHelper(V v) {
        this.view = v;
        Context context = v.getContext();
        this.progressInterpolator = MotionUtils.resolveThemeInterpolator(context, R.attr.motionEasingStandardDecelerateInterpolator, PathInterpolatorCompat.create(0.0f, 0.0f, 0.0f, 1.0f));
        this.hideDurationMax = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationMedium2, 300);
        this.hideDurationMin = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort3, 150);
        this.cancelDuration = MotionUtils.resolveThemeDuration(context, R.attr.motionDurationShort2, 100);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public float interpolateProgress(float f) {
        return this.progressInterpolator.getInterpolation(f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BackEventCompat onUpdateBackProgress(BackEventCompat backEventCompat) {
        if (this.backEvent == null) {
            Log.w(TAG, "Must call startBackProgress() before updateBackProgress()");
        }
        BackEventCompat backEventCompat2 = this.backEvent;
        this.backEvent = backEventCompat;
        return backEventCompat2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BackEventCompat onCancelBackProgress() {
        if (this.backEvent == null) {
            Log.w(TAG, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()");
        }
        BackEventCompat backEventCompat = this.backEvent;
        this.backEvent = null;
        return backEventCompat;
    }
}
