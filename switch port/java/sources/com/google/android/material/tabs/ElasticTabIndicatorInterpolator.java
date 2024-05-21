package com.google.android.material.tabs;

import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ElasticTabIndicatorInterpolator extends TabIndicatorInterpolator {
    private static float decInterp(float f) {
        return (float) Math.sin((f * 3.141592653589793d) / 2.0d);
    }

    private static float accInterp(float f) {
        return (float) (1.0d - Math.cos((f * 3.141592653589793d) / 2.0d));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.tabs.TabIndicatorInterpolator
    public void updateIndicatorForOffset(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        float decInterp;
        float accInterp;
        RectF calculateIndicatorWidthForTab = calculateIndicatorWidthForTab(tabLayout, view);
        RectF calculateIndicatorWidthForTab2 = calculateIndicatorWidthForTab(tabLayout, view2);
        if (calculateIndicatorWidthForTab.left < calculateIndicatorWidthForTab2.left) {
            decInterp = accInterp(f);
            accInterp = decInterp(f);
        } else {
            decInterp = decInterp(f);
            accInterp = accInterp(f);
        }
        drawable.setBounds(AnimationUtils.lerp((int) calculateIndicatorWidthForTab.left, (int) calculateIndicatorWidthForTab2.left, decInterp), drawable.getBounds().top, AnimationUtils.lerp((int) calculateIndicatorWidthForTab.right, (int) calculateIndicatorWidthForTab2.right, accInterp), drawable.getBounds().bottom);
    }
}
