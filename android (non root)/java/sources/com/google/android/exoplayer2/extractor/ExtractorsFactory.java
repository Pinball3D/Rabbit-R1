package com.google.android.exoplayer2.extractor;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface ExtractorsFactory {
    public static final ExtractorsFactory EMPTY = new ExtractorsFactory() { // from class: com.google.android.exoplayer2.extractor.ExtractorsFactory$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final Extractor[] createExtractors() {
            return ExtractorsFactory.lambda$static$0();
        }
    };

    static /* synthetic */ Extractor[] lambda$static$0() {
        return new Extractor[0];
    }

    Extractor[] createExtractors();

    default Extractor[] createExtractors(Uri uri, Map<String, List<String>> map) {
        return createExtractors();
    }
}
