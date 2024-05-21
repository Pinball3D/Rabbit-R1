package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.extractor.Extractor;
import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.extractor.mp3.Mp3Extractor;
import com.google.android.exoplayer2.util.Assertions;
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
    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void init(com.google.android.exoplayer2.upstream.DataReader r8, android.net.Uri r9, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r10, long r11, long r13, com.google.android.exoplayer2.extractor.ExtractorOutput r15) throws java.io.IOException {
        /*
            r7 = this;
            com.google.android.exoplayer2.extractor.DefaultExtractorInput r6 = new com.google.android.exoplayer2.extractor.DefaultExtractorInput
            r0 = r6
            r1 = r8
            r2 = r11
            r4 = r13
            r0.<init>(r1, r2, r4)
            r7.extractorInput = r6
            com.google.android.exoplayer2.extractor.Extractor r8 = r7.extractor
            if (r8 == 0) goto L10
            return
        L10:
            com.google.android.exoplayer2.extractor.ExtractorsFactory r8 = r7.extractorsFactory
            com.google.android.exoplayer2.extractor.Extractor[] r8 = r8.createExtractors(r9, r10)
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
            com.google.android.exoplayer2.util.Assertions.checkState(r13)
            r6.resetPeekPosition()
            goto L7c
        L41:
            com.google.android.exoplayer2.extractor.Extractor r1 = r7.extractor
            if (r1 != 0) goto L72
            long r1 = r6.getPosition()
            int r1 = (r1 > r11 ? 1 : (r1 == r11 ? 0 : -1))
            if (r1 != 0) goto L70
            goto L72
        L4e:
            r8 = move-exception
            com.google.android.exoplayer2.extractor.Extractor r7 = r7.extractor
            if (r7 != 0) goto L5b
            long r9 = r6.getPosition()
            int r7 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r7 != 0) goto L5c
        L5b:
            r13 = r14
        L5c:
            com.google.android.exoplayer2.util.Assertions.checkState(r13)
            r6.resetPeekPosition()
            throw r8
        L63:
            com.google.android.exoplayer2.extractor.Extractor r1 = r7.extractor
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
            com.google.android.exoplayer2.util.Assertions.checkState(r1)
            r6.resetPeekPosition()
            int r0 = r0 + 1
            goto L23
        L7c:
            com.google.android.exoplayer2.extractor.Extractor r10 = r7.extractor
            if (r10 == 0) goto L86
        L80:
            com.google.android.exoplayer2.extractor.Extractor r7 = r7.extractor
            r7.init(r15)
            return
        L86:
            com.google.android.exoplayer2.source.UnrecognizedInputFormatException r7 = new com.google.android.exoplayer2.source.UnrecognizedInputFormatException
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            java.lang.String r11 = "None of the available extractors ("
            r10.<init>(r11)
            java.lang.String r8 = com.google.android.exoplayer2.util.Util.getCommaDelimitedSimpleClassNames(r8)
            java.lang.StringBuilder r8 = r10.append(r8)
            java.lang.String r10 = ") could read the stream."
            java.lang.StringBuilder r8 = r8.append(r10)
            java.lang.String r8 = r8.toString()
            java.lang.Object r9 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r9)
            android.net.Uri r9 = (android.net.Uri) r9
            r7.<init>(r8, r9)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.BundledExtractorsAdapter.init(com.google.android.exoplayer2.upstream.DataReader, android.net.Uri, java.util.Map, long, long, com.google.android.exoplayer2.extractor.ExtractorOutput):void");
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void release() {
        Extractor extractor = this.extractor;
        if (extractor != null) {
            extractor.release();
            this.extractor = null;
        }
        this.extractorInput = null;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        Extractor extractor = this.extractor;
        if (extractor instanceof Mp3Extractor) {
            ((Mp3Extractor) extractor).disableSeeking();
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        ExtractorInput extractorInput = this.extractorInput;
        if (extractorInput != null) {
            return extractorInput.getPosition();
        }
        return -1L;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        ((Extractor) Assertions.checkNotNull(this.extractor)).seek(j, j2);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public int read(PositionHolder positionHolder) throws IOException {
        return ((Extractor) Assertions.checkNotNull(this.extractor)).read((ExtractorInput) Assertions.checkNotNull(this.extractorInput), positionHolder);
    }
}
