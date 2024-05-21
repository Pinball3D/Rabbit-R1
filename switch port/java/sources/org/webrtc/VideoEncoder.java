package org.webrtc;

import org.webrtc.EncodedImage;

/* loaded from: classes3.dex */
public interface VideoEncoder {

    /* loaded from: classes3.dex */
    public interface Callback {
        void onEncodedFrame(EncodedImage encodedImage, CodecSpecificInfo codecSpecificInfo);
    }

    /* loaded from: classes3.dex */
    public static class CodecSpecificInfo {
    }

    /* loaded from: classes3.dex */
    public static class CodecSpecificInfoAV1 extends CodecSpecificInfo {
    }

    /* loaded from: classes3.dex */
    public static class CodecSpecificInfoH264 extends CodecSpecificInfo {
    }

    /* loaded from: classes3.dex */
    public static class CodecSpecificInfoVP8 extends CodecSpecificInfo {
    }

    /* loaded from: classes3.dex */
    public static class CodecSpecificInfoVP9 extends CodecSpecificInfo {
    }

    default long createNativeVideoEncoder() {
        return 0L;
    }

    VideoCodecStatus encode(VideoFrame videoFrame, EncodeInfo encodeInfo);

    String getImplementationName();

    default ResolutionBitrateLimits[] getResolutionBitrateLimits() {
        return new ResolutionBitrateLimits[0];
    }

    ScalingSettings getScalingSettings();

    VideoCodecStatus initEncode(Settings settings, Callback callback);

    default boolean isHardwareEncoder() {
        return true;
    }

    VideoCodecStatus release();

    VideoCodecStatus setRateAllocation(BitrateAllocation bitrateAllocation, int i);

    /* loaded from: classes3.dex */
    public static class Settings {
        public final boolean automaticResizeOn;
        public final Capabilities capabilities;
        public final int height;
        public final int maxFramerate;
        public final int numberOfCores;
        public final int numberOfSimulcastStreams;
        public final int startBitrate;
        public final int width;

        @Deprecated
        public Settings(int i, int i2, int i3, int i4, int i5, int i6, boolean z) {
            this(i, i2, i3, i4, i5, i6, z, new Capabilities(false));
        }

        public Settings(int i, int i2, int i3, int i4, int i5, int i6, boolean z, Capabilities capabilities) {
            this.numberOfCores = i;
            this.width = i2;
            this.height = i3;
            this.startBitrate = i4;
            this.maxFramerate = i5;
            this.numberOfSimulcastStreams = i6;
            this.automaticResizeOn = z;
            this.capabilities = capabilities;
        }
    }

    /* loaded from: classes3.dex */
    public static class Capabilities {
        public final boolean lossNotification;

        public Capabilities(boolean z) {
            this.lossNotification = z;
        }
    }

    /* loaded from: classes3.dex */
    public static class EncodeInfo {
        public final EncodedImage.FrameType[] frameTypes;

        public EncodeInfo(EncodedImage.FrameType[] frameTypeArr) {
            this.frameTypes = frameTypeArr;
        }
    }

    /* loaded from: classes3.dex */
    public static class BitrateAllocation {
        public final int[][] bitratesBbs;

        public BitrateAllocation(int[][] iArr) {
            this.bitratesBbs = iArr;
        }

        public int getSum() {
            int i = 0;
            for (int[] iArr : this.bitratesBbs) {
                for (int i2 : iArr) {
                    i += i2;
                }
            }
            return i;
        }
    }

    /* loaded from: classes3.dex */
    public static class ScalingSettings {
        public static final ScalingSettings OFF = new ScalingSettings();
        public final Integer high;
        public final Integer low;
        public final boolean on;

        public ScalingSettings(int i, int i2) {
            this.on = true;
            this.low = Integer.valueOf(i);
            this.high = Integer.valueOf(i2);
        }

        private ScalingSettings() {
            this.on = false;
            this.low = null;
            this.high = null;
        }

        @Deprecated
        public ScalingSettings(boolean z) {
            this.on = z;
            this.low = null;
            this.high = null;
        }

        @Deprecated
        public ScalingSettings(boolean z, int i, int i2) {
            this.on = z;
            this.low = Integer.valueOf(i);
            this.high = Integer.valueOf(i2);
        }

        public String toString() {
            return this.on ? "[ " + this.low + ", " + this.high + " ]" : "OFF";
        }
    }

    /* loaded from: classes3.dex */
    public static class ResolutionBitrateLimits {
        public final int frameSizePixels;
        public final int maxBitrateBps;
        public final int minBitrateBps;
        public final int minStartBitrateBps;

        public int getFrameSizePixels() {
            return this.frameSizePixels;
        }

        public int getMaxBitrateBps() {
            return this.maxBitrateBps;
        }

        public int getMinBitrateBps() {
            return this.minBitrateBps;
        }

        public int getMinStartBitrateBps() {
            return this.minStartBitrateBps;
        }

        public ResolutionBitrateLimits(int i, int i2, int i3, int i4) {
            this.frameSizePixels = i;
            this.minStartBitrateBps = i2;
            this.minBitrateBps = i3;
            this.maxBitrateBps = i4;
        }
    }
}
