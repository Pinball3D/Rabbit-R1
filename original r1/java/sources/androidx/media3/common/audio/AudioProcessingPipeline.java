package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class AudioProcessingPipeline {
    private final ImmutableList<AudioProcessor> audioProcessors;
    private final List<AudioProcessor> activeAudioProcessors = new ArrayList();
    private ByteBuffer[] outputBuffers = new ByteBuffer[0];
    private AudioProcessor.AudioFormat outputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
    private boolean inputEnded = false;

    public AudioProcessor.AudioFormat getOutputAudioFormat() {
        return this.outputAudioFormat;
    }

    public AudioProcessingPipeline(ImmutableList<AudioProcessor> immutableList) {
        this.audioProcessors = immutableList;
    }

    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.equals(AudioProcessor.AudioFormat.NOT_SET)) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        for (int i = 0; i < this.audioProcessors.size(); i++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i);
            AudioProcessor.AudioFormat configure = audioProcessor.configure(audioFormat);
            if (audioProcessor.isActive()) {
                Assertions.checkState(!configure.equals(AudioProcessor.AudioFormat.NOT_SET));
                audioFormat = configure;
            }
        }
        this.pendingOutputAudioFormat = audioFormat;
        return audioFormat;
    }

    public void flush() {
        this.activeAudioProcessors.clear();
        this.outputAudioFormat = this.pendingOutputAudioFormat;
        this.inputEnded = false;
        for (int i = 0; i < this.audioProcessors.size(); i++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i);
            audioProcessor.flush();
            if (audioProcessor.isActive()) {
                this.activeAudioProcessors.add(audioProcessor);
            }
        }
        this.outputBuffers = new ByteBuffer[this.activeAudioProcessors.size()];
        for (int i2 = 0; i2 <= getFinalOutputBufferIndex(); i2++) {
            this.outputBuffers[i2] = this.activeAudioProcessors.get(i2).getOutput();
        }
    }

    public boolean isOperational() {
        return !this.activeAudioProcessors.isEmpty();
    }

    public void queueInput(ByteBuffer byteBuffer) {
        if (!isOperational() || this.inputEnded) {
            return;
        }
        processData(byteBuffer);
    }

    public ByteBuffer getOutput() {
        if (!isOperational()) {
            return AudioProcessor.EMPTY_BUFFER;
        }
        ByteBuffer byteBuffer = this.outputBuffers[getFinalOutputBufferIndex()];
        if (!byteBuffer.hasRemaining()) {
            processData(AudioProcessor.EMPTY_BUFFER);
        }
        return byteBuffer;
    }

    public void queueEndOfStream() {
        if (!isOperational() || this.inputEnded) {
            return;
        }
        this.inputEnded = true;
        this.activeAudioProcessors.get(0).queueEndOfStream();
    }

    public boolean isEnded() {
        return this.inputEnded && this.activeAudioProcessors.get(getFinalOutputBufferIndex()).isEnded() && !this.outputBuffers[getFinalOutputBufferIndex()].hasRemaining();
    }

    public void reset() {
        for (int i = 0; i < this.audioProcessors.size(); i++) {
            AudioProcessor audioProcessor = this.audioProcessors.get(i);
            audioProcessor.flush();
            audioProcessor.reset();
        }
        this.outputBuffers = new ByteBuffer[0];
        this.outputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingOutputAudioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.inputEnded = false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioProcessingPipeline)) {
            return false;
        }
        AudioProcessingPipeline audioProcessingPipeline = (AudioProcessingPipeline) obj;
        if (this.audioProcessors.size() != audioProcessingPipeline.audioProcessors.size()) {
            return false;
        }
        for (int i = 0; i < this.audioProcessors.size(); i++) {
            if (this.audioProcessors.get(i) != audioProcessingPipeline.audioProcessors.get(i)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.audioProcessors.hashCode();
    }

    private void processData(ByteBuffer byteBuffer) {
        boolean z;
        ByteBuffer byteBuffer2;
        do {
            z = false;
            for (int i = 0; i <= getFinalOutputBufferIndex(); i++) {
                if (!this.outputBuffers[i].hasRemaining()) {
                    AudioProcessor audioProcessor = this.activeAudioProcessors.get(i);
                    if (audioProcessor.isEnded()) {
                        if (!this.outputBuffers[i].hasRemaining() && i < getFinalOutputBufferIndex()) {
                            this.activeAudioProcessors.get(i + 1).queueEndOfStream();
                        }
                    } else {
                        if (i > 0) {
                            byteBuffer2 = this.outputBuffers[i - 1];
                        } else {
                            byteBuffer2 = byteBuffer.hasRemaining() ? byteBuffer : AudioProcessor.EMPTY_BUFFER;
                        }
                        long remaining = byteBuffer2.remaining();
                        audioProcessor.queueInput(byteBuffer2);
                        this.outputBuffers[i] = audioProcessor.getOutput();
                        z |= remaining - ((long) byteBuffer2.remaining()) > 0 || this.outputBuffers[i].hasRemaining();
                    }
                }
            }
        } while (z);
    }

    private int getFinalOutputBufferIndex() {
        return this.outputBuffers.length - 1;
    }
}
