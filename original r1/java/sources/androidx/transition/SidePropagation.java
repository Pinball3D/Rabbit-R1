package androidx.transition;

import android.graphics.Rect;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
public class SidePropagation extends VisibilityPropagation {
    private float mPropagationSpeed = 3.0f;
    private int mSide = 80;

    public void setSide(int i) {
        this.mSide = i;
    }

    public void setPropagationSpeed(float f) {
        if (f == 0.0f) {
            throw new IllegalArgumentException("propagationSpeed may not be 0");
        }
        this.mPropagationSpeed = f;
    }

    @Override // androidx.transition.TransitionPropagation
    public long getStartDelay(ViewGroup viewGroup, Transition transition, TransitionValues transitionValues, TransitionValues transitionValues2) {
        int i;
        int i2;
        int i3;
        TransitionValues transitionValues3 = transitionValues;
        if (transitionValues3 == null && transitionValues2 == null) {
            return 0L;
        }
        Rect epicenter = transition.getEpicenter();
        if (transitionValues2 == null || getViewVisibility(transitionValues3) == 0) {
            i = -1;
        } else {
            transitionValues3 = transitionValues2;
            i = 1;
        }
        int viewX = getViewX(transitionValues3);
        int viewY = getViewY(transitionValues3);
        int[] iArr = new int[2];
        viewGroup.getLocationOnScreen(iArr);
        int round = iArr[0] + Math.round(viewGroup.getTranslationX());
        int round2 = iArr[1] + Math.round(viewGroup.getTranslationY());
        int width = round + viewGroup.getWidth();
        int height = round2 + viewGroup.getHeight();
        if (epicenter != null) {
            i2 = epicenter.centerX();
            i3 = epicenter.centerY();
        } else {
            i2 = (round + width) / 2;
            i3 = (round2 + height) / 2;
        }
        float distance = distance(viewGroup, viewX, viewY, i2, i3, round, round2, width, height) / getMaxDistance(viewGroup);
        long duration = transition.getDuration();
        if (duration < 0) {
            duration = 300;
        }
        return Math.round((((float) (duration * i)) / this.mPropagationSpeed) * distance);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0012, code lost:
    
        r4 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x001d, code lost:
    
        if (androidx.core.view.ViewCompat.getLayoutDirection(r5) == 1) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (androidx.core.view.ViewCompat.getLayoutDirection(r5) == 1) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0010, code lost:
    
        r4 = 5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int distance(android.view.View r5, int r6, int r7, int r8, int r9, int r10, int r11, int r12, int r13) {
        /*
            r4 = this;
            int r4 = r4.mSide
            r0 = 8388611(0x800003, float:1.1754948E-38)
            r1 = 1
            r2 = 5
            r3 = 3
            if (r4 != r0) goto L14
            int r4 = androidx.core.view.ViewCompat.getLayoutDirection(r5)
            if (r4 != r1) goto L12
        L10:
            r4 = r2
            goto L20
        L12:
            r4 = r3
            goto L20
        L14:
            r0 = 8388613(0x800005, float:1.175495E-38)
            if (r4 != r0) goto L20
            int r4 = androidx.core.view.ViewCompat.getLayoutDirection(r5)
            if (r4 != r1) goto L10
            goto L12
        L20:
            if (r4 == r3) goto L46
            if (r4 == r2) goto L3e
            r5 = 48
            if (r4 == r5) goto L36
            r5 = 80
            if (r4 == r5) goto L2e
            r4 = 0
            goto L4d
        L2e:
            int r7 = r7 - r11
            int r8 = r8 - r6
            int r4 = java.lang.Math.abs(r8)
            int r4 = r4 + r7
            goto L4d
        L36:
            int r13 = r13 - r7
            int r8 = r8 - r6
            int r4 = java.lang.Math.abs(r8)
            int r4 = r4 + r13
            goto L4d
        L3e:
            int r6 = r6 - r10
            int r9 = r9 - r7
            int r4 = java.lang.Math.abs(r9)
            int r4 = r4 + r6
            goto L4d
        L46:
            int r12 = r12 - r6
            int r9 = r9 - r7
            int r4 = java.lang.Math.abs(r9)
            int r4 = r4 + r12
        L4d:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.SidePropagation.distance(android.view.View, int, int, int, int, int, int, int, int):int");
    }

    private int getMaxDistance(ViewGroup viewGroup) {
        int i = this.mSide;
        if (i == 3 || i == 5 || i == 8388611 || i == 8388613) {
            return viewGroup.getWidth();
        }
        return viewGroup.getHeight();
    }
}
