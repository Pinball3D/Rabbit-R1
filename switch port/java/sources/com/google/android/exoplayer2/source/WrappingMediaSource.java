package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.TransferListener;

/* loaded from: classes2.dex */
public abstract class WrappingMediaSource extends CompositeMediaSource<Void> {
    private static final Void CHILD_SOURCE_ID = null;
    protected final MediaSource mediaSource;

    protected MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    protected long getMediaTimeForChildMediaTime(long j) {
        return j;
    }

    protected int getWindowIndexForChildWindowIndex(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WrappingMediaSource(MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public final void prepareSourceInternal(TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareSourceInternal();
    }

    protected void prepareSourceInternal() {
        prepareChildSource();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public Timeline getInitialTimeline() {
        return this.mediaSource.getInitialTimeline();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return this.mediaSource.isSingleWindow();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public MediaPeriod createPeriod(MediaSource.MediaPeriodId mediaPeriodId, Allocator allocator, long j) {
        return this.mediaSource.createPeriod(mediaPeriodId, allocator, j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(MediaPeriod mediaPeriod) {
        this.mediaSource.releasePeriod(mediaPeriod);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public final void m5439x365769cd(Void r1, MediaSource mediaSource, Timeline timeline) {
        onChildSourceInfoRefreshed(timeline);
    }

    protected void onChildSourceInfoRefreshed(Timeline timeline) {
        refreshSourceInfo(timeline);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final int getWindowIndexForChildWindowIndex(Void r1, int i) {
        return getWindowIndexForChildWindowIndex(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(Void r1, MediaSource.MediaPeriodId mediaPeriodId) {
        return getMediaPeriodIdForChildMediaPeriodId(mediaPeriodId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public final long getMediaTimeForChildMediaTime(Void r1, long j) {
        return getMediaTimeForChildMediaTime(j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void prepareChildSource() {
        prepareChildSource(CHILD_SOURCE_ID, this.mediaSource);
    }

    protected final void enableChildSource() {
        enableChildSource(CHILD_SOURCE_ID);
    }

    protected final void disableChildSource() {
        disableChildSource(CHILD_SOURCE_ID);
    }

    protected final void releaseChildSource() {
        releaseChildSource(CHILD_SOURCE_ID);
    }
}
