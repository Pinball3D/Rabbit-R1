package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class SheetDelegate {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float calculateSlideOffset(int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getExpandedOffset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getHiddenOffset();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getMaxViewPositionHorizontal();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getMinViewPositionHorizontal();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract <V extends View> int getOuterEdge(V v);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentInnerEdge(CoordinatorLayout coordinatorLayout);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getSheetEdge();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isExpandingOutwards(float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isReleasedCloseToInnerEdge(View view);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean isSwipeSignificant(float f, float f2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean shouldHide(View view, float f);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void updateCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams, int i);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2);
}
