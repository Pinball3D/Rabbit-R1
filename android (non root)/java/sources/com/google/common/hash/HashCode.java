package com.google.common.hash;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedInts;
import java.io.Serializable;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class HashCode {
    private static final char[] hexDigits = "0123456789abcdef".toCharArray();

    public abstract byte[] asBytes();

    public abstract int asInt();

    public abstract long asLong();

    public abstract int bits();

    abstract boolean equalsSameBits(HashCode hashCode);

    public abstract long padToLong();

    abstract void writeBytesToImpl(byte[] bArr, int i, int i2);

    HashCode() {
    }

    public int writeBytesTo(byte[] bArr, int i, int i2) {
        int min = Ints.min(i2, bits() / 8);
        Preconditions.checkPositionIndexes(i, i + min, bArr.length);
        writeBytesToImpl(bArr, i, min);
        return min;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] getBytesInternal() {
        return asBytes();
    }

    public static HashCode fromInt(int i) {
        return new IntHashCode(i);
    }

    /* loaded from: classes3.dex */
    private static final class IntHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final int hash;

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            int i = this.hash;
            return new byte[]{(byte) i, (byte) (i >> 8), (byte) (i >> 16), (byte) (i >> 24)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 32;
        }

        IntHashCode(int i) {
            this.hash = i;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            throw new IllegalStateException("this HashCode only has 32 bits; cannot create a long");
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return UnsignedInts.toLong(this.hash);
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asInt();
        }
    }

    public static HashCode fromLong(long j) {
        return new LongHashCode(j);
    }

    /* loaded from: classes3.dex */
    private static final class LongHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final long hash;

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return new byte[]{(byte) this.hash, (byte) (r2 >> 8), (byte) (r2 >> 16), (byte) (r2 >> 24), (byte) (r2 >> 32), (byte) (r2 >> 40), (byte) (r2 >> 48), (byte) (r2 >> 56)};
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            return (int) this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            return this.hash;
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return 64;
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            return this.hash;
        }

        LongHashCode(long j) {
            this.hash = j;
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i, int i2) {
            for (int i3 = 0; i3 < i2; i3++) {
                bArr[i + i3] = (byte) (this.hash >> (i3 * 8));
            }
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            return this.hash == hashCode.asLong();
        }
    }

    public static HashCode fromBytes(byte[] bArr) {
        Preconditions.checkArgument(bArr.length >= 1, "A HashCode must contain at least 1 byte.");
        return fromBytesNoCopy((byte[]) bArr.clone());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static HashCode fromBytesNoCopy(byte[] bArr) {
        return new BytesHashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class BytesHashCode extends HashCode implements Serializable {
        private static final long serialVersionUID = 0;
        final byte[] bytes;

        @Override // com.google.common.hash.HashCode
        byte[] getBytesInternal() {
            return this.bytes;
        }

        BytesHashCode(byte[] bArr) {
            this.bytes = (byte[]) Preconditions.checkNotNull(bArr);
        }

        @Override // com.google.common.hash.HashCode
        public int bits() {
            return this.bytes.length * 8;
        }

        @Override // com.google.common.hash.HashCode
        public byte[] asBytes() {
            return (byte[]) this.bytes.clone();
        }

        @Override // com.google.common.hash.HashCode
        public int asInt() {
            byte[] bArr = this.bytes;
            Preconditions.checkState(bArr.length >= 4, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length);
            byte[] bArr2 = this.bytes;
            return ((bArr2[3] & 255) << 24) | (bArr2[0] & 255) | ((bArr2[1] & 255) << 8) | ((bArr2[2] & 255) << 16);
        }

        @Override // com.google.common.hash.HashCode
        public long asLong() {
            byte[] bArr = this.bytes;
            Preconditions.checkState(bArr.length >= 8, "HashCode#asLong() requires >= 8 bytes (it only has %s bytes).", bArr.length);
            return padToLong();
        }

        @Override // com.google.common.hash.HashCode
        public long padToLong() {
            long j = this.bytes[0] & 255;
            for (int i = 1; i < Math.min(this.bytes.length, 8); i++) {
                j |= (this.bytes[i] & 255) << (i * 8);
            }
            return j;
        }

        @Override // com.google.common.hash.HashCode
        void writeBytesToImpl(byte[] bArr, int i, int i2) {
            System.arraycopy(this.bytes, 0, bArr, i, i2);
        }

        @Override // com.google.common.hash.HashCode
        boolean equalsSameBits(HashCode hashCode) {
            if (this.bytes.length != hashCode.getBytesInternal().length) {
                return false;
            }
            boolean z = true;
            int i = 0;
            while (true) {
                byte[] bArr = this.bytes;
                if (i >= bArr.length) {
                    return z;
                }
                z &= bArr[i] == hashCode.getBytesInternal()[i];
                i++;
            }
        }
    }

    public static HashCode fromString(String str) {
        Preconditions.checkArgument(str.length() >= 2, "input string (%s) must have at least 2 characters", str);
        Preconditions.checkArgument(str.length() % 2 == 0, "input string (%s) must have an even number of characters", str);
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length(); i += 2) {
            bArr[i / 2] = (byte) ((decode(str.charAt(i)) << 4) + decode(str.charAt(i + 1)));
        }
        return fromBytesNoCopy(bArr);
    }

    private static int decode(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c < 'a' || c > 'f') {
            throw new IllegalArgumentException(new StringBuilder(32).append("Illegal hexadecimal character: ").append(c).toString());
        }
        return c - 'W';
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof HashCode)) {
            return false;
        }
        HashCode hashCode = (HashCode) obj;
        return bits() == hashCode.bits() && equalsSameBits(hashCode);
    }

    public final int hashCode() {
        if (bits() >= 32) {
            return asInt();
        }
        byte[] bytesInternal = getBytesInternal();
        int i = bytesInternal[0] & 255;
        for (int i2 = 1; i2 < bytesInternal.length; i2++) {
            i |= (bytesInternal[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bytesInternal = getBytesInternal();
        StringBuilder sb = new StringBuilder(bytesInternal.length * 2);
        for (byte b : bytesInternal) {
            char[] cArr = hexDigits;
            sb.append(cArr[(b >> 4) & 15]).append(cArr[b & Ascii.SI]);
        }
        return sb.toString();
    }
}
