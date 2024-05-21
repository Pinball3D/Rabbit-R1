package com.google.android.material.carousel;

import android.view.View;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public final class MultiBrowseCarouselStrategy extends CarouselStrategy {
    private int keylineCount = 0;
    private static final int[] SMALL_COUNTS = {1};
    private static final int[] MEDIUM_COUNTS = {1, 0};

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        float containerHeight = carousel.getContainerHeight();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
        }
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        float f = layoutParams.topMargin + layoutParams.bottomMargin;
        float measuredHeight = view.getMeasuredHeight();
        if (carousel.isHorizontal()) {
            f = layoutParams.leftMargin + layoutParams.rightMargin;
            measuredHeight = view.getMeasuredWidth();
        }
        float f2 = f;
        float smallSizeMin = CarouselStrategyHelper.getSmallSizeMin(view.getContext()) + f2;
        float smallSizeMax = CarouselStrategyHelper.getSmallSizeMax(view.getContext()) + f2;
        float min = Math.min(measuredHeight + f2, containerHeight);
        float clamp = MathUtils.clamp((measuredHeight / 3.0f) + f2, CarouselStrategyHelper.getSmallSizeMin(view.getContext()) + f2, CarouselStrategyHelper.getSmallSizeMax(view.getContext()) + f2);
        float f3 = (min + clamp) / 2.0f;
        int[] iArr = SMALL_COUNTS;
        if (containerHeight < 2.0f * smallSizeMin) {
            iArr = new int[]{0};
        }
        int[] iArr2 = MEDIUM_COUNTS;
        if (carousel.getCarouselAlignment() == 1) {
            iArr = doubleCounts(iArr);
            iArr2 = doubleCounts(iArr2);
        }
        int[] iArr3 = iArr;
        int[] iArr4 = iArr2;
        int max = (int) Math.max(1.0d, Math.floor(((containerHeight - (CarouselStrategyHelper.maxValue(iArr4) * f3)) - (CarouselStrategyHelper.maxValue(iArr3) * smallSizeMax)) / min));
        int ceil = (int) Math.ceil(containerHeight / min);
        int i = (ceil - max) + 1;
        int[] iArr5 = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr5[i2] = ceil - i2;
        }
        Arrangement findLowestCostArrangement = Arrangement.findLowestCostArrangement(containerHeight, clamp, smallSizeMin, smallSizeMax, iArr3, f3, iArr4, min, iArr5);
        this.keylineCount = findLowestCostArrangement.getItemCount();
        if (ensureArrangementFitsItemCount(findLowestCostArrangement, carousel.getItemCount())) {
            findLowestCostArrangement = Arrangement.findLowestCostArrangement(containerHeight, clamp, smallSizeMin, smallSizeMax, new int[]{findLowestCostArrangement.smallCount}, f3, new int[]{findLowestCostArrangement.mediumCount}, min, new int[]{findLowestCostArrangement.largeCount});
        }
        return CarouselStrategyHelper.createKeylineState(view.getContext(), f2, containerHeight, findLowestCostArrangement, carousel.getCarouselAlignment());
    }

    boolean ensureArrangementFitsItemCount(Arrangement arrangement, int i) {
        int itemCount = arrangement.getItemCount() - i;
        boolean z = itemCount > 0 && (arrangement.smallCount > 0 || arrangement.mediumCount > 1);
        while (itemCount > 0) {
            if (arrangement.smallCount > 0) {
                arrangement.smallCount--;
            } else if (arrangement.mediumCount > 1) {
                arrangement.mediumCount--;
            }
            itemCount--;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public boolean shouldRefreshKeylineState(Carousel carousel, int i) {
        return (i < this.keylineCount && carousel.getItemCount() >= this.keylineCount) || (i >= this.keylineCount && carousel.getItemCount() < this.keylineCount);
    }
}
