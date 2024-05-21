package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.extractor.ExtractorOutput;
import com.google.android.exoplayer2.extractor.PositionHolder;
import com.google.android.exoplayer2.upstream.DataReader;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface ProgressiveMediaExtractor {

    /* loaded from: classes2.dex */
    public interface Factory {
        ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId);
    }

    void disableSeekingOnMp3Streams();

    long getCurrentInputPosition();

    void init(DataReader dataReader, Uri uri, Map<String, List<String>> map, long j, long j2, ExtractorOutput extractorOutput) throws IOException;

    int read(PositionHolder positionHolder) throws IOException;

    void release();

    void seek(long j, long j2);
}
