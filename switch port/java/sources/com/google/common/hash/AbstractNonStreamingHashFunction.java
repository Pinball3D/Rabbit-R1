package com.google.common.hash;

import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.Immutable;
import java.io.ByteArrayOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Arrays;

@Immutable
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
abstract class AbstractNonStreamingHashFunction extends AbstractHashFunction {
    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public abstract HashCode hashBytes(byte[] bArr, int i, int i2);

    @Override // com.google.common.hash.HashFunction
    public Hasher newHasher() {
        return newHasher(32);
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public Hasher newHasher(int i) {
        Preconditions.checkArgument(i >= 0);
        return new BufferingHasher(i);
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashInt(int i) {
        return hashBytes(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i).array());
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashLong(long j) {
        return hashBytes(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashUnencodedChars(CharSequence charSequence) {
        int length = charSequence.length();
        ByteBuffer order = ByteBuffer.allocate(length * 2).order(ByteOrder.LITTLE_ENDIAN);
        for (int i = 0; i < length; i++) {
            order.putChar(charSequence.charAt(i));
        }
        return hashBytes(order.array());
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashString(CharSequence charSequence, Charset charset) {
        return hashBytes(charSequence.toString().getBytes(charset));
    }

    @Override // com.google.common.hash.AbstractHashFunction, com.google.common.hash.HashFunction
    public HashCode hashBytes(ByteBuffer byteBuffer) {
        return newHasher(byteBuffer.remaining()).putBytes(byteBuffer).hash();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class BufferingHasher extends AbstractHasher {
        final ExposedByteArrayOutputStream stream;

        BufferingHasher(int i) {
            this.stream = new ExposedByteArrayOutputStream(i);
        }

        @Override // com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putByte(byte b) {
            this.stream.write(b);
            return this;
        }

        @Override // com.google.common.hash.AbstractHasher, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(byte[] bArr, int i, int i2) {
            this.stream.write(bArr, i, i2);
            return this;
        }

        @Override // com.google.common.hash.AbstractHasher, com.google.common.hash.Hasher, com.google.common.hash.PrimitiveSink
        public Hasher putBytes(ByteBuffer byteBuffer) {
            this.stream.write(byteBuffer);
            return this;
        }

        @Override // com.google.common.hash.Hasher
        public HashCode hash() {
            return AbstractNonStreamingHashFunction.this.hashBytes(this.stream.byteArray(), 0, this.stream.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ExposedByteArrayOutputStream extends ByteArrayOutputStream {
        ExposedByteArrayOutputStream(int i) {
            super(i);
        }

        void write(ByteBuffer byteBuffer) {
            int remaining = byteBuffer.remaining();
            if (this.count + remaining > this.buf.length) {
                this.buf = Arrays.copyOf(this.buf, this.count + remaining);
            }
            byteBuffer.get(this.buf, this.count, remaining);
            this.count += remaining;
        }

        byte[] byteArray() {
            return this.buf;
        }

        int length() {
            return this.count;
        }
    }
}
