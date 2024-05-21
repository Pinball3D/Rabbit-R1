package androidx.media3.common;

import androidx.media3.common.util.Assertions;

/* loaded from: classes2.dex */
public class FrameInfo {
    public final int height;
    public final long offsetToAddUs;
    public final float pixelWidthHeightRatio;
    public final int width;

    /* loaded from: classes2.dex */
    public static final class Builder {
        private int height;
        private long offsetToAddUs;
        private float pixelWidthHeightRatio;
        private int width;

        public Builder setHeight(int i) {
            this.height = i;
            return this;
        }

        public Builder setOffsetToAddUs(long j) {
            this.offsetToAddUs = j;
            return this;
        }

        public Builder setPixelWidthHeightRatio(float f) {
            this.pixelWidthHeightRatio = f;
            return this;
        }

        public Builder setWidth(int i) {
            this.width = i;
            return this;
        }

        public Builder(int i, int i2) {
            this.width = i;
            this.height = i2;
            this.pixelWidthHeightRatio = 1.0f;
        }

        public Builder(FrameInfo frameInfo) {
            this.width = frameInfo.width;
            this.height = frameInfo.height;
            this.pixelWidthHeightRatio = frameInfo.pixelWidthHeightRatio;
            this.offsetToAddUs = frameInfo.offsetToAddUs;
        }

        public FrameInfo build() {
            return new FrameInfo(this.width, this.height, this.pixelWidthHeightRatio, this.offsetToAddUs);
        }
    }

    private FrameInfo(int i, int i2, float f, long j) {
        Assertions.checkArgument(i > 0, "width must be positive, but is: " + i);
        Assertions.checkArgument(i2 > 0, "height must be positive, but is: " + i2);
        this.width = i;
        this.height = i2;
        this.pixelWidthHeightRatio = f;
        this.offsetToAddUs = j;
    }
}
