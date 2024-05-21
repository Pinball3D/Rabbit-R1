package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.offline.FilteringManifestParser;
import com.google.android.exoplayer2.offline.StreamKey;
import com.google.android.exoplayer2.source.BaseMediaSource;
import com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.MediaSourceFactory;
import com.google.android.exoplayer2.source.dash.DashChunkSource;
import com.google.android.exoplayer2.source.dash.DefaultDashChunkSource;
import com.google.android.exoplayer2.source.dash.PlayerEmsgHandler;
import com.google.android.exoplayer2.source.dash.manifest.AdaptationSet;
import com.google.android.exoplayer2.source.dash.manifest.DashManifest;
import com.google.android.exoplayer2.source.dash.manifest.DashManifestParser;
import com.google.android.exoplayer2.source.dash.manifest.Period;
import com.google.android.exoplayer2.source.dash.manifest.Representation;
import com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.LoaderErrorThrower;
import com.google.android.exoplayer2.upstream.ParsingLoadable;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.SntpClient;
import com.google.android.exoplayer2.util.Util;
import com.google.common.base.Charsets;
import com.google.common.math.LongMath;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class DashMediaSource extends BaseMediaSource {
    public static final long DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS = 30000;

    @Deprecated
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    public static final String DEFAULT_MEDIA_ID = "DashMediaSource";
    private static final long DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS = 5000;
    private static final long MIN_LIVE_DEFAULT_START_POSITION_US = 5000000;
    private static final String TAG = "DashMediaSource";
    private final BaseUrlExclusionList baseUrlExclusionList;
    private final DashChunkSource.Factory chunkSourceFactory;
    private final CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    private DataSource dataSource;
    private final DrmSessionManager drmSessionManager;
    private long elapsedRealtimeOffsetMs;
    private long expiredManifestPublishTimeUs;
    private final long fallbackTargetLiveOffsetMs;
    private int firstPeriodId;
    private Handler handler;
    private Uri initialManifestUri;
    private MediaItem.LiveConfiguration liveConfiguration;
    private final LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    private Loader loader;
    private DashManifest manifest;
    private final ManifestCallback manifestCallback;
    private final DataSource.Factory manifestDataSourceFactory;
    private final MediaSourceEventListener.EventDispatcher manifestEventDispatcher;
    private IOException manifestFatalError;
    private long manifestLoadEndTimestampMs;
    private final LoaderErrorThrower manifestLoadErrorThrower;
    private boolean manifestLoadPending;
    private long manifestLoadStartTimestampMs;
    private final ParsingLoadable.Parser<? extends DashManifest> manifestParser;
    private Uri manifestUri;
    private final Object manifestUriLock;
    private final MediaItem mediaItem;
    private TransferListener mediaTransferListener;
    private final SparseArray<DashMediaPeriod> periodsById;
    private final PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback;
    private final Runnable refreshManifestRunnable;
    private final boolean sideloadedManifest;
    private final Runnable simulateManifestRefreshRunnable;
    private int staleManifestReloadAttempt;

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaItem;
    }

    void onDashManifestPublishTimeExpired(long j) {
        long j2 = this.expiredManifestPublishTimeUs;
        if (j2 == -9223372036854775807L || j2 < j) {
            this.expiredManifestPublishTimeUs = j;
        }
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.dash");
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements MediaSourceFactory {
        private final DashChunkSource.Factory chunkSourceFactory;
        private CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        private DrmSessionManagerProvider drmSessionManagerProvider;
        private long fallbackTargetLiveOffsetMs;
        private LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        private final DataSource.Factory manifestDataSourceFactory;
        private ParsingLoadable.Parser<? extends DashManifest> manifestParser;

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            return new int[]{0};
        }

        public Factory setFallbackTargetLiveOffsetMs(long j) {
            this.fallbackTargetLiveOffsetMs = j;
            return this;
        }

        public Factory setManifestParser(ParsingLoadable.Parser<? extends DashManifest> parser) {
            this.manifestParser = parser;
            return this;
        }

        public Factory(DataSource.Factory factory) {
            this(new DefaultDashChunkSource.Factory(factory), factory);
        }

        public Factory(DashChunkSource.Factory factory, DataSource.Factory factory2) {
            this.chunkSourceFactory = (DashChunkSource.Factory) Assertions.checkNotNull(factory);
            this.manifestDataSourceFactory = factory2;
            this.drmSessionManagerProvider = new DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new DefaultLoadErrorHandlingPolicy();
            this.fallbackTargetLiveOffsetMs = 30000L;
            this.compositeSequenceableLoaderFactory = new DefaultCompositeSequenceableLoaderFactory();
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = (DrmSessionManagerProvider) Assertions.checkNotNull(drmSessionManagerProvider, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public Factory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = (LoadErrorHandlingPolicy) Assertions.checkNotNull(loadErrorHandlingPolicy, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public Factory setCompositeSequenceableLoaderFactory(CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            this.compositeSequenceableLoaderFactory = (CompositeSequenceableLoaderFactory) Assertions.checkNotNull(compositeSequenceableLoaderFactory, "DashMediaSource.Factory#setCompositeSequenceableLoaderFactory no longer handles null by instantiating a new DefaultCompositeSequenceableLoaderFactory. Explicitly construct and pass an instance in order to retain the old behavior.");
            return this;
        }

        public DashMediaSource createMediaSource(DashManifest dashManifest) {
            return createMediaSource(dashManifest, new MediaItem.Builder().setUri(Uri.EMPTY).setMediaId("DashMediaSource").setMimeType("application/dash+xml").build());
        }

        public DashMediaSource createMediaSource(DashManifest dashManifest, MediaItem mediaItem) {
            Assertions.checkArgument(!dashManifest.dynamic);
            MediaItem.Builder mimeType = mediaItem.buildUpon().setMimeType("application/dash+xml");
            if (mediaItem.localConfiguration == null) {
                mimeType.setUri(Uri.EMPTY);
            }
            MediaItem build = mimeType.build();
            return new DashMediaSource(build, dashManifest, null, null, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(build), this.loadErrorHandlingPolicy, this.fallbackTargetLiveOffsetMs);
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.Factory
        public DashMediaSource createMediaSource(MediaItem mediaItem) {
            Assertions.checkNotNull(mediaItem.localConfiguration);
            ParsingLoadable.Parser parser = this.manifestParser;
            if (parser == null) {
                parser = new DashManifestParser();
            }
            List<StreamKey> list = mediaItem.localConfiguration.streamKeys;
            return new DashMediaSource(mediaItem, null, this.manifestDataSourceFactory, !list.isEmpty() ? new FilteringManifestParser(parser, list) : parser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItem), this.loadErrorHandlingPolicy, this.fallbackTargetLiveOffsetMs);
        }
    }

    private DashMediaSource(MediaItem mediaItem, DashManifest dashManifest, DataSource.Factory factory, ParsingLoadable.Parser<? extends DashManifest> parser, DashChunkSource.Factory factory2, CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, DrmSessionManager drmSessionManager, LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.manifestUri = ((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)).uri;
        this.initialManifestUri = mediaItem.localConfiguration.uri;
        this.manifest = dashManifest;
        this.manifestDataSourceFactory = factory;
        this.manifestParser = parser;
        this.chunkSourceFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.fallbackTargetLiveOffsetMs = j;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.baseUrlExclusionList = new BaseUrlExclusionList();
        boolean z = dashManifest != null;
        this.sideloadedManifest = z;
        this.manifestEventDispatcher = createEventDispatcher(null);
        this.manifestUriLock = new Object();
        this.periodsById = new SparseArray<>();
        this.playerEmsgCallback = new DefaultPlayerEmsgCallback();
        this.expiredManifestPublishTimeUs = -9223372036854775807L;
        this.elapsedRealtimeOffsetMs = -9223372036854775807L;
        if (z) {
            Assertions.checkState(true ^ dashManifest.dynamic);
            this.manifestCallback = null;
            this.refreshManifestRunnable = null;
            this.simulateManifestRefreshRunnable = null;
            this.manifestLoadErrorThrower = new LoaderErrorThrower.Dummy();
            return;
        }
        this.manifestCallback = new ManifestCallback();
        this.manifestLoadErrorThrower = new ManifestLoadErrorThrower();
        this.refreshManifestRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.dash.DashMediaSource$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.startLoadingManifest();
            }
        };
        this.simulateManifestRefreshRunnable = new Runnable() { // from class: com.google.android.exoplayer2.source.dash.DashMediaSource$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DashMediaSource.this.m5458x86b5dcdd();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-google-android-exoplayer2-source-dash-DashMediaSource, reason: not valid java name */
    public /* synthetic */ void m5458x86b5dcdd() {
        processManifest(false);
    }

    public void replaceManifestUri(Uri uri) {
        synchronized (this.manifestUriLock) {
            this.manifestUri = uri;
            this.initialManifestUri = uri;
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.setPlayer(Looper.myLooper(), getPlayerId());
        this.drmSessionManager.prepare();
        if (this.sideloadedManifest) {
            processManifest(false);
            return;
        }
        this.dataSource = this.manifestDataSourceFactory.createDataSource();
        this.loader = new Loader("DashMediaSource");
        this.handler = Util.createHandlerForCurrentLooper();
        startLoadingManifest();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.manifestLoadErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        int intValue = ((Integer) mediaPeriodId.periodUid).intValue() - this.firstPeriodId;
        MediaSourceEventListener.EventDispatcher createEventDispatcher = createEventDispatcher(mediaPeriodId, this.manifest.getPeriod(intValue).startMs);
        DashMediaPeriod dashMediaPeriod = new DashMediaPeriod(intValue + this.firstPeriodId, this.manifest, this.baseUrlExclusionList, intValue, this.chunkSourceFactory, this.mediaTransferListener, this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadErrorHandlingPolicy, createEventDispatcher, this.elapsedRealtimeOffsetMs, this.manifestLoadErrorThrower, allocator, this.compositeSequenceableLoaderFactory, this.playerEmsgCallback, getPlayerId());
        this.periodsById.put(dashMediaPeriod.id, dashMediaPeriod);
        return dashMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        DashMediaPeriod dashMediaPeriod = (DashMediaPeriod) mediaPeriod;
        dashMediaPeriod.release();
        this.periodsById.remove(dashMediaPeriod.id);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    protected void releaseSourceInternal() {
        this.manifestLoadPending = false;
        this.dataSource = null;
        Loader loader = this.loader;
        if (loader != null) {
            loader.release();
            this.loader = null;
        }
        this.manifestLoadStartTimestampMs = 0L;
        this.manifestLoadEndTimestampMs = 0L;
        this.manifest = this.sideloadedManifest ? this.manifest : null;
        this.manifestUri = this.initialManifestUri;
        this.manifestFatalError = null;
        Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.elapsedRealtimeOffsetMs = -9223372036854775807L;
        this.staleManifestReloadAttempt = 0;
        this.expiredManifestPublishTimeUs = -9223372036854775807L;
        this.firstPeriodId = 0;
        this.periodsById.clear();
        this.baseUrlExclusionList.reset();
        this.drmSessionManager.release();
    }

    void onDashManifestRefreshRequested() {
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        startLoadingManifest();
    }

    void onManifestLoadCompleted(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCompleted(loadEventInfo, parsingLoadable.type);
        DashManifest result = parsingLoadable.getResult();
        DashManifest dashManifest = this.manifest;
        int periodCount = dashManifest == null ? 0 : dashManifest.getPeriodCount();
        long j3 = result.getPeriod(0).startMs;
        int i = 0;
        while (i < periodCount && this.manifest.getPeriod(i).startMs < j3) {
            i++;
        }
        if (result.dynamic) {
            if (periodCount - i > result.getPeriodCount()) {
                Log.w("DashMediaSource", "Loaded out of sync manifest");
            } else if (this.expiredManifestPublishTimeUs == -9223372036854775807L || result.publishTimeMs * 1000 > this.expiredManifestPublishTimeUs) {
                this.staleManifestReloadAttempt = 0;
            } else {
                Log.w("DashMediaSource", "Loaded stale dynamic manifest: " + result.publishTimeMs + ", " + this.expiredManifestPublishTimeUs);
            }
            int i2 = this.staleManifestReloadAttempt;
            this.staleManifestReloadAttempt = i2 + 1;
            if (i2 < this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type)) {
                scheduleManifestRefresh(getManifestLoadRetryDelayMillis());
                return;
            } else {
                this.manifestFatalError = new DashManifestStaleException();
                return;
            }
        }
        this.manifest = result;
        this.manifestLoadPending = result.dynamic & this.manifestLoadPending;
        this.manifestLoadStartTimestampMs = j - j2;
        this.manifestLoadEndTimestampMs = j;
        synchronized (this.manifestUriLock) {
            if (parsingLoadable.dataSpec.uri == this.manifestUri) {
                this.manifestUri = this.manifest.location != null ? this.manifest.location : parsingLoadable.getUri();
            }
        }
        if (periodCount == 0) {
            if (this.manifest.dynamic) {
                if (this.manifest.utcTiming != null) {
                    resolveUtcTimingElement(this.manifest.utcTiming);
                    return;
                } else {
                    loadNtpTimeOffset();
                    return;
                }
            }
            processManifest(true);
            return;
        }
        this.firstPeriodId += i;
        processManifest(true);
    }

    Loader.LoadErrorAction onManifestLoadError(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, IOException iOException, int i) {
        Loader.LoadErrorAction createRetryAction;
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new MediaLoadData(parsingLoadable.type), iOException, i));
        if (retryDelayMsFor == -9223372036854775807L) {
            createRetryAction = Loader.DONT_RETRY_FATAL;
        } else {
            createRetryAction = Loader.createRetryAction(false, retryDelayMsFor);
        }
        boolean z = !createRetryAction.isRetry();
        this.manifestEventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        return createRetryAction;
    }

    void onUtcTimestampLoadCompleted(ParsingLoadable<Long> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCompleted(loadEventInfo, parsingLoadable.type);
        onUtcTimestampResolved(parsingLoadable.getResult().longValue() - j);
    }

    Loader.LoadErrorAction onUtcTimestampLoadError(ParsingLoadable<Long> parsingLoadable, long j, long j2, IOException iOException) {
        this.manifestEventDispatcher.loadError(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded()), parsingLoadable.type, iOException, true);
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        onUtcTimestampResolutionError(iOException);
        return Loader.DONT_RETRY;
    }

    void onLoadCanceled(ParsingLoadable<?> parsingLoadable, long j, long j2) {
        LoadEventInfo loadEventInfo = new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCanceled(loadEventInfo, parsingLoadable.type);
    }

    private void resolveUtcTimingElement(UtcTimingElement utcTimingElement) {
        String str = utcTimingElement.schemeIdUri;
        if (Util.areEqual(str, "urn:mpeg:dash:utc:direct:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:direct:2012")) {
            resolveUtcTimingElementDirect(utcTimingElement);
            return;
        }
        if (Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            resolveUtcTimingElementHttp(utcTimingElement, new Iso8601Parser());
            return;
        }
        if (Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
            resolveUtcTimingElementHttp(utcTimingElement, new XsDateTimeParser());
        } else if (Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2014") || Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2012")) {
            loadNtpTimeOffset();
        } else {
            onUtcTimestampResolutionError(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void resolveUtcTimingElementDirect(UtcTimingElement utcTimingElement) {
        try {
            onUtcTimestampResolved(Util.parseXsDateTime(utcTimingElement.value) - this.manifestLoadEndTimestampMs);
        } catch (ParserException e) {
            onUtcTimestampResolutionError(e);
        }
    }

    private void resolveUtcTimingElementHttp(UtcTimingElement utcTimingElement, ParsingLoadable.Parser<Long> parser) {
        startLoading(new ParsingLoadable(this.dataSource, Uri.parse(utcTimingElement.value), 5, parser), new UtcTimestampCallback(), 1);
    }

    private void loadNtpTimeOffset() {
        SntpClient.initialize(this.loader, new SntpClient.InitializationCallback() { // from class: com.google.android.exoplayer2.source.dash.DashMediaSource.1
            @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
            public void onInitialized() {
                DashMediaSource.this.onUtcTimestampResolved(SntpClient.getElapsedRealtimeOffsetMs());
            }

            @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
            public void onInitializationFailed(IOException iOException) {
                DashMediaSource.this.onUtcTimestampResolutionError(iOException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUtcTimestampResolved(long j) {
        this.elapsedRealtimeOffsetMs = j;
        processManifest(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUtcTimestampResolutionError(IOException iOException) {
        Log.e("DashMediaSource", "Failed to resolve time offset.", iOException);
        processManifest(true);
    }

    private void processManifest(boolean z) {
        long j;
        long j2;
        for (int i = 0; i < this.periodsById.size(); i++) {
            int keyAt = this.periodsById.keyAt(i);
            if (keyAt >= this.firstPeriodId) {
                this.periodsById.valueAt(i).updateManifest(this.manifest, keyAt - this.firstPeriodId);
            }
        }
        Period period = this.manifest.getPeriod(0);
        int periodCount = this.manifest.getPeriodCount() - 1;
        Period period2 = this.manifest.getPeriod(periodCount);
        long periodDurationUs = this.manifest.getPeriodDurationUs(periodCount);
        long msToUs = Util.msToUs(Util.getNowUnixTimeMs(this.elapsedRealtimeOffsetMs));
        long availableStartTimeInManifestUs = getAvailableStartTimeInManifestUs(period, this.manifest.getPeriodDurationUs(0), msToUs);
        long availableEndTimeInManifestUs = getAvailableEndTimeInManifestUs(period2, periodDurationUs, msToUs);
        boolean z2 = this.manifest.dynamic && !isIndexExplicit(period2);
        if (z2 && this.manifest.timeShiftBufferDepthMs != -9223372036854775807L) {
            availableStartTimeInManifestUs = Math.max(availableStartTimeInManifestUs, availableEndTimeInManifestUs - Util.msToUs(this.manifest.timeShiftBufferDepthMs));
        }
        long j3 = availableEndTimeInManifestUs - availableStartTimeInManifestUs;
        if (this.manifest.dynamic) {
            Assertions.checkState(this.manifest.availabilityStartTimeMs != -9223372036854775807L);
            long msToUs2 = (msToUs - Util.msToUs(this.manifest.availabilityStartTimeMs)) - availableStartTimeInManifestUs;
            updateLiveConfiguration(msToUs2, j3);
            long usToMs = this.manifest.availabilityStartTimeMs + Util.usToMs(availableStartTimeInManifestUs);
            long msToUs3 = msToUs2 - Util.msToUs(this.liveConfiguration.targetOffsetMs);
            j = usToMs;
            long min = Math.min(MIN_LIVE_DEFAULT_START_POSITION_US, j3 / 2);
            j2 = msToUs3 < min ? min : msToUs3;
        } else {
            j = -9223372036854775807L;
            j2 = 0;
        }
        long msToUs4 = availableStartTimeInManifestUs - Util.msToUs(period.startMs);
        long j4 = this.manifest.availabilityStartTimeMs;
        long j5 = this.elapsedRealtimeOffsetMs;
        int i2 = this.firstPeriodId;
        DashManifest dashManifest = this.manifest;
        refreshSourceInfo(new DashTimeline(j4, j, j5, i2, msToUs4, j3, j2, dashManifest, this.mediaItem, dashManifest.dynamic ? this.liveConfiguration : null));
        if (this.sideloadedManifest) {
            return;
        }
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        if (z2) {
            this.handler.postDelayed(this.simulateManifestRefreshRunnable, getIntervalUntilNextManifestRefreshMs(this.manifest, Util.getNowUnixTimeMs(this.elapsedRealtimeOffsetMs)));
        }
        if (this.manifestLoadPending) {
            startLoadingManifest();
            return;
        }
        if (z && this.manifest.dynamic && this.manifest.minUpdatePeriodMs != -9223372036854775807L) {
            long j6 = this.manifest.minUpdatePeriodMs;
            if (j6 == 0) {
                j6 = 5000;
            }
            scheduleManifestRefresh(Math.max(0L, (this.manifestLoadStartTimestampMs + j6) - SystemClock.elapsedRealtime()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0075  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateLiveConfiguration(long r18, long r20) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.updateLiveConfiguration(long, long):void");
    }

    private void scheduleManifestRefresh(long j) {
        this.handler.postDelayed(this.refreshManifestRunnable, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadingManifest() {
        Uri uri;
        this.handler.removeCallbacks(this.refreshManifestRunnable);
        if (this.loader.hasFatalError()) {
            return;
        }
        if (this.loader.isLoading()) {
            this.manifestLoadPending = true;
            return;
        }
        synchronized (this.manifestUriLock) {
            uri = this.manifestUri;
        }
        this.manifestLoadPending = false;
        startLoading(new ParsingLoadable(this.dataSource, uri, 4, this.manifestParser), this.manifestCallback, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(4));
    }

    private long getManifestLoadRetryDelayMillis() {
        return Math.min((this.staleManifestReloadAttempt - 1) * 1000, 5000);
    }

    private <T> void startLoading(ParsingLoadable<T> parsingLoadable, Loader.Callback<ParsingLoadable<T>> callback, int i) {
        this.manifestEventDispatcher.loadStarted(new LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.loader.startLoading(parsingLoadable, callback, i)), parsingLoadable.type);
    }

    private static long getIntervalUntilNextManifestRefreshMs(DashManifest dashManifest, long j) {
        DashSegmentIndex index;
        int periodCount = dashManifest.getPeriodCount() - 1;
        Period period = dashManifest.getPeriod(periodCount);
        long msToUs = Util.msToUs(period.startMs);
        long periodDurationUs = dashManifest.getPeriodDurationUs(periodCount);
        long msToUs2 = Util.msToUs(j);
        long msToUs3 = Util.msToUs(dashManifest.availabilityStartTimeMs);
        long msToUs4 = Util.msToUs(5000L);
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            List<Representation> list = period.adaptationSets.get(i).representations;
            if (!list.isEmpty() && (index = list.get(0).getIndex()) != null) {
                long nextSegmentAvailableTimeUs = ((msToUs3 + msToUs) + index.getNextSegmentAvailableTimeUs(periodDurationUs, msToUs2)) - msToUs2;
                if (nextSegmentAvailableTimeUs < msToUs4 - 100000 || (nextSegmentAvailableTimeUs > msToUs4 && nextSegmentAvailableTimeUs < msToUs4 + 100000)) {
                    msToUs4 = nextSegmentAvailableTimeUs;
                }
            }
        }
        return LongMath.divide(msToUs4, 1000L, RoundingMode.CEILING);
    }

    private static long getAvailableStartTimeInManifestUs(Period period, long j, long j2) {
        long msToUs = Util.msToUs(period.startMs);
        boolean hasVideoOrAudioAdaptationSets = hasVideoOrAudioAdaptationSets(period);
        long j3 = msToUs;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i);
            List<Representation> list = adaptationSet.representations;
            boolean z = (adaptationSet.type == 1 || adaptationSet.type == 2) ? false : true;
            if ((!hasVideoOrAudioAdaptationSets || !z) && !list.isEmpty()) {
                DashSegmentIndex index = list.get(0).getIndex();
                if (index == null || index.getAvailableSegmentCount(j, j2) == 0) {
                    return msToUs;
                }
                j3 = Math.max(j3, index.getTimeUs(index.getFirstAvailableSegmentNum(j, j2)) + msToUs);
            }
        }
        return j3;
    }

    private static long getAvailableEndTimeInManifestUs(Period period, long j, long j2) {
        long msToUs = Util.msToUs(period.startMs);
        boolean hasVideoOrAudioAdaptationSets = hasVideoOrAudioAdaptationSets(period);
        long j3 = Long.MAX_VALUE;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            AdaptationSet adaptationSet = period.adaptationSets.get(i);
            List<Representation> list = adaptationSet.representations;
            boolean z = (adaptationSet.type == 1 || adaptationSet.type == 2) ? false : true;
            if ((!hasVideoOrAudioAdaptationSets || !z) && !list.isEmpty()) {
                DashSegmentIndex index = list.get(0).getIndex();
                if (index == null) {
                    return msToUs + j;
                }
                long availableSegmentCount = index.getAvailableSegmentCount(j, j2);
                if (availableSegmentCount == 0) {
                    return msToUs;
                }
                long firstAvailableSegmentNum = (index.getFirstAvailableSegmentNum(j, j2) + availableSegmentCount) - 1;
                j3 = Math.min(j3, index.getDurationUs(firstAvailableSegmentNum, j) + index.getTimeUs(firstAvailableSegmentNum) + msToUs);
            }
        }
        return j3;
    }

    private static boolean isIndexExplicit(Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            DashSegmentIndex index = period.adaptationSets.get(i).representations.get(0).getIndex();
            if (index == null || index.isExplicit()) {
                return true;
            }
        }
        return false;
    }

    private static boolean hasVideoOrAudioAdaptationSets(Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            int i2 = period.adaptationSets.get(i).type;
            if (i2 == 1 || i2 == 2) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class DashTimeline extends Timeline {
        private final long elapsedRealtimeEpochOffsetMs;
        private final int firstPeriodId;
        private final MediaItem.LiveConfiguration liveConfiguration;
        private final DashManifest manifest;
        private final MediaItem mediaItem;
        private final long offsetInFirstPeriodUs;
        private final long presentationStartTimeMs;
        private final long windowDefaultStartPositionUs;
        private final long windowDurationUs;
        private final long windowStartTimeMs;

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }

        public DashTimeline(long j, long j2, long j3, int i, long j4, long j5, long j6, DashManifest dashManifest, MediaItem mediaItem, MediaItem.LiveConfiguration liveConfiguration) {
            Assertions.checkState(dashManifest.dynamic == (liveConfiguration != null));
            this.presentationStartTimeMs = j;
            this.windowStartTimeMs = j2;
            this.elapsedRealtimeEpochOffsetMs = j3;
            this.firstPeriodId = i;
            this.offsetInFirstPeriodUs = j4;
            this.windowDurationUs = j5;
            this.windowDefaultStartPositionUs = j6;
            this.manifest = dashManifest;
            this.mediaItem = mediaItem;
            this.liveConfiguration = liveConfiguration;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.manifest.getPeriodCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            Assertions.checkIndex(i, 0, getPeriodCount());
            return period.set(z ? this.manifest.getPeriod(i).id : null, z ? Integer.valueOf(this.firstPeriodId + i) : null, 0, this.manifest.getPeriodDurationUs(i), Util.msToUs(this.manifest.getPeriod(i).startMs - this.manifest.getPeriod(0).startMs) - this.offsetInFirstPeriodUs);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            Assertions.checkIndex(i, 0, 1);
            long adjustedWindowDefaultStartPositionUs = getAdjustedWindowDefaultStartPositionUs(j);
            Object obj = Timeline.Window.SINGLE_WINDOW_UID;
            MediaItem mediaItem = this.mediaItem;
            DashManifest dashManifest = this.manifest;
            return window.set(obj, mediaItem, dashManifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, true, isMovingLiveWindow(dashManifest), this.liveConfiguration, adjustedWindowDefaultStartPositionUs, this.windowDurationUs, 0, getPeriodCount() - 1, this.offsetInFirstPeriodUs);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(Object obj) {
            int intValue;
            if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue() - this.firstPeriodId) >= 0 && intValue < getPeriodCount()) {
                return intValue;
            }
            return -1;
        }

        private long getAdjustedWindowDefaultStartPositionUs(long j) {
            DashSegmentIndex index;
            long j2 = this.windowDefaultStartPositionUs;
            if (!isMovingLiveWindow(this.manifest)) {
                return j2;
            }
            if (j > 0) {
                j2 += j;
                if (j2 > this.windowDurationUs) {
                    return -9223372036854775807L;
                }
            }
            long j3 = this.offsetInFirstPeriodUs + j2;
            long periodDurationUs = this.manifest.getPeriodDurationUs(0);
            int i = 0;
            while (i < this.manifest.getPeriodCount() - 1 && j3 >= periodDurationUs) {
                j3 -= periodDurationUs;
                i++;
                periodDurationUs = this.manifest.getPeriodDurationUs(i);
            }
            Period period = this.manifest.getPeriod(i);
            int adaptationSetIndex = period.getAdaptationSetIndex(2);
            return (adaptationSetIndex == -1 || (index = period.adaptationSets.get(adaptationSetIndex).representations.get(0).getIndex()) == null || index.getSegmentCount(periodDurationUs) == 0) ? j2 : (j2 + index.getTimeUs(index.getSegmentNum(j3, periodDurationUs))) - j3;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public Object getUidOfPeriod(int i) {
            Assertions.checkIndex(i, 0, getPeriodCount());
            return Integer.valueOf(this.firstPeriodId + i);
        }

        private static boolean isMovingLiveWindow(DashManifest dashManifest) {
            return dashManifest.dynamic && dashManifest.minUpdatePeriodMs != -9223372036854775807L && dashManifest.durationMs == -9223372036854775807L;
        }
    }

    /* loaded from: classes2.dex */
    private final class DefaultPlayerEmsgCallback implements PlayerEmsgHandler.PlayerEmsgCallback {
        private DefaultPlayerEmsgCallback() {
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestRefreshRequested() {
            DashMediaSource.this.onDashManifestRefreshRequested();
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestPublishTimeExpired(long j) {
            DashMediaSource.this.onDashManifestPublishTimeExpired(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ManifestCallback implements Loader.Callback<ParsingLoadable<DashManifest>> {
        private ManifestCallback() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2) {
            DashMediaSource.this.onManifestLoadCompleted(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, boolean z) {
            DashMediaSource.this.onLoadCanceled(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<DashManifest> parsingLoadable, long j, long j2, IOException iOException, int i) {
            return DashMediaSource.this.onManifestLoadError(parsingLoadable, j, j2, iOException, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class UtcTimestampCallback implements Loader.Callback<ParsingLoadable<Long>> {
        private UtcTimestampCallback() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(ParsingLoadable<Long> parsingLoadable, long j, long j2) {
            DashMediaSource.this.onUtcTimestampLoadCompleted(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(ParsingLoadable<Long> parsingLoadable, long j, long j2, boolean z) {
            DashMediaSource.this.onLoadCanceled(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public Loader.LoadErrorAction onLoadError(ParsingLoadable<Long> parsingLoadable, long j, long j2, IOException iOException, int i) {
            return DashMediaSource.this.onUtcTimestampLoadError(parsingLoadable, j, j2, iOException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class XsDateTimeParser implements ParsingLoadable.Parser<Long> {
        private XsDateTimeParser() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(Util.parseXsDateTime(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class Iso8601Parser implements ParsingLoadable.Parser<Long> {
        private static final Pattern TIMESTAMP_WITH_TIMEZONE_PATTERN = Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        Iso8601Parser() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        public Long parse(Uri uri, InputStream inputStream) throws IOException {
            String readLine = new BufferedReader(new InputStreamReader(inputStream, Charsets.UTF_8)).readLine();
            try {
                Matcher matcher = TIMESTAMP_WITH_TIMEZONE_PATTERN.matcher(readLine);
                if (!matcher.matches()) {
                    throw ParserException.createForMalformedManifest("Couldn't parse timestamp: " + readLine, null);
                }
                String group = matcher.group(1);
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(group).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long parseLong = Long.parseLong(matcher.group(5));
                    String group2 = matcher.group(7);
                    time -= j * (((parseLong * 60) + (TextUtils.isEmpty(group2) ? 0L : Long.parseLong(group2))) * 60000);
                }
                return Long.valueOf(time);
            } catch (ParseException e) {
                throw ParserException.createForMalformedManifest(null, e);
            }
        }
    }

    /* loaded from: classes2.dex */
    final class ManifestLoadErrorThrower implements LoaderErrorThrower {
        ManifestLoadErrorThrower() {
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError() throws IOException {
            DashMediaSource.this.loader.maybeThrowError();
            maybeThrowManifestError();
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) throws IOException {
            DashMediaSource.this.loader.maybeThrowError(i);
            maybeThrowManifestError();
        }

        private void maybeThrowManifestError() throws IOException {
            if (DashMediaSource.this.manifestFatalError != null) {
                throw DashMediaSource.this.manifestFatalError;
            }
        }
    }
}
