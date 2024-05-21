package com.google.common.hash;

import com.google.common.primitives.UnsignedBytes;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class Murmur3_128HashFunction extends AbstractHashFunction implements Serializable {
    private static final long serialVersionUID = 0;
    private final int seed;
    static final HashFunction MURMUR3_128 = new Murmur3_128HashFunction(0);
    static final HashFunction GOOD_FAST_HASH_128 = new Murmur3_128HashFunction(Hashing.GOOD_FAST_HASH_SEED);

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 128;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Murmur3_128HashFunction(int i) {
        this.seed = i;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new Murmur3_128Hasher(this.seed);
    }

    public String toString() {
        return new StringBuilder(32).append("Hashing.murmur3_128(").append(this.seed).append(")").toString();
    }

    public boolean equals(@CheckForNull Object obj) {
        return (obj instanceof Murmur3_128HashFunction) && this.seed == ((Murmur3_128HashFunction) obj).seed;
    }

    public int hashCode() {
        return this.seed ^ getClass().hashCode();
    }

    /* loaded from: classes3.dex */
    private static final class Murmur3_128Hasher extends AbstractStreamingHasher {
        private static final long C1 = -8663945395140668459L;
        private static final long C2 = 5545529020109919103L;
        private static final int CHUNK_SIZE = 16;
        private long h1;
        private long h2;
        private int length;

        private static long fmix64(long j) {
            long j2 = (j ^ (j >>> 33)) * (-49064778989728563L);
            long j3 = (j2 ^ (j2 >>> 33)) * (-4265267296055464877L);
            return j3 ^ (j3 >>> 33);
        }

        Murmur3_128Hasher(int i) {
            super(16);
            long j = i;
            this.h1 = j;
            this.h2 = j;
            this.length = 0;
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void process(ByteBuffer byteBuffer) {
            bmix64(byteBuffer.getLong(), byteBuffer.getLong());
            this.length += 16;
        }

        private void bmix64(long j, long j2) {
            long mixK1 = mixK1(j) ^ this.h1;
            this.h1 = mixK1;
            long rotateLeft = Long.rotateLeft(mixK1, 27);
            long j3 = this.h2;
            this.h1 = ((rotateLeft + j3) * 5) + 1390208809;
            long mixK2 = mixK2(j2) ^ j3;
            this.h2 = mixK2;
            this.h2 = ((Long.rotateLeft(mixK2, 31) + this.h1) * 5) + 944331445;
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001b. Please report as an issue. */
        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void processRemaining(ByteBuffer byteBuffer) {
            long j;
            long j2;
            long j3;
            long j4;
            long j5;
            long j6;
            long j7;
            this.length += byteBuffer.remaining();
            long j8 = 0;
            switch (byteBuffer.remaining()) {
                case 1:
                    j = 0;
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 2:
                    j2 = 0;
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 3:
                    j3 = 0;
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 4:
                    j4 = 0;
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 5:
                    j5 = 0;
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 6:
                    j6 = 0;
                    j5 = j6 ^ (UnsignedBytes.toInt(byteBuffer.get(5)) << 40);
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 7:
                    j6 = UnsignedBytes.toInt(byteBuffer.get(6)) << 48;
                    j5 = j6 ^ (UnsignedBytes.toInt(byteBuffer.get(5)) << 40);
                    j4 = j5 ^ (UnsignedBytes.toInt(byteBuffer.get(4)) << 32);
                    j3 = j4 ^ (UnsignedBytes.toInt(byteBuffer.get(3)) << 24);
                    j2 = j3 ^ (UnsignedBytes.toInt(byteBuffer.get(2)) << 16);
                    j = j2 ^ (UnsignedBytes.toInt(byteBuffer.get(1)) << 8);
                    j7 = j ^ UnsignedBytes.toInt(byteBuffer.get(0));
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 8:
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 9:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 10:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 11:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 12:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 13:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 14:
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(13)) << 40;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                case 15:
                    j8 = UnsignedBytes.toInt(byteBuffer.get(14)) << 48;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(13)) << 40;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(12)) << 32;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(11)) << 24;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(10)) << 16;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(9)) << 8;
                    j8 ^= UnsignedBytes.toInt(byteBuffer.get(8));
                    j7 = byteBuffer.getLong();
                    this.h1 = mixK1(j7) ^ this.h1;
                    this.h2 ^= mixK2(j8);
                    return;
                default:
                    throw new AssertionError("Should never get here.");
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected HashCode makeHash() {
            long j = this.h1;
            int i = this.length;
            long j2 = j ^ i;
            long j3 = this.h2 ^ i;
            long j4 = j2 + j3;
            this.h1 = j4;
            this.h2 = j3 + j4;
            this.h1 = fmix64(j4);
            long fmix64 = fmix64(this.h2);
            long j5 = this.h1 + fmix64;
            this.h1 = j5;
            this.h2 = fmix64 + j5;
            return HashCode.fromBytesNoCopy(ByteBuffer.wrap(new byte[16]).order(ByteOrder.LITTLE_ENDIAN).putLong(this.h1).putLong(this.h2).array());
        }

        private static long mixK1(long j) {
            return Long.rotateLeft(j * C1, 31) * C2;
        }

        private static long mixK2(long j) {
            return Long.rotateLeft(j * C2, 33) * C1;
        }
    }
}
