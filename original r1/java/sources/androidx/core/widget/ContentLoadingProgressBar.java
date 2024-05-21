package androidx.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class ContentLoadingProgressBar extends ProgressBar {
    private static final int MIN_DELAY_MS = 500;
    private static final int MIN_SHOW_TIME_MS = 500;
    private final Runnable mDelayedHide;
    private final Runnable mDelayedShow;
    boolean mDismissed;
    boolean mPostedHide;
    boolean mPostedShow;
    long mStartTime;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$androidx-core-widget-ContentLoadingProgressBar, reason: not valid java name */
    public /* synthetic */ void m5157lambda$new$0$androidxcorewidgetContentLoadingProgressBar() {
        this.mPostedHide = false;
        this.mStartTime = -1L;
        setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$androidx-core-widget-ContentLoadingProgressBar, reason: not valid java name */
    public /* synthetic */ void m5158lambda$new$1$androidxcorewidgetContentLoadingProgressBar() {
        this.mPostedShow = false;
        if (this.mDismissed) {
            return;
        }
        this.mStartTime = System.currentTimeMillis();
        setVisibility(0);
    }

    public ContentLoadingProgressBar(Context context) {
        this(context, null);
    }

    public ContentLoadingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.mStartTime = -1L;
        this.mPostedHide = false;
        this.mPostedShow = false;
        this.mDismissed = false;
        this.mDelayedHide = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m5157lambda$new$0$androidxcorewidgetContentLoadingProgressBar();
            }
        };
        this.mDelayedShow = new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.m5158lambda$new$1$androidxcorewidgetContentLoadingProgressBar();
            }
        };
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        removeCallbacks();
    }

    @Override // android.widget.ProgressBar, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks();
    }

    private void removeCallbacks() {
        removeCallbacks(this.mDelayedHide);
        removeCallbacks(this.mDelayedShow);
    }

    public void hide() {
        post(new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.hideOnUiThread();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideOnUiThread() {
        this.mDismissed = true;
        removeCallbacks(this.mDelayedShow);
        this.mPostedShow = false;
        long currentTimeMillis = System.currentTimeMillis();
        long j = this.mStartTime;
        long j2 = currentTimeMillis - j;
        if (j2 >= 500 || j == -1) {
            setVisibility(8);
        } else {
            if (this.mPostedHide) {
                return;
            }
            postDelayed(this.mDelayedHide, 500 - j2);
            this.mPostedHide = true;
        }
    }

    public void show() {
        post(new Runnable() { // from class: androidx.core.widget.ContentLoadingProgressBar$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ContentLoadingProgressBar.this.showOnUiThread();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showOnUiThread() {
        this.mStartTime = -1L;
        this.mDismissed = false;
        removeCallbacks(this.mDelayedHide);
        this.mPostedHide = false;
        if (this.mPostedShow) {
            return;
        }
        postDelayed(this.mDelayedShow, 500L);
        this.mPostedShow = true;
    }
}
