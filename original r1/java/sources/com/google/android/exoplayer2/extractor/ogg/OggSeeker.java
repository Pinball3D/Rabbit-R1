package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import com.google.android.exoplayer2.extractor.SeekMap;
import java.io.IOException;

/* loaded from: classes2.dex */
interface OggSeeker {
    SeekMap createSeekMap();

    long read(ExtractorInput extractorInput) throws IOException;

    void startSeek(long j);
}
