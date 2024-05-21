package androidx.media3.exoplayer.mediacodec;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.extractor.MpegAudioUtil;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class C2Mp3TimestampTracker {
    private static final long DECODER_DELAY_FRAMES = 529;
    private static final String TAG = "C2Mp3TimestampTracker";
    private long anchorTimestampUs;
    private long processedFrames;
    private boolean seenInvalidMpegAudioHeader;

    public void reset() {
        this.anchorTimestampUs = 0L;
        this.processedFrames = 0L;
        this.seenInvalidMpegAudioHeader = false;
    }

    public long updateAndGetPresentationTimeUs(Format format, DecoderInputBuffer decoderInputBuffer) {
        if (this.processedFrames == 0) {
            this.anchorTimestampUs = decoderInputBuffer.timeUs;
        }
        if (this.seenInvalidMpegAudioHeader) {
            return decoderInputBuffer.timeUs;
        }
        ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(decoderInputBuffer.data);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int parseMpegAudioFrameSampleCount = MpegAudioUtil.parseMpegAudioFrameSampleCount(i);
        if (parseMpegAudioFrameSampleCount == -1) {
            this.seenInvalidMpegAudioHeader = true;
            this.processedFrames = 0L;
            this.anchorTimestampUs = decoderInputBuffer.timeUs;
            Log.w(TAG, "MPEG audio header is invalid.");
            return decoderInputBuffer.timeUs;
        }
        long bufferTimestampUs = getBufferTimestampUs(format.sampleRate);
        this.processedFrames += parseMpegAudioFrameSampleCount;
        return bufferTimestampUs;
    }

    public long getLastOutputBufferPresentationTimeUs(Format format) {
        return getBufferTimestampUs(format.sampleRate);
    }

    private long getBufferTimestampUs(long j) {
        return this.anchorTimestampUs + Math.max(0L, ((this.processedFrames - DECODER_DELAY_FRAMES) * 1000000) / j);
    }
}
