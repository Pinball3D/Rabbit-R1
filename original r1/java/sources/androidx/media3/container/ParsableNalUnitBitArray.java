package androidx.media3.container;

import androidx.media3.common.util.Assertions;

/* loaded from: classes2.dex */
public final class ParsableNalUnitBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    private byte[] data;

    public ParsableNalUnitBitArray(byte[] bArr, int i, int i2) {
        reset(bArr, i, i2);
    }

    public void reset(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.byteOffset = i;
        this.byteLimit = i2;
        this.bitOffset = 0;
        assertValidOffset();
    }

    public void skipBit() {
        int i = this.bitOffset + 1;
        this.bitOffset = i;
        if (i == 8) {
            this.bitOffset = 0;
            int i2 = this.byteOffset;
            this.byteOffset = i2 + (shouldSkipByte(i2 + 1) ? 2 : 1);
        }
        assertValidOffset();
    }

    public void skipBits(int i) {
        int i2 = this.byteOffset;
        int i3 = i / 8;
        int i4 = i2 + i3;
        this.byteOffset = i4;
        int i5 = this.bitOffset + (i - (i3 * 8));
        this.bitOffset = i5;
        if (i5 > 7) {
            this.byteOffset = i4 + 1;
            this.bitOffset = i5 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.byteOffset) {
                if (shouldSkipByte(i2)) {
                    this.byteOffset++;
                    i2 += 2;
                }
            } else {
                assertValidOffset();
                return;
            }
        }
    }

    public boolean canReadBits(int i) {
        int i2 = this.byteOffset;
        int i3 = i / 8;
        int i4 = i2 + i3;
        int i5 = (this.bitOffset + i) - (i3 * 8);
        if (i5 > 7) {
            i4++;
            i5 -= 8;
        }
        while (true) {
            i2++;
            if (i2 > i4 || i4 >= this.byteLimit) {
                break;
            }
            if (shouldSkipByte(i2)) {
                i4++;
                i2 += 2;
            }
        }
        int i6 = this.byteLimit;
        if (i4 >= i6) {
            return i4 == i6 && i5 == 0;
        }
        return true;
    }

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        this.bitOffset += i;
        int i3 = 0;
        while (true) {
            i2 = this.bitOffset;
            if (i2 <= 8) {
                break;
            }
            int i4 = i2 - 8;
            this.bitOffset = i4;
            byte[] bArr = this.data;
            int i5 = this.byteOffset;
            i3 |= (bArr[i5] & 255) << i4;
            if (!shouldSkipByte(i5 + 1)) {
                r3 = 1;
            }
            this.byteOffset = i5 + r3;
        }
        byte[] bArr2 = this.data;
        int i6 = this.byteOffset;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i6 + (shouldSkipByte(i6 + 1) ? 2 : 1);
        }
        assertValidOffset();
        return i7;
    }

    public boolean canReadExpGolombCodedNum() {
        int i = this.byteOffset;
        int i2 = this.bitOffset;
        int i3 = 0;
        while (this.byteOffset < this.byteLimit && !readBit()) {
            i3++;
        }
        boolean z = this.byteOffset == this.byteLimit;
        this.byteOffset = i;
        this.bitOffset = i2;
        return !z && canReadBits((i3 * 2) + 1);
    }

    public int readUnsignedExpGolombCodedInt() {
        return readExpGolombCodeNum();
    }

    public int readSignedExpGolombCodedInt() {
        int readExpGolombCodeNum = readExpGolombCodeNum();
        return (readExpGolombCodeNum % 2 == 0 ? -1 : 1) * ((readExpGolombCodeNum + 1) / 2);
    }

    private int readExpGolombCodeNum() {
        int i = 0;
        while (!readBit()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? readBits(i) : 0);
    }

    private boolean shouldSkipByte(int i) {
        if (2 <= i && i < this.byteLimit) {
            byte[] bArr = this.data;
            if (bArr[i] == 3 && bArr[i - 2] == 0 && bArr[i - 1] == 0) {
                return true;
            }
        }
        return false;
    }

    private void assertValidOffset() {
        int i;
        int i2 = this.byteOffset;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.byteLimit) || (i2 == i && this.bitOffset == 0)));
    }
}
