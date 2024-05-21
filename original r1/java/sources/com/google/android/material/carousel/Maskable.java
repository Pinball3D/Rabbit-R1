package com.google.android.material.carousel;

import android.graphics.RectF;

/* loaded from: classes2.dex */
interface Maskable {
    RectF getMaskRectF();

    @Deprecated
    float getMaskXPercentage();

    void setMaskRectF(RectF rectF);

    @Deprecated
    void setMaskXPercentage(float f);

    void setOnMaskChangedListener(OnMaskChangedListener onMaskChangedListener);
}
