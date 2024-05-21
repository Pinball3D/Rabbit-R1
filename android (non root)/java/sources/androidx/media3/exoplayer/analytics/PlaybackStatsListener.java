package androidx.media3.exoplayer.analytics;

import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.Timeline;
import androidx.media3.common.Tracks;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.exoplayer.analytics.PlaybackSessionManager;
import androidx.media3.exoplayer.analytics.PlaybackStats;
import androidx.media3.exoplayer.source.LoadEventInfo;
import androidx.media3.exoplayer.source.MediaLoadData;
import androidx.media3.exoplayer.source.MediaSource;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class PlaybackStatsListener implements AnalyticsListener, PlaybackSessionManager.Listener {
    private Format audioFormat;
    private long bandwidthBytes;
    private long bandwidthTimeMs;
    private final Callback callback;
    private long discontinuityFromPositionMs;
    private String discontinuityFromSession;
    private int discontinuityReason;
    private int droppedFrames;
    private PlaybackStats finishedPlaybackStats;
    private final boolean keepHistory;
    private Exception nonFatalException;
    private final Timeline.Period period;
    private final Map<String, PlaybackStatsTracker> playbackStatsTrackers;
    private final PlaybackSessionManager sessionManager;
    private final Map<String, AnalyticsListener.EventTime> sessionStartEventTimes;
    private Format videoFormat;
    private VideoSize videoSize;

    /* loaded from: classes2.dex */
    public interface Callback {
        void onPlaybackStatsReady(AnalyticsListener.EventTime eventTime, PlaybackStats playbackStats);
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onBandwidthEstimate(AnalyticsListener.EventTime eventTime, int i, long j, long j2) {
        this.bandwidthTimeMs = i;
        this.bandwidthBytes = j;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onDrmSessionManagerError(AnalyticsListener.EventTime eventTime, Exception exc) {
        this.nonFatalException = exc;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onDroppedVideoFrames(AnalyticsListener.EventTime eventTime, int i, long j) {
        this.droppedFrames = i;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onLoadError(AnalyticsListener.EventTime eventTime, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z) {
        this.nonFatalException = iOException;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onVideoSizeChanged(AnalyticsListener.EventTime eventTime, VideoSize videoSize) {
        this.videoSize = videoSize;
    }

    public PlaybackStatsListener(boolean z, Callback callback) {
        this.callback = callback;
        this.keepHistory = z;
        DefaultPlaybackSessionManager defaultPlaybackSessionManager = new DefaultPlaybackSessionManager();
        this.sessionManager = defaultPlaybackSessionManager;
        this.playbackStatsTrackers = new HashMap();
        this.sessionStartEventTimes = new HashMap();
        this.finishedPlaybackStats = PlaybackStats.EMPTY;
        this.period = new Timeline.Period();
        this.videoSize = VideoSize.UNKNOWN;
        defaultPlaybackSessionManager.setListener(this);
    }

    public PlaybackStats getCombinedPlaybackStats() {
        int i = 1;
        PlaybackStats[] playbackStatsArr = new PlaybackStats[this.playbackStatsTrackers.size() + 1];
        playbackStatsArr[0] = this.finishedPlaybackStats;
        Iterator<PlaybackStatsTracker> it = this.playbackStatsTrackers.values().iterator();
        while (it.hasNext()) {
            playbackStatsArr[i] = it.next().build(false);
            i++;
        }
        return PlaybackStats.merge(playbackStatsArr);
    }

    public PlaybackStats getPlaybackStats() {
        String activeSessionId = this.sessionManager.getActiveSessionId();
        PlaybackStatsTracker playbackStatsTracker = activeSessionId == null ? null : this.playbackStatsTrackers.get(activeSessionId);
        if (playbackStatsTracker == null) {
            return null;
        }
        return playbackStatsTracker.build(false);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void onSessionCreated(AnalyticsListener.EventTime eventTime, String str) {
        this.playbackStatsTrackers.put(str, new PlaybackStatsTracker(this.keepHistory, eventTime));
        this.sessionStartEventTimes.put(str, eventTime);
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void onSessionActive(AnalyticsListener.EventTime eventTime, String str) {
        ((PlaybackStatsTracker) Assertions.checkNotNull(this.playbackStatsTrackers.get(str))).onForeground();
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void onAdPlaybackStarted(AnalyticsListener.EventTime eventTime, String str, String str2) {
        ((PlaybackStatsTracker) Assertions.checkNotNull(this.playbackStatsTrackers.get(str))).onInterruptedByAd();
    }

    @Override // androidx.media3.exoplayer.analytics.PlaybackSessionManager.Listener
    public void onSessionFinished(AnalyticsListener.EventTime eventTime, String str, boolean z) {
        PlaybackStatsTracker playbackStatsTracker = (PlaybackStatsTracker) Assertions.checkNotNull(this.playbackStatsTrackers.remove(str));
        AnalyticsListener.EventTime eventTime2 = (AnalyticsListener.EventTime) Assertions.checkNotNull(this.sessionStartEventTimes.remove(str));
        playbackStatsTracker.onFinished(eventTime, z, str.equals(this.discontinuityFromSession) ? this.discontinuityFromPositionMs : -9223372036854775807L);
        PlaybackStats build = playbackStatsTracker.build(true);
        this.finishedPlaybackStats = PlaybackStats.merge(this.finishedPlaybackStats, build);
        Callback callback = this.callback;
        if (callback != null) {
            callback.onPlaybackStatsReady(eventTime2, build);
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onPositionDiscontinuity(AnalyticsListener.EventTime eventTime, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i) {
        if (this.discontinuityFromSession == null) {
            this.discontinuityFromSession = this.sessionManager.getActiveSessionId();
            this.discontinuityFromPositionMs = positionInfo.positionMs;
        }
        this.discontinuityReason = i;
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onDownstreamFormatChanged(AnalyticsListener.EventTime eventTime, MediaLoadData mediaLoadData) {
        if (mediaLoadData.trackType == 2 || mediaLoadData.trackType == 0) {
            this.videoFormat = mediaLoadData.trackFormat;
        } else if (mediaLoadData.trackType == 1) {
            this.audioFormat = mediaLoadData.trackFormat;
        }
    }

    @Override // androidx.media3.exoplayer.analytics.AnalyticsListener
    public void onEvents(Player player, AnalyticsListener.Events events) {
        if (events.size() == 0) {
            return;
        }
        maybeAddSessions(events);
        for (String str : this.playbackStatsTrackers.keySet()) {
            Pair<AnalyticsListener.EventTime, Boolean> findBestEventTime = findBestEventTime(events, str);
            PlaybackStatsTracker playbackStatsTracker = this.playbackStatsTrackers.get(str);
            boolean hasEvent = hasEvent(events, str, 11);
            boolean hasEvent2 = hasEvent(events, str, 1018);
            boolean hasEvent3 = hasEvent(events, str, 1011);
            boolean hasEvent4 = hasEvent(events, str, 1000);
            boolean hasEvent5 = hasEvent(events, str, 10);
            boolean z = hasEvent(events, str, 1003) || hasEvent(events, str, 1024);
            boolean hasEvent6 = hasEvent(events, str, 1006);
            boolean hasEvent7 = hasEvent(events, str, 1004);
            playbackStatsTracker.onEvents(player, (AnalyticsListener.EventTime) findBestEventTime.first, ((Boolean) findBestEventTime.second).booleanValue(), str.equals(this.discontinuityFromSession) ? this.discontinuityFromPositionMs : -9223372036854775807L, hasEvent, hasEvent2 ? this.droppedFrames : 0, hasEvent3, hasEvent4, hasEvent5 ? player.getPlayerError() : null, z ? this.nonFatalException : null, hasEvent6 ? this.bandwidthTimeMs : 0L, hasEvent6 ? this.bandwidthBytes : 0L, hasEvent7 ? this.videoFormat : null, hasEvent7 ? this.audioFormat : null, hasEvent(events, str, 25) ? this.videoSize : null);
        }
        this.videoFormat = null;
        this.audioFormat = null;
        this.discontinuityFromSession = null;
        if (events.contains(1028)) {
            this.sessionManager.finishAllSessions(events.getEventTime(1028));
        }
    }

    private void maybeAddSessions(AnalyticsListener.Events events) {
        for (int i = 0; i < events.size(); i++) {
            int i2 = events.get(i);
            AnalyticsListener.EventTime eventTime = events.getEventTime(i2);
            if (i2 == 0) {
                this.sessionManager.updateSessionsWithTimelineChange(eventTime);
            } else if (i2 == 11) {
                this.sessionManager.updateSessionsWithDiscontinuity(eventTime, this.discontinuityReason);
            } else {
                this.sessionManager.updateSessions(eventTime);
            }
        }
    }

    private Pair<AnalyticsListener.EventTime, Boolean> findBestEventTime(AnalyticsListener.Events events, String str) {
        AnalyticsListener.EventTime eventTime = null;
        boolean z = false;
        for (int i = 0; i < events.size(); i++) {
            AnalyticsListener.EventTime eventTime2 = events.getEventTime(events.get(i));
            boolean belongsToSession = this.sessionManager.belongsToSession(eventTime2, str);
            if (eventTime == null || ((belongsToSession && !z) || (belongsToSession == z && eventTime2.realtimeMs > eventTime.realtimeMs))) {
                eventTime = eventTime2;
                z = belongsToSession;
            }
        }
        Assertions.checkNotNull(eventTime);
        if (!z && eventTime.mediaPeriodId != null && eventTime.mediaPeriodId.isAd()) {
            long adGroupTimeUs = eventTime.timeline.getPeriodByUid(eventTime.mediaPeriodId.periodUid, this.period).getAdGroupTimeUs(eventTime.mediaPeriodId.adGroupIndex);
            if (adGroupTimeUs == Long.MIN_VALUE) {
                adGroupTimeUs = this.period.durationUs;
            }
            AnalyticsListener.EventTime eventTime3 = new AnalyticsListener.EventTime(eventTime.realtimeMs, eventTime.timeline, eventTime.windowIndex, new MediaSource.MediaPeriodId(eventTime.mediaPeriodId.periodUid, eventTime.mediaPeriodId.windowSequenceNumber, eventTime.mediaPeriodId.adGroupIndex), Util.usToMs(adGroupTimeUs + this.period.getPositionInWindowUs()), eventTime.timeline, eventTime.currentWindowIndex, eventTime.currentMediaPeriodId, eventTime.currentPlaybackPositionMs, eventTime.totalBufferedDurationMs);
            z = this.sessionManager.belongsToSession(eventTime3, str);
            eventTime = eventTime3;
        }
        return Pair.create(eventTime, Boolean.valueOf(z));
    }

    private boolean hasEvent(AnalyticsListener.Events events, String str, int i) {
        return events.contains(i) && this.sessionManager.belongsToSession(events.getEventTime(i), str);
    }

    /* loaded from: classes2.dex */
    private static final class PlaybackStatsTracker {
        private long audioFormatBitrateTimeProduct;
        private final List<PlaybackStats.EventTimeAndFormat> audioFormatHistory;
        private long audioFormatTimeMs;
        private long audioUnderruns;
        private long bandwidthBytes;
        private long bandwidthTimeMs;
        private Format currentAudioFormat;
        private float currentPlaybackSpeed;
        private int currentPlaybackState;
        private long currentPlaybackStateStartTimeMs;
        private Format currentVideoFormat;
        private long droppedFrames;
        private int fatalErrorCount;
        private final List<PlaybackStats.EventTimeAndException> fatalErrorHistory;
        private long firstReportedTimeMs;
        private boolean hasBeenReady;
        private boolean hasEnded;
        private boolean hasFatalError;
        private long initialAudioFormatBitrate;
        private long initialVideoFormatBitrate;
        private int initialVideoFormatHeight;
        private final boolean isAd;
        private boolean isForeground;
        private boolean isInterruptedByAd;
        private boolean isJoinTimeInvalid;
        private boolean isSeeking;
        private final boolean keepHistory;
        private long lastAudioFormatStartTimeMs;
        private long lastRebufferStartTimeMs;
        private long lastVideoFormatStartTimeMs;
        private long maxRebufferTimeMs;
        private final List<long[]> mediaTimeHistory;
        private int nonFatalErrorCount;
        private final List<PlaybackStats.EventTimeAndException> nonFatalErrorHistory;
        private int pauseBufferCount;
        private int pauseCount;
        private final long[] playbackStateDurationsMs = new long[16];
        private final List<PlaybackStats.EventTimeAndPlaybackState> playbackStateHistory;
        private int rebufferCount;
        private int seekCount;
        private boolean startedLoading;
        private long videoFormatBitrateTimeMs;
        private long videoFormatBitrateTimeProduct;
        private long videoFormatHeightTimeMs;
        private long videoFormatHeightTimeProduct;
        private final List<PlaybackStats.EventTimeAndFormat> videoFormatHistory;

        private static boolean isInvalidJoinTransition(int i, int i2) {
            return ((i != 1 && i != 2 && i != 14) || i2 == 1 || i2 == 2 || i2 == 14 || i2 == 3 || i2 == 4 || i2 == 9 || i2 == 11) ? false : true;
        }

        private static boolean isPausedState(int i) {
            return i == 4 || i == 7;
        }

        private static boolean isReadyState(int i) {
            return i == 3 || i == 4 || i == 9;
        }

        private static boolean isRebufferingState(int i) {
            return i == 6 || i == 7 || i == 10;
        }

        public void onForeground() {
            this.isForeground = true;
        }

        public void onInterruptedByAd() {
            this.isInterruptedByAd = true;
            this.isSeeking = false;
        }

        public PlaybackStatsTracker(boolean z, AnalyticsListener.EventTime eventTime) {
            this.keepHistory = z;
            this.playbackStateHistory = z ? new ArrayList<>() : Collections.emptyList();
            this.mediaTimeHistory = z ? new ArrayList<>() : Collections.emptyList();
            this.videoFormatHistory = z ? new ArrayList<>() : Collections.emptyList();
            this.audioFormatHistory = z ? new ArrayList<>() : Collections.emptyList();
            this.fatalErrorHistory = z ? new ArrayList<>() : Collections.emptyList();
            this.nonFatalErrorHistory = z ? new ArrayList<>() : Collections.emptyList();
            boolean z2 = false;
            this.currentPlaybackState = 0;
            this.currentPlaybackStateStartTimeMs = eventTime.realtimeMs;
            this.firstReportedTimeMs = -9223372036854775807L;
            this.maxRebufferTimeMs = -9223372036854775807L;
            if (eventTime.mediaPeriodId != null && eventTime.mediaPeriodId.isAd()) {
                z2 = true;
            }
            this.isAd = z2;
            this.initialAudioFormatBitrate = -1L;
            this.initialVideoFormatBitrate = -1L;
            this.initialVideoFormatHeight = -1;
            this.currentPlaybackSpeed = 1.0f;
        }

        public void onFinished(AnalyticsListener.EventTime eventTime, boolean z, long j) {
            int i = 11;
            if (this.currentPlaybackState != 11 && !z) {
                i = 15;
            }
            maybeUpdateMediaTimeHistory(eventTime.realtimeMs, j);
            maybeRecordVideoFormatTime(eventTime.realtimeMs);
            maybeRecordAudioFormatTime(eventTime.realtimeMs);
            updatePlaybackState(i, eventTime);
        }

        public void onEvents(Player player, AnalyticsListener.EventTime eventTime, boolean z, long j, boolean z2, int i, boolean z3, boolean z4, PlaybackException playbackException, Exception exc, long j2, long j3, Format format, Format format2, VideoSize videoSize) {
            if (j != -9223372036854775807L) {
                maybeUpdateMediaTimeHistory(eventTime.realtimeMs, j);
                this.isSeeking = true;
            }
            if (player.getPlaybackState() != 2) {
                this.isSeeking = false;
            }
            int playbackState = player.getPlaybackState();
            if (playbackState == 1 || playbackState == 4 || z2) {
                this.isInterruptedByAd = false;
            }
            if (playbackException != null) {
                this.hasFatalError = true;
                this.fatalErrorCount++;
                if (this.keepHistory) {
                    this.fatalErrorHistory.add(new PlaybackStats.EventTimeAndException(eventTime, playbackException));
                }
            } else if (player.getPlayerError() == null) {
                this.hasFatalError = false;
            }
            if (this.isForeground && !this.isInterruptedByAd) {
                Tracks currentTracks = player.getCurrentTracks();
                if (!currentTracks.isTypeSelected(2)) {
                    maybeUpdateVideoFormat(eventTime, null);
                }
                if (!currentTracks.isTypeSelected(1)) {
                    maybeUpdateAudioFormat(eventTime, null);
                }
            }
            if (format != null) {
                maybeUpdateVideoFormat(eventTime, format);
            }
            if (format2 != null) {
                maybeUpdateAudioFormat(eventTime, format2);
            }
            Format format3 = this.currentVideoFormat;
            if (format3 != null && format3.height == -1 && videoSize != null) {
                maybeUpdateVideoFormat(eventTime, this.currentVideoFormat.buildUpon().setWidth(videoSize.width).setHeight(videoSize.height).build());
            }
            if (z4) {
                this.startedLoading = true;
            }
            if (z3) {
                this.audioUnderruns++;
            }
            this.droppedFrames += i;
            this.bandwidthTimeMs += j2;
            this.bandwidthBytes += j3;
            if (exc != null) {
                this.nonFatalErrorCount++;
                if (this.keepHistory) {
                    this.nonFatalErrorHistory.add(new PlaybackStats.EventTimeAndException(eventTime, exc));
                }
            }
            int resolveNewPlaybackState = resolveNewPlaybackState(player);
            float f = player.getPlaybackParameters().speed;
            if (this.currentPlaybackState != resolveNewPlaybackState || this.currentPlaybackSpeed != f) {
                maybeUpdateMediaTimeHistory(eventTime.realtimeMs, z ? eventTime.eventPlaybackPositionMs : -9223372036854775807L);
                maybeRecordVideoFormatTime(eventTime.realtimeMs);
                maybeRecordAudioFormatTime(eventTime.realtimeMs);
            }
            this.currentPlaybackSpeed = f;
            if (this.currentPlaybackState != resolveNewPlaybackState) {
                updatePlaybackState(resolveNewPlaybackState, eventTime);
            }
        }

        public PlaybackStats build(boolean z) {
            long[] jArr;
            List<long[]> list;
            long[] jArr2 = this.playbackStateDurationsMs;
            List<long[]> list2 = this.mediaTimeHistory;
            if (z) {
                jArr = jArr2;
                list = list2;
            } else {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long[] copyOf = Arrays.copyOf(this.playbackStateDurationsMs, 16);
                long max = Math.max(0L, elapsedRealtime - this.currentPlaybackStateStartTimeMs);
                int i = this.currentPlaybackState;
                copyOf[i] = copyOf[i] + max;
                maybeUpdateMaxRebufferTimeMs(elapsedRealtime);
                maybeRecordVideoFormatTime(elapsedRealtime);
                maybeRecordAudioFormatTime(elapsedRealtime);
                ArrayList arrayList = new ArrayList(this.mediaTimeHistory);
                if (this.keepHistory && this.currentPlaybackState == 3) {
                    arrayList.add(guessMediaTimeBasedOnElapsedRealtime(elapsedRealtime));
                }
                jArr = copyOf;
                list = arrayList;
            }
            int i2 = (this.isJoinTimeInvalid || !this.hasBeenReady) ? 1 : 0;
            long j = i2 != 0 ? -9223372036854775807L : jArr[2];
            int i3 = jArr[1] > 0 ? 1 : 0;
            List arrayList2 = z ? this.videoFormatHistory : new ArrayList(this.videoFormatHistory);
            List arrayList3 = z ? this.audioFormatHistory : new ArrayList(this.audioFormatHistory);
            List arrayList4 = z ? this.playbackStateHistory : new ArrayList(this.playbackStateHistory);
            long j2 = this.firstReportedTimeMs;
            boolean z2 = this.isForeground;
            int i4 = !this.hasBeenReady ? 1 : 0;
            boolean z3 = this.hasEnded;
            int i5 = i2 ^ 1;
            int i6 = this.pauseCount;
            int i7 = this.pauseBufferCount;
            int i8 = this.seekCount;
            int i9 = this.rebufferCount;
            long j3 = this.maxRebufferTimeMs;
            boolean z4 = this.isAd;
            long[] jArr3 = jArr;
            long j4 = this.videoFormatHeightTimeMs;
            long j5 = this.videoFormatHeightTimeProduct;
            long j6 = this.videoFormatBitrateTimeMs;
            long j7 = this.videoFormatBitrateTimeProduct;
            long j8 = this.audioFormatTimeMs;
            long j9 = this.audioFormatBitrateTimeProduct;
            int i10 = this.initialVideoFormatHeight;
            int i11 = i10 == -1 ? 0 : 1;
            long j10 = this.initialVideoFormatBitrate;
            int i12 = j10 == -1 ? 0 : 1;
            long j11 = this.initialAudioFormatBitrate;
            int i13 = j11 == -1 ? 0 : 1;
            long j12 = this.bandwidthTimeMs;
            long j13 = this.bandwidthBytes;
            long j14 = this.droppedFrames;
            long j15 = this.audioUnderruns;
            int i14 = this.fatalErrorCount;
            return new PlaybackStats(1, jArr3, arrayList4, list, j2, z2 ? 1 : 0, i4, z3 ? 1 : 0, i3, j, i5, i6, i7, i8, i9, j3, z4 ? 1 : 0, arrayList2, arrayList3, j4, j5, j6, j7, j8, j9, i11, i12, i10, j10, i13, j11, j12, j13, j14, j15, i14 > 0 ? 1 : 0, i14, this.nonFatalErrorCount, this.fatalErrorHistory, this.nonFatalErrorHistory);
        }

        private void updatePlaybackState(int i, AnalyticsListener.EventTime eventTime) {
            Assertions.checkArgument(eventTime.realtimeMs >= this.currentPlaybackStateStartTimeMs);
            long j = eventTime.realtimeMs - this.currentPlaybackStateStartTimeMs;
            long[] jArr = this.playbackStateDurationsMs;
            int i2 = this.currentPlaybackState;
            jArr[i2] = jArr[i2] + j;
            if (this.firstReportedTimeMs == -9223372036854775807L) {
                this.firstReportedTimeMs = eventTime.realtimeMs;
            }
            this.isJoinTimeInvalid |= isInvalidJoinTransition(this.currentPlaybackState, i);
            this.hasBeenReady |= isReadyState(i);
            this.hasEnded |= i == 11;
            if (!isPausedState(this.currentPlaybackState) && isPausedState(i)) {
                this.pauseCount++;
            }
            if (i == 5) {
                this.seekCount++;
            }
            if (!isRebufferingState(this.currentPlaybackState) && isRebufferingState(i)) {
                this.rebufferCount++;
                this.lastRebufferStartTimeMs = eventTime.realtimeMs;
            }
            if (isRebufferingState(this.currentPlaybackState) && this.currentPlaybackState != 7 && i == 7) {
                this.pauseBufferCount++;
            }
            maybeUpdateMaxRebufferTimeMs(eventTime.realtimeMs);
            this.currentPlaybackState = i;
            this.currentPlaybackStateStartTimeMs = eventTime.realtimeMs;
            if (this.keepHistory) {
                this.playbackStateHistory.add(new PlaybackStats.EventTimeAndPlaybackState(eventTime, this.currentPlaybackState));
            }
        }

        private int resolveNewPlaybackState(Player player) {
            int playbackState = player.getPlaybackState();
            if (this.isSeeking && this.isForeground) {
                return 5;
            }
            if (this.hasFatalError) {
                return 13;
            }
            if (!this.isForeground) {
                return this.startedLoading ? 1 : 0;
            }
            if (this.isInterruptedByAd) {
                return 14;
            }
            if (playbackState == 4) {
                return 11;
            }
            if (playbackState != 2) {
                if (playbackState == 3) {
                    if (player.getPlayWhenReady()) {
                        return player.getPlaybackSuppressionReason() != 0 ? 9 : 3;
                    }
                    return 4;
                }
                if (playbackState != 1 || this.currentPlaybackState == 0) {
                    return this.currentPlaybackState;
                }
                return 12;
            }
            int i = this.currentPlaybackState;
            if (i == 0 || i == 1 || i == 2 || i == 14) {
                return 2;
            }
            if (player.getPlayWhenReady()) {
                return player.getPlaybackSuppressionReason() != 0 ? 10 : 6;
            }
            return 7;
        }

        private void maybeUpdateMaxRebufferTimeMs(long j) {
            if (isRebufferingState(this.currentPlaybackState)) {
                long j2 = j - this.lastRebufferStartTimeMs;
                long j3 = this.maxRebufferTimeMs;
                if (j3 == -9223372036854775807L || j2 > j3) {
                    this.maxRebufferTimeMs = j2;
                }
            }
        }

        private void maybeUpdateMediaTimeHistory(long j, long j2) {
            if (this.keepHistory) {
                if (this.currentPlaybackState != 3) {
                    if (j2 == -9223372036854775807L) {
                        return;
                    }
                    if (!this.mediaTimeHistory.isEmpty()) {
                        List<long[]> list = this.mediaTimeHistory;
                        long j3 = list.get(list.size() - 1)[1];
                        if (j3 != j2) {
                            this.mediaTimeHistory.add(new long[]{j, j3});
                        }
                    }
                }
                if (j2 != -9223372036854775807L) {
                    this.mediaTimeHistory.add(new long[]{j, j2});
                } else {
                    if (this.mediaTimeHistory.isEmpty()) {
                        return;
                    }
                    this.mediaTimeHistory.add(guessMediaTimeBasedOnElapsedRealtime(j));
                }
            }
        }

        private long[] guessMediaTimeBasedOnElapsedRealtime(long j) {
            List<long[]> list = this.mediaTimeHistory;
            return new long[]{j, list.get(list.size() - 1)[1] + (((float) (j - r0[0])) * this.currentPlaybackSpeed)};
        }

        private void maybeUpdateVideoFormat(AnalyticsListener.EventTime eventTime, Format format) {
            if (Util.areEqual(this.currentVideoFormat, format)) {
                return;
            }
            maybeRecordVideoFormatTime(eventTime.realtimeMs);
            if (format != null) {
                if (this.initialVideoFormatHeight == -1 && format.height != -1) {
                    this.initialVideoFormatHeight = format.height;
                }
                if (this.initialVideoFormatBitrate == -1 && format.bitrate != -1) {
                    this.initialVideoFormatBitrate = format.bitrate;
                }
            }
            this.currentVideoFormat = format;
            if (this.keepHistory) {
                this.videoFormatHistory.add(new PlaybackStats.EventTimeAndFormat(eventTime, this.currentVideoFormat));
            }
        }

        private void maybeUpdateAudioFormat(AnalyticsListener.EventTime eventTime, Format format) {
            if (Util.areEqual(this.currentAudioFormat, format)) {
                return;
            }
            maybeRecordAudioFormatTime(eventTime.realtimeMs);
            if (format != null && this.initialAudioFormatBitrate == -1 && format.bitrate != -1) {
                this.initialAudioFormatBitrate = format.bitrate;
            }
            this.currentAudioFormat = format;
            if (this.keepHistory) {
                this.audioFormatHistory.add(new PlaybackStats.EventTimeAndFormat(eventTime, this.currentAudioFormat));
            }
        }

        private void maybeRecordVideoFormatTime(long j) {
            Format format;
            if (this.currentPlaybackState == 3 && (format = this.currentVideoFormat) != null) {
                long j2 = ((float) (j - this.lastVideoFormatStartTimeMs)) * this.currentPlaybackSpeed;
                if (format.height != -1) {
                    this.videoFormatHeightTimeMs += j2;
                    this.videoFormatHeightTimeProduct += this.currentVideoFormat.height * j2;
                }
                if (this.currentVideoFormat.bitrate != -1) {
                    this.videoFormatBitrateTimeMs += j2;
                    this.videoFormatBitrateTimeProduct += j2 * this.currentVideoFormat.bitrate;
                }
            }
            this.lastVideoFormatStartTimeMs = j;
        }

        private void maybeRecordAudioFormatTime(long j) {
            Format format;
            if (this.currentPlaybackState == 3 && (format = this.currentAudioFormat) != null && format.bitrate != -1) {
                long j2 = ((float) (j - this.lastAudioFormatStartTimeMs)) * this.currentPlaybackSpeed;
                this.audioFormatTimeMs += j2;
                this.audioFormatBitrateTimeProduct += j2 * this.currentAudioFormat.bitrate;
            }
            this.lastAudioFormatStartTimeMs = j;
        }
    }
}
