package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.ShuffleOrder;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
final class PlaylistTimeline extends AbstractConcatenatedTimeline {
    private final HashMap<Object, Integer> childIndexByUid;
    private final int[] firstPeriodInChildIndices;
    private final int[] firstWindowInChildIndices;
    private final int periodCount;
    private final Timeline[] timelines;
    private final Object[] uids;
    private final int windowCount;

    @Override // com.google.android.exoplayer2.Timeline
    public int getPeriodCount() {
        return this.periodCount;
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getWindowCount() {
        return this.windowCount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaylistTimeline(Collection<? extends MediaSourceInfoHolder> collection, ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int i = 0;
        int size = collection.size();
        this.firstPeriodInChildIndices = new int[size];
        this.firstWindowInChildIndices = new int[size];
        this.timelines = new Timeline[size];
        this.uids = new Object[size];
        this.childIndexByUid = new HashMap<>();
        int i2 = 0;
        int i3 = 0;
        for (MediaSourceInfoHolder mediaSourceInfoHolder : collection) {
            this.timelines[i3] = mediaSourceInfoHolder.getTimeline();
            this.firstWindowInChildIndices[i3] = i;
            this.firstPeriodInChildIndices[i3] = i2;
            i += this.timelines[i3].getWindowCount();
            i2 += this.timelines[i3].getPeriodCount();
            this.uids[i3] = mediaSourceInfoHolder.getUid();
            this.childIndexByUid.put(this.uids[i3], Integer.valueOf(i3));
            i3++;
        }
        this.windowCount = i;
        this.periodCount = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Timeline> getChildTimelines() {
        return Arrays.asList(this.timelines);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByPeriodIndex(int i) {
        return Util.binarySearchFloor(this.firstPeriodInChildIndices, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByWindowIndex(int i) {
        return Util.binarySearchFloor(this.firstWindowInChildIndices, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getChildIndexByChildUid(Object obj) {
        Integer num = this.childIndexByUid.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected Timeline getTimelineByChildIndex(int i) {
        return this.timelines[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getFirstPeriodIndexByChildIndex(int i) {
        return this.firstPeriodInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected int getFirstWindowIndexByChildIndex(int i) {
        return this.firstWindowInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    protected Object getChildUidByChildIndex(int i) {
        return this.uids[i];
    }
}
