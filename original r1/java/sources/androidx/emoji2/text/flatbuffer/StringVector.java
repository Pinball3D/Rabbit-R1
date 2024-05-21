package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class StringVector extends BaseVector {
    private Utf8 utf8 = Utf8.getDefault();

    public StringVector __assign(int i, int i2, ByteBuffer byteBuffer) {
        __reset(i, i2, byteBuffer);
        return this;
    }

    public String get(int i) {
        return Table.__string(__element(i), this.bb, this.utf8);
    }
}
