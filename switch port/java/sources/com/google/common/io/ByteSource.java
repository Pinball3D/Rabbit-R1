package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.hash.Funnels;
import com.google.common.hash.HashCode;
import com.google.common.hash.HashFunction;
import com.google.common.hash.Hasher;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class ByteSource {
    public abstract InputStream openStream() throws IOException;

    public CharSource asCharSource(Charset charset) {
        return new AsCharSource(charset);
    }

    public InputStream openBufferedStream() throws IOException {
        InputStream openStream = openStream();
        if (openStream instanceof BufferedInputStream) {
            return (BufferedInputStream) openStream;
        }
        return new BufferedInputStream(openStream);
    }

    public ByteSource slice(long j, long j2) {
        return new SlicedByteSource(j, j2);
    }

    public boolean isEmpty() throws IOException {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        if (sizeIfKnown.isPresent()) {
            return sizeIfKnown.get().longValue() == 0;
        }
        Closer create = Closer.create();
        try {
            return ((InputStream) create.register(openStream())).read() == -1;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public Optional<Long> sizeIfKnown() {
        return Optional.absent();
    }

    public long size() throws IOException {
        Optional<Long> sizeIfKnown = sizeIfKnown();
        if (sizeIfKnown.isPresent()) {
            return sizeIfKnown.get().longValue();
        }
        Closer create = Closer.create();
        try {
            return countBySkipping((InputStream) create.register(openStream()));
        } catch (IOException unused) {
            create.close();
            try {
                return ByteStreams.exhaust((InputStream) Closer.create().register(openStream()));
            } finally {
            }
        } finally {
        }
    }

    private long countBySkipping(InputStream inputStream) throws IOException {
        long j = 0;
        while (true) {
            long skipUpTo = ByteStreams.skipUpTo(inputStream, 2147483647L);
            if (skipUpTo <= 0) {
                return j;
            }
            j += skipUpTo;
        }
    }

    public long copyTo(OutputStream outputStream) throws IOException {
        Preconditions.checkNotNull(outputStream);
        try {
            return ByteStreams.copy((InputStream) Closer.create().register(openStream()), outputStream);
        } finally {
        }
    }

    public long copyTo(ByteSink byteSink) throws IOException {
        Preconditions.checkNotNull(byteSink);
        Closer create = Closer.create();
        try {
            return ByteStreams.copy((InputStream) create.register(openStream()), (OutputStream) create.register(byteSink.openStream()));
        } finally {
        }
    }

    public byte[] read() throws IOException {
        byte[] byteArray;
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            Optional<Long> sizeIfKnown = sizeIfKnown();
            if (sizeIfKnown.isPresent()) {
                byteArray = ByteStreams.toByteArray(inputStream, sizeIfKnown.get().longValue());
            } else {
                byteArray = ByteStreams.toByteArray(inputStream);
            }
            return byteArray;
        } catch (Throwable th) {
            try {
                throw create.rethrow(th);
            } finally {
                create.close();
            }
        }
    }

    public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
        Preconditions.checkNotNull(byteProcessor);
        try {
            return (T) ByteStreams.readBytes((InputStream) Closer.create().register(openStream()), byteProcessor);
        } finally {
        }
    }

    public HashCode hash(HashFunction hashFunction) throws IOException {
        Hasher newHasher = hashFunction.newHasher();
        copyTo(Funnels.asOutputStream(newHasher));
        return newHasher.hash();
    }

    public boolean contentEquals(ByteSource byteSource) throws IOException {
        int read;
        Preconditions.checkNotNull(byteSource);
        byte[] createBuffer = ByteStreams.createBuffer();
        byte[] createBuffer2 = ByteStreams.createBuffer();
        Closer create = Closer.create();
        try {
            InputStream inputStream = (InputStream) create.register(openStream());
            InputStream inputStream2 = (InputStream) create.register(byteSource.openStream());
            do {
                read = ByteStreams.read(inputStream, createBuffer, 0, createBuffer.length);
                if (read == ByteStreams.read(inputStream2, createBuffer2, 0, createBuffer2.length) && Arrays.equals(createBuffer, createBuffer2)) {
                }
                return false;
            } while (read == createBuffer.length);
            create.close();
            return true;
        } finally {
        }
    }

    public static ByteSource concat(Iterable<? extends ByteSource> iterable) {
        return new ConcatenatedByteSource(iterable);
    }

    public static ByteSource concat(Iterator<? extends ByteSource> it) {
        return concat(ImmutableList.copyOf(it));
    }

    public static ByteSource concat(ByteSource... byteSourceArr) {
        return concat(ImmutableList.copyOf(byteSourceArr));
    }

    public static ByteSource wrap(byte[] bArr) {
        return new ByteArrayByteSource(bArr);
    }

    public static ByteSource empty() {
        return EmptyByteSource.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class AsCharSource extends CharSource {
        final Charset charset;

        AsCharSource(Charset charset) {
            this.charset = (Charset) Preconditions.checkNotNull(charset);
        }

        @Override // com.google.common.io.CharSource
        public ByteSource asByteSource(Charset charset) {
            return charset.equals(this.charset) ? ByteSource.this : super.asByteSource(charset);
        }

        @Override // com.google.common.io.CharSource
        public Reader openStream() throws IOException {
            return new InputStreamReader(ByteSource.this.openStream(), this.charset);
        }

        @Override // com.google.common.io.CharSource
        public String read() throws IOException {
            return new String(ByteSource.this.read(), this.charset);
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            String valueOf = String.valueOf(this.charset);
            return new StringBuilder(String.valueOf(obj).length() + 15 + String.valueOf(valueOf).length()).append(obj).append(".asCharSource(").append(valueOf).append(")").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public final class SlicedByteSource extends ByteSource {
        final long length;
        final long offset;

        SlicedByteSource(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            this.offset = j;
            this.length = j2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return sliceStream(ByteSource.this.openStream());
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return sliceStream(ByteSource.this.openBufferedStream());
        }

        private InputStream sliceStream(InputStream inputStream) throws IOException {
            long j = this.offset;
            if (j > 0) {
                try {
                    if (ByteStreams.skipUpTo(inputStream, j) < this.offset) {
                        inputStream.close();
                        return new ByteArrayInputStream(new byte[0]);
                    }
                } finally {
                }
            }
            return ByteStreams.limit(inputStream, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            long j3 = this.length - j;
            if (j3 <= 0) {
                return ByteSource.empty();
            }
            return ByteSource.this.slice(this.offset + j, Math.min(j2, j3));
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            return this.length == 0 || super.isEmpty();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Optional<Long> sizeIfKnown = ByteSource.this.sizeIfKnown();
            if (sizeIfKnown.isPresent()) {
                long longValue = sizeIfKnown.get().longValue();
                return Optional.of(Long.valueOf(Math.min(this.length, longValue - Math.min(this.offset, longValue))));
            }
            return Optional.absent();
        }

        public String toString() {
            String obj = ByteSource.this.toString();
            long j = this.offset;
            return new StringBuilder(String.valueOf(obj).length() + 50).append(obj).append(".slice(").append(j).append(", ").append(this.length).append(")").toString();
        }
    }

    /* loaded from: classes3.dex */
    private static class ByteArrayByteSource extends ByteSource {
        final byte[] bytes;
        final int length;
        final int offset;

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() {
            return this.length == 0;
        }

        @Override // com.google.common.io.ByteSource
        public long size() {
            return this.length;
        }

        ByteArrayByteSource(byte[] bArr) {
            this(bArr, 0, bArr.length);
        }

        ByteArrayByteSource(byte[] bArr, int i, int i2) {
            this.bytes = bArr;
            this.offset = i;
            this.length = i2;
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() {
            return new ByteArrayInputStream(this.bytes, this.offset, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openBufferedStream() throws IOException {
            return openStream();
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            return Optional.of(Long.valueOf(this.length));
        }

        @Override // com.google.common.io.ByteSource
        public byte[] read() {
            byte[] bArr = this.bytes;
            int i = this.offset;
            return Arrays.copyOfRange(bArr, i, this.length + i);
        }

        @Override // com.google.common.io.ByteSource
        @ParametricNullness
        public <T> T read(ByteProcessor<T> byteProcessor) throws IOException {
            byteProcessor.processBytes(this.bytes, this.offset, this.length);
            return byteProcessor.getResult();
        }

        @Override // com.google.common.io.ByteSource
        public long copyTo(OutputStream outputStream) throws IOException {
            outputStream.write(this.bytes, this.offset, this.length);
            return this.length;
        }

        @Override // com.google.common.io.ByteSource
        public HashCode hash(HashFunction hashFunction) throws IOException {
            return hashFunction.hashBytes(this.bytes, this.offset, this.length);
        }

        @Override // com.google.common.io.ByteSource
        public ByteSource slice(long j, long j2) {
            Preconditions.checkArgument(j >= 0, "offset (%s) may not be negative", j);
            Preconditions.checkArgument(j2 >= 0, "length (%s) may not be negative", j2);
            long min = Math.min(j, this.length);
            return new ByteArrayByteSource(this.bytes, this.offset + ((int) min), (int) Math.min(j2, this.length - min));
        }

        public String toString() {
            String truncate = Ascii.truncate(BaseEncoding.base16().encode(this.bytes, this.offset, this.length), 30, "...");
            return new StringBuilder(String.valueOf(truncate).length() + 17).append("ByteSource.wrap(").append(truncate).append(")").toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class EmptyByteSource extends ByteArrayByteSource {
        static final EmptyByteSource INSTANCE = new EmptyByteSource();

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource
        public String toString() {
            return "ByteSource.empty()";
        }

        EmptyByteSource() {
            super(new byte[0]);
        }

        @Override // com.google.common.io.ByteSource
        public CharSource asCharSource(Charset charset) {
            Preconditions.checkNotNull(charset);
            return CharSource.empty();
        }

        @Override // com.google.common.io.ByteSource.ByteArrayByteSource, com.google.common.io.ByteSource
        public byte[] read() {
            return this.bytes;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static final class ConcatenatedByteSource extends ByteSource {
        final Iterable<? extends ByteSource> sources;

        ConcatenatedByteSource(Iterable<? extends ByteSource> iterable) {
            this.sources = (Iterable) Preconditions.checkNotNull(iterable);
        }

        @Override // com.google.common.io.ByteSource
        public InputStream openStream() throws IOException {
            return new MultiInputStream(this.sources.iterator());
        }

        @Override // com.google.common.io.ByteSource
        public boolean isEmpty() throws IOException {
            Iterator<? extends ByteSource> it = this.sources.iterator();
            while (it.hasNext()) {
                if (!it.next().isEmpty()) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.common.io.ByteSource
        public Optional<Long> sizeIfKnown() {
            Iterable<? extends ByteSource> iterable = this.sources;
            if (!(iterable instanceof Collection)) {
                return Optional.absent();
            }
            Iterator<? extends ByteSource> it = iterable.iterator();
            long j = 0;
            while (it.hasNext()) {
                Optional<Long> sizeIfKnown = it.next().sizeIfKnown();
                if (!sizeIfKnown.isPresent()) {
                    return Optional.absent();
                }
                j += sizeIfKnown.get().longValue();
                if (j < 0) {
                    return Optional.of(Long.MAX_VALUE);
                }
            }
            return Optional.of(Long.valueOf(j));
        }

        @Override // com.google.common.io.ByteSource
        public long size() throws IOException {
            Iterator<? extends ByteSource> it = this.sources.iterator();
            long j = 0;
            while (it.hasNext()) {
                j += it.next().size();
                if (j < 0) {
                    return Long.MAX_VALUE;
                }
            }
            return j;
        }

        public String toString() {
            String valueOf = String.valueOf(this.sources);
            return new StringBuilder(String.valueOf(valueOf).length() + 19).append("ByteSource.concat(").append(valueOf).append(")").toString();
        }
    }
}
