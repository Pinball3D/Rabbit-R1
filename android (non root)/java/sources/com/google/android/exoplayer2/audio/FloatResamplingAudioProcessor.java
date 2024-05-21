package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.Util;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
final class FloatResamplingAudioProcessor extends BaseAudioProcessor {
    private static final int FLOAT_NAN_AS_INT = Float.floatToIntBits(Float.NaN);
    private static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i = audioFormat.encoding;
        if (!Util.isEncodingHighResolutionPcm(i)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        if (i != 4) {
            return new AudioProcessor.AudioFormat(audioFormat.sampleRate, audioFormat.channelCount, 4);
        }
        return AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer replaceOutputBuffer;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        int i2 = this.inputAudioFormat.encoding;
        if (i2 == 536870912) {
            replaceOutputBuffer = replaceOutputBuffer((i / 3) * 4);
            while (position < limit) {
                writePcm32BitFloat(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), replaceOutputBuffer);
                position += 3;
            }
        } else if (i2 == 805306368) {
            replaceOutputBuffer = replaceOutputBuffer(i);
            while (position < limit) {
                writePcm32BitFloat((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), replaceOutputBuffer);
                position += 4;
            }
        } else {
            throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        replaceOutputBuffer.flip();
    }

    private static void writePcm32BitFloat(int i, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i * PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR));
        if (floatToIntBits == FLOAT_NAN_AS_INT) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }
}
