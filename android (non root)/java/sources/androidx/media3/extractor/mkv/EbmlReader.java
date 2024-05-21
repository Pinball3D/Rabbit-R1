package androidx.media3.extractor.mkv;

import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* loaded from: classes2.dex */
interface EbmlReader {
    void init(EbmlProcessor ebmlProcessor);

    boolean read(ExtractorInput extractorInput) throws IOException;

    void reset();
}
