package androidx.media3.exoplayer.source;

import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.AbstractConcatenatedTimeline;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.ShuffleOrder;
import androidx.media3.exoplayer.upstream.Allocator;
import java.util.HashMap;
import java.util.Map;

@Deprecated
/* loaded from: classes2.dex */
public final class LoopingMediaSource extends WrappingMediaSource {
    private final Map<MediaSource.MediaPeriodId, MediaSource.MediaPeriodId> childMediaPeriodIdToMediaPeriodId;
    private final int loopCount;
    private final Map<MediaPeriod, MediaSource.MediaPeriodId> mediaPeriodToChildMediaPeriodId;

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public boolean isSingleWindow() {
        return false;
    }

    public LoopingMediaSource(MediaSource mediaSource) {
        this(mediaSource, Integer.MAX_VALUE);
    }

    public LoopingMediaSource(MediaSource mediaSource, int i) {
        super(new MaskingMediaSource(mediaSource, false));
        Assertions.checkArgument(i > 0);
        this.loopCount = i;
        this.childMediaPeriodIdToMediaPeriodId = new HashMap();
        this.mediaPeriodToChildMediaPeriodId = new HashMap();
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public Timeline getInitialTimeline() {
        MaskingMediaSource maskingMediaSource = (MaskingMediaSource) this.mediaSource;
        if (this.loopCount != Integer.MAX_VALUE) {
            return new LoopingTimeline(maskingMediaSource.getTimeline(), this.loopCount);
        }
        return new InfinitelyLoopingTimeline(maskingMediaSource.getTimeline());
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        if (this.loopCount == Integer.MAX_VALUE) {
            return this.mediaSource.createPeriod(mediaPeriodId, allocator, j);
        }
        MediaSource.MediaPeriodId copyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(LoopingTimeline.getChildPeriodUidFromConcatenatedUid(mediaPeriodId.periodUid));
        this.childMediaPeriodIdToMediaPeriodId.put(copyWithPeriodUid, mediaPeriodId);
        MediaPeriod createPeriod = this.mediaSource.createPeriod(copyWithPeriodUid, allocator, j);
        this.mediaPeriodToChildMediaPeriodId.put(createPeriod, copyWithPeriodUid);
        return createPeriod;
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource, androidx.media3.exoplayer.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        this.mediaSource.releasePeriod(mediaPeriod);
        MediaSource.MediaPeriodId remove = this.mediaPeriodToChildMediaPeriodId.remove(mediaPeriod);
        if (remove != null) {
            this.childMediaPeriodIdToMediaPeriodId.remove(remove);
        }
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected void onChildSourceInfoRefreshed(Timeline timeline) {
        Timeline infinitelyLoopingTimeline;
        if (this.loopCount != Integer.MAX_VALUE) {
            infinitelyLoopingTimeline = new LoopingTimeline(timeline, this.loopCount);
        } else {
            infinitelyLoopingTimeline = new InfinitelyLoopingTimeline(timeline);
        }
        refreshSourceInfo(infinitelyLoopingTimeline);
    }

    @Override // androidx.media3.exoplayer.source.WrappingMediaSource
    protected MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return this.loopCount != Integer.MAX_VALUE ? this.childMediaPeriodIdToMediaPeriodId.get(mediaPeriodId) : mediaPeriodId;
    }

    /* loaded from: classes2.dex */
    private static final class LoopingTimeline extends AbstractConcatenatedTimeline {
        private final int childPeriodCount;
        private final Timeline childTimeline;
        private final int childWindowCount;
        private final int loopCount;

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int getFirstPeriodIndexByChildIndex(int i) {
            return i * this.childPeriodCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int getFirstWindowIndexByChildIndex(int i) {
            return i * this.childWindowCount;
        }

        @Override // androidx.media3.common.Timeline
        public int getPeriodCount() {
            return this.childPeriodCount * this.loopCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Timeline getTimelineByChildIndex(int i) {
            return this.childTimeline;
        }

        @Override // androidx.media3.common.Timeline
        public int getWindowCount() {
            return this.childWindowCount * this.loopCount;
        }

        public LoopingTimeline(Timeline timeline, int i) {
            super(false, new ShuffleOrder.UnshuffledShuffleOrder(i));
            this.childTimeline = timeline;
            int periodCount = timeline.getPeriodCount();
            this.childPeriodCount = periodCount;
            this.childWindowCount = timeline.getWindowCount();
            this.loopCount = i;
            if (periodCount > 0) {
                Assertions.checkState(i <= Integer.MAX_VALUE / periodCount, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int getChildIndexByPeriodIndex(int i) {
            return i / this.childPeriodCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int getChildIndexByWindowIndex(int i) {
            return i / this.childWindowCount;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected int getChildIndexByChildUid(Object obj) {
            if (obj instanceof Integer) {
                return ((Integer) obj).intValue();
            }
            return -1;
        }

        @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
        protected Object getChildUidByChildIndex(int i) {
            return Integer.valueOf(i);
        }
    }

    /* loaded from: classes2.dex */
    private static final class InfinitelyLoopingTimeline extends ForwardingTimeline {
        public InfinitelyLoopingTimeline(Timeline timeline) {
            super(timeline);
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            int nextWindowIndex = this.timeline.getNextWindowIndex(i, i2, z);
            return nextWindowIndex == -1 ? getFirstWindowIndex(z) : nextWindowIndex;
        }

        @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            int previousWindowIndex = this.timeline.getPreviousWindowIndex(i, i2, z);
            return previousWindowIndex == -1 ? getLastWindowIndex(z) : previousWindowIndex;
        }
    }
}
