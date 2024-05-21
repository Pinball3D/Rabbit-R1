package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.common.hash.BloomFilter;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import com.google.common.primitives.Longs;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLongArray;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public enum BloomFilterStrategies implements BloomFilter.Strategy {
    MURMUR128_MITZ_32 { // from class: com.google.common.hash.BloomFilterStrategies.1
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(@ParametricNullness T t, Funnel<? super T> funnel, int i, LockFreeBitArray lockFreeBitArray) {
            long bitSize = lockFreeBitArray.bitSize();
            long asLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            boolean z = false;
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                z |= lockFreeBitArray.set(i5 % bitSize);
            }
            return z;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(@ParametricNullness T t, Funnel<? super T> funnel, int i, LockFreeBitArray lockFreeBitArray) {
            long bitSize = lockFreeBitArray.bitSize();
            long asLong = Hashing.murmur3_128().hashObject(t, funnel).asLong();
            int i2 = (int) asLong;
            int i3 = (int) (asLong >>> 32);
            for (int i4 = 1; i4 <= i; i4++) {
                int i5 = (i4 * i3) + i2;
                if (i5 < 0) {
                    i5 = ~i5;
                }
                if (!lockFreeBitArray.get(i5 % bitSize)) {
                    return false;
                }
            }
            return true;
        }
    },
    MURMUR128_MITZ_64 { // from class: com.google.common.hash.BloomFilterStrategies.2
        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean put(@ParametricNullness T t, Funnel<? super T> funnel, int i, LockFreeBitArray lockFreeBitArray) {
            long bitSize = lockFreeBitArray.bitSize();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            long j = lowerEight;
            boolean z = false;
            for (int i2 = 0; i2 < i; i2++) {
                z |= lockFreeBitArray.set((Long.MAX_VALUE & j) % bitSize);
                j += upperEight;
            }
            return z;
        }

        @Override // com.google.common.hash.BloomFilter.Strategy
        public <T> boolean mightContain(@ParametricNullness T t, Funnel<? super T> funnel, int i, LockFreeBitArray lockFreeBitArray) {
            long bitSize = lockFreeBitArray.bitSize();
            byte[] bytesInternal = Hashing.murmur3_128().hashObject(t, funnel).getBytesInternal();
            long lowerEight = lowerEight(bytesInternal);
            long upperEight = upperEight(bytesInternal);
            for (int i2 = 0; i2 < i; i2++) {
                if (!lockFreeBitArray.get((Long.MAX_VALUE & lowerEight) % bitSize)) {
                    return false;
                }
                lowerEight += upperEight;
            }
            return true;
        }

        private long lowerEight(byte[] bArr) {
            return Longs.fromBytes(bArr[7], bArr[6], bArr[5], bArr[4], bArr[3], bArr[2], bArr[1], bArr[0]);
        }

        private long upperEight(byte[] bArr) {
            return Longs.fromBytes(bArr[15], bArr[14], bArr[13], bArr[12], bArr[11], bArr[10], bArr[9], bArr[8]);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class LockFreeBitArray {
        private static final int LONG_ADDRESSABLE_BITS = 6;
        private final LongAddable bitCount;
        final AtomicLongArray data;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LockFreeBitArray(long j) {
            Preconditions.checkArgument(j > 0, "data length is zero!");
            this.data = new AtomicLongArray(Ints.checkedCast(LongMath.divide(j, 64L, RoundingMode.CEILING)));
            this.bitCount = LongAddables.create();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public LockFreeBitArray(long[] jArr) {
            Preconditions.checkArgument(jArr.length > 0, "data length is zero!");
            this.data = new AtomicLongArray(jArr);
            this.bitCount = LongAddables.create();
            long j = 0;
            for (long j2 : jArr) {
                j += Long.bitCount(j2);
            }
            this.bitCount.add(j);
        }

        boolean set(long j) {
            long j2;
            long j3;
            if (get(j)) {
                return false;
            }
            int i = (int) (j >>> 6);
            long j4 = 1 << ((int) j);
            do {
                j2 = this.data.get(i);
                j3 = j2 | j4;
                if (j2 == j3) {
                    return false;
                }
            } while (!this.data.compareAndSet(i, j2, j3));
            this.bitCount.increment();
            return true;
        }

        boolean get(long j) {
            return ((1 << ((int) j)) & this.data.get((int) (j >>> 6))) != 0;
        }

        public static long[] toPlainArray(AtomicLongArray atomicLongArray) {
            int length = atomicLongArray.length();
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                jArr[i] = atomicLongArray.get(i);
            }
            return jArr;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long bitSize() {
            return this.data.length() * 64;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public long bitCount() {
            return this.bitCount.sum();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public LockFreeBitArray copy() {
            return new LockFreeBitArray(toPlainArray(this.data));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void putAll(LockFreeBitArray lockFreeBitArray) {
            Preconditions.checkArgument(this.data.length() == lockFreeBitArray.data.length(), "BitArrays must be of equal length (%s != %s)", this.data.length(), lockFreeBitArray.data.length());
            for (int i = 0; i < this.data.length(); i++) {
                putData(i, lockFreeBitArray.data.get(i));
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void putData(int i, long j) {
            long j2;
            long j3;
            do {
                j2 = this.data.get(i);
                j3 = j2 | j;
                if (j2 == j3) {
                    return;
                }
            } while (!this.data.compareAndSet(i, j2, j3));
            this.bitCount.add(Long.bitCount(j3) - Long.bitCount(j2));
        }

        int dataLength() {
            return this.data.length();
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof LockFreeBitArray) {
                return Arrays.equals(toPlainArray(this.data), toPlainArray(((LockFreeBitArray) obj).data));
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(toPlainArray(this.data));
        }
    }
}
