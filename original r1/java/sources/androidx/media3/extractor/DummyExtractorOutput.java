package androidx.media3.extractor;

/* loaded from: classes2.dex */
public final class DummyExtractorOutput implements ExtractorOutput {
    @Override // androidx.media3.extractor.ExtractorOutput
    public void endTracks() {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public void seekMap(SeekMap seekMap) {
    }

    @Override // androidx.media3.extractor.ExtractorOutput
    public TrackOutput track(int i, int i2) {
        return new DummyTrackOutput();
    }
}
