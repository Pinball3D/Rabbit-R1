package com.google.android.exoplayer2.decoder;

import com.google.android.exoplayer2.decoder.DecoderOutputBuffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public class SimpleDecoderOutputBuffer extends DecoderOutputBuffer {
    public ByteBuffer data;
    private final DecoderOutputBuffer.Owner<SimpleDecoderOutputBuffer> owner;

    public SimpleDecoderOutputBuffer(DecoderOutputBuffer.Owner<SimpleDecoderOutputBuffer> owner) {
        this.owner = owner;
    }

    public ByteBuffer init(long j, int i) {
        this.timeUs = j;
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer == null || byteBuffer.capacity() < i) {
            this.data = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        }
        this.data.position(0);
        this.data.limit(i);
        return this.data;
    }

    @Override // com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
    public void release() {
        this.owner.releaseOutputBuffer(this);
    }
}
