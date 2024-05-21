package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public class BaseVector {
    protected ByteBuffer bb;
    private int element_size;
    private int length;
    private int vector;

    /* JADX INFO: Access modifiers changed from: protected */
    public int __element(int i) {
        return this.vector + (i * this.element_size);
    }

    protected int __vector() {
        return this.vector;
    }

    public int length() {
        return this.length;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void __reset(int i, int i2, ByteBuffer byteBuffer) {
        this.bb = byteBuffer;
        if (byteBuffer != null) {
            this.vector = i;
            this.length = byteBuffer.getInt(i - 4);
            this.element_size = i2;
        } else {
            this.vector = 0;
            this.length = 0;
            this.element_size = 0;
        }
    }

    public void reset() {
        __reset(0, 0, null);
    }
}
