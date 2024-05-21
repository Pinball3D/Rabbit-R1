package androidx.media3.extractor.text;

import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.SimpleDecoder;
import java.nio.ByteBuffer;

/* loaded from: classes2.dex */
public abstract class SimpleSubtitleDecoder extends SimpleDecoder<SubtitleInputBuffer, SubtitleOutputBuffer, SubtitleDecoderException> implements SubtitleDecoder {
    private final String name;

    protected abstract Subtitle decode(byte[] bArr, int i, boolean z) throws SubtitleDecoderException;

    @Override // androidx.media3.decoder.Decoder
    public final String getName() {
        return this.name;
    }

    @Override // androidx.media3.extractor.text.SubtitleDecoder
    public void setPositionUs(long j) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleSubtitleDecoder(String str) {
        super(new SubtitleInputBuffer[2], new SubtitleOutputBuffer[2]);
        this.name = str;
        setInitialInputBufferSize(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final SubtitleInputBuffer createInputBuffer() {
        return new SubtitleInputBuffer();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final SubtitleOutputBuffer createOutputBuffer() {
        return new SubtitleOutputBuffer() { // from class: androidx.media3.extractor.text.SimpleSubtitleDecoder.1
            @Override // androidx.media3.decoder.DecoderOutputBuffer
            public void release() {
                SimpleSubtitleDecoder.this.releaseOutputBuffer(this);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final SubtitleDecoderException createUnexpectedDecodeException(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.media3.decoder.SimpleDecoder
    public final SubtitleDecoderException decode(SubtitleInputBuffer subtitleInputBuffer, SubtitleOutputBuffer subtitleOutputBuffer, boolean z) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.checkNotNull(subtitleInputBuffer.data);
            subtitleOutputBuffer.setContent(subtitleInputBuffer.timeUs, decode(byteBuffer.array(), byteBuffer.limit(), z), subtitleInputBuffer.subsampleOffsetUs);
            subtitleOutputBuffer.clearFlag(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e) {
            return e;
        }
    }
}
