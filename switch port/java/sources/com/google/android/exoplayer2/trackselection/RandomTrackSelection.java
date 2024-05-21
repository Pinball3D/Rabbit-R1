package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.source.chunk.MediaChunkIterator;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.trackselection.RandomTrackSelection;
import com.google.android.exoplayer2.trackselection.TrackSelectionUtil;
import com.google.android.exoplayer2.upstream.BandwidthMeter;
import java.util.List;
import java.util.Random;

/* loaded from: classes2.dex */
public final class RandomTrackSelection extends BaseTrackSelection {
    private final Random random;
    private int selectedIndex;

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public Object getSelectionData() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return 3;
    }

    /* loaded from: classes2.dex */
    public static final class Factory implements ExoTrackSelection.Factory {
        private final Random random;

        public Factory() {
            this.random = new Random();
        }

        public Factory(int i) {
            this.random = new Random(i);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
        public ExoTrackSelection[] createTrackSelections(ExoTrackSelection.Definition[] definitionArr, BandwidthMeter bandwidthMeter, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) {
            return TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new TrackSelectionUtil.AdaptiveTrackSelectionFactory() { // from class: com.google.android.exoplayer2.trackselection.RandomTrackSelection$Factory$$ExternalSyntheticLambda0
                @Override // com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public final ExoTrackSelection createAdaptiveTrackSelection(ExoTrackSelection.Definition definition) {
                    return RandomTrackSelection.Factory.this.m5463x1ff1e6e5(definition);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: lambda$createTrackSelections$0$com-google-android-exoplayer2-trackselection-RandomTrackSelection$Factory, reason: not valid java name */
        public /* synthetic */ ExoTrackSelection m5463x1ff1e6e5(ExoTrackSelection.Definition definition) {
            return new RandomTrackSelection(definition.group, definition.tracks, definition.type, this.random);
        }
    }

    public RandomTrackSelection(TrackGroup trackGroup, int[] iArr, int i, Random random) {
        super(trackGroup, iArr, i);
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, List<? extends MediaChunk> list, MediaChunkIterator[] mediaChunkIteratorArr) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (!isBlacklisted(i2, elapsedRealtime)) {
                i++;
            }
        }
        this.selectedIndex = this.random.nextInt(i);
        if (i != this.length) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.length; i4++) {
                if (!isBlacklisted(i4, elapsedRealtime)) {
                    int i5 = i3 + 1;
                    if (this.selectedIndex == i3) {
                        this.selectedIndex = i4;
                        return;
                    }
                    i3 = i5;
                }
            }
        }
    }
}
