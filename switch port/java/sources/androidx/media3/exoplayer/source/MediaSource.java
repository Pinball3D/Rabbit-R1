package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface MediaSource {

    /* loaded from: classes2.dex */
    public interface Factory {
        public static final Factory UNSUPPORTED = MediaSourceFactory.UNSUPPORTED;

        MediaSource createMediaSource(MediaItem mediaItem);

        int[] getSupportedTypes();

        default Factory setCmcdConfigurationFactory(CmcdConfiguration.Factory factory) {
            return this;
        }

        Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider);

        Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy);
    }

    /* loaded from: classes2.dex */
    public interface MediaSourceCaller {
        void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline);
    }

    void addDrmEventListener(Handler handler, DrmSessionEventListener drmSessionEventListener);

    void addEventListener(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    MediaPeriod createPeriod(MediaPeriodId mediaPeriodId, Allocator allocator, long j);

    void disable(MediaSourceCaller mediaSourceCaller);

    void enable(MediaSourceCaller mediaSourceCaller);

    default Timeline getInitialTimeline() {
        return null;
    }

    MediaItem getMediaItem();

    default boolean isSingleWindow() {
        return true;
    }

    void maybeThrowSourceInfoRefreshError() throws IOException;

    void prepareSource(MediaSourceCaller mediaSourceCaller, TransferListener transferListener, PlayerId playerId);

    void releasePeriod(MediaPeriod mediaPeriod);

    void releaseSource(MediaSourceCaller mediaSourceCaller);

    void removeDrmEventListener(DrmSessionEventListener drmSessionEventListener);

    void removeEventListener(MediaSourceEventListener mediaSourceEventListener);

    /* loaded from: classes2.dex */
    public static final class MediaPeriodId extends androidx.media3.common.MediaPeriodId {
        public MediaPeriodId(Object obj) {
            super(obj);
        }

        public MediaPeriodId(Object obj, long j) {
            super(obj, j);
        }

        public MediaPeriodId(Object obj, long j, int i) {
            super(obj, j, i);
        }

        public MediaPeriodId(Object obj, int i, int i2, long j) {
            super(obj, i, i2, j);
        }

        public MediaPeriodId(androidx.media3.common.MediaPeriodId mediaPeriodId) {
            super(mediaPeriodId);
        }

        @Override // androidx.media3.common.MediaPeriodId
        public MediaPeriodId copyWithPeriodUid(Object obj) {
            return new MediaPeriodId(super.copyWithPeriodUid(obj));
        }

        @Override // androidx.media3.common.MediaPeriodId
        public MediaPeriodId copyWithWindowSequenceNumber(long j) {
            return new MediaPeriodId(super.copyWithWindowSequenceNumber(j));
        }
    }

    @Deprecated
    default void prepareSource(MediaSourceCaller mediaSourceCaller, TransferListener transferListener) {
        prepareSource(mediaSourceCaller, transferListener, PlayerId.UNSET);
    }
}
