package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.WavUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public final class TeeAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    private final AudioBufferSink audioBufferSink;

    /* loaded from: classes2.dex */
    public interface AudioBufferSink {
        void flush(int i, int i2, int i3);

        void handleBuffer(ByteBuffer byteBuffer);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) {
        return audioFormat;
    }

    public TeeAudioProcessor(AudioBufferSink audioBufferSink) {
        this.audioBufferSink = (AudioBufferSink) Assertions.checkNotNull(audioBufferSink);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        this.audioBufferSink.handleBuffer(byteBuffer.asReadOnlyBuffer());
        replaceOutputBuffer(remaining).put(byteBuffer).flip();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void onFlush() {
        flushSinkIfActive();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void onQueueEndOfStream() {
        flushSinkIfActive();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void onReset() {
        flushSinkIfActive();
    }

    private void flushSinkIfActive() {
        if (isActive()) {
            this.audioBufferSink.flush(this.inputAudioFormat.sampleRate, this.inputAudioFormat.channelCount, this.inputAudioFormat.encoding);
        }
    }

    /* loaded from: classes2.dex */
    public static final class WavFileAudioBufferSink implements AudioBufferSink {
        private static final int FILE_SIZE_MINUS_44_OFFSET = 40;
        private static final int FILE_SIZE_MINUS_8_OFFSET = 4;
        private static final int HEADER_LENGTH = 44;
        private static final String TAG = "WaveFileAudioBufferSink";
        private int bytesWritten;
        private int channelCount;
        private int counter;
        private int encoding;
        private final String outputFileNamePrefix;
        private RandomAccessFile randomAccessFile;
        private int sampleRateHz;
        private final byte[] scratchBuffer;
        private final ByteBuffer scratchByteBuffer;

        public WavFileAudioBufferSink(String str) {
            this.outputFileNamePrefix = str;
            byte[] bArr = new byte[1024];
            this.scratchBuffer = bArr;
            this.scratchByteBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        }

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
            try {
                reset();
            } catch (IOException e) {
                Log.e(TAG, "Error resetting", e);
            }
            this.sampleRateHz = i;
            this.channelCount = i2;
            this.encoding = i3;
        }

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
        public void handleBuffer(ByteBuffer byteBuffer) {
            try {
                maybePrepareFile();
                writeBuffer(byteBuffer);
            } catch (IOException e) {
                Log.e(TAG, "Error writing data", e);
            }
        }

        private void maybePrepareFile() throws IOException {
            if (this.randomAccessFile != null) {
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(getNextOutputFileName(), "rw");
            writeFileHeader(randomAccessFile);
            this.randomAccessFile = randomAccessFile;
            this.bytesWritten = 44;
        }

        private void writeFileHeader(RandomAccessFile randomAccessFile) throws IOException {
            randomAccessFile.writeInt(1380533830);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(1463899717);
            randomAccessFile.writeInt(1718449184);
            this.scratchByteBuffer.clear();
            this.scratchByteBuffer.putInt(16);
            this.scratchByteBuffer.putShort((short) WavUtil.getTypeForPcmEncoding(this.encoding));
            this.scratchByteBuffer.putShort((short) this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz);
            int pcmFrameSize = Util.getPcmFrameSize(this.encoding, this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz * pcmFrameSize);
            this.scratchByteBuffer.putShort((short) pcmFrameSize);
            this.scratchByteBuffer.putShort((short) ((pcmFrameSize * 8) / this.channelCount));
            randomAccessFile.write(this.scratchBuffer, 0, this.scratchByteBuffer.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        private void writeBuffer(ByteBuffer byteBuffer) throws IOException {
            RandomAccessFile randomAccessFile = (RandomAccessFile) Assertions.checkNotNull(this.randomAccessFile);
            while (byteBuffer.hasRemaining()) {
                int min = Math.min(byteBuffer.remaining(), this.scratchBuffer.length);
                byteBuffer.get(this.scratchBuffer, 0, min);
                randomAccessFile.write(this.scratchBuffer, 0, min);
                this.bytesWritten += min;
            }
        }

        private void reset() throws IOException {
            RandomAccessFile randomAccessFile = this.randomAccessFile;
            if (randomAccessFile == null) {
                return;
            }
            try {
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 8);
                randomAccessFile.seek(4L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 44);
                randomAccessFile.seek(40L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
            } catch (IOException e) {
                Log.w(TAG, "Error updating file size", e);
            }
            try {
                randomAccessFile.close();
            } finally {
                this.randomAccessFile = null;
            }
        }

        private String getNextOutputFileName() {
            String str = this.outputFileNamePrefix;
            int i = this.counter;
            this.counter = i + 1;
            return Util.formatInvariant("%s-%04d.wav", str, Integer.valueOf(i));
        }
    }
}
