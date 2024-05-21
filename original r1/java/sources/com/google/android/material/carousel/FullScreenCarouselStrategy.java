package com.google.android.material.carousel;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class FullScreenCarouselStrategy extends CarouselStrategy {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.carousel.CarouselStrategy
    public KeylineState onFirstChildMeasuredWithMargins(Carousel carousel, View view) {
        float containerHeight;
        int i;
        int i2;
        RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
        if (carousel.isHorizontal()) {
            containerHeight = carousel.getContainerWidth();
            i = layoutParams.leftMargin;
            i2 = layoutParams.rightMargin;
        } else {
            containerHeight = carousel.getContainerHeight();
            i = layoutParams.topMargin;
            i2 = layoutParams.bottomMargin;
        }
        float f = i + i2;
        return CarouselStrategyHelper.createLeftAlignedKeylineState(view.getContext(), f, containerHeight, new Arrangement(0, 0.0f, 0.0f, 0.0f, 0, 0.0f, 0, Math.min(containerHeight + f, containerHeight), 1, containerHeight));
    }
}
