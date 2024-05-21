package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class FadeTabIndicatorInterpolator extends TabIndicatorInterpolator {
    private static final float FADE_THRESHOLD = 0.5f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.tabs.TabIndicatorInterpolator
    public void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float lerp;
        if (f >= 0.5f) {
            view = view2;
        }
        RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
        if (f < 0.5f) {
            lerp = AnimationUtils.lerp(1.0f, 0.0f, 0.0f, 0.5f, f);
        } else {
            lerp = AnimationUtils.lerp(0.0f, 1.0f, 0.5f, 1.0f, f);
        }
        drawable.setBounds((int) calculateIndicatorWidthForTab.left, drawable.getBounds().top, (int) calculateIndicatorWidthForTab.right, drawable.getBounds().bottom);
        drawable.setAlpha((int) (lerp * 255.0f));
    }
}
