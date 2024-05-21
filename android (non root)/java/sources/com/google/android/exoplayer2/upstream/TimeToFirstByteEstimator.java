package com.google.android.exoplayer2.upstream;

/* loaded from: classes2.dex */
public interface TimeToFirstByteEstimator {
    long getTimeToFirstByteEstimateUs();

    void onTransferInitializing(DataSpec dataSpec);

    void onTransferStart(DataSpec dataSpec);

    void reset();
}
