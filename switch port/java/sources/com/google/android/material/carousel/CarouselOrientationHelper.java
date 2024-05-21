package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
abstract class CarouselOrientationHelper {
    final int orientation;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract float getMaskMargins(RecyclerView.LayoutParams layoutParams);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract RectF getMaskRect(float f, float f2, float f3, float f4);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentBottom();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentEnd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentLeft();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentRight();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentStart();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int getParentTop();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void layoutDecoratedWithMargins(View view, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void offsetChild(View view, Rect rect, float f, float f2);

    private CarouselOrientationHelper(int i) {
        this.orientation = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static CarouselOrientationHelper createOrientationHelper(CarouselLayoutManager carouselLayoutManager, int i) {
        if (i == 0) {
            return createHorizontalHelper(carouselLayoutManager);
        }
        if (i == 1) {
            return createVerticalHelper(carouselLayoutManager);
        }
        throw new IllegalArgumentException("invalid orientation");
    }

    private static CarouselOrientationHelper createVerticalHelper(final CarouselLayoutManager carouselLayoutManager) {
        return new CarouselOrientationHelper(1) { // from class: com.google.android.material.carousel.CarouselOrientationHelper.1
            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentTop() {
                return 0;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentLeft() {
                return carouselLayoutManager.getPaddingLeft();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentStart() {
                return getParentTop();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentRight() {
                return carouselLayoutManager.getWidth() - carouselLayoutManager.getPaddingRight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentEnd() {
                return getParentBottom();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentBottom() {
                return carouselLayoutManager.getHeight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void layoutDecoratedWithMargins(View view, int i, int i2) {
                carouselLayoutManager.layoutDecoratedWithMargins(view, getParentLeft(), i, getParentRight(), i2);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public float getMaskMargins(RecyclerView.LayoutParams layoutParams) {
                return layoutParams.topMargin + layoutParams.bottomMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public RectF getMaskRect(float f, float f2, float f3, float f4) {
                return new RectF(0.0f, f3, f2, f - f3);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.top < rectF3.top && rectF2.bottom > rectF3.top) {
                    float f = rectF3.top - rectF2.top;
                    rectF.top += f;
                    rectF3.top += f;
                }
                if (rectF2.bottom <= rectF3.bottom || rectF2.top >= rectF3.bottom) {
                    return;
                }
                float f2 = rectF2.bottom - rectF3.bottom;
                rectF.bottom = Math.max(rectF.bottom - f2, rectF.top);
                rectF2.bottom = Math.max(rectF2.bottom - f2, rectF2.top);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.bottom <= rectF3.top) {
                    rectF.bottom = ((float) Math.floor(rectF.bottom)) - 1.0f;
                    rectF.top = Math.min(rectF.top, rectF.bottom);
                }
                if (rectF2.top >= rectF3.bottom) {
                    rectF.top = ((float) Math.ceil(rectF.top)) + 1.0f;
                    rectF.bottom = Math.max(rectF.top, rectF.bottom);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void offsetChild(View view, Rect rect, float f, float f2) {
                view.offsetTopAndBottom((int) (f2 - (rect.top + f)));
            }
        };
    }

    private static CarouselOrientationHelper createHorizontalHelper(final CarouselLayoutManager carouselLayoutManager) {
        return new CarouselOrientationHelper(0) { // from class: com.google.android.material.carousel.CarouselOrientationHelper.2
            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentLeft() {
                return 0;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentStart() {
                return carouselLayoutManager.isLayoutRtl() ? getParentRight() : getParentLeft();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentRight() {
                return carouselLayoutManager.getWidth();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentEnd() {
                return carouselLayoutManager.isLayoutRtl() ? getParentLeft() : getParentRight();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentTop() {
                return carouselLayoutManager.getPaddingTop();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            int getParentBottom() {
                return carouselLayoutManager.getHeight() - carouselLayoutManager.getPaddingBottom();
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void layoutDecoratedWithMargins(View view, int i, int i2) {
                carouselLayoutManager.layoutDecoratedWithMargins(view, i, getParentTop(), i2, getParentBottom());
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public float getMaskMargins(RecyclerView.LayoutParams layoutParams) {
                return layoutParams.rightMargin + layoutParams.leftMargin;
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public RectF getMaskRect(float f, float f2, float f3, float f4) {
                return new RectF(f4, 0.0f, f2 - f4, f);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void containMaskWithinBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.left < rectF3.left && rectF2.right > rectF3.left) {
                    float f = rectF3.left - rectF2.left;
                    rectF.left += f;
                    rectF2.left += f;
                }
                if (rectF2.right <= rectF3.right || rectF2.left >= rectF3.right) {
                    return;
                }
                float f2 = rectF2.right - rectF3.right;
                rectF.right = Math.max(rectF.right - f2, rectF.left);
                rectF2.right = Math.max(rectF2.right - f2, rectF2.left);
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void moveMaskOnEdgeOutsideBounds(RectF rectF, RectF rectF2, RectF rectF3) {
                if (rectF2.right <= rectF3.left) {
                    rectF.right = ((float) Math.floor(rectF.right)) - 1.0f;
                    rectF.left = Math.min(rectF.left, rectF.right);
                }
                if (rectF2.left >= rectF3.right) {
                    rectF.left = ((float) Math.ceil(rectF.left)) + 1.0f;
                    rectF.right = Math.max(rectF.left, rectF.right);
                }
            }

            @Override // com.google.android.material.carousel.CarouselOrientationHelper
            public void offsetChild(View view, Rect rect, float f, float f2) {
                view.offsetLeftAndRight((int) (f2 - (rect.left + f)));
            }
        };
    }
}
