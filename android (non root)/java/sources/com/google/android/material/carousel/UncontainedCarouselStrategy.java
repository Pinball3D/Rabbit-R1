package com.google.android.material.carousel;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.carousel.KeylineState;

/* loaded from: classes2.dex */
public final class UncontainedCarouselStrategy extends CarouselStrategy {
    private static final float MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD = 0.85f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean isContained() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        float f;
        float containerWidth = carousel.isHorizontal() ? carousel.getContainerWidth() : carousel.getContainerHeight();
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f2 = layoutParams.topMargin + layoutParams.bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (carousel.isHorizontal()) {
            float f3 = layoutParams.leftMargin + layoutParams.rightMargin;
            measuredHeight = view.getMeasuredWidth();
            f = f3;
        } else {
            f = f2;
        }
        float f4 = measuredHeight + f;
        float extraSmallSize = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f;
        float extraSmallSize2 = CarouselStrategyHelper.getExtraSmallSize(view.getContext()) + f;
        int max = Math.max(1, (int) Math.floor(containerWidth / f4));
        float f5 = containerWidth - (max * f4);
        if (carousel.getCarouselAlignment() == 1) {
            float f6 = f5 / 2.0f;
            return createCenterAlignedKeylineState(containerWidth, f, f4, max, Math.max(Math.min(3.0f * f6, f4), CarouselStrategyHelper.getSmallSizeMin(view.getContext()) + f), extraSmallSize2, f6);
        }
        return createLeftAlignedKeylineState(view.getContext(), f, containerWidth, f4, max, calculateMediumChildSize(extraSmallSize, f4, f5), f5 > 0.0f ? 1 : 0, extraSmallSize2);
    }

    private float calculateMediumChildSize(float f, float f2, float f3) {
        float max = Math.max(1.5f * f3, f);
        float f4 = MEDIUM_LARGE_ITEM_PERCENTAGE_THRESHOLD * f2;
        if (max > f4) {
            max = Math.max(f4, f3 * 1.2f);
        }
        return Math.min(f2, max);
    }

    private KeylineState createCenterAlignedKeylineState(float f, float f2, float f3, int i, float f4, float f5, float f6) {
        float min = Math.min(f5, f3);
        float childMaskPercentage = getChildMaskPercentage(min, f3, f2);
        float childMaskPercentage2 = getChildMaskPercentage(f4, f3, f2);
        float f7 = f4 / 2.0f;
        float f8 = (f6 + 0.0f) - f7;
        float f9 = f8 + f7;
        float f10 = min / 2.0f;
        float f11 = (i * f3) + f9;
        KeylineState.Builder addKeylineRange = new KeylineState.Builder(f3, f).addAnchorKeyline((f8 - f7) - f10, childMaskPercentage, min).addKeyline(f8, childMaskPercentage2, f4, false).addKeylineRange((f3 / 2.0f) + f9, 0.0f, f3, i, true);
        addKeylineRange.addKeyline(f7 + f11, childMaskPercentage2, f4, false);
        addKeylineRange.addAnchorKeyline(f11 + f4 + f10, childMaskPercentage, min);
        return addKeylineRange.build();
    }

    private KeylineState createLeftAlignedKeylineState(Context context, float f, float f2, float f3, int i, float f4, int i2, float f5) {
        float min = Math.min(f5, f3);
        float max = Math.max(min, 0.5f * f4);
        float childMaskPercentage = getChildMaskPercentage(max, f3, f);
        float childMaskPercentage2 = getChildMaskPercentage(min, f3, f);
        float childMaskPercentage3 = getChildMaskPercentage(f4, f3, f);
        float f6 = (i * f3) + 0.0f;
        KeylineState.Builder addKeylineRange = new KeylineState.Builder(f3, f2).addAnchorKeyline(0.0f - (max / 2.0f), childMaskPercentage, max).addKeylineRange(f3 / 2.0f, 0.0f, f3, i, true);
        if (i2 > 0) {
            float f7 = (f4 / 2.0f) + f6;
            f6 += f4;
            addKeylineRange.addKeyline(f7, childMaskPercentage3, f4, false);
        }
        addKeylineRange.addAnchorKeyline(f6 + (CarouselStrategyHelper.getExtraSmallSize(context) / 2.0f), childMaskPercentage2, min);
        return addKeylineRange.build();
    }
}
