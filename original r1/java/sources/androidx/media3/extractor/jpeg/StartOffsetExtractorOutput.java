package androidx.media3.extractor.jpeg;

import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;

/* loaded from: classes2.dex */
public final class StartOffsetExtractorOutput implements ExtractorOutput {
    private final ExtractorOutput extractorOutput;
    private final long startOffset;

    public StartOffsetExtractorOutput(long j, ExtractorOutput extractorOutput) {
        this.startOffset = j;
        this.extractorOutput = extractorOutput;
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return this.extractorOutput.track(i, i2);
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
        this.extractorOutput.endTracks();
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void seekMap(final SeekMap seekMap) {
        this.extractorOutput.seekMap(new SeekMap() { // from class: androidx.media3.extractor.jpeg.StartOffsetExtractorOutput.1
            @Override // androidx.media3.extractor.SeekMap
            public boolean isSeekable() {
                return seekMap.isSeekable();
            }

            @Override // androidx.media3.extractor.SeekMap
            public long getDurationUs() {
                return seekMap.getDurationUs();
            }

            @Override // androidx.media3.extractor.SeekMap
            public SeekMap.SeekPoints getSeekPoints(long j) {
                SeekMap.SeekPoints seekPoints = seekMap.getSeekPoints(j);
                return new SeekMap.SeekPoints(new SeekPoint(seekPoints.first.timeUs, seekPoints.first.position + StartOffsetExtractorOutput.this.startOffset), new SeekPoint(seekPoints.second.timeUs, seekPoints.second.position + StartOffsetExtractorOutput.this.startOffset));
            }
        });
    }
}
