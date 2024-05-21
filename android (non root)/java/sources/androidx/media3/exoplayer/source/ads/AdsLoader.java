package androidx.media3.exoplayer.source.ads;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.AdViewProvider;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Player;
import androidx.media3.datasource.DataSpec;
import androidx.media3.exoplayer.source.ads.AdsMediaSource;
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
