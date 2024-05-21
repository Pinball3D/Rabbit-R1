package com.google.zxing.common;

/* loaded from: classes3.dex */
public final class BitSource {
    private int bitOffset;
    private int byteOffset;
    private final byte[] bytes;

    public int getBitOffset() {
        return this.bitOffset;
    }

    public int getByteOffset() {
        return this.byteOffset;
    }

    public BitSource(byte[] bArr) {
        this.bytes = bArr;
    }

    public int readBits(int i) {
        if (i <= 0 || i > 32 || i > available()) {
            throw new IllegalArgumentException(String.valueOf(i));
        }
        int i2 = this.bitOffset;
        int i3 = 0;
        if (i2 > 0) {
            int i4 = 8 - i2;
            int min = Math.min(i, i4);
            int i5 = i4 - min;
            byte[] bArr = this.bytes;
            int i6 = this.byteOffset;
            int i7 = (((255 >> (8 - min)) << i5) & bArr[i6]) >> i5;
            i -= min;
            int i8 = this.bitOffset + min;
            this.bitOffset = i8;
            if (i8 == 8) {
                this.bitOffset = 0;
                this.byteOffset = i6 + 1;
            }
            i3 = i7;
        }
        if (i <= 0) {
            return i3;
        }
        while (i >= 8) {
            int i9 = i3 << 8;
            byte[] bArr2 = this.bytes;
            int i10 = this.byteOffset;
            i3 = (bArr2[i10] & 255) | i9;
            this.byteOffset = i10 + 1;
            i -= 8;
        }
        if (i <= 0) {
            return i3;
        }
        int i11 = 8 - i;
        int i12 = (i3 << i) | ((((255 >> i11) << i11) & this.bytes[this.byteOffset]) >> i11);
        this.bitOffset += i;
        return i12;
    }

    public int available() {
        return ((this.bytes.length - this.byteOffset) * 8) - this.bitOffset;
    }
}
