package androidx.transition;

import android.view.View;

/* loaded from: classes2.dex */
public abstract class VisibilityPropagation extends TransitionPropagation {
    private static final String PROPNAME_VISIBILITY = "android:visibilityPropagation:visibility";
    private static final String PROPNAME_VIEW_CENTER = "android:visibilityPropagation:center";
    private static final String[] VISIBILITY_PROPAGATION_VALUES = {PROPNAME_VISIBILITY, PROPNAME_VIEW_CENTER};

    @Override // androidx.transition.TransitionPropagation
    public String[] getPropagationProperties() {
        return VISIBILITY_PROPAGATION_VALUES;
    }

    @Override // androidx.transition.TransitionPropagation
    public void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        Integer num = (Integer) transitionValues.values.get("android:visibility:visibility");
        if (num == null) {
            num = Integer.valueOf(view.getVisibility());
        }
        transitionValues.values.put(PROPNAME_VISIBILITY, num);
        view.getLocationOnScreen(r1);
        int round = r1[0] + Math.round(view.getTranslationX());
        int[] iArr = {round};
        iArr[0] = round + (view.getWidth() / 2);
        int round2 = iArr[1] + Math.round(view.getTranslationY());
        iArr[1] = round2;
        iArr[1] = round2 + (view.getHeight() / 2);
        transitionValues.values.put(PROPNAME_VIEW_CENTER, iArr);
    }

    public int getViewVisibility(TransitionValues transitionValues) {
        Integer num;
        if (transitionValues == null || (num = (Integer) transitionValues.values.get(PROPNAME_VISIBILITY)) == null) {
            return 8;
        }
        return num.intValue();
    }

    public int getViewX(TransitionValues transitionValues) {
        return getViewCoordinate(transitionValues, 0);
    }

    public int getViewY(TransitionValues transitionValues) {
        return getViewCoordinate(transitionValues, 1);
    }

    private static int getViewCoordinate(TransitionValues transitionValues, int i) {
        int[] iArr;
        if (transitionValues == null || (iArr = (int[]) transitionValues.values.get(PROPNAME_VIEW_CENTER)) == null) {
            return -1;
        }
        return iArr[i];
    }
}
