package com.google.android.material.shape;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes2.dex */
class ShapeableDelegateV22 extends ShapeableDelegate {
    private boolean canUseViewOutline = false;
    private float cornerRadius = 0.0f;

    float getCornerRadius() {
        return this.cornerRadius;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ShapeableDelegateV22(View view) {
        initMaskOutlineProvider(view);
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    boolean shouldUseCompatClipping() {
        return !this.canUseViewOutline || this.forceCompatClippingEnabled;
    }

    @Override // com.google.android.material.shape.ShapeableDelegate
    void invalidateClippingMethod(View view) {
        this.cornerRadius = getDefaultCornerRadius();
        this.canUseViewOutline = isShapeRoundRect() || offsetZeroCornerEdgeBoundsIfPossible();
        view.setClipToOutline(!shouldUseCompatClipping());
        if (shouldUseCompatClipping()) {
            view.invalidate();
        } else {
            view.invalidateOutline();
        }
    }

    private float getDefaultCornerRadius() {
        if (this.shapeAppearanceModel == null || this.maskBounds == null) {
            return 0.0f;
        }
        return this.shapeAppearanceModel.topRightCornerSize.getCornerSize(this.maskBounds);
    }

    private boolean isShapeRoundRect() {
        if (this.maskBounds.isEmpty() || this.shapeAppearanceModel == null) {
            return false;
        }
        return this.shapeAppearanceModel.isRoundRect(this.maskBounds);
    }

    private boolean offsetZeroCornerEdgeBoundsIfPossible() {
        if (!this.maskBounds.isEmpty() && this.shapeAppearanceModel != null && this.offsetZeroCornerEdgeBoundsEnabled && !this.shapeAppearanceModel.isRoundRect(this.maskBounds) && shapeUsesAllRoundedCornerTreatments(this.shapeAppearanceModel)) {
            float cornerSize = this.shapeAppearanceModel.getTopLeftCornerSize().getCornerSize(this.maskBounds);
            float cornerSize2 = this.shapeAppearanceModel.getTopRightCornerSize().getCornerSize(this.maskBounds);
            float cornerSize3 = this.shapeAppearanceModel.getBottomLeftCornerSize().getCornerSize(this.maskBounds);
            float cornerSize4 = this.shapeAppearanceModel.getBottomRightCornerSize().getCornerSize(this.maskBounds);
            if (cornerSize == 0.0f && cornerSize3 == 0.0f && cornerSize2 == cornerSize4) {
                this.maskBounds.set(this.maskBounds.left - cornerSize2, this.maskBounds.top, this.maskBounds.right, this.maskBounds.bottom);
                this.cornerRadius = cornerSize2;
                return true;
            }
            if (cornerSize == 0.0f && cornerSize2 == 0.0f && cornerSize3 == cornerSize4) {
                this.maskBounds.set(this.maskBounds.left, this.maskBounds.top - cornerSize3, this.maskBounds.right, this.maskBounds.bottom);
                this.cornerRadius = cornerSize3;
                return true;
            }
            if (cornerSize2 == 0.0f && cornerSize4 == 0.0f && cornerSize == cornerSize3) {
                this.maskBounds.set(this.maskBounds.left, this.maskBounds.top, this.maskBounds.right + cornerSize, this.maskBounds.bottom);
                this.cornerRadius = cornerSize;
                return true;
            }
            if (cornerSize3 == 0.0f && cornerSize4 == 0.0f && cornerSize == cornerSize2) {
                this.maskBounds.set(this.maskBounds.left, this.maskBounds.top, this.maskBounds.right, this.maskBounds.bottom + cornerSize);
                this.cornerRadius = cornerSize;
                return true;
            }
        }
        return false;
    }

    private static boolean shapeUsesAllRoundedCornerTreatments(ShapeAppearanceModel shapeAppearanceModel) {
        return (shapeAppearanceModel.getTopLeftCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getTopRightCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getBottomLeftCorner() instanceof RoundedCornerTreatment) && (shapeAppearanceModel.getBottomRightCorner() instanceof RoundedCornerTreatment);
    }

    private void initMaskOutlineProvider(View view) {
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.google.android.material.shape.ShapeableDelegateV22.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (ShapeableDelegateV22.this.shapeAppearanceModel == null || ShapeableDelegateV22.this.maskBounds.isEmpty()) {
                    return;
                }
                outline.setRoundRect((int) ShapeableDelegateV22.this.maskBounds.left, (int) ShapeableDelegateV22.this.maskBounds.top, (int) ShapeableDelegateV22.this.maskBounds.right, (int) ShapeableDelegateV22.this.maskBounds.bottom, ShapeableDelegateV22.this.cornerRadius);
            }
        });
    }
}
