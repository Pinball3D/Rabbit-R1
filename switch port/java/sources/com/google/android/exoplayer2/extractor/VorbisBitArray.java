package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.Assertions;

/* loaded from: classes2.dex */
public final class VorbisBitArray {
    private int bitOffset;
    private final int byteLimit;
    private int byteOffset;
    private final byte[] data;

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void reset() {
        this.byteOffset = 0;
        this.bitOffset = 0;
    }

    public VorbisBitArray(byte[] bArr) {
        this.data = bArr;
        this.byteLimit = bArr.length;
    }

    public boolean readBit() {
        boolean z = (((this.data[this.byteOffset] & 255) >> this.bitOffset) & 1) == 1;
        skipBits(1);
        return z;
    }

    public int readBits(int i) {
        int i2 = this.byteOffset;
        int min = Math.min(i, 8 - this.bitOffset);
        int i3 = i2 + 1;
        int i4 = ((this.data[i2] & 255) >> this.bitOffset) & (255 >> (8 - min));
        while (min < i) {
            i4 |= (this.data[i3] & 255) << min;
            min += 8;
            i3++;
        }
        int i5 = i4 & ((-1) >>> (32 - i));
        skipBits(i);
        return i5;
    }

    public void skipBits(int i) {
        int i2 = i / 8;
        int i3 = this.byteOffset + i2;
        this.byteOffset = i3;
        int i4 = this.bitOffset + (i - (i2 * 8));
        this.bitOffset = i4;
        if (i4 > 7) {
            this.byteOffset = i3 + 1;
            this.bitOffset = i4 - 8;
        }
        assertValidOffset();
    }

    public void setPosition(int i) {
        int i2 = i / 8;
        this.byteOffset = i2;
        this.bitOffset = i - (i2 * 8);
        assertValidOffset();
    }

    private void assertValidOffset() {
        int i;
        int i2 = this.byteOffset;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.byteLimit) || (i2 == i && this.bitOffset == 0)));
    }
}
