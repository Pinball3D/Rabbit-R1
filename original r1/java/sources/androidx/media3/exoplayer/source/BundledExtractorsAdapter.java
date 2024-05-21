package androidx.media3.exoplayer.source;

import androidx.media3.common.util.Assertions;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {
    private Extractor extractor;
    private ExtractorInput extractorInput;
    private final ExtractorsFactory extractorsFactory;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.extractorsFactory = extractorsFactory;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
    
        if (r6.getPosition() != r11) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0070, code lost:
    
        r1 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006d, code lost:
    
        if (r6.getPosition() != r11) goto L37;
     */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(androidx.media3.common.DataReader r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, androidx.media3.extractor.ExtractorOutput r15) throws java.io.IOException {
        /*
            r7 = this;
            androidx.media3.extractor.DefaultExtractorInput r6 = new androidx.media3.extractor.DefaultExtractorInput
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.extractorInput = r6
            androidx.media3.extractor.Extractor r8 = r7.extractor
            if (r8 == 0) goto L10
            return
        L10:
            androidx.media3.extractor.ExtractorsFactory r8 = r7.extractorsFactory
            androidx.media3.extractor.Extractor[] r8 = r8.createExtractors(r9, r10)
            int r10 = r8.length
            r13 = 0
            r14 = 1
            if (r10 != r14) goto L21
            r8 = r8[r13]
            r7.extractor = r8
            goto L80
        L21:
            int r10 = r8.length
            r0 = r13
        L23:
            if (r0 >= r10) goto L7c
            r1 = r8[r0]
            boolean r2 = r1.sniff(r6)     // Catch: java.lang.Throwable -> L4e java.io.EOFException -> L63
            if (r2 == 0) goto L41
            r7.extractor = r1     // Catch: java.lang.Throwable -> L4e java.io.EOFException -> L63
            if (r1 != 0) goto L39
            long r0 = r6.getPosition()
            int r10 = (r0 > r11 ? 1 : (r0 == r11 ? 0 : -1))
            if (r10 != 0) goto L3a
        L39:
            r13 = r14
        L3a:
            androidx.media3.common.util.Assertions.checkState(r13)
            r6.resetPeekPosition()
            goto L7c
        L41:
            androidx.media3.extractor.Extractor r1 = r7.extractor
            if (r1 != 0) goto L72
            long r1 = r6.getPosition()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L70
            goto L72
        L4e:
            r8 = move-exception
            androidx.media3.extractor.Extractor r7 = r7.extractor
            if (r7 != 0) goto L5b
            long r9 = r6.getPosition()
            int r7 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r7 != 0) goto L5c
        L5b:
            r13 = r14
        L5c:
            androidx.media3.common.util.Assertions.checkState(r13)
            r6.resetPeekPosition()
            throw r8
        L63:
            androidx.media3.extractor.Extractor r1 = r7.extractor
            if (r1 != 0) goto L72
            long r1 = r6.getPosition()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L70
            goto L72
        L70:
            r1 = r13
            goto L73
        L72:
            r1 = r14
        L73:
            androidx.media3.common.util.Assertions.checkState(r1)
            r6.resetPeekPosition()
            int r0 = r0 + 1
            goto L23
        L7c:
            androidx.media3.extractor.Extractor r10 = r7.extractor
            if (r10 == 0) goto L86
        L80:
            androidx.media3.extractor.Extractor r7 = r7.extractor
            r7.init(r15)
            return
        L86:
            androidx.media3.exoplayer.source.UnrecognizedInputFormatException r7 = new androidx.media3.exoplayer.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "None of the available extractors ("
            r10.<init>(r11)
            java.lang.String r8 = androidx.media3.common.util.Util.getCommaDelimitedSimpleClassNames(r8)
            java.lang.StringBuilder r8 = r10.append(r8)
            java.lang.String r10 = ") could read the stream."
            java.lang.StringBuilder r8 = r8.append(r10)
            java.lang.String r8 = r8.toString()
            java.lang.Object r9 = androidx.media3.common.util.Assertions.checkNotNull(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r7.<init>(r8, r9)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.source.BundledExtractorsAdapter.init(androidx.media3.common.DataReader, android.net.Uri, java.util.Map, long, long, androidx.media3.extractor.ExtractorOutput):void");
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        Extractor extractor = this.extractor;
        if (extractor instanceof Mp3Extractor) {
            ((Mp3Extractor) extractor).disableSeeking();
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        ((Extractor) Assertions.checkNotNull(this.extractor)).seek(j, j2);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) throws IOException {
        return ((Extractor) Assertions.checkNotNull(this.extractor)).read((ExtractorInput) Assertions.checkNotNull(this.extractorInput), positionHolder);
    }
}
