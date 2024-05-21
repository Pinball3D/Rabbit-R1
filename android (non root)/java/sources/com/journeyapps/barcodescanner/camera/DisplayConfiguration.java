package com.journeyapps.barcodescanner.camera;

import android.graphics.Rect;
import com.journeyapps.barcodescanner.Size;
import java.util.List;

/* loaded from: classes3.dex */
public class DisplayConfiguration {
    private static final String TAG = "DisplayConfiguration";
    private boolean center = false;
    private PreviewScalingStrategy previewScalingStrategy = new FitCenterStrategy();
    private int rotation;
    private Size viewfinderSize;

    public PreviewScalingStrategy getPreviewScalingStrategy() {
        return this.previewScalingStrategy;
    }

    public int getRotation() {
        return this.rotation;
    }

    public Size getViewfinderSize() {
        return this.viewfinderSize;
    }

    public void setPreviewScalingStrategy(PreviewScalingStrategy previewScalingStrategy) {
        this.previewScalingStrategy = previewScalingStrategy;
    }

    public DisplayConfiguration(int i) {
        this.rotation = i;
    }

    public DisplayConfiguration(int i, Size size) {
        this.rotation = i;
        this.viewfinderSize = size;
    }

    public Size getDesiredPreviewSize(boolean z) {
        Size size = this.viewfinderSize;
        if (size == null) {
            return null;
        }
        return z ? size.rotate() : size;
    }

    public Size getBestPreviewSize(List<Size> list, boolean z) {
        return this.previewScalingStrategy.getBestPreviewSize(list, getDesiredPreviewSize(z));
    }

    public Rect scalePreview(Size size) {
        return this.previewScalingStrategy.scalePreview(size, this.viewfinderSize);
    }
}
