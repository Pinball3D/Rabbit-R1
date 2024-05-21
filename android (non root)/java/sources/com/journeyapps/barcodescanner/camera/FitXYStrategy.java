package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;

/* loaded from: classes3.dex */
public class FitXYStrategy extends PreviewScalingStrategy {
    private static final String TAG = "FitXYStrategy";

    private static float absRatio(float f) {
        return f < 1.0f ? 1.0f / f : f;
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    protected float getScore(Size size, Size size2) {
        if (size.width <= 0 || size.height <= 0) {
            return 0.0f;
        }
        float absRatio = (1.0f / absRatio((size.width * 1.0f) / size2.width)) / absRatio((size.height * 1.0f) / size2.height);
        float absRatio2 = absRatio(((size.width * 1.0f) / size.height) / ((size2.width * 1.0f) / size2.height));
        return absRatio * (((1.0f / absRatio2) / absRatio2) / absRatio2);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        return new Rect(0, 0, size2.width, size2.height);
    }
}
