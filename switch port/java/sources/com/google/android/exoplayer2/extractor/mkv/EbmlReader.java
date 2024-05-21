package com.google.android.exoplayer2.extractor.mkv;

import com.google.android.exoplayer2.extractor.ExtractorInput;
import java.io.IOException;

/* loaded from: classes2.dex */
interface EbmlReader {
    void init(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput) throws IOException;

    void reset();
}
