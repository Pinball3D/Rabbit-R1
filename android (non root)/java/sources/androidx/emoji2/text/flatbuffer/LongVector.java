package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class LongVector extends BaseVector {
    public LongVector __assign(int i, ByteBuffer byteBuffer) {
        __reset(i, 8, byteBuffer);
        return this;
    }

    public long get(int i) {
        return this.bb.getLong(__element(i));
    }
}
