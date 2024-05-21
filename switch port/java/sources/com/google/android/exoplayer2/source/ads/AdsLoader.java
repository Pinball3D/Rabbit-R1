package com.google.android.exoplayer2.source.ads;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import com.google.android.exoplayer2.ui.AdViewProvider;
import com.google.android.exoplayer2.upstream.DataSpec;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface AdsLoader {

    /* loaded from: classes2.dex */
    public interface EventListener {
        default void onAdClicked() {
        }

        default void onAdLoadError(AdsMediaSource.AdLoadException adLoadException, DataSpec dataSpec) {
        }

        default void onAdPlaybackState(AdPlaybackState adPlaybackState) {
        }

        default void onAdTapped() {
        }
    }

    /* loaded from: classes2.dex */
    public interface Provider {
        AdsLoader getAdsLoader(MediaItem.AdsConfiguration adsConfiguration);
    }

    void handlePrepareComplete(AdsMediaSource adsMediaSource, int i, int i2);

    void handlePrepareError(AdsMediaSource adsMediaSource, int i, int i2, IOException iOException);

    void release();

    void setPlayer(Player player);

    void setSupportedContentTypes(int... iArr);

    void start(AdsMediaSource adsMediaSource, DataSpec dataSpec, Object obj, AdViewProvider adViewProvider, EventListener eventListener);

    void stop(AdsMediaSource adsMediaSource, EventListener eventListener);
}
