package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import android.util.Log;
import com.journeyapps.barcodescanner.Size;

/* loaded from: classes3.dex */
public class CenterCropStrategy extends PreviewScalingStrategy {
    private static final String TAG = "CenterCropStrategy";

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    protected float getScore(Size size, Size size2) {
        if (size.width <= 0 || size.height <= 0) {
            return 0.0f;
        }
        Size scaleCrop = size.scaleCrop(size2);
        float f = (scaleCrop.width * 1.0f) / size.width;
        if (f > 1.0f) {
            f = (float) Math.pow(1.0f / f, 1.1d);
        }
        float f2 = ((scaleCrop.width * 1.0f) / size2.width) + ((scaleCrop.height * 1.0f) / size2.height);
        return f * ((1.0f / f2) / f2);
    }

    @Override // com.journeyapps.barcodescanner.camera.PreviewScalingStrategy
    public Rect scalePreview(Size size, Size size2) {
        Size scaleCrop = size.scaleCrop(size2);
        Log.i(TAG, "Preview: " + size + "; Scaled: " + scaleCrop + "; Want: " + size2);
        int i = (scaleCrop.width - size2.width) / 2;
        int i2 = (scaleCrop.height - size2.height) / 2;
        return new Rect(-i, -i2, scaleCrop.width - i, scaleCrop.height - i2);
    }
}
