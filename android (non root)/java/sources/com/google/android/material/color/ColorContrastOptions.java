package com.google.android.material.color;

/* loaded from: classes2.dex */
public class ColorContrastOptions {
    private final int highContrastThemeOverlayResourceId;
    private final int mediumContrastThemeOverlayResourceId;

    public int getHighContrastThemeOverlay() {
        return this.highContrastThemeOverlayResourceId;
    }

    public int getMediumContrastThemeOverlay() {
        return this.mediumContrastThemeOverlayResourceId;
    }

    private ColorContrastOptions(Builder builder) {
        this.mediumContrastThemeOverlayResourceId = builder.mediumContrastThemeOverlayResourceId;
        this.highContrastThemeOverlayResourceId = builder.highContrastThemeOverlayResourceId;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private int highContrastThemeOverlayResourceId;
        private int mediumContrastThemeOverlayResourceId;

        public Builder setHighContrastThemeOverlay(int i) {
            this.highContrastThemeOverlayResourceId = i;
            return this;
        }

        public Builder setMediumContrastThemeOverlay(int i) {
            this.mediumContrastThemeOverlayResourceId = i;
            return this;
        }

        public ColorContrastOptions build() {
            return new ColorContrastOptions(this);
        }
    }
}
