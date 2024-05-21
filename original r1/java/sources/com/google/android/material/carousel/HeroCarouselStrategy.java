package com.google.android.material.carousel;

import android.view.View;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class HeroCarouselStrategy extends CarouselStrategy {
    private int keylineCount = 0;
    private static final int[] SMALL_COUNTS = {1};
    private static final int[] MEDIUM_COUNTS = {0, 1};

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        int i;
        int containerHeight = carousel.getContainerHeight();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f = layoutParams.topMargin + layoutParams.bottomMargin;
        float measuredWidth = view.getMeasuredWidth() * 2;
        if (carousel.isHorizontal()) {
            f = layoutParams.leftMargin + layoutParams.rightMargin;
            measuredWidth = view.getMeasuredHeight() * 2;
        }
        float smallSizeMin = CarouselStrategyHelper.getSmallSizeMin(view.getContext()) + f;
        float smallSizeMax = CarouselStrategyHelper.getSmallSizeMax(view.getContext()) + f;
        float f2 = containerHeight;
        float min = Math.min(measuredWidth + f, f2);
        float clamp = MathUtils.clamp((measuredWidth / 3.0f) + f, CarouselStrategyHelper.getSmallSizeMin(view.getContext()) + f, CarouselStrategyHelper.getSmallSizeMax(view.getContext()) + f);
        float f3 = (min + clamp) / 2.0f;
        int[] iArr = f2 < 2.0f * smallSizeMin ? new int[]{0} : SMALL_COUNTS;
        int max = (int) Math.max(1.0d, Math.floor((f2 - (CarouselStrategyHelper.maxValue(r4) * smallSizeMax)) / min));
        int ceil = (((int) Math.ceil(f2 / min)) - max) + 1;
        int[] iArr2 = new int[ceil];
        for (int i2 = 0; i2 < ceil; i2++) {
            iArr2[i2] = max + i2;
        }
        int i3 = carousel.getCarouselAlignment() == 1 ? 1 : 0;
        Arrangement findLowestCostArrangement = Arrangement.findLowestCostArrangement(f2, clamp, smallSizeMin, smallSizeMax, i3 != 0 ? doubleCounts(iArr) : iArr, f3, i3 != 0 ? doubleCounts(MEDIUM_COUNTS) : MEDIUM_COUNTS, min, iArr2);
        this.keylineCount = findLowestCostArrangement.getItemCount();
        if (findLowestCostArrangement.getItemCount() > carousel.getItemCount()) {
            findLowestCostArrangement = Arrangement.findLowestCostArrangement(f2, clamp, smallSizeMin, smallSizeMax, iArr, f3, MEDIUM_COUNTS, min, iArr2);
            i = 0;
        } else {
            i = i3;
        }
        return CarouselStrategyHelper.createKeylineState(view.getContext(), f, f2, findLowestCostArrangement, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean shouldRefreshKeylineState(Carousel carousel, int i) {
        if (carousel.getCarouselAlignment() == 1) {
            if (i < this.keylineCount && carousel.getItemCount() >= this.keylineCount) {
                return true;
            }
            if (i >= this.keylineCount && carousel.getItemCount() < this.keylineCount) {
                return true;
            }
        }
        return false;
    }
}
