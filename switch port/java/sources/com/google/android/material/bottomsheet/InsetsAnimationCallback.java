package com.google.android.material.bottomsheet;

import android.view.View;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.animation.AnimationUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
class InsetsAnimationCallback extends WindowInsetsAnimationCompat.Callback {
    private int startTranslationY;
    private int startY;
    private final int[] tmpLocation;
    private final View view;

    public InsetsAnimationCallback(View view) {
        super(0);
        this.tmpLocation = new int[2];
        this.view = view;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.view.getLocationOnScreen(this.tmpLocation);
        this.startY = this.tmpLocation[1];
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsAnimationCompat.BoundsCompat boundsCompat) {
        this.view.getLocationOnScreen(this.tmpLocation);
        int i = this.startY - this.tmpLocation[1];
        this.startTranslationY = i;
        this.view.setTranslationY(i);
        return boundsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list) {
        Iterator<WindowInsetsAnimationCompat> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if ((it.next().getTypeMask() & WindowInsetsCompat.Type.ime()) != 0) {
                this.view.setTranslationY(AnimationUtils.lerp(this.startTranslationY, 0, r0.getInterpolatedFraction()));
                break;
            }
        }
        return windowInsetsCompat;
    }

    @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
    public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        this.view.setTranslationY(0.0f);
    }
}
