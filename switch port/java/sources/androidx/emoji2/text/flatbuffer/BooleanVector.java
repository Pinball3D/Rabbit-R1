package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class BooleanVector extends BaseVector {
    public BooleanVector __assign(int i, ByteBuffer byteBuffer) {
        __reset(i, 1, byteBuffer);
        return this;
    }

    public boolean get(int i) {
        return this.bb.get(__element(i)) != 0;
    }
}
