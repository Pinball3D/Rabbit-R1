package androidx.media3.exoplayer.source;

import android.os.Looper;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DefaultDrmSessionManagerProvider;
import androidx.media3.exoplayer.drm.DrmSessionManager;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ProgressiveMediaExtractor;
import androidx.media3.exoplayer.source.ProgressiveMediaPeriod;
import androidx.media3.exoplayer.source.ProgressiveMediaSource;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultLoadErrorHandlingPolicy;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import androidx.media3.extractor.DefaultExtractorsFactory;
import androidx.media3.extractor.ExtractorsFactory;

/* loaded from: classes2.dex */
public final class ProgressiveMediaSource extends BaseMediaSource implements ProgressiveMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    private final int continueLoadingCheckIntervalBytes;
    private final DataSource.Factory dataSourceFactory;
    private final DrmSessionManager drmSessionManager;
    private final LoadErrorHandlingPolicy loadableLoadErrorHandlingPolicy;
    private final MediaItem.LocalConfiguration localConfiguration;
    private final MediaItem mediaItem;
    private final ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;
    private long timelineDurationUs;
    private boolean timelineIsLive;
    private boolean timelineIsPlaceholder;
    private boolean timelineIsSeekable;
    private TransferListener transferListener;

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements MediaSourceFactory {
        private int continueLoadingCheckIntervalBytes;
        private final DataSource.Factory dataSourceFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        public Factory setContinueLoadingCheckIntervalBytes(int i) {
            this.continueLoadingCheckIntervalBytes = i;
            return this;
        }

        public Factory(DataSource.Factory factory) {
            this(factory, new DefaultExtractorsFactory());
        }

        public Factory(DataSource.Factory factory, final ExtractorsFactory extractorsFactory) {
            this(factory, new ProgressiveMediaExtractor.Factory() { // from class: androidx.media3.exoplayer.source.ProgressiveMediaSource$Factory$$ExternalSyntheticLambda0
                @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor.Factory
                public final ProgressiveMediaExtractor createProgressiveMediaExtractor(PlayerId playerId) {
                    return ProgressiveMediaSource.Factory.lambda$new$0(ExtractorsFactory.this, playerId);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static /* synthetic */ ProgressiveMediaExtractor lambda$new$0(ExtractorsFactory extractorsFactory, PlayerId playerId) {
            return new BundledExtractorsAdapter(extractorsFactory);
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2) {
            this(factory, factory2, new DefaultDrmSessionManagerProvider(), new DefaultLoadErrorHandlingPolicy(), 1048576);
        }

        public Factory(DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManagerProvider drmSessionManagerProvider, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
            this.dataSourceFactory = factory;
            this.progressiveMediaExtractorFactory = factory2;
            this.drmSessionManagerProvider = drmSessionManagerProvider;
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            this.continueLoadingCheckIntervalBytes = i;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.checkNotNull(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = (DrmSessionManagerProvider) Assertions.checkNotNull(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public ProgressiveMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            return new ProgressiveMediaSource(mediaItem, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes);
        }
    }

    private ProgressiveMediaSource(MediaItem mediaItem, DataSource.Factory factory, ProgressiveMediaExtractor.Factory factory2, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
        this.localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.mediaItem = mediaItem;
        this.dataSourceFactory = factory;
        this.progressiveMediaExtractorFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadableLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.continueLoadingCheckIntervalBytes = i;
        this.timelineIsPlaceholder = true;
        this.timelineDurationUs = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        this.transferListener = transferListener;
        this.drmSessionManager.setPlayer((Looper) Assertions.checkNotNull(Looper.myLooper()), getPlayerId());
        this.drmSessionManager.prepare();
        notifySourceInfoRefreshed();
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        DataSource createDataSource = this.dataSourceFactory.createDataSource();
        TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            createDataSource.addTransferListener(transferListener);
        }
        return new ProgressiveMediaPeriod(this.localConfiguration.uri, createDataSource, this.progressiveMediaExtractorFactory.createProgressiveMediaExtractor(getPlayerId()), this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadableLoadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this, allocator, this.localConfiguration.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        ((ProgressiveMediaPeriod) mediaPeriod).release();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
        this.drmSessionManager.release();
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaPeriod.Listener
    public void onSourceInfoRefreshed(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.timelineDurationUs;
        }
        if (!this.timelineIsPlaceholder && this.timelineDurationUs == j && this.timelineIsSeekable == z && this.timelineIsLive == z2) {
            return;
        }
        this.timelineDurationUs = j;
        this.timelineIsSeekable = z;
        this.timelineIsLive = z2;
        this.timelineIsPlaceholder = false;
        notifySourceInfoRefreshed();
    }

    private void notifySourceInfoRefreshed() {
        Timeline singlePeriodTimeline = new SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable, false, this.timelineIsLive, (Object) null, this.mediaItem);
        if (this.timelineIsPlaceholder) {
            singlePeriodTimeline = new ForwardingTimeline(singlePeriodTimeline) { // from class: androidx.media3.exoplayer.source.ProgressiveMediaSource.1
                @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
                public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
                    super.getWindow(i, window, j);
                    window.isPlaceholder = true;
                    return window;
                }

                @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
                public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
                    super.getPeriod(i, period, z);
                    period.isPlaceholder = true;
                    return period;
                }
            };
        }
        refreshSourceInfo(singlePeriodTimeline);
    }
}
