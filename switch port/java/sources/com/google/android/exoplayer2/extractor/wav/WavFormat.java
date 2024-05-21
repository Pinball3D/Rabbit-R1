package com.google.android.exoplayer2.extractor.wav;

/* loaded from: classes2.dex */
final class WavFormat {
    public final int averageBytesPerSecond;
    public final int bitsPerSample;
    public final int blockSize;
    public final byte[] extraData;
    public final int formatType;
    public final int frameRateHz;
    public final int numChannels;

    public WavFormat(int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr) {
        this.formatType = i;
        this.numChannels = i2;
        this.frameRateHz = i3;
        this.averageBytesPerSecond = i4;
        this.blockSize = i5;
        this.bitsPerSample = i6;
        this.extraData = bArr;
    }
}
