package androidx.media3.extractor.ogg;

import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.SeekMap;
import java.io.IOException;

/* loaded from: classes2.dex */
interface OggSeeker {
    SeekMap createSeekMap();

    long read(ExtractorInput extractorInput) throws IOException;

    void startSeek(long j);
}
