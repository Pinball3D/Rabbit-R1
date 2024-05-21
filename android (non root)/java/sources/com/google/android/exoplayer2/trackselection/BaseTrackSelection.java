package com.google.android.exoplayer2.trackselection;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.TrackGroup;
import com.google.android.exoplayer2.source.chunk.MediaChunk;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class BaseTrackSelection implements ExoTrackSelection {
    private final long[] excludeUntilTimes;
    private final Format[] formats;
    protected final TrackGroup group;
    private int hashCode;
    protected final int length;
    protected final int[] tracks;
    private final int type;

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void disable() {
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void enable() {
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final TrackGroup getTrackGroup() {
        return this.group;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int getType() {
        return this.type;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void onPlaybackSpeed(float f) {
    }

    public BaseTrackSelection(TrackGroup trackGroup, int... iArr) {
        this(trackGroup, iArr, 0);
    }

    public BaseTrackSelection(TrackGroup trackGroup, int[] iArr, int i) {
        int i2 = 0;
        Assertions.checkState(iArr.length > 0);
        this.type = i;
        this.group = (TrackGroup) Assertions.checkNotNull(trackGroup);
        int length = iArr.length;
        this.length = length;
        this.formats = new Format[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            this.formats[i3] = trackGroup.getFormat(iArr[i3]);
        }
        Arrays.sort(this.formats, new Comparator() { // from class: com.google.android.exoplayer2.trackselection.BaseTrackSelection$$ExternalSyntheticLambda0
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return BaseTrackSelection.lambda$new$0((Format) obj, (Format) obj2);
            }
        });
        this.tracks = new int[this.length];
        while (true) {
            int i4 = this.length;
            if (i2 < i4) {
                this.tracks[i2] = trackGroup.indexOf(this.formats[i2]);
                i2++;
            } else {
                this.excludeUntilTimes = new long[i4];
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int lambda$new$0(Format format, Format format2) {
        return format2.bitrate - format.bitrate;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int length() {
        return this.tracks.length;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final Format getFormat(int i) {
        return this.formats[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int getIndexInTrackGroup(int i) {
        return this.tracks[i];
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int indexOf(Format format) {
        for (int i = 0; i < this.length; i++) {
            if (this.formats[i] == format) {
                return i;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelection
    public final int indexOf(int i) {
        for (int i2 = 0; i2 < this.length; i2++) {
            if (this.tracks[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public final Format getSelectedFormat() {
        return this.formats[getSelectedIndex()];
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public final int getSelectedIndexInTrackGroup() {
        return this.tracks[getSelectedIndex()];
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int evaluateQueueSize(long j, List<? extends MediaChunk> list) {
        return list.size();
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public boolean blacklist(int i, long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean isBlacklisted = isBlacklisted(i, elapsedRealtime);
        int i2 = 0;
        while (i2 < this.length && !isBlacklisted) {
            isBlacklisted = (i2 == i || isBlacklisted(i2, elapsedRealtime)) ? false : true;
            i2++;
        }
        if (!isBlacklisted) {
            return false;
        }
        long[] jArr = this.excludeUntilTimes;
        jArr[i] = Math.max(jArr[i], Util.addWithOverflowDefault(elapsedRealtime, j, Long.MAX_VALUE));
        return true;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public boolean isBlacklisted(int i, long j) {
        return this.excludeUntilTimes[i] > j;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = (System.identityHashCode(this.group) * 31) + Arrays.hashCode(this.tracks);
        }
        return this.hashCode;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
        return this.group == baseTrackSelection.group && Arrays.equals(this.tracks, baseTrackSelection.tracks);
    }
}
