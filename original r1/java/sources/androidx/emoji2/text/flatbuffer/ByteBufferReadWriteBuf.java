package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public class ByteBufferReadWriteBuf implements ReadWriteBuf {
    private final ByteBuffer buffer;

    public ByteBufferReadWriteBuf(ByteBuffer byteBuffer) {
        this.buffer = byteBuffer;
        byteBuffer.order(ByteOrder.LITTLE_ENDIAN);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public boolean getBoolean(int i) {
        return get(i) != 0;
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte get(int i) {
        return this.buffer.get(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public short getShort(int i) {
        return this.buffer.getShort(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public int getInt(int i) {
        return this.buffer.getInt(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public long getLong(int i) {
        return this.buffer.getLong(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public float getFloat(int i) {
        return this.buffer.getFloat(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public double getDouble(int i) {
        return this.buffer.getDouble(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public String getString(int i, int i2) {
        return Utf8Safe.decodeUtf8Buffer(this.buffer, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    public byte[] data() {
        return this.buffer.array();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putBoolean(boolean z) {
        this.buffer.put(z ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte[] bArr, int i, int i2) {
        this.buffer.put(bArr, i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void put(byte b) {
        this.buffer.put(b);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putShort(short s) {
        this.buffer.putShort(s);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putInt(int i) {
        this.buffer.putInt(i);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putLong(long j) {
        this.buffer.putLong(j);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putFloat(float f) {
        this.buffer.putFloat(f);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void putDouble(double d) {
        this.buffer.putDouble(d);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setBoolean(int i, boolean z) {
        set(i, z ? (byte) 1 : (byte) 0);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i, byte b) {
        requestCapacity(i + 1);
        this.buffer.put(i, b);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void set(int i, byte[] bArr, int i2, int i3) {
        requestCapacity((i3 - i2) + i);
        int position = this.buffer.position();
        this.buffer.position(i);
        this.buffer.put(bArr, i2, i3);
        this.buffer.position(position);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setShort(int i, short s) {
        requestCapacity(i + 2);
        this.buffer.putShort(i, s);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setInt(int i, int i2) {
        requestCapacity(i + 4);
        this.buffer.putInt(i, i2);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setLong(int i, long j) {
        requestCapacity(i + 8);
        this.buffer.putLong(i, j);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setFloat(int i, float f) {
        requestCapacity(i + 4);
        this.buffer.putFloat(i, f);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public void setDouble(int i, double d) {
        requestCapacity(i + 8);
        this.buffer.putDouble(i, d);
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public int writePosition() {
        return this.buffer.position();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf, androidx.emoji2.text.flatbuffer.ReadBuf
    public int limit() {
        return this.buffer.limit();
    }

    @Override // androidx.emoji2.text.flatbuffer.ReadWriteBuf
    public boolean requestCapacity(int i) {
        return i <= this.buffer.limit();
    }
}
