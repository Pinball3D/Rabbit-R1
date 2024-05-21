package androidx.media3.extractor.mp3;

import androidx.media3.extractor.SeekMap;

/* loaded from: classes2.dex */
interface Seeker extends SeekMap {
    long getDataEndPosition();

    long getTimeUs(long j);

    /* loaded from: classes2.dex */
    public static class UnseekableSeeker extends SeekMap.Unseekable implements Seeker {
        @Override // androidx.media3.extractor.mp3.Seeker
        public long getDataEndPosition() {
            return -1L;
        }

        @Override // androidx.media3.extractor.mp3.Seeker
        public long getTimeUs(long j) {
            return 0L;
        }

        public UnseekableSeeker() {
            super(-9223372036854775807L);
        }
    }
}
