package com.google.android.exoplayer2.offline;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Renderer;
import com.google.android.exoplayer2.RendererCapabilities;
import com.google.android.exoplayer2.RenderersFactory;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.Tracks;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.audio.AudioRendererEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;
import com.google.android.exoplayer2.drm.DrmSessionManagerProvider;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.MetadataOutput;
import com.google.android.exoplayer2.offline.DownloadHelper;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.source.DefaultMediaSourceFactory;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.text.CueGroup;
import com.google.android.exoplayer2.text.TextOutput;
import com.google.android.exoplayer2.trackselection.BaseTrackSelection;
import com.google.android.exoplayer2.trackselection.DefaultTrackSelector;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.MappingTrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectionOverride;
import com.google.android.exoplayer2.trackselection.TrackSelectionParameters;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.trackselection.TrackSelector;
import com.google.android.exoplayer2.trackselection.TrackSelectorResult;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class DownloadHelper {
    public static final DefaultTrackSelector.Parameters DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT = DefaultTrackSelector.Parameters.DEFAULT_WITHOUT_CONTEXT.buildUpon().setForceHighestSupportedBitrate(true).setConstrainAudioChannelCountToDeviceCapabilities(false).build();
    private Callback callback;
    private final Handler callbackHandler;
    private List<ExoTrackSelection>[][] immutableTrackSelectionsByPeriodAndRenderer;
    private boolean isPreparedWithMedia;
    private final MediaItem.LocalConfiguration localConfiguration;
    private MappingTrackSelector.MappedTrackInfo[] mappedTrackInfos;
    private MediaPreparer mediaPreparer;
    private final MediaSource mediaSource;
    private final RendererCapabilities[] rendererCapabilities;
    private final SparseIntArray scratchSet;
    private TrackGroupArray[] trackGroupArrays;
    private List<ExoTrackSelection>[][] trackSelectionsByPeriodAndRenderer;
    private final DefaultTrackSelector trackSelector;
    private final Timeline.Window window;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onPrepareError(DownloadHelper downloadHelper, IOException iOException);

        void onPrepared(DownloadHelper downloadHelper);
    }

    /* loaded from: classes2.dex */
    public static class LiveContentUnsupportedException extends IOException {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ DrmSessionManager lambda$createMediaSourceInternal$6(DrmSessionManager drmSessionManager, MediaItem mediaItem) {
        return drmSessionManager;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getRendererCapabilities$0(CueGroup cueGroup) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$getRendererCapabilities$1(Metadata metadata) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$new$2() {
    }

    @RequiresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void setPreparedWithMedia() {
        this.isPreparedWithMedia = true;
    }

    public static DefaultTrackSelector.Parameters getDefaultTrackSelectorParameters(Context context) {
        return DefaultTrackSelector.Parameters.getDefaults(context).buildUpon().setForceHighestSupportedBitrate(true).setConstrainAudioChannelCountToDeviceCapabilities(false).build();
    }

    public static RendererCapabilities[] getRendererCapabilities(RenderersFactory renderersFactory) {
        Renderer[] createRenderers = renderersFactory.createRenderers(Util.createHandlerForCurrentOrMainLooper(), new VideoRendererEventListener() { // from class: com.google.android.exoplayer2.offline.DownloadHelper.1
        }, new AudioRendererEventListener() { // from class: com.google.android.exoplayer2.offline.DownloadHelper.2
        }, new TextOutput() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda3
            @Override // com.google.android.exoplayer2.text.TextOutput
            public final void onCues(CueGroup cueGroup) {
                DownloadHelper.lambda$getRendererCapabilities$0(cueGroup);
            }
        }, new MetadataOutput() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda4
            @Override // com.google.android.exoplayer2.metadata.MetadataOutput
            public final void onMetadata(Metadata metadata) {
                DownloadHelper.lambda$getRendererCapabilities$1(metadata);
            }
        });
        RendererCapabilities[] rendererCapabilitiesArr = new RendererCapabilities[createRenderers.length];
        for (int i = 0; i < createRenderers.length; i++) {
            rendererCapabilitiesArr[i] = createRenderers[i].getCapabilities();
        }
        return rendererCapabilitiesArr;
    }

    @Deprecated
    public static DownloadHelper forProgressive(Context context, Uri uri) {
        return forMediaItem(context, new MediaItem.Builder().setUri(uri).build());
    }

    @Deprecated
    public static DownloadHelper forProgressive(Context context, Uri uri, String str) {
        return forMediaItem(context, new MediaItem.Builder().setUri(uri).setCustomCacheKey(str).build());
    }

    @Deprecated
    public static DownloadHelper forDash(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forDash(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @Deprecated
    public static DownloadHelper forDash(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, DrmSessionManager drmSessionManager, TrackSelectionParameters trackSelectionParameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType("application/dash+xml").build(), trackSelectionParameters, renderersFactory, factory, drmSessionManager);
    }

    @Deprecated
    public static DownloadHelper forHls(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forHls(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @Deprecated
    public static DownloadHelper forHls(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, DrmSessionManager drmSessionManager, TrackSelectionParameters trackSelectionParameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType("application/x-mpegURL").build(), trackSelectionParameters, renderersFactory, factory, drmSessionManager);
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT);
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Context context, Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory) {
        return forSmoothStreaming(uri, factory, renderersFactory, null, getDefaultTrackSelectorParameters(context));
    }

    @Deprecated
    public static DownloadHelper forSmoothStreaming(Uri uri, DataSource.Factory factory, RenderersFactory renderersFactory, DrmSessionManager drmSessionManager, TrackSelectionParameters trackSelectionParameters) {
        return forMediaItem(new MediaItem.Builder().setUri(uri).setMimeType("application/vnd.ms-sstr+xml").build(), trackSelectionParameters, renderersFactory, factory, drmSessionManager);
    }

    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem) {
        Assertions.checkArgument(isProgressive((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration)));
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), null, null, null);
    }

    public static DownloadHelper forMediaItem(Context context, MediaItem mediaItem, RenderersFactory renderersFactory, DataSource.Factory factory) {
        return forMediaItem(mediaItem, getDefaultTrackSelectorParameters(context), renderersFactory, factory, null);
    }

    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory) {
        return forMediaItem(mediaItem, trackSelectionParameters, renderersFactory, factory, null);
    }

    public static DownloadHelper forMediaItem(MediaItem mediaItem, TrackSelectionParameters trackSelectionParameters, RenderersFactory renderersFactory, DataSource.Factory factory, DrmSessionManager drmSessionManager) {
        boolean isProgressive = isProgressive((MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration));
        Assertions.checkArgument(isProgressive || factory != null);
        return new DownloadHelper(mediaItem, isProgressive ? null : createMediaSourceInternal(mediaItem, (DataSource.Factory) Util.castNonNull(factory), drmSessionManager), trackSelectionParameters, renderersFactory != null ? getRendererCapabilities(renderersFactory) : new RendererCapabilities[0]);
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory) {
        return createMediaSource(downloadRequest, factory, null);
    }

    public static MediaSource createMediaSource(DownloadRequest downloadRequest, DataSource.Factory factory, DrmSessionManager drmSessionManager) {
        return createMediaSourceInternal(downloadRequest.toMediaItem(), factory, drmSessionManager);
    }

    public DownloadHelper(MediaItem mediaItem, MediaSource mediaSource, TrackSelectionParameters trackSelectionParameters, RendererCapabilities[] rendererCapabilitiesArr) {
        this.localConfiguration = (MediaItem.LocalConfiguration) Assertions.checkNotNull(mediaItem.localConfiguration);
        this.mediaSource = mediaSource;
        DefaultTrackSelector defaultTrackSelector = new DefaultTrackSelector(trackSelectionParameters, new DownloadTrackSelection.Factory());
        this.trackSelector = defaultTrackSelector;
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.scratchSet = new SparseIntArray();
        defaultTrackSelector.init(new TrackSelector.InvalidationListener() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda2
            @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
            public final void onTrackSelectionsInvalidated() {
                DownloadHelper.lambda$new$2();
            }
        }, new FakeBandwidthMeter());
        this.callbackHandler = Util.createHandlerForCurrentOrMainLooper();
        this.window = new Timeline.Window();
    }

    public void prepare(final Callback callback) {
        Assertions.checkState(this.callback == null);
        this.callback = callback;
        if (this.mediaSource != null) {
            this.mediaPreparer = new MediaPreparer(this.mediaSource, this);
        } else {
            this.callbackHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DownloadHelper.this.m5433xf9781d7d(callback);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$prepare$3$com-google-android-exoplayer2-offline-DownloadHelper, reason: not valid java name */
    public /* synthetic */ void m5433xf9781d7d(Callback callback) {
        callback.onPrepared(this);
    }

    public void release() {
        MediaPreparer mediaPreparer = this.mediaPreparer;
        if (mediaPreparer != null) {
            mediaPreparer.release();
        }
        this.trackSelector.release();
    }

    public Object getManifest() {
        if (this.mediaSource == null) {
            return null;
        }
        assertPreparedWithMedia();
        if (this.mediaPreparer.timeline.getWindowCount() > 0) {
            return this.mediaPreparer.timeline.getWindow(0, this.window).manifest;
        }
        return null;
    }

    public int getPeriodCount() {
        if (this.mediaSource == null) {
            return 0;
        }
        assertPreparedWithMedia();
        return this.trackGroupArrays.length;
    }

    public Tracks getTracks(int i) {
        assertPreparedWithMedia();
        return TrackSelectionUtil.buildTracks(this.mappedTrackInfos[i], this.immutableTrackSelectionsByPeriodAndRenderer[i]);
    }

    public TrackGroupArray getTrackGroups(int i) {
        assertPreparedWithMedia();
        return this.trackGroupArrays[i];
    }

    public MappingTrackSelector.MappedTrackInfo getMappedTrackInfo(int i) {
        assertPreparedWithMedia();
        return this.mappedTrackInfos[i];
    }

    public List<ExoTrackSelection> getTrackSelections(int i, int i2) {
        assertPreparedWithMedia();
        return this.immutableTrackSelectionsByPeriodAndRenderer[i][i2];
    }

    public void clearTrackSelections(int i) {
        assertPreparedWithMedia();
        for (int i2 = 0; i2 < this.rendererCapabilities.length; i2++) {
            this.trackSelectionsByPeriodAndRenderer[i][i2].clear();
        }
    }

    public void replaceTrackSelections(int i, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithMedia();
            clearTrackSelections(i);
            addTrackSelectionInternal(i, trackSelectionParameters);
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTrackSelection(int i, TrackSelectionParameters trackSelectionParameters) {
        try {
            assertPreparedWithMedia();
            addTrackSelectionInternal(i, trackSelectionParameters);
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addAudioLanguagesToSelection(String... strArr) {
        try {
            assertPreparedWithMedia();
            DefaultTrackSelector.Parameters.Builder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            buildUpon.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities rendererCapabilities : this.rendererCapabilities) {
                int trackType = rendererCapabilities.getTrackType();
                buildUpon.setTrackTypeDisabled(trackType, trackType != 1);
            }
            int periodCount = getPeriodCount();
            for (String str : strArr) {
                TrackSelectionParameters build = buildUpon.setPreferredAudioLanguage(str).build();
                for (int i = 0; i < periodCount; i++) {
                    addTrackSelectionInternal(i, build);
                }
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTextLanguagesToSelection(boolean z, String... strArr) {
        try {
            assertPreparedWithMedia();
            DefaultTrackSelector.Parameters.Builder buildUpon = DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT.buildUpon();
            buildUpon.setSelectUndeterminedTextLanguage(z);
            buildUpon.setForceHighestSupportedBitrate(true);
            for (RendererCapabilities rendererCapabilities : this.rendererCapabilities) {
                int trackType = rendererCapabilities.getTrackType();
                buildUpon.setTrackTypeDisabled(trackType, trackType != 3);
            }
            int periodCount = getPeriodCount();
            for (String str : strArr) {
                TrackSelectionParameters build = buildUpon.setPreferredTextLanguage(str).build();
                for (int i = 0; i < periodCount; i++) {
                    addTrackSelectionInternal(i, build);
                }
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public void addTrackSelectionForSingleRenderer(int i, int i2, DefaultTrackSelector.Parameters parameters, List<DefaultTrackSelector.SelectionOverride> list) {
        try {
            assertPreparedWithMedia();
            DefaultTrackSelector.Parameters.Builder buildUpon = parameters.buildUpon();
            int i3 = 0;
            while (i3 < this.mappedTrackInfos[i].getRendererCount()) {
                buildUpon.setRendererDisabled(i3, i3 != i2);
                i3++;
            }
            if (list.isEmpty()) {
                addTrackSelectionInternal(i, buildUpon.build());
                return;
            }
            TrackGroupArray trackGroups = this.mappedTrackInfos[i].getTrackGroups(i2);
            for (int i4 = 0; i4 < list.size(); i4++) {
                buildUpon.setSelectionOverride(i2, trackGroups, list.get(i4));
                addTrackSelectionInternal(i, buildUpon.build());
            }
        } catch (ExoPlaybackException e) {
            throw new IllegalStateException(e);
        }
    }

    public DownloadRequest getDownloadRequest(byte[] bArr) {
        return getDownloadRequest(this.localConfiguration.uri.toString(), bArr);
    }

    public DownloadRequest getDownloadRequest(String str, byte[] bArr) {
        DownloadRequest.Builder data = new DownloadRequest.Builder(str, this.localConfiguration.uri).setMimeType(this.localConfiguration.mimeType).setKeySetId(this.localConfiguration.drmConfiguration != null ? this.localConfiguration.drmConfiguration.getKeySetId() : null).setCustomCacheKey(this.localConfiguration.customCacheKey).setData(bArr);
        if (this.mediaSource == null) {
            return data.build();
        }
        assertPreparedWithMedia();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = this.trackSelectionsByPeriodAndRenderer.length;
        for (int i = 0; i < length; i++) {
            arrayList2.clear();
            int length2 = this.trackSelectionsByPeriodAndRenderer[i].length;
            for (int i2 = 0; i2 < length2; i2++) {
                arrayList2.addAll(this.trackSelectionsByPeriodAndRenderer[i][i2]);
            }
            arrayList.addAll(this.mediaPreparer.mediaPeriods[i].getStreamKeys(arrayList2));
        }
        return data.setStreamKeys(arrayList).build();
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private void addTrackSelectionInternal(int i, TrackSelectionParameters trackSelectionParameters) throws ExoPlaybackException {
        this.trackSelector.setParameters(trackSelectionParameters);
        runTrackSelection(i);
        UnmodifiableIterator<TrackSelectionOverride> it = trackSelectionParameters.overrides.values().iterator();
        while (it.hasNext()) {
            this.trackSelector.setParameters(trackSelectionParameters.buildUpon().setOverrideForType(it.next()).build());
            runTrackSelection(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPrepared() throws ExoPlaybackException {
        Assertions.checkNotNull(this.mediaPreparer);
        Assertions.checkNotNull(this.mediaPreparer.mediaPeriods);
        Assertions.checkNotNull(this.mediaPreparer.timeline);
        int length = this.mediaPreparer.mediaPeriods.length;
        int length2 = this.rendererCapabilities.length;
        this.trackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        this.immutableTrackSelectionsByPeriodAndRenderer = (List[][]) Array.newInstance((Class<?>) List.class, length, length2);
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                this.trackSelectionsByPeriodAndRenderer[i][i2] = new ArrayList();
                this.immutableTrackSelectionsByPeriodAndRenderer[i][i2] = Collections.unmodifiableList(this.trackSelectionsByPeriodAndRenderer[i][i2]);
            }
        }
        this.trackGroupArrays = new TrackGroupArray[length];
        this.mappedTrackInfos = new MappingTrackSelector.MappedTrackInfo[length];
        for (int i3 = 0; i3 < length; i3++) {
            this.trackGroupArrays[i3] = this.mediaPreparer.mediaPeriods[i3].getTrackGroups();
            this.trackSelector.onSelectionActivated(runTrackSelection(i3).info);
            this.mappedTrackInfos[i3] = (MappingTrackSelector.MappedTrackInfo) Assertions.checkNotNull(this.trackSelector.getCurrentMappedTrackInfo());
        }
        setPreparedWithMedia();
        ((Handler) Assertions.checkNotNull(this.callbackHandler)).post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.m5432xbc158121();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onMediaPrepared$4$com-google-android-exoplayer2-offline-DownloadHelper, reason: not valid java name */
    public /* synthetic */ void m5432xbc158121() {
        ((Callback) Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onMediaPreparationFailed(final IOException iOException) {
        ((Handler) Assertions.checkNotNull(this.callbackHandler)).post(new Runnable() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                DownloadHelper.this.m5431xa7571479(iOException);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onMediaPreparationFailed$5$com-google-android-exoplayer2-offline-DownloadHelper, reason: not valid java name */
    public /* synthetic */ void m5431xa7571479(IOException iOException) {
        ((Callback) Assertions.checkNotNull(this.callback)).onPrepareError(this, iOException);
    }

    @EnsuresNonNull({"trackGroupArrays", "mappedTrackInfos", "trackSelectionsByPeriodAndRenderer", "immutableTrackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline", "mediaPreparer.mediaPeriods"})
    private void assertPreparedWithMedia() {
        Assertions.checkState(this.isPreparedWithMedia);
    }

    @RequiresNonNull({"trackGroupArrays", "trackSelectionsByPeriodAndRenderer", "mediaPreparer", "mediaPreparer.timeline"})
    private TrackSelectorResult runTrackSelection(int i) throws ExoPlaybackException {
        TrackSelectorResult selectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, this.trackGroupArrays[i], new MediaSource.MediaPeriodId(this.mediaPreparer.timeline.getUidOfPeriod(i)), this.mediaPreparer.timeline);
        for (int i2 = 0; i2 < selectTracks.length; i2++) {
            ExoTrackSelection exoTrackSelection = selectTracks.selections[i2];
            if (exoTrackSelection != null) {
                List<ExoTrackSelection> list = this.trackSelectionsByPeriodAndRenderer[i][i2];
                int i3 = 0;
                while (true) {
                    if (i3 < list.size()) {
                        ExoTrackSelection exoTrackSelection2 = list.get(i3);
                        if (exoTrackSelection2.getTrackGroup().equals(exoTrackSelection.getTrackGroup())) {
                            this.scratchSet.clear();
                            for (int i4 = 0; i4 < exoTrackSelection2.length(); i4++) {
                                this.scratchSet.put(exoTrackSelection2.getIndexInTrackGroup(i4), 0);
                            }
                            for (int i5 = 0; i5 < exoTrackSelection.length(); i5++) {
                                this.scratchSet.put(exoTrackSelection.getIndexInTrackGroup(i5), 0);
                            }
                            int[] iArr = new int[this.scratchSet.size()];
                            for (int i6 = 0; i6 < this.scratchSet.size(); i6++) {
                                iArr[i6] = this.scratchSet.keyAt(i6);
                            }
                            list.set(i3, new DownloadTrackSelection(exoTrackSelection2.getTrackGroup(), iArr));
                        } else {
                            i3++;
                        }
                    } else {
                        list.add(exoTrackSelection);
                        break;
                    }
                }
            }
        }
        return selectTracks;
    }

    private static MediaSource createMediaSourceInternal(MediaItem mediaItem, DataSource.Factory factory, final DrmSessionManager drmSessionManager) {
        DefaultMediaSourceFactory defaultMediaSourceFactory = new DefaultMediaSourceFactory(factory, ExtractorsFactory.EMPTY);
        if (drmSessionManager != null) {
            defaultMediaSourceFactory.setDrmSessionManagerProvider(new DrmSessionManagerProvider() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                public final DrmSessionManager get(MediaItem mediaItem2) {
                    return DownloadHelper.lambda$createMediaSourceInternal$6(DrmSessionManager.this, mediaItem2);
                }
            });
        }
        return defaultMediaSourceFactory.createMediaSource(mediaItem);
    }

    private static boolean isProgressive(MediaItem.LocalConfiguration localConfiguration) {
        return Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType) == 4;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class MediaPreparer implements MediaSource.MediaSourceCaller, MediaPeriod.Callback, Handler.Callback {
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED = 1;
        private static final int DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED = 0;
        private static final int MESSAGE_CHECK_FOR_FAILURE = 1;
        private static final int MESSAGE_CONTINUE_LOADING = 2;
        private static final int MESSAGE_PREPARE_SOURCE = 0;
        private static final int MESSAGE_RELEASE = 3;
        private final DownloadHelper downloadHelper;
        public MediaPeriod[] mediaPeriods;
        private final MediaSource mediaSource;
        private final Handler mediaSourceHandler;
        private final HandlerThread mediaSourceThread;
        private boolean released;
        public Timeline timeline;
        private final Allocator allocator = new DefaultAllocator(true, 65536);
        private final ArrayList<MediaPeriod> pendingMediaPeriods = new ArrayList<>();
        private final Handler downloadHelperHandler = Util.createHandlerForCurrentOrMainLooper(new Handler.Callback() { // from class: com.google.android.exoplayer2.offline.DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                boolean handleDownloadHelperCallbackMessage;
                handleDownloadHelperCallbackMessage = DownloadHelper.MediaPreparer.this.handleDownloadHelperCallbackMessage(message);
                return handleDownloadHelperCallbackMessage;
            }
        });

        public MediaPreparer(MediaSource mediaSource, DownloadHelper downloadHelper) {
            this.mediaSource = mediaSource;
            this.downloadHelper = downloadHelper;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadHelper");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            Handler createHandler = Util.createHandler(handlerThread.getLooper(), this);
            this.mediaSourceHandler = createHandler;
            createHandler.sendEmptyMessage(0);
        }

        public void release() {
            if (this.released) {
                return;
            }
            this.released = true;
            this.mediaSourceHandler.sendEmptyMessage(3);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                this.mediaSource.prepareSource(this, null, PlayerId.UNSET);
                this.mediaSourceHandler.sendEmptyMessage(1);
                return true;
            }
            int i2 = 0;
            if (i == 1) {
                try {
                    if (this.mediaPeriods == null) {
                        this.mediaSource.maybeThrowSourceInfoRefreshError();
                    } else {
                        while (i2 < this.pendingMediaPeriods.size()) {
                            this.pendingMediaPeriods.get(i2).maybeThrowPrepareError();
                            i2++;
                        }
                    }
                    this.mediaSourceHandler.sendEmptyMessageDelayed(1, 100L);
                } catch (IOException e) {
                    this.downloadHelperHandler.obtainMessage(1, e).sendToTarget();
                }
                return true;
            }
            if (i == 2) {
                MediaPeriod mediaPeriod = (MediaPeriod) message.obj;
                if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                    mediaPeriod.continueLoading(0L);
                }
                return true;
            }
            if (i != 3) {
                return false;
            }
            MediaPeriod[] mediaPeriodArr = this.mediaPeriods;
            if (mediaPeriodArr != null) {
                int length = mediaPeriodArr.length;
                while (i2 < length) {
                    this.mediaSource.releasePeriod(mediaPeriodArr[i2]);
                    i2++;
                }
            }
            this.mediaSource.releaseSource(this);
            this.mediaSourceHandler.removeCallbacksAndMessages(null);
            this.mediaSourceThread.quit();
            return true;
        }

        @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
        public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
            MediaPeriod[] mediaPeriodArr;
            if (this.timeline != null) {
                return;
            }
            if (timeline.getWindow(0, new Timeline.Window()).isLive()) {
                this.downloadHelperHandler.obtainMessage(1, new LiveContentUnsupportedException()).sendToTarget();
                return;
            }
            this.timeline = timeline;
            this.mediaPeriods = new MediaPeriod[timeline.getPeriodCount()];
            int i = 0;
            while (true) {
                mediaPeriodArr = this.mediaPeriods;
                if (i >= mediaPeriodArr.length) {
                    break;
                }
                MediaPeriod createPeriod = this.mediaSource.createPeriod(new MediaSource.MediaPeriodId(timeline.getUidOfPeriod(i)), this.allocator, 0L);
                this.mediaPeriods[i] = createPeriod;
                this.pendingMediaPeriods.add(createPeriod);
                i++;
            }
            for (MediaPeriod mediaPeriod : mediaPeriodArr) {
                mediaPeriod.prepare(this, 0L);
            }
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.pendingMediaPeriods.remove(mediaPeriod);
            if (this.pendingMediaPeriods.isEmpty()) {
                this.mediaSourceHandler.removeMessages(1);
                this.downloadHelperHandler.sendEmptyMessage(0);
            }
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            if (this.pendingMediaPeriods.contains(mediaPeriod)) {
                this.mediaSourceHandler.obtainMessage(2, mediaPeriod).sendToTarget();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean handleDownloadHelperCallbackMessage(Message message) {
            if (this.released) {
                return false;
            }
            int i = message.what;
            if (i == 0) {
                try {
                    this.downloadHelper.onMediaPrepared();
                } catch (ExoPlaybackException e) {
                    this.downloadHelperHandler.obtainMessage(1, new IOException(e)).sendToTarget();
                }
                return true;
            }
            if (i != 1) {
                return false;
            }
            release();
            this.downloadHelper.onMediaPreparationFailed((IOException) Util.castNonNull(message.obj));
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class DownloadTrackSelection extends BaseTrackSelection {
        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectedIndex() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public Object getSelectionData() {
            return null;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public int getSelectionReason() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
        public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        }

        /* loaded from: classes2.dex */
        private static final class Factory implements ExoTrackSelection.Factory {
            private Factory() {
            }

            @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
            public ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
                ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
                for (int i = 0; i < definitionArr.length; i++) {
                    exoTrackSelectionArr[i] = definitionArr[i] == null ? null : new DownloadTrackSelection(definitionArr[i].group, definitionArr[i].tracks);
                }
                return exoTrackSelectionArr;
            }
        }

        public DownloadTrackSelection(TrackGroup trackGroup, int[] iArr) {
            super(trackGroup, iArr);
        }
    }

    /* loaded from: classes2.dex */
    private static final class FakeBandwidthMeter implements BandwidthMeter {
        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public long getBitrateEstimate() {
            return 0L;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public TransferListener getTransferListener() {
            return null;
        }

        @Override // com.google.android.exoplayer2.upstream.BandwidthMeter
        public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        }

        private FakeBandwidthMeter() {
        }
    }
}
