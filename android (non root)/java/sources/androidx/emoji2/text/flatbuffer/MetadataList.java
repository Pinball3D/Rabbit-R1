package androidx.emoji2.text.flatbuffer;

import androidx.emoji2.text.flatbuffer.MetadataItem;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public final class MetadataList extends Table {
    public static void ValidateVersion() {
        Constants.FLATBUFFERS_1_12_0();
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer) {
        return getRootAsMetadataList(byteBuffer, new MetadataList());
    }

    public static MetadataList getRootAsMetadataList(ByteBuffer byteBuffer, MetadataList metadataList) {
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
        return metadataList.__assign(byteBuffer.getInt(byteBuffer.position()) + byteBuffer.position(), byteBuffer);
    }

    public void __init(int i, ByteBuffer byteBuffer) {
        __reset(i, byteBuffer);
    }

    public MetadataList __assign(int i, ByteBuffer byteBuffer) {
        __init(i, byteBuffer);
        return this;
    }

    public int version() {
        int __offset = __offset(4);
        if (__offset != 0) {
            return this.bb.getInt(__offset + this.bb_pos);
        }
        return 0;
    }

    public MetadataItem list(int i) {
        return list(new MetadataItem(), i);
    }

    public MetadataItem list(MetadataItem metadataItem, int i) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return metadataItem.__assign(__indirect(__vector(__offset) + (i * 4)), this.bb);
        }
        return null;
    }

    public int listLength() {
        int __offset = __offset(6);
        if (__offset != 0) {
            return __vector_len(__offset);
        }
        return 0;
    }

    public MetadataItem.Vector listVector() {
        return listVector(new MetadataItem.Vector());
    }

    public MetadataItem.Vector listVector(MetadataItem.Vector vector) {
        int __offset = __offset(6);
        if (__offset != 0) {
            return vector.__assign(__vector(__offset), 4, this.bb);
        }
        return null;
    }

    public String sourceSha() {
        int __offset = __offset(8);
        if (__offset != 0) {
            return __string(__offset + this.bb_pos);
        }
        return null;
    }

    public ByteBuffer sourceShaAsByteBuffer() {
        return __vector_as_bytebuffer(8, 1);
    }

    public ByteBuffer sourceShaInByteBuffer(ByteBuffer byteBuffer) {
        return __vector_in_bytebuffer(byteBuffer, 8, 1);
    }

    public static int createMetadataList(FlatBufferBuilder flatBufferBuilder, int i, int i2, int i3) {
        flatBufferBuilder.startTable(3);
        addSourceSha(flatBufferBuilder, i3);
        addList(flatBufferBuilder, i2);
        addVersion(flatBufferBuilder, i);
        return endMetadataList(flatBufferBuilder);
    }

    public static void startMetadataList(FlatBufferBuilder flatBufferBuilder) {
        flatBufferBuilder.startTable(3);
    }

    public static void addVersion(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addInt(0, i, 0);
    }

    public static void addList(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(1, i, 0);
    }

    public static int createListVector(FlatBufferBuilder flatBufferBuilder, int[] iArr) {
        flatBufferBuilder.startVector(4, iArr.length, 4);
        for (int length = iArr.length - 1; length >= 0; length--) {
            flatBufferBuilder.addOffset(iArr[length]);
        }
        return flatBufferBuilder.endVector();
    }

    public static void startListVector(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.startVector(4, i, 4);
    }

    public static void addSourceSha(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.addOffset(2, i, 0);
    }

    public static int endMetadataList(FlatBufferBuilder flatBufferBuilder) {
        return flatBufferBuilder.endTable();
    }

    public static void finishMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.finish(i);
    }

    public static void finishSizePrefixedMetadataListBuffer(FlatBufferBuilder flatBufferBuilder, int i) {
        flatBufferBuilder.finishSizePrefixed(i);
    }

    /* loaded from: classes2.dex */
    public static final class Vector extends BaseVector {
        public Vector __assign(int i, int i2, ByteBuffer byteBuffer) {
            __reset(i, i2, byteBuffer);
            return this;
        }

        public MetadataList get(int i) {
            return get(new MetadataList(), i);
        }

        public MetadataList get(MetadataList metadataList, int i) {
            return metadataList.__assign(MetadataList.__indirect(__element(i), this.bb), this.bb);
        }
    }
}
