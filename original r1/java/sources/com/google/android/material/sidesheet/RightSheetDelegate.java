package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class RightSheetDelegate extends SheetDelegate {
    final SideSheetBehavior<? extends View> sheetBehavior;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getSheetEdge() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean isExpandingOutwards(float f) {
        return f < 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public RightSheetDelegate(SideSheetBehavior<? extends View> sideSheetBehavior) {
        this.sheetBehavior = sideSheetBehavior;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getHiddenOffset() {
        return this.sheetBehavior.getParentWidth();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getExpandedOffset() {
        return Math.max(0, (getHiddenOffset() - this.sheetBehavior.getChildWidth()) - this.sheetBehavior.getInnerMargin());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean isReleasedCloseToInnerEdge(View view) {
        return view.getLeft() > (getHiddenOffset() + getExpandedOffset()) / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean isSwipeSignificant(float f, float f2) {
        return SheetUtils.isSwipeMostlyHorizontal(f, f2) && Math.abs(f) > ((float) this.sheetBehavior.getSignificantVelocityThreshold());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public boolean shouldHide(View view, float f) {
        return Math.abs(((float) view.getRight()) + (f * this.sheetBehavior.getHideFriction())) > this.sheetBehavior.getHideThreshold();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public <V extends View> int getOuterEdge(V v) {
        return v.getLeft() - this.sheetBehavior.getInnerMargin();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public float calculateSlideOffset(int i) {
        float hiddenOffset = getHiddenOffset();
        return (hiddenOffset - i) / (hiddenOffset - getExpandedOffset());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public void updateCoplanarSiblingLayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int parentWidth = this.sheetBehavior.getParentWidth();
        if (i <= parentWidth) {
            marginLayoutParams.rightMargin = parentWidth - i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public void updateCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.rightMargin = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getCoplanarSiblingAdjacentMargin(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getParentInnerEdge(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int calculateInnerMargin(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getMinViewPositionHorizontal() {
        return getExpandedOffset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.sidesheet.SheetDelegate
    public int getMaxViewPositionHorizontal() {
        return this.sheetBehavior.getParentWidth();
    }
}
