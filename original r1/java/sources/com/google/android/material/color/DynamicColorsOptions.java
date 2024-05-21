package com.google.android.material.color;

import android.app.Activity;
import android.graphics.Bitmap;
import com.google.android.material.color.DynamicColors;
import com.google.android.material.color.utilities.QuantizerCelebi;
import com.google.android.material.color.utilities.Score;

/* loaded from: classes2.dex */
public class DynamicColorsOptions {
    private static final DynamicColors.Precondition ALWAYS_ALLOW = new DynamicColors.Precondition() { // from class: com.google.android.material.color.DynamicColorsOptions.1
        @Override // com.google.android.material.color.DynamicColors.Precondition
        public boolean shouldApplyDynamicColors(Activity activity, int i) {
            return true;
        }
    };
    private static final DynamicColors.OnAppliedCallback NO_OP_CALLBACK = new DynamicColors.OnAppliedCallback() { // from class: com.google.android.material.color.DynamicColorsOptions.2
        @Override // com.google.android.material.color.DynamicColors.OnAppliedCallback
        public void onApplied(Activity activity) {
        }
    };
    private Integer contentBasedSeedColor;
    private final DynamicColors.OnAppliedCallback onAppliedCallback;
    private final DynamicColors.Precondition precondition;
    private final int themeOverlay;

    public Integer getContentBasedSeedColor() {
        return this.contentBasedSeedColor;
    }

    public DynamicColors.OnAppliedCallback getOnAppliedCallback() {
        return this.onAppliedCallback;
    }

    public DynamicColors.Precondition getPrecondition() {
        return this.precondition;
    }

    public int getThemeOverlay() {
        return this.themeOverlay;
    }

    private DynamicColorsOptions(Builder builder) {
        this.themeOverlay = builder.themeOverlay;
        this.precondition = builder.precondition;
        this.onAppliedCallback = builder.onAppliedCallback;
        if (builder.contentBasedSourceColor != null) {
            this.contentBasedSeedColor = builder.contentBasedSourceColor;
        } else if (builder.contentBasedSourceBitmap != null) {
            this.contentBasedSeedColor = Integer.valueOf(extractSeedColorFromImage(builder.contentBasedSourceBitmap));
        }
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private Bitmap contentBasedSourceBitmap;
        private Integer contentBasedSourceColor;
        private int themeOverlay;
        private DynamicColors.Precondition precondition = DynamicColorsOptions.ALWAYS_ALLOW;
        private DynamicColors.OnAppliedCallback onAppliedCallback = DynamicColorsOptions.NO_OP_CALLBACK;

        public Builder setContentBasedSource(Bitmap bitmap) {
            this.contentBasedSourceBitmap = bitmap;
            this.contentBasedSourceColor = null;
            return this;
        }

        public Builder setOnAppliedCallback(DynamicColors.OnAppliedCallback onAppliedCallback) {
            this.onAppliedCallback = onAppliedCallback;
            return this;
        }

        public Builder setPrecondition(DynamicColors.Precondition precondition) {
            this.precondition = precondition;
            return this;
        }

        public Builder setThemeOverlay(int i) {
            this.themeOverlay = i;
            return this;
        }

        public Builder setContentBasedSource(int i) {
            this.contentBasedSourceBitmap = null;
            this.contentBasedSourceColor = Integer.valueOf(i);
            return this;
        }

        public DynamicColorsOptions build() {
            return new DynamicColorsOptions(this);
        }
    }

    private static int extractSeedColorFromImage(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] iArr = new int[width * height];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        return Score.score(QuantizerCelebi.quantize(iArr, 128)).get(0).intValue();
    }
}
