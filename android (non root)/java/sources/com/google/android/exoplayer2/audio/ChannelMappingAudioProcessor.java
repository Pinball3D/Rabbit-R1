package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Assertions;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class ChannelMappingAudioProcessor extends BaseAudioProcessor {
    private int[] outputChannels;
    private int[] pendingOutputChannels;

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    protected void onFlush() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    protected void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }

    public void setChannelMap(int[] iArr) {
        this.pendingOutputChannels = iArr;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return AudioProcessor.AudioFormat.NOT_SET;
        }
        if (audioFormat.encoding != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z = audioFormat.channelCount != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= audioFormat.channelCount) {
                throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
            }
            z |= i2 != i;
            i++;
        }
        if (z) {
            return new AudioProcessor.AudioFormat(audioFormat.sampleRate, iArr.length, 2);
        }
        return AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) Assertions.checkNotNull(this.outputChannels);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer replaceOutputBuffer = replaceOutputBuffer(((limit - position) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (position < limit) {
            for (int i : iArr) {
                replaceOutputBuffer.putShort(byteBuffer.getShort((i * 2) + position));
            }
            position += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(limit);
        replaceOutputBuffer.flip();
    }
}
