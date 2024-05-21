package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import android.util.Log;
import com.journeyapps.barcodescanner.Size;

/* loaded from: classes3.dex */
public class FitCenterStrategy extends PreviewScalingStrategy {
    private static final String TAG = "FitCenterStrategy";

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    protected float getScore(Size size, Size size2) {
        if (size.width <= 0 || size.height <= 0) {
            return 0.0f;
        }
        Size scaleFit = size.scaleFit(size2);
        float f = (scaleFit.width * 1.0f) / size.width;
        if (f > 1.0f) {
            f = (float) Math.pow(1.0f / f, 1.1d);
        }
        float f2 = ((size2.width * 1.0f) / scaleFit.width) * ((size2.height * 1.0f) / scaleFit.height);
        return f * (((1.0f / f2) / f2) / f2);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        Size scaleFit = size.scaleFit(size2);
        Log.i(TAG, "Preview: " + size + "; Scaled: " + scaleFit + "; Want: " + size2);
        int i = (scaleFit.width - size2.width) / 2;
        int i2 = (scaleFit.height - size2.height) / 2;
        return new Rect(-i, -i2, scaleFit.width - i, scaleFit.height - i2);
    }
}
