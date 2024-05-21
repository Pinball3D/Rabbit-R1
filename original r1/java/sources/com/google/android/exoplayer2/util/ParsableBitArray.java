package com.google.android.exoplayer2.util;

import androidx.core.view.MotionEventCompat;
import com.google.common.base.Charsets;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class ParsableBitArray {
    private int bitOffset;
    private int byteLimit;
    private int byteOffset;
    public byte[] data;

    public int bitsLeft() {
        return ((this.byteLimit - this.byteOffset) * 8) - this.bitOffset;
    }

    public int getPosition() {
        return (this.byteOffset * 8) + this.bitOffset;
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.byteOffset = 0;
        this.bitOffset = 0;
        this.byteLimit = i;
    }

    public ParsableBitArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableBitArray(byte[] bArr) {
        this(bArr, bArr.length);
    }

    public ParsableBitArray(byte[] bArr, int i) {
        this.data = bArr;
        this.byteLimit = i;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(ParsableByteArray parsableByteArray) {
        reset(parsableByteArray.getData(), parsableByteArray.limit());
        setPosition(parsableByteArray.getPosition() * 8);
    }

    public int getBytePosition() {
        Assertions.checkState(this.bitOffset == 0);
        return this.byteOffset;
    }

    public void setPosition(int i) {
        int i2 = i / 8;
        this.byteOffset = i2;
        this.bitOffset = i - (i2 * 8);
        assertValidOffset();
    }

    public void skipBit() {
        int i = this.bitOffset + 1;
        this.bitOffset = i;
        if (i == 8) {
            this.bitOffset = 0;
            this.byteOffset++;
        }
        assertValidOffset();
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

    public boolean readBit() {
        boolean z = (this.data[this.byteOffset] & (128 >> this.bitOffset)) != 0;
        skipBit();
        return z;
    }

    public int readBits(int i) {
        int i2;
        if (i == 0) {
            return 0;
        }
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
            this.byteOffset = i5 + 1;
            i3 |= (bArr[i5] & 255) << i4;
        }
        byte[] bArr2 = this.data;
        int i6 = this.byteOffset;
        int i7 = ((-1) >>> (32 - i)) & (i3 | ((bArr2[i6] & 255) >> (8 - i2)));
        if (i2 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i6 + 1;
        }
        assertValidOffset();
        return i7;
    }

    public long readBitsToLong(int i) {
        if (i <= 32) {
            return Util.toUnsignedLong(readBits(i));
        }
        return Util.toLong(readBits(i - 32), readBits(32));
    }

    public void readBits(byte[] bArr, int i, int i2) {
        int i3 = (i2 >> 3) + i;
        while (i < i3) {
            byte[] bArr2 = this.data;
            int i4 = this.byteOffset;
            int i5 = i4 + 1;
            this.byteOffset = i5;
            byte b = bArr2[i4];
            int i6 = this.bitOffset;
            byte b2 = (byte) (b << i6);
            bArr[i] = b2;
            bArr[i] = (byte) (((255 & bArr2[i5]) >> (8 - i6)) | b2);
            i++;
        }
        int i7 = i2 & 7;
        if (i7 == 0) {
            return;
        }
        byte b3 = (byte) (bArr[i3] & (255 >> i7));
        bArr[i3] = b3;
        int i8 = this.bitOffset;
        if (i8 + i7 > 8) {
            byte[] bArr3 = this.data;
            int i9 = this.byteOffset;
            this.byteOffset = i9 + 1;
            bArr[i3] = (byte) (b3 | ((bArr3[i9] & 255) << i8));
            this.bitOffset = i8 - 8;
        }
        int i10 = this.bitOffset + i7;
        this.bitOffset = i10;
        byte[] bArr4 = this.data;
        int i11 = this.byteOffset;
        bArr[i3] = (byte) (((byte) (((255 & bArr4[i11]) >> (8 - i10)) << (8 - i7))) | bArr[i3]);
        if (i10 == 8) {
            this.bitOffset = 0;
            this.byteOffset = i11 + 1;
        }
        assertValidOffset();
    }

    public void byteAlign() {
        if (this.bitOffset == 0) {
            return;
        }
        this.bitOffset = 0;
        this.byteOffset++;
        assertValidOffset();
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        Assertions.checkState(this.bitOffset == 0);
        System.arraycopy(this.data, this.byteOffset, bArr, i, i2);
        this.byteOffset += i2;
        assertValidOffset();
    }

    public void skipBytes(int i) {
        Assertions.checkState(this.bitOffset == 0);
        this.byteOffset += i;
        assertValidOffset();
    }

    public String readBytesAsString(int i) {
        return readBytesAsString(i, Charsets.UTF_8);
    }

    public String readBytesAsString(int i, Charset charset) {
        byte[] bArr = new byte[i];
        readBytes(bArr, 0, i);
        return new String(bArr, charset);
    }

    public void putInt(int i, int i2) {
        if (i2 < 32) {
            i &= (1 << i2) - 1;
        }
        int min = Math.min(8 - this.bitOffset, i2);
        int i3 = this.bitOffset;
        int i4 = (8 - i3) - min;
        int i5 = (MotionEventCompat.ACTION_POINTER_INDEX_MASK >> i3) | ((1 << i4) - 1);
        byte[] bArr = this.data;
        int i6 = this.byteOffset;
        byte b = (byte) (i5 & bArr[i6]);
        bArr[i6] = b;
        int i7 = i2 - min;
        bArr[i6] = (byte) (b | ((i >>> i7) << i4));
        int i8 = i6 + 1;
        while (i7 > 8) {
            this.data[i8] = (byte) (i >>> (i7 - 8));
            i7 -= 8;
            i8++;
        }
        int i9 = 8 - i7;
        byte[] bArr2 = this.data;
        byte b2 = (byte) (bArr2[i8] & ((1 << i9) - 1));
        bArr2[i8] = b2;
        bArr2[i8] = (byte) (((i & ((1 << i7) - 1)) << i9) | b2);
        skipBits(i2);
        assertValidOffset();
    }

    private void assertValidOffset() {
        int i;
        int i2 = this.byteOffset;
        Assertions.checkState(i2 >= 0 && (i2 < (i = this.byteLimit) || (i2 == i && this.bitOffset == 0)));
    }
}
