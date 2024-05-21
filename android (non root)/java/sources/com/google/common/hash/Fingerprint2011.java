package com.google.common.hash;

import com.google.common.base.Preconditions;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class Fingerprint2011 extends AbstractNonStreamingHashFunction {
    static final HashFunction FINGERPRINT_2011 = new Fingerprint2011();
    private static final long K0 = -6505348102511208375L;
    private static final long K1 = -8261664234251669945L;
    private static final long K2 = -4288712594273399085L;
    private static final long K3 = -4132994306676758123L;

    static long hash128to64(long j, long j2) {
        long j3 = (j2 ^ j) * K3;
        long j4 = (j ^ (j3 ^ (j3 >>> 47))) * K3;
        return (j4 ^ (j4 >>> 47)) * K3;
    }

    private static long shiftMix(long j) {
        return j ^ (j >>> 47);
    }

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    public String toString() {
        return "Hashing.fingerprint2011()";
    }

    Fingerprint2011() {
    }

    @Override // com.google.common.hash.AbstractNonStreamingHashFunction, com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashBytes(byte[] bArr, int i, int i2) {
        Preconditions.checkPositionIndexes(i, i + i2, bArr.length);
        return HashCode.fromLong(fingerprint(bArr, i, i2));
    }

    static long fingerprint(byte[] bArr, int i, int i2) {
        long fullFingerprint;
        if (i2 <= 32) {
            fullFingerprint = murmurHash64WithSeed(bArr, i, i2, -1397348546323613475L);
        } else if (i2 <= 64) {
            fullFingerprint = hashLength33To64(bArr, i, i2);
        } else {
            fullFingerprint = fullFingerprint(bArr, i, i2);
        }
        long j = K0;
        long load64 = i2 >= 8 ? LittleEndianByteArray.load64(bArr, i) : -6505348102511208375L;
        if (i2 >= 9) {
            j = LittleEndianByteArray.load64(bArr, (i + i2) - 8);
        }
        long hash128to64 = hash128to64(fullFingerprint + j, load64);
        return (hash128to64 == 0 || hash128to64 == 1) ? hash128to64 - 2 : hash128to64;
    }

    private static void weakHashLength32WithSeeds(byte[] bArr, int i, long j, long j2, long[] jArr) {
        long load64 = LittleEndianByteArray.load64(bArr, i);
        long load642 = LittleEndianByteArray.load64(bArr, i + 8);
        long load643 = LittleEndianByteArray.load64(bArr, i + 16);
        long load644 = LittleEndianByteArray.load64(bArr, i + 24);
        long j3 = j + load64;
        long j4 = load642 + j3 + load643;
        long rotateRight = Long.rotateRight(j2 + j3 + load644, 51) + Long.rotateRight(j4, 23);
        jArr[0] = j4 + load644;
        jArr[1] = rotateRight + j3;
    }

    private static long fullFingerprint(byte[] bArr, int i, int i2) {
        long load64 = LittleEndianByteArray.load64(bArr, i);
        int i3 = i + i2;
        long load642 = LittleEndianByteArray.load64(bArr, i3 - 16) ^ K1;
        long load643 = LittleEndianByteArray.load64(bArr, i3 - 56) ^ K0;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long j = i2;
        weakHashLength32WithSeeds(bArr, i3 - 64, j, load642, jArr);
        weakHashLength32WithSeeds(bArr, i3 - 32, j * K1, K0, jArr2);
        long shiftMix = load643 + (shiftMix(jArr[1]) * K1);
        long rotateRight = Long.rotateRight(shiftMix + load64, 39) * K1;
        long rotateRight2 = Long.rotateRight(load642, 33) * K1;
        int i4 = i;
        int i5 = (i2 - 1) & (-64);
        while (true) {
            long rotateRight3 = Long.rotateRight(rotateRight + rotateRight2 + jArr[0] + LittleEndianByteArray.load64(bArr, i4 + 16), 37) * K1;
            long rotateRight4 = Long.rotateRight(rotateRight2 + jArr[1] + LittleEndianByteArray.load64(bArr, i4 + 48), 42) * K1;
            long j2 = rotateRight3 ^ jArr2[1];
            long j3 = rotateRight4 ^ jArr[0];
            long rotateRight5 = Long.rotateRight(shiftMix ^ jArr2[0], 33);
            weakHashLength32WithSeeds(bArr, i4, jArr[1] * K1, j2 + jArr2[0], jArr);
            weakHashLength32WithSeeds(bArr, i4 + 32, jArr2[1] + rotateRight5, j3, jArr2);
            i4 += 64;
            i5 -= 64;
            if (i5 == 0) {
                return hash128to64(hash128to64(jArr[0], jArr2[0]) + (shiftMix(j3) * K1) + j2, hash128to64(jArr[1], jArr2[1]) + rotateRight5);
            }
            rotateRight = rotateRight5;
            shiftMix = j2;
            rotateRight2 = j3;
        }
    }

    private static long hashLength33To64(byte[] bArr, int i, int i2) {
        long load64 = LittleEndianByteArray.load64(bArr, i + 24);
        int i3 = i + i2;
        int i4 = i3 - 16;
        long load642 = LittleEndianByteArray.load64(bArr, i) + ((i2 + LittleEndianByteArray.load64(bArr, i4)) * K0);
        long rotateRight = Long.rotateRight(load642 + load64, 52);
        long rotateRight2 = Long.rotateRight(load642, 37);
        long load643 = load642 + LittleEndianByteArray.load64(bArr, i + 8);
        long rotateRight3 = rotateRight2 + Long.rotateRight(load643, 7);
        int i5 = i + 16;
        long load644 = load643 + LittleEndianByteArray.load64(bArr, i5);
        long j = load64 + load644;
        long rotateRight4 = rotateRight + Long.rotateRight(load644, 31) + rotateRight3;
        long load645 = LittleEndianByteArray.load64(bArr, i5) + LittleEndianByteArray.load64(bArr, i3 - 32);
        long load646 = LittleEndianByteArray.load64(bArr, i3 - 8);
        long rotateRight5 = Long.rotateRight(load645 + load646, 52);
        long rotateRight6 = Long.rotateRight(load645, 37);
        long load647 = load645 + LittleEndianByteArray.load64(bArr, i3 - 24);
        long rotateRight7 = rotateRight6 + Long.rotateRight(load647, 7);
        long load648 = load647 + LittleEndianByteArray.load64(bArr, i4);
        return shiftMix((shiftMix(((j + rotateRight5 + Long.rotateRight(load648, 31) + rotateRight7) * K2) + ((load646 + load648 + rotateRight4) * K0)) * K0) + rotateRight4) * K2;
    }

    static long murmurHash64WithSeed(byte[] bArr, int i, int i2, long j) {
        int i3 = i2 & (-8);
        int i4 = i2 & 7;
        long j2 = j ^ (i2 * K3);
        for (int i5 = 0; i5 < i3; i5 += 8) {
            j2 = (j2 ^ (shiftMix(LittleEndianByteArray.load64(bArr, i + i5) * K3) * K3)) * K3;
        }
        if (i4 != 0) {
            j2 = (LittleEndianByteArray.load64Safely(bArr, i + i3, i4) ^ j2) * K3;
        }
        return shiftMix(shiftMix(j2) * K3);
    }
}
