package androidx.media3.exoplayer.upstream;

import androidx.media3.datasource.DataSpec;

/* loaded from: classes2.dex */
public interface TimeToFirstByteEstimator {
    long getTimeToFirstByteEstimateUs();

    void onTransferInitializing(DataSpec dataSpec);

    void onTransferStart(DataSpec dataSpec);

    void reset();
}
