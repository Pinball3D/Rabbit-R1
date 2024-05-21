package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.SeekMap;
import com.google.android.exoplayer2.extractor.SeekPoint;
import com.google.android.exoplayer2.extractor.TrackOutput;

/* loaded from: classes2.dex */
public final class StartOffsetExtractorOutput implements ExtractorOutput {
    private final ExtractorOutput extractorOutput;
    private final long startOffset;

    public StartOffsetExtractorOutput(long j, ExtractorOutput extractorOutput) {
        this.startOffset = j;
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return this.extractorOutput.track(i, i2);
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(final SeekMap seekMap) {
        this.extractorOutput.seekMap(new SeekMap() { // from class: com.google.android.exoplayer2.extractor.jpeg.StartOffsetExtractorOutput.1
            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public boolean isSeekable() {
                return seekMap.isSeekable();
            }

            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public long getDurationUs() {
                return seekMap.getDurationUs();
            }

            @Override // com.google.android.exoplayer2.extractor.SeekMap
            public SeekMap.SeekPoints getSeekPoints(long j) {
                SeekMap.SeekPoints seekPoints = seekMap.getSeekPoints(j);
                return new SeekMap.SeekPoints(new SeekPoint(seekPoints.first.timeUs, seekPoints.first.position + StartOffsetExtractorOutput.this.startOffset), new SeekPoint(seekPoints.second.timeUs, seekPoints.second.position + StartOffsetExtractorOutput.this.startOffset));
            }
        });
    }
}
