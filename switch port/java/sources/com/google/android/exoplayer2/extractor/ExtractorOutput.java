package com.google.android.exoplayer2.extractor;

/* loaded from: classes2.dex */
public interface ExtractorOutput {
    public static final ExtractorOutput PLACEHOLDER = new ExtractorOutput() { // from class: com.google.android.exoplayer2.extractor.ExtractorOutput.1
        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public TrackOutput track(int i, int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(SeekMap seekMap) {
            throw new UnsupportedOperationException();
        }
    };

    void endTracks();

    void seekMap(SeekMap seekMap);

    TrackOutput track(int i, int i2);
}
