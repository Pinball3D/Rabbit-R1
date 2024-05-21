package androidx.emoji2.text.flatbuffer;

import io.flutter.embedding.android.KeyboardMap;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public final class IntVector extends BaseVector {
    public IntVector __assign(int i, ByteBuffer byteBuffer) {
        __reset(i, 4, byteBuffer);
        return this;
    }

    public int get(int i) {
        return this.bb.getInt(__element(i));
    }

    public long getAsUnsigned(int i) {
        return get(i) & KeyboardMap.kValueMask;
    }
}
