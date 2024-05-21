package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.Serializable;
import java.nio.ByteBuffer;
import javax.annotation.CheckForNull;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
final class SipHashFunction extends AbstractHashFunction implements Serializable {
    static final HashFunction SIP_HASH_24 = new SipHashFunction(2, 4, 506097522914230528L, 1084818905618843912L);
    private static final long serialVersionUID = 0;
    private final int c;
    private final int d;
    private final long k0;
    private final long k1;

    @Override // com.google.common.hash.HashFunction
    public int bits() {
        return 64;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SipHashFunction(int i, int i2, long j, long j2) {
        Preconditions.checkArgument(i > 0, "The number of SipRound iterations (c=%s) during Compression must be positive.", i);
        Preconditions.checkArgument(i2 > 0, "The number of SipRound iterations (d=%s) during Finalization must be positive.", i2);
        this.c = i;
        this.d = i2;
        this.k0 = j;
        this.k1 = j2;
    }

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return new SipHasher(this.c, this.d, this.k0, this.k1);
    }

    public String toString() {
        int i = this.c;
        int i2 = this.d;
        long j = this.k0;
        return new StringBuilder(81).append("Hashing.sipHash").append(i).append(i2).append("(").append(j).append(", ").append(this.k1).append(")").toString();
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof SipHashFunction)) {
            return false;
        }
        SipHashFunction sipHashFunction = (SipHashFunction) obj;
        return this.c == sipHashFunction.c && this.d == sipHashFunction.d && this.k0 == sipHashFunction.k0 && this.k1 == sipHashFunction.k1;
    }

    public int hashCode() {
        return (int) ((((getClass().hashCode() ^ this.c) ^ this.d) ^ this.k0) ^ this.k1);
    }

    /* loaded from: classes3.dex */
    private static final class SipHasher extends AbstractStreamingHasher {
        private static final int CHUNK_SIZE = 8;
        private long b;
        private final int c;
        private final int d;
        private long finalM;
        private long v0;
        private long v1;
        private long v2;
        private long v3;

        SipHasher(int i, int i2, long j, long j2) {
            super(8);
            this.b = 0L;
            this.finalM = 0L;
            this.c = i;
            this.d = i2;
            this.v0 = 8317987319222330741L ^ j;
            this.v1 = 7237128888997146477L ^ j2;
            this.v2 = 7816392313619706465L ^ j;
            this.v3 = 8387220255154660723L ^ j2;
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void process(ByteBuffer byteBuffer) {
            this.b += 8;
            processM(byteBuffer.getLong());
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected void processRemaining(ByteBuffer byteBuffer) {
            this.b += byteBuffer.remaining();
            int i = 0;
            while (byteBuffer.hasRemaining()) {
                this.finalM ^= (byteBuffer.get() & 255) << i;
                i += 8;
            }
        }

        @Override // com.google.common.hash.AbstractStreamingHasher
        protected HashCode makeHash() {
            long j = this.finalM ^ (this.b << 56);
            this.finalM = j;
            processM(j);
            this.v2 ^= 255;
            sipRound(this.d);
            return HashCode.fromLong(((this.v0 ^ this.v1) ^ this.v2) ^ this.v3);
        }

        private void processM(long j) {
            this.v3 ^= j;
            sipRound(this.c);
            this.v0 = j ^ this.v0;
        }

        private void sipRound(int i) {
            for (int i2 = 0; i2 < i; i2++) {
                long j = this.v0;
                long j2 = this.v1;
                this.v0 = j + j2;
                this.v2 += this.v3;
                this.v1 = Long.rotateLeft(j2, 13);
                long rotateLeft = Long.rotateLeft(this.v3, 16);
                long j3 = this.v1;
                long j4 = this.v0;
                this.v1 = j3 ^ j4;
                this.v3 = rotateLeft ^ this.v2;
                long rotateLeft2 = Long.rotateLeft(j4, 32);
                long j5 = this.v2;
                long j6 = this.v1;
                this.v2 = j5 + j6;
                this.v0 = rotateLeft2 + this.v3;
                this.v1 = Long.rotateLeft(j6, 17);
                long rotateLeft3 = Long.rotateLeft(this.v3, 21);
                long j7 = this.v1;
                long j8 = this.v2;
                this.v1 = j7 ^ j8;
                this.v3 = rotateLeft3 ^ this.v0;
                this.v2 = Long.rotateLeft(j8, 32);
            }
        }
    }
}
