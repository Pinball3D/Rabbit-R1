package androidx.media3.exoplayer.source.ads;

import android.os.Handler;
import android.util.Pair;
import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.StreamKey;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.SeekParameters;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.BaseMediaSource;
import androidx.media3.exoplayer.source.EmptySampleStream;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.source.SampleStream;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import com.google.common.collect.ArrayListMultimap;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.UnmodifiableIterator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class ServerSideAdInsertionMediaSource extends BaseMediaSource implements MediaSource.MediaSourceCaller, MediaSourceEventListener, DrmSessionEventListener {
    private final AdPlaybackStateUpdater adPlaybackStateUpdater;
    private SharedMediaPeriod lastUsedMediaPeriod;
    private final MediaSource mediaSource;
    private Handler playbackHandler;
    private final ListMultimap<Pair<Long, Object>, SharedMediaPeriod> mediaPeriods = ArrayListMultimap.create();
    private ImmutableMap<Object, AdPlaybackState> adPlaybackStates = ImmutableMap.of();
    private final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcherWithoutId = createEventDispatcher(null);
    private final DrmSessionEventListener.EventDispatcher drmEventDispatcherWithoutId = createDrmEventDispatcher(null);

    /* loaded from: classes2.dex */
    public interface AdPlaybackStateUpdater {
        boolean onAdPlaybackStateUpdateRequested(Timeline timeline);
    }

    public ServerSideAdInsertionMediaSource(MediaSource mediaSource, AdPlaybackStateUpdater adPlaybackStateUpdater) {
        this.mediaSource = mediaSource;
        this.adPlaybackStateUpdater = adPlaybackStateUpdater;
    }

    public void setAdPlaybackStates(final ImmutableMap<Object, AdPlaybackState> immutableMap, final Timeline timeline) {
        Assertions.checkArgument(!immutableMap.isEmpty());
        Object checkNotNull = Assertions.checkNotNull(immutableMap.values().asList().get(0).adsId);
        UnmodifiableIterator<Map.Entry<Object, AdPlaybackState>> it = immutableMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Object, AdPlaybackState> next = it.next();
            Object key = next.getKey();
            AdPlaybackState value = next.getValue();
            Assertions.checkArgument(Util.areEqual(checkNotNull, value.adsId));
            AdPlaybackState adPlaybackState = this.adPlaybackStates.get(key);
            if (adPlaybackState != null) {
                for (int i = value.removedAdGroupCount; i < value.adGroupCount; i++) {
                    AdPlaybackState.AdGroup adGroup = value.getAdGroup(i);
                    Assertions.checkArgument(adGroup.isServerSideInserted);
                    if (i < adPlaybackState.adGroupCount && ServerSideAdInsertionUtil.getAdCountInGroup(value, i) < ServerSideAdInsertionUtil.getAdCountInGroup(adPlaybackState, i)) {
                        AdPlaybackState.AdGroup adGroup2 = value.getAdGroup(i + 1);
                        Assertions.checkArgument(adGroup.contentResumeOffsetUs + adGroup2.contentResumeOffsetUs == adPlaybackState.getAdGroup(i).contentResumeOffsetUs);
                        Assertions.checkArgument(adGroup.timeUs + adGroup.contentResumeOffsetUs == adGroup2.timeUs);
                    }
                    if (adGroup.timeUs == Long.MIN_VALUE) {
                        Assertions.checkArgument(ServerSideAdInsertionUtil.getAdCountInGroup(value, i) == 0);
                    }
                }
            }
        }
        synchronized (this) {
            Handler handler = this.playbackHandler;
            if (handler == null) {
                this.adPlaybackStates = immutableMap;
            } else {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.source.ads.ServerSideAdInsertionMediaSource$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        ServerSideAdInsertionMediaSource.this.m5273x8b1696bf(immutableMap, timeline);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$setAdPlaybackStates$0$androidx-media3-exoplayer-source-ads-ServerSideAdInsertionMediaSource, reason: not valid java name */
    public /* synthetic */ void m5273x8b1696bf(ImmutableMap immutableMap, Timeline timeline) {
        AdPlaybackState adPlaybackState;
        for (SharedMediaPeriod sharedMediaPeriod : this.mediaPeriods.values()) {
            AdPlaybackState adPlaybackState2 = (AdPlaybackState) immutableMap.get(sharedMediaPeriod.periodUid);
            if (adPlaybackState2 != null) {
                sharedMediaPeriod.updateAdPlaybackState(adPlaybackState2);
            }
        }
        SharedMediaPeriod sharedMediaPeriod2 = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod2 != null && (adPlaybackState = (AdPlaybackState) immutableMap.get(sharedMediaPeriod2.periodUid)) != null) {
            this.lastUsedMediaPeriod.updateAdPlaybackState(adPlaybackState);
        }
        this.adPlaybackStates = immutableMap;
        refreshSourceInfo(new ServerSideAdInsertionTimeline(timeline, immutableMap));
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void prepareSourceInternal(TransferListener transferListener) {
        Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
        synchronized (this) {
            this.playbackHandler = createHandlerForCurrentLooper;
        }
        this.mediaSource.addEventListener(createHandlerForCurrentLooper, this);
        this.mediaSource.addDrmEventListener(createHandlerForCurrentLooper, this);
        this.mediaSource.prepareSource(this, transferListener, getPlayerId());
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        this.mediaSource.maybeThrowSourceInfoRefreshError();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void enableInternal() {
        this.mediaSource.enable(this);
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void disableInternal() {
        releaseLastUsedMediaPeriod();
        this.mediaSource.disable(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
    public void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
        AdPlaybackStateUpdater adPlaybackStateUpdater = this.adPlaybackStateUpdater;
        if ((adPlaybackStateUpdater == null || !adPlaybackStateUpdater.onAdPlaybackStateUpdateRequested(timeline)) && !this.adPlaybackStates.isEmpty()) {
            refreshSourceInfo(new ServerSideAdInsertionTimeline(timeline, this.adPlaybackStates));
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    protected void releaseSourceInternal() {
        releaseLastUsedMediaPeriod();
        synchronized (this) {
            this.playbackHandler = null;
        }
        this.mediaSource.releaseSource(this);
        this.mediaSource.removeEventListener(this);
        this.mediaSource.removeDrmEventListener(this);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        SharedMediaPeriod sharedMediaPeriod;
        Pair<Long, Object> pair = new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid);
        SharedMediaPeriod sharedMediaPeriod2 = this.lastUsedMediaPeriod;
        boolean z = false;
        if (sharedMediaPeriod2 != null) {
            if (sharedMediaPeriod2.periodUid.equals(mediaPeriodId.periodUid)) {
                sharedMediaPeriod = this.lastUsedMediaPeriod;
                this.mediaPeriods.put(pair, sharedMediaPeriod);
                z = true;
            } else {
                this.lastUsedMediaPeriod.release(this.mediaSource);
                sharedMediaPeriod = null;
            }
            this.lastUsedMediaPeriod = null;
        } else {
            sharedMediaPeriod = null;
        }
        if (sharedMediaPeriod == null && ((sharedMediaPeriod = (SharedMediaPeriod) Iterables.getLast(this.mediaPeriods.get((ListMultimap<Pair<Long, Object>, SharedMediaPeriod>) pair), null)) == null || !sharedMediaPeriod.canReuseMediaPeriod(mediaPeriodId, j))) {
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodId.periodUid));
            SharedMediaPeriod sharedMediaPeriod3 = new SharedMediaPeriod(this.mediaSource.createPeriod(new MediaSource.MediaPeriodId(mediaPeriodId.periodUid, mediaPeriodId.windowSequenceNumber), allocator, ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodId, adPlaybackState)), mediaPeriodId.periodUid, adPlaybackState);
            this.mediaPeriods.put(pair, sharedMediaPeriod3);
            sharedMediaPeriod = sharedMediaPeriod3;
        }
        MediaPeriodImpl mediaPeriodImpl = new MediaPeriodImpl(sharedMediaPeriod, mediaPeriodId, createEventDispatcher(mediaPeriodId), createDrmEventDispatcher(mediaPeriodId));
        sharedMediaPeriod.add(mediaPeriodImpl);
        if (z && sharedMediaPeriod.trackSelections.length > 0) {
            mediaPeriodImpl.seekToUs(j);
        }
        return mediaPeriodImpl;
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        MediaPeriodImpl mediaPeriodImpl = (MediaPeriodImpl) mediaPeriod;
        mediaPeriodImpl.sharedPeriod.remove(mediaPeriodImpl);
        if (mediaPeriodImpl.sharedPeriod.isUnused()) {
            this.mediaPeriods.remove(new Pair(Long.valueOf(mediaPeriodImpl.mediaPeriodId.windowSequenceNumber), mediaPeriodImpl.mediaPeriodId.periodUid), mediaPeriodImpl.sharedPeriod);
            if (this.mediaPeriods.isEmpty()) {
                this.lastUsedMediaPeriod = mediaPeriodImpl.sharedPeriod;
            } else {
                mediaPeriodImpl.sharedPeriod.release(this.mediaSource);
            }
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId, int i2) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, true);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmSessionAcquired(i2);
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmSessionAcquired(i2);
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmKeysLoaded();
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmKeysLoaded();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmSessionManagerError(exc);
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmSessionManagerError(exc);
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmKeysRestored();
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmKeysRestored();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmKeysRemoved();
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmKeysRemoved();
        }
    }

    @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
    public void onDrmSessionReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        if (mediaPeriodForEvent == null) {
            this.drmEventDispatcherWithoutId.drmSessionReleased();
        } else {
            mediaPeriodForEvent.drmEventDispatcher.drmSessionReleased();
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onLoadStarted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadStarted(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadStarted(loadEventInfo, mediaLoadData);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadStarted(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onLoadCompleted(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadCompleted(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onLoadCanceled(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadCanceled(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onLoadError(int i, MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadError(loadEventInfo, mediaLoadData, iOException, z);
            return;
        }
        if (z) {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
        }
        mediaPeriodForEvent.mediaSourceEventDispatcher.loadError(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))), iOException, z);
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.upstreamDiscarded(mediaLoadData);
        } else {
            mediaPeriodForEvent.mediaSourceEventDispatcher.upstreamDiscarded(correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))));
        }
    }

    @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
    public void onDownstreamFormatChanged(int i, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
        MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.downstreamFormatChanged(mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onDownstreamFormatChanged(mediaPeriodForEvent, mediaLoadData);
            mediaPeriodForEvent.mediaSourceEventDispatcher.downstreamFormatChanged(correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(mediaPeriodForEvent.mediaPeriodId.periodUid))));
        }
    }

    private void releaseLastUsedMediaPeriod() {
        SharedMediaPeriod sharedMediaPeriod = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod != null) {
            sharedMediaPeriod.release(this.mediaSource);
            this.lastUsedMediaPeriod = null;
        }
    }

    private MediaPeriodImpl getMediaPeriodForEvent(MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData, boolean z) {
        if (mediaPeriodId == null) {
            return null;
        }
        List<SharedMediaPeriod> list = this.mediaPeriods.get((ListMultimap<Pair<Long, Object>, SharedMediaPeriod>) new Pair<>(Long.valueOf(mediaPeriodId.windowSequenceNumber), mediaPeriodId.periodUid));
        if (list.isEmpty()) {
            return null;
        }
        if (z) {
            SharedMediaPeriod sharedMediaPeriod = (SharedMediaPeriod) Iterables.getLast(list);
            return sharedMediaPeriod.loadingPeriod != null ? sharedMediaPeriod.loadingPeriod : (MediaPeriodImpl) Iterables.getLast(sharedMediaPeriod.mediaPeriods);
        }
        for (int i = 0; i < list.size(); i++) {
            MediaPeriodImpl mediaPeriodForEvent = list.get(i).getMediaPeriodForEvent(mediaLoadData);
            if (mediaPeriodForEvent != null) {
                return mediaPeriodForEvent;
            }
        }
        return (MediaPeriodImpl) list.get(0).mediaPeriods.get(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long getMediaPeriodEndPositionUs(MediaPeriodImpl mediaPeriodImpl, AdPlaybackState adPlaybackState) {
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        if (mediaPeriodId.isAd()) {
            AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(mediaPeriodId.adGroupIndex);
            if (adGroup.count == -1) {
                return 0L;
            }
            return adGroup.durationsUs[mediaPeriodId.adIndexInAdGroup];
        }
        if (mediaPeriodId.nextAdGroupIndex == -1) {
            return Long.MAX_VALUE;
        }
        AdPlaybackState.AdGroup adGroup2 = adPlaybackState.getAdGroup(mediaPeriodId.nextAdGroupIndex);
        if (adGroup2.timeUs == Long.MIN_VALUE) {
            return Long.MAX_VALUE;
        }
        return adGroup2.timeUs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaLoadData correctMediaLoadData(MediaPeriodImpl mediaPeriodImpl, MediaLoadData mediaLoadData, AdPlaybackState adPlaybackState) {
        return new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, correctMediaLoadDataPositionMs(mediaLoadData.mediaStartTimeMs, mediaPeriodImpl, adPlaybackState), correctMediaLoadDataPositionMs(mediaLoadData.mediaEndTimeMs, mediaPeriodImpl, adPlaybackState));
    }

    private static long correctMediaLoadDataPositionMs(long j, MediaPeriodImpl mediaPeriodImpl, AdPlaybackState adPlaybackState) {
        long mediaPeriodPositionUsForContent;
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long msToUs = Util.msToUs(j);
        MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        if (mediaPeriodId.isAd()) {
            mediaPeriodPositionUsForContent = ServerSideAdInsertionUtil.getMediaPeriodPositionUsForAd(msToUs, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState);
        } else {
            mediaPeriodPositionUsForContent = ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(msToUs, -1, adPlaybackState);
        }
        return Util.usToMs(mediaPeriodPositionUsForContent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SharedMediaPeriod implements MediaPeriod.Callback {
        private final MediaPeriod actualMediaPeriod;
        private AdPlaybackState adPlaybackState;
        private boolean hasStartedPreparing;
        private boolean isPrepared;
        private MediaPeriodImpl loadingPeriod;
        private final Object periodUid;
        private final List<MediaPeriodImpl> mediaPeriods = new ArrayList();
        private final Map<Long, Pair<LoadEventInfo, MediaLoadData>> activeLoads = new HashMap();
        public ExoTrackSelection[] trackSelections = new ExoTrackSelection[0];
        public SampleStream[] sampleStreams = new SampleStream[0];
        public MediaLoadData[] lastDownstreamFormatChangeData = new MediaLoadData[0];

        public void updateAdPlaybackState(AdPlaybackState adPlaybackState) {
            this.adPlaybackState = adPlaybackState;
        }

        public SharedMediaPeriod(MediaPeriod mediaPeriod, Object obj, AdPlaybackState adPlaybackState) {
            this.actualMediaPeriod = mediaPeriod;
            this.periodUid = obj;
            this.adPlaybackState = adPlaybackState;
        }

        public void add(MediaPeriodImpl mediaPeriodImpl) {
            this.mediaPeriods.add(mediaPeriodImpl);
        }

        public void remove(MediaPeriodImpl mediaPeriodImpl) {
            if (mediaPeriodImpl.equals(this.loadingPeriod)) {
                this.loadingPeriod = null;
                this.activeLoads.clear();
            }
            this.mediaPeriods.remove(mediaPeriodImpl);
        }

        public boolean isUnused() {
            return this.mediaPeriods.isEmpty();
        }

        public void release(MediaSource mediaSource) {
            mediaSource.releasePeriod(this.actualMediaPeriod);
        }

        public boolean canReuseMediaPeriod(MediaSource.MediaPeriodId mediaPeriodId, long j) {
            MediaPeriodImpl mediaPeriodImpl = (MediaPeriodImpl) Iterables.getLast(this.mediaPeriods);
            return ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodId, this.adPlaybackState) == ServerSideAdInsertionUtil.getStreamPositionUs(ServerSideAdInsertionMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public MediaPeriodImpl getMediaPeriodForEvent(MediaLoadData mediaLoadData) {
            if (mediaLoadData == null || mediaLoadData.mediaStartTimeMs == -9223372036854775807L) {
                return null;
            }
            for (int i = 0; i < this.mediaPeriods.size(); i++) {
                MediaPeriodImpl mediaPeriodImpl = this.mediaPeriods.get(i);
                if (mediaPeriodImpl.isPrepared) {
                    long mediaPeriodPositionUs = ServerSideAdInsertionUtil.getMediaPeriodPositionUs(Util.msToUs(mediaLoadData.mediaStartTimeMs), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
                    long mediaPeriodEndPositionUs = ServerSideAdInsertionMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState);
                    if (mediaPeriodPositionUs >= 0 && mediaPeriodPositionUs < mediaPeriodEndPositionUs) {
                        return mediaPeriodImpl;
                    }
                }
            }
            return null;
        }

        public void prepare(MediaPeriodImpl mediaPeriodImpl, long j) {
            mediaPeriodImpl.lastStartPositionUs = j;
            if (this.hasStartedPreparing) {
                if (this.isPrepared) {
                    mediaPeriodImpl.onPrepared();
                }
            } else {
                this.hasStartedPreparing = true;
                this.actualMediaPeriod.prepare(this, ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
            }
        }

        public void maybeThrowPrepareError() throws IOException {
            this.actualMediaPeriod.maybeThrowPrepareError();
        }

        public TrackGroupArray getTrackGroups() {
            return this.actualMediaPeriod.getTrackGroups();
        }

        public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
            return this.actualMediaPeriod.getStreamKeys(list);
        }

        public boolean continueLoading(MediaPeriodImpl mediaPeriodImpl, long j) {
            MediaPeriodImpl mediaPeriodImpl2 = this.loadingPeriod;
            if (mediaPeriodImpl2 != null && !mediaPeriodImpl.equals(mediaPeriodImpl2)) {
                for (Pair<LoadEventInfo, MediaLoadData> pair : this.activeLoads.values()) {
                    mediaPeriodImpl2.mediaSourceEventDispatcher.loadCompleted((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.correctMediaLoadData(mediaPeriodImpl2, (MediaLoadData) pair.second, this.adPlaybackState));
                    mediaPeriodImpl.mediaSourceEventDispatcher.loadStarted((LoadEventInfo) pair.first, ServerSideAdInsertionMediaSource.correctMediaLoadData(mediaPeriodImpl, (MediaLoadData) pair.second, this.adPlaybackState));
                }
            }
            this.loadingPeriod = mediaPeriodImpl;
            return this.actualMediaPeriod.continueLoading(getStreamPositionUsWithNotYetStartedHandling(mediaPeriodImpl, j));
        }

        public boolean isLoading(MediaPeriodImpl mediaPeriodImpl) {
            return mediaPeriodImpl.equals(this.loadingPeriod) && this.actualMediaPeriod.isLoading();
        }

        public long getBufferedPositionUs(MediaPeriodImpl mediaPeriodImpl) {
            return getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, this.actualMediaPeriod.getBufferedPositionUs());
        }

        public long getNextLoadPositionUs(MediaPeriodImpl mediaPeriodImpl) {
            return getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, this.actualMediaPeriod.getNextLoadPositionUs());
        }

        public long seekToUs(MediaPeriodImpl mediaPeriodImpl, long j) {
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(this.actualMediaPeriod.seekToUs(ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState)), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public long getAdjustedSeekPositionUs(MediaPeriodImpl mediaPeriodImpl, long j, SeekParameters seekParameters) {
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(this.actualMediaPeriod.getAdjustedSeekPositionUs(ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), seekParameters), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public void discardBuffer(MediaPeriodImpl mediaPeriodImpl, long j, boolean z) {
            this.actualMediaPeriod.discardBuffer(ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), z);
        }

        public void reevaluateBuffer(MediaPeriodImpl mediaPeriodImpl, long j) {
            this.actualMediaPeriod.reevaluateBuffer(getStreamPositionUsWithNotYetStartedHandling(mediaPeriodImpl, j));
        }

        public long readDiscontinuity(MediaPeriodImpl mediaPeriodImpl) {
            if (!mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                return -9223372036854775807L;
            }
            long readDiscontinuity = this.actualMediaPeriod.readDiscontinuity();
            if (readDiscontinuity == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(readDiscontinuity, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public long selectTracks(MediaPeriodImpl mediaPeriodImpl, ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            SampleStream emptySampleStream;
            SampleStream[] sampleStreamArr2;
            mediaPeriodImpl.lastStartPositionUs = j;
            if (mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                this.trackSelections = (ExoTrackSelection[]) Arrays.copyOf(exoTrackSelectionArr, exoTrackSelectionArr.length);
                long streamPositionUs = ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
                SampleStream[] sampleStreamArr3 = this.sampleStreams;
                if (sampleStreamArr3.length == 0) {
                    sampleStreamArr2 = new SampleStream[exoTrackSelectionArr.length];
                } else {
                    sampleStreamArr2 = (SampleStream[]) Arrays.copyOf(sampleStreamArr3, sampleStreamArr3.length);
                }
                SampleStream[] sampleStreamArr4 = sampleStreamArr2;
                long selectTracks = this.actualMediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr4, zArr2, streamPositionUs);
                this.sampleStreams = (SampleStream[]) Arrays.copyOf(sampleStreamArr4, sampleStreamArr4.length);
                this.lastDownstreamFormatChangeData = (MediaLoadData[]) Arrays.copyOf(this.lastDownstreamFormatChangeData, sampleStreamArr4.length);
                for (int i = 0; i < sampleStreamArr4.length; i++) {
                    if (sampleStreamArr4[i] == null) {
                        sampleStreamArr[i] = null;
                        this.lastDownstreamFormatChangeData[i] = null;
                    } else if (sampleStreamArr[i] == null || zArr2[i]) {
                        sampleStreamArr[i] = new SampleStreamImpl(mediaPeriodImpl, i);
                        this.lastDownstreamFormatChangeData[i] = null;
                    }
                }
                return ServerSideAdInsertionUtil.getMediaPeriodPositionUs(selectTracks, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            }
            for (int i2 = 0; i2 < exoTrackSelectionArr.length; i2++) {
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i2];
                boolean z = true;
                if (exoTrackSelection != null) {
                    if (zArr[i2] && sampleStreamArr[i2] != null) {
                        z = false;
                    }
                    zArr2[i2] = z;
                    if (z) {
                        if (Util.areEqual(this.trackSelections[i2], exoTrackSelection)) {
                            emptySampleStream = new SampleStreamImpl(mediaPeriodImpl, i2);
                        } else {
                            emptySampleStream = new EmptySampleStream();
                        }
                        sampleStreamArr[i2] = emptySampleStream;
                    }
                } else {
                    sampleStreamArr[i2] = null;
                    zArr2[i2] = true;
                }
            }
            return j;
        }

        public int readData(MediaPeriodImpl mediaPeriodImpl, int i, FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i2) {
            long bufferedPositionUs = getBufferedPositionUs(mediaPeriodImpl);
            int readData = ((SampleStream) Util.castNonNull(this.sampleStreams[i])).readData(formatHolder, decoderInputBuffer, i2 | 5);
            long mediaPeriodPositionUsWithEndOfSourceHandling = getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, decoderInputBuffer.timeUs);
            if ((readData == -4 && mediaPeriodPositionUsWithEndOfSourceHandling == Long.MIN_VALUE) || (readData == -3 && bufferedPositionUs == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys)) {
                maybeNotifyDownstreamFormatChanged(mediaPeriodImpl, i);
                decoderInputBuffer.clear();
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if (readData == -4) {
                maybeNotifyDownstreamFormatChanged(mediaPeriodImpl, i);
                ((SampleStream) Util.castNonNull(this.sampleStreams[i])).readData(formatHolder, decoderInputBuffer, i2);
                decoderInputBuffer.timeUs = mediaPeriodPositionUsWithEndOfSourceHandling;
            }
            return readData;
        }

        public int skipData(MediaPeriodImpl mediaPeriodImpl, int i, long j) {
            return ((SampleStream) Util.castNonNull(this.sampleStreams[i])).skipData(ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
        }

        public boolean isReady(int i) {
            return ((SampleStream) Util.castNonNull(this.sampleStreams[i])).isReady();
        }

        public void maybeThrowError(int i) throws IOException {
            ((SampleStream) Util.castNonNull(this.sampleStreams[i])).maybeThrowError();
        }

        public void onDownstreamFormatChanged(MediaPeriodImpl mediaPeriodImpl, MediaLoadData mediaLoadData) {
            int findMatchingStreamIndex = findMatchingStreamIndex(mediaLoadData);
            if (findMatchingStreamIndex != -1) {
                this.lastDownstreamFormatChangeData[findMatchingStreamIndex] = mediaLoadData;
                mediaPeriodImpl.hasNotifiedDownstreamFormatChange[findMatchingStreamIndex] = true;
            }
        }

        public void onLoadStarted(LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            this.activeLoads.put(Long.valueOf(loadEventInfo.loadTaskId), Pair.create(loadEventInfo, mediaLoadData));
        }

        public void onLoadFinished(LoadEventInfo loadEventInfo) {
            this.activeLoads.remove(Long.valueOf(loadEventInfo.loadTaskId));
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
        public void onPrepared(MediaPeriod mediaPeriod) {
            this.isPrepared = true;
            for (int i = 0; i < this.mediaPeriods.size(); i++) {
                this.mediaPeriods.get(i).onPrepared();
            }
        }

        @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(MediaPeriod mediaPeriod) {
            MediaPeriodImpl mediaPeriodImpl = this.loadingPeriod;
            if (mediaPeriodImpl == null) {
                return;
            }
            ((MediaPeriod.Callback) Assertions.checkNotNull(mediaPeriodImpl.callback)).onContinueLoadingRequested(this.loadingPeriod);
        }

        private long getStreamPositionUsWithNotYetStartedHandling(MediaPeriodImpl mediaPeriodImpl, long j) {
            if (j < mediaPeriodImpl.lastStartPositionUs) {
                return ServerSideAdInsertionUtil.getStreamPositionUs(mediaPeriodImpl.lastStartPositionUs, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState) - (mediaPeriodImpl.lastStartPositionUs - j);
            }
            return ServerSideAdInsertionUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        private long getMediaPeriodPositionUsWithEndOfSourceHandling(MediaPeriodImpl mediaPeriodImpl, long j) {
            if (j == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            long mediaPeriodPositionUs = ServerSideAdInsertionUtil.getMediaPeriodPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            if (mediaPeriodPositionUs >= ServerSideAdInsertionMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState)) {
                return Long.MIN_VALUE;
            }
            return mediaPeriodPositionUs;
        }

        private int findMatchingStreamIndex(MediaLoadData mediaLoadData) {
            if (mediaLoadData.trackFormat == null) {
                return -1;
            }
            int i = 0;
            loop0: while (true) {
                ExoTrackSelection[] exoTrackSelectionArr = this.trackSelections;
                if (i >= exoTrackSelectionArr.length) {
                    return -1;
                }
                ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i];
                if (exoTrackSelection != null) {
                    TrackGroup trackGroup = exoTrackSelection.getTrackGroup();
                    boolean z = mediaLoadData.trackType == 0 && trackGroup.equals(getTrackGroups().get(0));
                    for (int i2 = 0; i2 < trackGroup.length; i2++) {
                        Format format = trackGroup.getFormat(i2);
                        if (format.equals(mediaLoadData.trackFormat) || (z && format.id != null && format.id.equals(mediaLoadData.trackFormat.id))) {
                            break loop0;
                        }
                    }
                }
                i++;
            }
            return i;
        }

        private void maybeNotifyDownstreamFormatChanged(MediaPeriodImpl mediaPeriodImpl, int i) {
            if (mediaPeriodImpl.hasNotifiedDownstreamFormatChange[i] || this.lastDownstreamFormatChangeData[i] == null) {
                return;
            }
            mediaPeriodImpl.hasNotifiedDownstreamFormatChange[i] = true;
            mediaPeriodImpl.mediaSourceEventDispatcher.downstreamFormatChanged(ServerSideAdInsertionMediaSource.correctMediaLoadData(mediaPeriodImpl, this.lastDownstreamFormatChangeData[i], this.adPlaybackState));
        }
    }

    /* loaded from: classes2.dex */
    private static final class ServerSideAdInsertionTimeline extends ForwardingTimeline {
        private final ImmutableMap<Object, AdPlaybackState> adPlaybackStates;

        public ServerSideAdInsertionTimeline(Timeline timeline, ImmutableMap<Object, AdPlaybackState> immutableMap) {
            super(timeline);
            Assertions.checkState(timeline.getWindowCount() == 1);
            Timeline.Period period = new Timeline.Period();
            for (int i = 0; i < timeline.getPeriodCount(); i++) {
                timeline.getPeriod(i, period, true);
                Assertions.checkState(immutableMap.containsKey(Assertions.checkNotNull(period.uid)));
            }
            this.adPlaybackStates = immutableMap;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Window getWindow(int i, Timeline.Window window, long j) {
            super.getWindow(i, window, j);
            Timeline.Period period = new Timeline.Period();
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(Assertions.checkNotNull(getPeriod(window.firstPeriodIndex, period, true).uid)));
            long mediaPeriodPositionUsForContent = ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(window.positionInFirstPeriodUs, -1, adPlaybackState);
            if (window.durationUs != -9223372036854775807L) {
                Timeline.Period period2 = super.getPeriod(window.lastPeriodIndex, period, true);
                long j2 = period2.positionInWindowUs;
                AdPlaybackState adPlaybackState2 = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(period2.uid));
                Timeline.Period period3 = getPeriod(window.lastPeriodIndex, period);
                window.durationUs = period3.positionInWindowUs + ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(window.durationUs - j2, -1, adPlaybackState2);
            } else if (adPlaybackState.contentDurationUs != -9223372036854775807L) {
                window.durationUs = adPlaybackState.contentDurationUs - mediaPeriodPositionUsForContent;
            }
            window.positionInFirstPeriodUs = mediaPeriodPositionUsForContent;
            return window;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public Timeline.Period getPeriod(int i, Timeline.Period period, boolean z) {
            long mediaPeriodPositionUsForContent;
            super.getPeriod(i, period, true);
            AdPlaybackState adPlaybackState = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(period.uid));
            long j = period.durationUs;
            if (j == -9223372036854775807L) {
                mediaPeriodPositionUsForContent = adPlaybackState.contentDurationUs;
            } else {
                mediaPeriodPositionUsForContent = ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(j, -1, adPlaybackState);
            }
            long j2 = mediaPeriodPositionUsForContent;
            Timeline.Period period2 = new Timeline.Period();
            long j3 = 0;
            for (int i2 = 0; i2 < i + 1; i2++) {
                this.timeline.getPeriod(i2, period2, true);
                AdPlaybackState adPlaybackState2 = (AdPlaybackState) Assertions.checkNotNull(this.adPlaybackStates.get(period2.uid));
                if (i2 == 0) {
                    j3 = -ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(-period2.getPositionInWindowUs(), -1, adPlaybackState2);
                }
                if (i2 != i) {
                    j3 += ServerSideAdInsertionUtil.getMediaPeriodPositionUsForContent(period2.durationUs, -1, adPlaybackState2);
                }
            }
            period.set(period.id, period.uid, period.windowIndex, j2, j3, adPlaybackState, period.isPlaceholder);
            return period;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class MediaPeriodImpl implements MediaPeriod {
        public MediaPeriod.Callback callback;
        public final DrmSessionEventListener.EventDispatcher drmEventDispatcher;
        public boolean[] hasNotifiedDownstreamFormatChange = new boolean[0];
        public boolean isPrepared;
        public long lastStartPositionUs;
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
        public final SharedMediaPeriod sharedPeriod;

        public MediaPeriodImpl(SharedMediaPeriod sharedMediaPeriod, MediaSource.MediaPeriodId mediaPeriodId, MediaSourceEventListener.EventDispatcher eventDispatcher, DrmSessionEventListener.EventDispatcher eventDispatcher2) {
            this.sharedPeriod = sharedMediaPeriod;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaSourceEventDispatcher = eventDispatcher;
            this.drmEventDispatcher = eventDispatcher2;
        }

        public void onPrepared() {
            MediaPeriod.Callback callback = this.callback;
            if (callback != null) {
                callback.onPrepared(this);
            }
            this.isPrepared = true;
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void prepare(MediaPeriod.Callback callback, long j) {
            this.callback = callback;
            this.sharedPeriod.prepare(this, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void maybeThrowPrepareError() throws IOException {
            this.sharedPeriod.maybeThrowPrepareError();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public TrackGroupArray getTrackGroups() {
            return this.sharedPeriod.getTrackGroups();
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public List<StreamKey> getStreamKeys(List<ExoTrackSelection> list) {
            return this.sharedPeriod.getStreamKeys(list);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long selectTracks(ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            if (this.hasNotifiedDownstreamFormatChange.length == 0) {
                this.hasNotifiedDownstreamFormatChange = new boolean[sampleStreamArr.length];
            }
            return this.sharedPeriod.selectTracks(this, exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.sharedPeriod.discardBuffer(this, j, z);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long readDiscontinuity() {
            return this.sharedPeriod.readDiscontinuity(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long seekToUs(long j) {
            return this.sharedPeriod.seekToUs(this, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, SeekParameters seekParameters) {
            return this.sharedPeriod.getAdjustedSeekPositionUs(this, j, seekParameters);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.sharedPeriod.getBufferedPositionUs(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.sharedPeriod.getNextLoadPositionUs(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.sharedPeriod.continueLoading(this, j);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public boolean isLoading() {
            return this.sharedPeriod.isLoading(this);
        }

        @Override // androidx.media3.exoplayer.source.MediaPeriod, androidx.media3.exoplayer.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.sharedPeriod.reevaluateBuffer(this, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class SampleStreamImpl implements SampleStream {
        private final MediaPeriodImpl mediaPeriod;
        private final int streamIndex;

        public SampleStreamImpl(MediaPeriodImpl mediaPeriodImpl, int i) {
            this.mediaPeriod = mediaPeriodImpl;
            this.streamIndex = i;
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public boolean isReady() {
            return this.mediaPeriod.sharedPeriod.isReady(this.streamIndex);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public void maybeThrowError() throws IOException {
            this.mediaPeriod.sharedPeriod.maybeThrowError(this.streamIndex);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int readData(FormatHolder formatHolder, DecoderInputBuffer decoderInputBuffer, int i) {
            return this.mediaPeriod.sharedPeriod.readData(this.mediaPeriod, this.streamIndex, formatHolder, decoderInputBuffer, i);
        }

        @Override // androidx.media3.exoplayer.source.SampleStream
        public int skipData(long j) {
            return this.mediaPeriod.sharedPeriod.skipData(this.mediaPeriod, this.streamIndex, j);
        }
    }
}
