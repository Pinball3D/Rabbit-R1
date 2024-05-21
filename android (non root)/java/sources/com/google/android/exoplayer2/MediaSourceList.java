package com.google.android.exoplayer2;

import android.util.Pair;
import com.google.android.exoplayer2.MediaSourceList;
import com.google.android.exoplayer2.analytics.AnalyticsCollector;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.source.LoadEventInfo;
import com.google.android.exoplayer2.source.MaskingMediaPeriod;
import com.google.android.exoplayer2.source.MaskingMediaSource;
import com.google.android.exoplayer2.source.MediaLoadData;
import com.google.android.exoplayer2.source.MediaPeriod;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.MediaSourceEventListener;
import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.HandlerWrapper;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class MediaSourceList {
    private static final String TAG = "MediaSourceList";
    private final HandlerWrapper eventHandler;
    private final AnalyticsCollector eventListener;
    private boolean isPrepared;
    private final MediaSourceListInfoRefreshListener mediaSourceListInfoListener;
    private TransferListener mediaTransferListener;
    private final PlayerId playerId;
    private ShuffleOrder shuffleOrder = new ShuffleOrder.DefaultShuffleOrder(0);
    private final IdentityHashMap<MediaPeriod, MediaSourceHolder> mediaSourceByMediaPeriod = new IdentityHashMap<>();
    private final Map<Object, MediaSourceHolder> mediaSourceByUid = new HashMap();
    private final List<MediaSourceHolder> mediaSourceHolders = new ArrayList();
    private final HashMap<MediaSourceHolder, MediaSourceAndListener> childSources = new HashMap<>();
    private final Set<MediaSourceHolder> enabledMediaSourceHolders = new HashSet();

    /* loaded from: classes2.dex */
    public interface MediaSourceListInfoRefreshListener {
        void onPlaylistUpdateRequested();
    }

    public boolean isPrepared() {
        return this.isPrepared;
    }

    public MediaSourceList(MediaSourceListInfoRefreshListener mediaSourceListInfoRefreshListener, AnalyticsCollector analyticsCollector, HandlerWrapper handlerWrapper, PlayerId playerId) {
        this.playerId = playerId;
        this.mediaSourceListInfoListener = mediaSourceListInfoRefreshListener;
        this.eventListener = analyticsCollector;
        this.eventHandler = handlerWrapper;
    }

    public Timeline setMediaSources(List<MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        removeMediaSourcesInternal(0, this.mediaSourceHolders.size());
        return addMediaSources(this.mediaSourceHolders.size(), list, shuffleOrder);
    }

    public Timeline addMediaSources(int i, List<MediaSourceHolder> list, ShuffleOrder shuffleOrder) {
        if (!list.isEmpty()) {
            this.shuffleOrder = shuffleOrder;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                MediaSourceHolder mediaSourceHolder = list.get(i2 - i);
                if (i2 > 0) {
                    MediaSourceHolder mediaSourceHolder2 = this.mediaSourceHolders.get(i2 - 1);
                    mediaSourceHolder.reset(mediaSourceHolder2.firstWindowIndexInChild + mediaSourceHolder2.mediaSource.getTimeline().getWindowCount());
                } else {
                    mediaSourceHolder.reset(0);
                }
                correctOffsets(i2, mediaSourceHolder.mediaSource.getTimeline().getWindowCount());
                this.mediaSourceHolders.add(i2, mediaSourceHolder);
                this.mediaSourceByUid.put(mediaSourceHolder.uid, mediaSourceHolder);
                if (this.isPrepared) {
                    prepareChildSource(mediaSourceHolder);
                    if (this.mediaSourceByMediaPeriod.isEmpty()) {
                        this.enabledMediaSourceHolders.add(mediaSourceHolder);
                    } else {
                        disableChildSource(mediaSourceHolder);
                    }
                }
            }
        }
        return createTimeline();
    }

    public Timeline removeMediaSourceRange(int i, int i2, ShuffleOrder shuffleOrder) {
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= getSize());
        this.shuffleOrder = shuffleOrder;
        removeMediaSourcesInternal(i, i2);
        return createTimeline();
    }

    public Timeline moveMediaSource(int i, int i2, ShuffleOrder shuffleOrder) {
        return moveMediaSourceRange(i, i + 1, i2, shuffleOrder);
    }

    public Timeline moveMediaSourceRange(int i, int i2, int i3, ShuffleOrder shuffleOrder) {
        Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= getSize() && i3 >= 0);
        this.shuffleOrder = shuffleOrder;
        if (i == i2 || i == i3) {
            return createTimeline();
        }
        int min = Math.min(i, i3);
        int max = Math.max(((i2 - i) + i3) - 1, i2 - 1);
        int i4 = this.mediaSourceHolders.get(min).firstWindowIndexInChild;
        Util.moveItems(this.mediaSourceHolders, i, i2, i3);
        while (min <= max) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(min);
            mediaSourceHolder.firstWindowIndexInChild = i4;
            i4 += mediaSourceHolder.mediaSource.getTimeline().getWindowCount();
            min++;
        }
        return createTimeline();
    }

    public Timeline clear(ShuffleOrder shuffleOrder) {
        if (shuffleOrder == null) {
            shuffleOrder = this.shuffleOrder.cloneAndClear();
        }
        this.shuffleOrder = shuffleOrder;
        removeMediaSourcesInternal(0, getSize());
        return createTimeline();
    }

    public int getSize() {
        return this.mediaSourceHolders.size();
    }

    public Timeline setShuffleOrder(ShuffleOrder shuffleOrder) {
        int size = getSize();
        if (shuffleOrder.getLength() != size) {
            shuffleOrder = shuffleOrder.cloneAndClear().cloneAndInsert(0, size);
        }
        this.shuffleOrder = shuffleOrder;
        return createTimeline();
    }

    public void prepare(TransferListener transferListener) {
        Assertions.checkState(!this.isPrepared);
        this.mediaTransferListener = transferListener;
        for (int i = 0; i < this.mediaSourceHolders.size(); i++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i);
            prepareChildSource(mediaSourceHolder);
            this.enabledMediaSourceHolders.add(mediaSourceHolder);
        }
        this.isPrepared = true;
    }

    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        Object mediaSourceHolderUid = getMediaSourceHolderUid(mediaPeriodId.periodUid);
        MediaSource.MediaPeriodId copyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(getChildPeriodUid(mediaPeriodId.periodUid));
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.checkNotNull(this.mediaSourceByUid.get(mediaSourceHolderUid));
        enableMediaSource(mediaSourceHolder);
        mediaSourceHolder.activeMediaPeriodIds.add(copyWithPeriodUid);
        MaskingMediaPeriod createPeriod = mediaSourceHolder.mediaSource.createPeriod(copyWithPeriodUid, allocator, j);
        this.mediaSourceByMediaPeriod.put(createPeriod, mediaSourceHolder);
        disableUnusedMediaSources();
        return createPeriod;
    }

    public void releasePeriod(MediaPeriod mediaPeriod) {
        MediaSourceHolder mediaSourceHolder = (MediaSourceHolder) Assertions.checkNotNull(this.mediaSourceByMediaPeriod.remove(mediaPeriod));
        mediaSourceHolder.mediaSource.releasePeriod(mediaPeriod);
        mediaSourceHolder.activeMediaPeriodIds.remove(((MaskingMediaPeriod) mediaPeriod).id);
        if (!this.mediaSourceByMediaPeriod.isEmpty()) {
            disableUnusedMediaSources();
        }
        maybeReleaseChildSource(mediaSourceHolder);
    }

    public void release() {
        for (MediaSourceAndListener mediaSourceAndListener : this.childSources.values()) {
            try {
                mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            } catch (RuntimeException e) {
                Log.e(TAG, "Failed to release child source.", e);
            }
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
        this.enabledMediaSourceHolders.clear();
        this.isPrepared = false;
    }

    public Timeline createTimeline() {
        if (this.mediaSourceHolders.isEmpty()) {
            return Timeline.EMPTY;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.mediaSourceHolders.size(); i2++) {
            MediaSourceHolder mediaSourceHolder = this.mediaSourceHolders.get(i2);
            mediaSourceHolder.firstWindowIndexInChild = i;
            i += mediaSourceHolder.mediaSource.getTimeline().getWindowCount();
        }
        return new PlaylistTimeline(this.mediaSourceHolders, this.shuffleOrder);
    }

    private void enableMediaSource(MediaSourceHolder mediaSourceHolder) {
        this.enabledMediaSourceHolders.add(mediaSourceHolder);
        MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.enable(mediaSourceAndListener.caller);
        }
    }

    private void disableUnusedMediaSources() {
        Iterator<MediaSourceHolder> it = this.enabledMediaSourceHolders.iterator();
        while (it.hasNext()) {
            MediaSourceHolder next = it.next();
            if (next.activeMediaPeriodIds.isEmpty()) {
                disableChildSource(next);
                it.remove();
            }
        }
    }

    private void disableChildSource(MediaSourceHolder mediaSourceHolder) {
        MediaSourceAndListener mediaSourceAndListener = this.childSources.get(mediaSourceHolder);
        if (mediaSourceAndListener != null) {
            mediaSourceAndListener.mediaSource.disable(mediaSourceAndListener.caller);
        }
    }

    private void removeMediaSourcesInternal(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            MediaSourceHolder remove = this.mediaSourceHolders.remove(i3);
            this.mediaSourceByUid.remove(remove.uid);
            correctOffsets(i3, -remove.mediaSource.getTimeline().getWindowCount());
            remove.isRemoved = true;
            if (this.isPrepared) {
                maybeReleaseChildSource(remove);
            }
        }
    }

    private void correctOffsets(int i, int i2) {
        while (i < this.mediaSourceHolders.size()) {
            this.mediaSourceHolders.get(i).firstWindowIndexInChild += i2;
            i++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSourceHolder mediaSourceHolder, MediaSource.MediaPeriodId mediaPeriodId) {
        for (int i = 0; i < mediaSourceHolder.activeMediaPeriodIds.size(); i++) {
            if (mediaSourceHolder.activeMediaPeriodIds.get(i).windowSequenceNumber == mediaPeriodId.windowSequenceNumber) {
                return mediaPeriodId.copyWithPeriodUid(getPeriodUid(mediaSourceHolder, mediaPeriodId.periodUid));
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int getWindowIndexForChildWindowIndex(MediaSourceHolder mediaSourceHolder, int i) {
        return i + mediaSourceHolder.firstWindowIndexInChild;
    }

    private void prepareChildSource(MediaSourceHolder mediaSourceHolder) {
        MaskingMediaSource maskingMediaSource = mediaSourceHolder.mediaSource;
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: com.google.android.exoplayer2.MediaSourceList$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
            public final void onSourceInfoRefreshed(MediaSource mediaSource, Timeline timeline) {
                MediaSourceList.this.m5380x21892de0(mediaSource, timeline);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(mediaSourceHolder);
        this.childSources.put(mediaSourceHolder, new MediaSourceAndListener(maskingMediaSource, mediaSourceCaller, forwardingEventListener));
        maskingMediaSource.addEventListener(Util.createHandlerForCurrentOrMainLooper(), forwardingEventListener);
        maskingMediaSource.addDrmEventListener(Util.createHandlerForCurrentOrMainLooper(), forwardingEventListener);
        maskingMediaSource.prepareSource(mediaSourceCaller, this.mediaTransferListener, this.playerId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$prepareChildSource$0$com-google-android-exoplayer2-MediaSourceList, reason: not valid java name */
    public /* synthetic */ void m5380x21892de0(MediaSource mediaSource, Timeline timeline) {
        this.mediaSourceListInfoListener.onPlaylistUpdateRequested();
    }

    private void maybeReleaseChildSource(MediaSourceHolder mediaSourceHolder) {
        if (mediaSourceHolder.isRemoved && mediaSourceHolder.activeMediaPeriodIds.isEmpty()) {
            MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.checkNotNull(this.childSources.remove(mediaSourceHolder));
            mediaSourceAndListener.mediaSource.releaseSource(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.removeEventListener(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.removeDrmEventListener(mediaSourceAndListener.eventListener);
            this.enabledMediaSourceHolders.remove(mediaSourceHolder);
        }
    }

    private static Object getMediaSourceHolderUid(Object obj) {
        return PlaylistTimeline.getChildTimelineUidFromConcatenatedUid(obj);
    }

    private static Object getChildPeriodUid(Object obj) {
        return PlaylistTimeline.getChildPeriodUidFromConcatenatedUid(obj);
    }

    private static Object getPeriodUid(MediaSourceHolder mediaSourceHolder, Object obj) {
        return PlaylistTimeline.getConcatenatedUid(mediaSourceHolder.uid, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class MediaSourceHolder implements MediaSourceInfoHolder {
        public int firstWindowIndexInChild;
        public boolean isRemoved;
        public final MaskingMediaSource mediaSource;
        public final List<MediaSource.MediaPeriodId> activeMediaPeriodIds = new ArrayList();
        public final Object uid = new Object();

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Object getUid() {
            return this.uid;
        }

        public MediaSourceHolder(MediaSource mediaSource, boolean z) {
            this.mediaSource = new MaskingMediaSource(mediaSource, z);
        }

        public void reset(int i) {
            this.firstWindowIndexInChild = i;
            this.isRemoved = false;
            this.activeMediaPeriodIds.clear();
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public Timeline getTimeline() {
            return this.mediaSource.getTimeline();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class MediaSourceAndListener {
        public final MediaSource.MediaSourceCaller caller;
        public final ForwardingEventListener eventListener;
        public final MediaSource mediaSource;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        private final MediaSourceHolder id;

        public ForwardingEventListener(MediaSourceHolder mediaSourceHolder) {
            this.id = mediaSourceHolder;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadStarted(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5391x22bf5aff(eventParameters, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLoadStarted$0$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5391x22bf5aff(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.onLoadStarted(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCompleted(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda11
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5389x4841d28a(eventParameters, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLoadCompleted$1$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5389x4841d28a(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.onLoadCompleted(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadCanceled(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5388x610efbdd(eventParameters, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLoadCanceled$2$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5388x610efbdd(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.onLoadCanceled(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onLoadError(int i, MediaSource.MediaPeriodId mediaPeriodId, final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5390x7637eec9(eventParameters, loadEventInfo, mediaLoadData, iOException, z);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onLoadError$3$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5390x7637eec9(Pair pair, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
            MediaSourceList.this.eventListener.onLoadError(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, loadEventInfo, mediaLoadData, iOException, z);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onUpstreamDiscarded(int i, MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5392x7ddc6f6a(eventParameters, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onUpstreamDiscarded$4$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5392x7ddc6f6a(Pair pair, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.onUpstreamDiscarded(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) Assertions.checkNotNull((MediaSource.MediaPeriodId) pair.second), mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
        public void onDownstreamFormatChanged(int i, MediaSource.MediaPeriodId mediaPeriodId, final MediaLoadData mediaLoadData) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5381x97be53c4(eventParameters, mediaLoadData);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDownstreamFormatChanged$5$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5381x97be53c4(Pair pair, MediaLoadData mediaLoadData) {
            MediaSourceList.this.eventListener.onDownstreamFormatChanged(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, mediaLoadData);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionAcquired(int i, MediaSource.MediaPeriodId mediaPeriodId, final int i2) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5385x73aea9a7(eventParameters, i2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmSessionAcquired$6$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5385x73aea9a7(Pair pair, int i) {
            MediaSourceList.this.eventListener.onDrmSessionAcquired(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, i);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysLoaded(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5382xdfeee123(eventParameters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmKeysLoaded$7$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5382xdfeee123(Pair pair) {
            MediaSourceList.this.eventListener.onDrmKeysLoaded(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionManagerError(int i, MediaSource.MediaPeriodId mediaPeriodId, final Exception exc) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda10
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5386xd702e5b6(eventParameters, exc);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmSessionManagerError$8$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5386xd702e5b6(Pair pair, Exception exc) {
            MediaSourceList.this.eventListener.onDrmSessionManagerError(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second, exc);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRestored(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda2
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5384x483ba476(eventParameters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmKeysRestored$9$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5384x483ba476(Pair pair) {
            MediaSourceList.this.eventListener.onDrmKeysRestored(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmKeysRemoved(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda7
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5383xa0cc7cae(eventParameters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmKeysRemoved$10$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5383xa0cc7cae(Pair pair) {
            MediaSourceList.this.eventListener.onDrmKeysRemoved(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
        public void onDrmSessionReleased(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            final Pair<Integer, MediaSource.MediaPeriodId> eventParameters = getEventParameters(i, mediaPeriodId);
            if (eventParameters != null) {
                MediaSourceList.this.eventHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.MediaSourceList$ForwardingEventListener$$ExternalSyntheticLambda9
                    @Override // java.lang.Runnable
                    public final void run() {
                        MediaSourceList.ForwardingEventListener.this.m5387xcd152828(eventParameters);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$onDrmSessionReleased$11$com-google-android-exoplayer2-MediaSourceList$ForwardingEventListener, reason: not valid java name */
        public /* synthetic */ void m5387xcd152828(Pair pair) {
            MediaSourceList.this.eventListener.onDrmSessionReleased(((Integer) pair.first).intValue(), (MediaSource.MediaPeriodId) pair.second);
        }

        private Pair<Integer, MediaSource.MediaPeriodId> getEventParameters(int i, MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodId2 = null;
            if (mediaPeriodId != null) {
                MediaSource.MediaPeriodId mediaPeriodIdForChildMediaPeriodId = MediaSourceList.getMediaPeriodIdForChildMediaPeriodId(this.id, mediaPeriodId);
                if (mediaPeriodIdForChildMediaPeriodId == null) {
                    return null;
                }
                mediaPeriodId2 = mediaPeriodIdForChildMediaPeriodId;
            }
            return Pair.create(Integer.valueOf(MediaSourceList.getWindowIndexForChildWindowIndex(this.id, i)), mediaPeriodId2);
        }
    }
}
