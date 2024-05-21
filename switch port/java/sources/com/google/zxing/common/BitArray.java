package com.google.zxing.common;

import java.util.Arrays;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes3.dex */
public final class BitArray implements Cloneable {
    private int[] bits;
    private int size;

    public int[] getBitArray() {
        return this.bits;
    }

    public int getSize() {
        return this.size;
    }

    public BitArray() {
        this.size = 0;
        this.bits = new int[1];
    }

    public BitArray(int i) {
        this.size = i;
        this.bits = makeArray(i);
    }

    BitArray(int[] iArr, int i) {
        this.bits = iArr;
        this.size = i;
    }

    public int getSizeInBytes() {
        return (this.size + 7) / 8;
    }

    private void ensureCapacity(int i) {
        if (i > (this.bits.length << 5)) {
            int[] makeArray = makeArray(i);
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeArray, 0, iArr.length);
            this.bits = makeArray;
        }
    }

    public boolean get(int i) {
        return (this.bits[i / 32] & (1 << (i & 31))) != 0;
    }

    public void set(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public void flip(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public int getNextSet(int i) {
        int i2 = this.size;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (-(1 << (i & 31))) & this.bits[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.bits;
            if (i3 == iArr.length) {
                return this.size;
            }
            i4 = iArr[i3];
        }
        return Math.min((i3 << 5) + Integer.numberOfTrailingZeros(i4), this.size);
    }

    public int getNextUnset(int i) {
        int i2 = this.size;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (-(1 << (i & 31))) & (~this.bits[i3]);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.bits;
            if (i3 == iArr.length) {
                return this.size;
            }
            i4 = ~iArr[i3];
        }
        return Math.min((i3 << 5) + Integer.numberOfTrailingZeros(i4), this.size);
    }

    public void setBulk(int i, int i2) {
        this.bits[i / 32] = i2;
    }

    public void setRange(int i, int i2) {
        if (i2 < i || i < 0 || i2 > this.size) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = 31;
            int i8 = i6 > i4 ? 0 : i & 31;
            if (i6 >= i5) {
                i7 = 31 & i3;
            }
            int i9 = (2 << i7) - (1 << i8);
            int[] iArr = this.bits;
            iArr[i6] = i9 | iArr[i6];
            i6++;
        }
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    public boolean isRange(int i, int i2, boolean z) {
        if (i2 < i || i < 0 || i2 > this.size) {
            throw new IllegalArgumentException();
        }
        if (i2 == i) {
            return true;
        }
        int i3 = i2 - 1;
        int i4 = i / 32;
        int i5 = i3 / 32;
        int i6 = i4;
        while (i6 <= i5) {
            int i7 = (2 << (i6 >= i5 ? 31 & i3 : 31)) - (1 << (i6 > i4 ? 0 : i & 31));
            int i8 = this.bits[i6] & i7;
            if (!z) {
                i7 = 0;
            }
            if (i8 != i7) {
                return false;
            }
            i6++;
        }
        return true;
    }

    public void appendBit(boolean z) {
        ensureCapacity(this.size + 1);
        if (z) {
            int[] iArr = this.bits;
            int i = this.size;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.size++;
    }

    public void appendBits(int i, int i2) {
        if (i2 < 0 || i2 > 32) {
            throw new IllegalArgumentException("Num bits must be between 0 and 32");
        }
        ensureCapacity(this.size + i2);
        while (i2 > 0) {
            boolean z = true;
            if (((i >> (i2 - 1)) & 1) != 1) {
                z = false;
            }
            appendBit(z);
            i2--;
        }
    }

    public void appendBitArray(BitArray bitArray) {
        int i = bitArray.size;
        ensureCapacity(this.size + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(bitArray.get(i2));
        }
    }

    public void xor(BitArray bitArray) {
        if (this.size != bitArray.size) {
            throw new IllegalArgumentException("Sizes don't match");
        }
        int i = 0;
        while (true) {
            int[] iArr = this.bits;
            if (i >= iArr.length) {
                return;
            }
            iArr[i] = iArr[i] ^ bitArray.bits[i];
            i++;
        }
    }

    public void toBytes(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (get(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public void reverse() {
        int[] iArr = new int[this.bits.length];
        int i = (this.size - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            long j = this.bits[i3];
            long j2 = ((j & 1431655765) << 1) | ((j >> 1) & 1431655765);
            long j3 = ((j2 & 858993459) << 2) | ((j2 >> 2) & 858993459);
            long j4 = ((j3 & 252645135) << 4) | ((j3 >> 4) & 252645135);
            long j5 = ((j4 & 16711935) << 8) | ((j4 >> 8) & 16711935);
            iArr[i - i3] = (int) (((j5 & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16) | ((j5 >> 16) & WebSocketProtocol.PAYLOAD_SHORT_MAX));
        }
        int i4 = this.size;
        int i5 = i2 << 5;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i] = i7;
        }
        this.bits = iArr;
    }

    private static int[] makeArray(int i) {
        return new int[(i + 31) / 32];
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitArray)) {
            return false;
        }
        BitArray bitArray = (BitArray) obj;
        return this.size == bitArray.size && Arrays.equals(this.bits, bitArray.bits);
    }

    public int hashCode() {
        return (this.size * 31) + Arrays.hashCode(this.bits);
    }

    public String toString() {
        int i = this.size;
        StringBuilder sb = new StringBuilder(i + (i / 8) + 1);
        for (int i2 = 0; i2 < this.size; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            sb.append(get(i2) ? 'X' : '.');
        }
        return sb.toString();
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitArray m5585clone() {
        return new BitArray((int[]) this.bits.clone(), this.size);
    }
}
