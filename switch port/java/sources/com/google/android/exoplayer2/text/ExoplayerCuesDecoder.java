package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.util.Assertions;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;

/* loaded from: classes2.dex */
public final class ExoplayerCuesDecoder implements SubtitleDecoder {
    private static final int INPUT_BUFFER_AVAILABLE = 0;
    private static final int INPUT_BUFFER_DEQUEUED = 1;
    private static final int INPUT_BUFFER_QUEUED = 2;
    private static final int OUTPUT_BUFFERS_COUNT = 2;
    private int inputBufferState;
    private boolean released;
    private final CueDecoder cueDecoder = new CueDecoder();
    private final SubtitleInputBuffer inputBuffer = new SubtitleInputBuffer();
    private final Deque<SubtitleOutputBuffer> availableOutputBuffers = new ArrayDeque();

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public String getName() {
        return "ExoplayerCuesDecoder";
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.text.SubtitleDecoder
    public void setPositionUs(long j) {
    }

    public ExoplayerCuesDecoder() {
        for (int i = 0; i < 2; i++) {
            this.availableOutputBuffers.addFirst(new SubtitleOutputBuffer() { // from class: com.google.android.exoplayer2.text.ExoplayerCuesDecoder.1
                @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
                public void release() {
                    ExoplayerCuesDecoder.this.releaseOutputBuffer(this);
                }
            });
        }
        this.inputBufferState = 0;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public SubtitleInputBuffer dequeueInputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(!this.released);
        if (this.inputBufferState != 0) {
            return null;
        }
        this.inputBufferState = 1;
        return this.inputBuffer;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void queueInputBuffer(SubtitleInputBuffer subtitleInputBuffer) throws SubtitleDecoderException {
        Assertions.checkState(!this.released);
        Assertions.checkState(this.inputBufferState == 1);
        Assertions.checkArgument(this.inputBuffer == subtitleInputBuffer);
        this.inputBufferState = 2;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public SubtitleOutputBuffer dequeueOutputBuffer() throws SubtitleDecoderException {
        Assertions.checkState(!this.released);
        if (this.inputBufferState != 2 || this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        SubtitleOutputBuffer removeFirst = this.availableOutputBuffers.removeFirst();
        if (this.inputBuffer.isEndOfStream()) {
            removeFirst.addFlag(4);
        } else {
            removeFirst.setContent(this.inputBuffer.timeUs, new SingleEventSubtitle(this.inputBuffer.timeUs, this.cueDecoder.decode(((ByteBuffer) Assertions.checkNotNull(this.inputBuffer.data)).array())), 0L);
        }
        this.inputBuffer.clear();
        this.inputBufferState = 0;
        return removeFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        Assertions.checkState(!this.released);
        this.inputBuffer.clear();
        this.inputBufferState = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseOutputBuffer(SubtitleOutputBuffer subtitleOutputBuffer) {
        Assertions.checkState(this.availableOutputBuffers.size() < 2);
        Assertions.checkArgument(!this.availableOutputBuffers.contains(subtitleOutputBuffer));
        subtitleOutputBuffer.clear();
        this.availableOutputBuffers.addFirst(subtitleOutputBuffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SingleEventSubtitle implements Subtitle {
        private final ImmutableList<Cue> cues;
        private final long timeUs;

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getEventTimeCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getNextEventTimeIndex(long j) {
            return this.timeUs > j ? 0 : -1;
        }

        public SingleEventSubtitle(long j, ImmutableList<Cue> immutableList) {
            this.timeUs = j;
            this.cues = immutableList;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public long getEventTime(int i) {
            Assertions.checkArgument(i == 0);
            return this.timeUs;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public List<Cue> getCues(long j) {
            return j >= this.timeUs ? this.cues : ImmutableList.of();
        }
    }
}
