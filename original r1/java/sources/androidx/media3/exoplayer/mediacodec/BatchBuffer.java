package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.DecoderInputBuffer;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class BatchBuffer extends DecoderInputBuffer {
    public static final int DEFAULT_MAX_SAMPLE_COUNT = 32;
    static final int MAX_SIZE_BYTES = 3072000;
    private long lastSampleTimeUs;
    private int maxSampleCount;
    private int sampleCount;

    public long getLastSampleTimeUs() {
        return this.lastSampleTimeUs;
    }

    public int getSampleCount() {
        return this.sampleCount;
    }

    public boolean hasSamples() {
        return this.sampleCount > 0;
    }

    public BatchBuffer() {
        super(2);
        this.maxSampleCount = 32;
    }

    @Override // androidx.media3.decoder.DecoderInputBuffer, androidx.media3.decoder.Buffer
    public void clear() {
        super.clear();
        this.sampleCount = 0;
    }

    public void setMaxSampleCount(int i) {
        Assertions.checkArgument(i > 0);
        this.maxSampleCount = i;
    }

    public long getFirstSampleTimeUs() {
        return this.timeUs;
    }

    public boolean append(DecoderInputBuffer decoderInputBuffer) {
        Assertions.checkArgument(!decoderInputBuffer.isEncrypted());
        Assertions.checkArgument(!decoderInputBuffer.hasSupplementalData());
        Assertions.checkArgument(!decoderInputBuffer.isEndOfStream());
        if (!canAppendSampleBuffer(decoderInputBuffer)) {
            return false;
        }
        int i = this.sampleCount;
        this.sampleCount = i + 1;
        if (i == 0) {
            this.timeUs = decoderInputBuffer.timeUs;
            if (decoderInputBuffer.isKeyFrame()) {
                setFlags(1);
            }
        }
        if (decoderInputBuffer.isDecodeOnly()) {
            setFlags(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = decoderInputBuffer.data;
        if (byteBuffer != null) {
            ensureSpaceForWrite(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.lastSampleTimeUs = decoderInputBuffer.timeUs;
        return true;
    }

    private boolean canAppendSampleBuffer(DecoderInputBuffer decoderInputBuffer) {
        if (!hasSamples()) {
            return true;
        }
        if (this.sampleCount >= this.maxSampleCount || decoderInputBuffer.isDecodeOnly() != isDecodeOnly()) {
            return false;
        }
        ByteBuffer byteBuffer = decoderInputBuffer.data;
        return byteBuffer == null || this.data == null || this.data.position() + byteBuffer.remaining() <= MAX_SIZE_BYTES;
    }
}
