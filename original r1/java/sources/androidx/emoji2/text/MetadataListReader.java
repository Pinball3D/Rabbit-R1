package androidx.emoji2.text;

import android.content.res.AssetManager;
import androidx.emoji2.text.flatbuffer.MetadataList;
import io.flutter.embedding.android.KeyboardMap;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlin.UShort;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MetadataListReader {
    private static final int EMJI_TAG = 1164798569;
    private static final int EMJI_TAG_DEPRECATED = 1701669481;
    private static final int META_TABLE_NAME = 1835365473;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface OpenTypeReader {
        public static final int UINT16_BYTE_COUNT = 2;
        public static final int UINT32_BYTE_COUNT = 4;

        long getPosition();

        int readTag() throws IOException;

        long readUnsignedInt() throws IOException;

        int readUnsignedShort() throws IOException;

        void skip(int i) throws IOException;
    }

    static long toUnsignedInt(int i) {
        return i & KeyboardMap.kValueMask;
    }

    static int toUnsignedShort(short s) {
        return s & UShort.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList read(InputStream inputStream) throws IOException {
        InputStreamOpenTypeReader inputStreamOpenTypeReader = new InputStreamOpenTypeReader(inputStream);
        OffsetInfo findOffsetInfo = findOffsetInfo(inputStreamOpenTypeReader);
        inputStreamOpenTypeReader.skip((int) (findOffsetInfo.getStartOffset() - inputStreamOpenTypeReader.getPosition()));
        ByteBuffer allocate = ByteBuffer.allocate((int) findOffsetInfo.getLength());
        int read = inputStream.read(allocate.array());
        if (read != findOffsetInfo.getLength()) {
            throw new IOException("Needed " + findOffsetInfo.getLength() + " bytes, got " + read);
        }
        return MetadataList.getRootAsMetadataList(allocate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList read(ByteBuffer byteBuffer) throws IOException {
        ByteBuffer duplicate = byteBuffer.duplicate();
        duplicate.position((int) findOffsetInfo(new ByteBufferReader(duplicate)).getStartOffset());
        return MetadataList.getRootAsMetadataList(duplicate);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataList read(AssetManager assetManager, String str) throws IOException {
        InputStream open = assetManager.open(str);
        try {
            MetadataList read = read(open);
            if (open != null) {
                open.close();
            }
            return read;
        } catch (Throwable th) {
            if (open != null) {
                try {
                    open.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    private static OffsetInfo findOffsetInfo(OpenTypeReader openTypeReader) throws IOException {
        long j;
        openTypeReader.skip(4);
        int readUnsignedShort = openTypeReader.readUnsignedShort();
        if (readUnsignedShort > 100) {
            throw new IOException("Cannot read metadata.");
        }
        openTypeReader.skip(6);
        int i = 0;
        while (true) {
            if (i >= readUnsignedShort) {
                j = -1;
                break;
            }
            int readTag = openTypeReader.readTag();
            openTypeReader.skip(4);
            j = openTypeReader.readUnsignedInt();
            openTypeReader.skip(4);
            if (1835365473 == readTag) {
                break;
            }
            i++;
        }
        if (j != -1) {
            openTypeReader.skip((int) (j - openTypeReader.getPosition()));
            openTypeReader.skip(12);
            long readUnsignedInt = openTypeReader.readUnsignedInt();
            for (int i2 = 0; i2 < readUnsignedInt; i2++) {
                int readTag2 = openTypeReader.readTag();
                long readUnsignedInt2 = openTypeReader.readUnsignedInt();
                long readUnsignedInt3 = openTypeReader.readUnsignedInt();
                if (EMJI_TAG == readTag2 || EMJI_TAG_DEPRECATED == readTag2) {
                    return new OffsetInfo(readUnsignedInt2 + j, readUnsignedInt3);
                }
            }
        }
        throw new IOException("Cannot read metadata.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class OffsetInfo {
        private final long mLength;
        private final long mStartOffset;

        long getLength() {
            return this.mLength;
        }

        long getStartOffset() {
            return this.mStartOffset;
        }

        OffsetInfo(long j, long j2) {
            this.mStartOffset = j;
            this.mLength = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class InputStreamOpenTypeReader implements OpenTypeReader {
        private final byte[] mByteArray;
        private final ByteBuffer mByteBuffer;
        private final InputStream mInputStream;
        private long mPosition = 0;

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.mPosition;
        }

        InputStreamOpenTypeReader(InputStream inputStream) {
            this.mInputStream = inputStream;
            byte[] bArr = new byte[4];
            this.mByteArray = bArr;
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            this.mByteBuffer = wrap;
            wrap.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            this.mByteBuffer.position(0);
            read(2);
            return MetadataListReader.toUnsignedShort(this.mByteBuffer.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long readUnsignedInt() throws IOException {
            this.mByteBuffer.position(0);
            read(4);
            return MetadataListReader.toUnsignedInt(this.mByteBuffer.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readTag() throws IOException {
            this.mByteBuffer.position(0);
            read(4);
            return this.mByteBuffer.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i) throws IOException {
            while (i > 0) {
                int skip = (int) this.mInputStream.skip(i);
                if (skip < 1) {
                    throw new IOException("Skip didn't move at least 1 byte forward");
                }
                i -= skip;
                this.mPosition += skip;
            }
        }

        private void read(int i) throws IOException {
            if (this.mInputStream.read(this.mByteArray, 0, i) != i) {
                throw new IOException("read failed");
            }
            this.mPosition += i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ByteBufferReader implements OpenTypeReader {
        private final ByteBuffer mByteBuffer;

        ByteBufferReader(ByteBuffer byteBuffer) {
            this.mByteBuffer = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readUnsignedShort() throws IOException {
            return MetadataListReader.toUnsignedShort(this.mByteBuffer.getShort());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long readUnsignedInt() throws IOException {
            return MetadataListReader.toUnsignedInt(this.mByteBuffer.getInt());
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public int readTag() throws IOException {
            return this.mByteBuffer.getInt();
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public void skip(int i) throws IOException {
            ByteBuffer byteBuffer = this.mByteBuffer;
            byteBuffer.position(byteBuffer.position() + i);
        }

        @Override // androidx.emoji2.text.MetadataListReader.OpenTypeReader
        public long getPosition() {
            return this.mByteBuffer.position();
        }
    }

    private MetadataListReader() {
    }
}
