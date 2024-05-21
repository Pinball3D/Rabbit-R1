package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.trackselection.ExoTrackSelection;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DefaultAllocator;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;

/* loaded from: classes2.dex */
public class DefaultLoadControl implements LoadControl {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    private final DefaultAllocator allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackUs;
    private boolean isLoading;
    private final long maxBufferUs;
    private final long minBufferUs;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean retainBackBufferFromKeyframe;
    private int targetBufferBytes;
    private final int targetBufferBytesOverwrite;

    @Override // com.google.android.exoplayer2.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private DefaultAllocator allocator;
        private boolean buildCalled;
        private int minBufferMs = 50000;
        private int maxBufferMs = 50000;
        private int bufferForPlaybackMs = 2500;
        private int bufferForPlaybackAfterRebufferMs = 5000;
        private int targetBufferBytes = -1;
        private boolean prioritizeTimeOverSizeThresholds = false;
        private int backBufferDurationMs = 0;
        private boolean retainBackBufferFromKeyframe = false;

        public Builder setAllocator(DefaultAllocator defaultAllocator) {
            Assertions.checkState(!this.buildCalled);
            this.allocator = defaultAllocator;
            return this;
        }

        public Builder setBufferDurationsMs(int i, int i2, int i3, int i4) {
            Assertions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
            DefaultLoadControl.assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
            DefaultLoadControl.assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
            DefaultLoadControl.assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
            this.minBufferMs = i;
            this.maxBufferMs = i2;
            this.bufferForPlaybackMs = i3;
            this.bufferForPlaybackAfterRebufferMs = i4;
            return this;
        }

        public Builder setTargetBufferBytes(int i) {
            Assertions.checkState(!this.buildCalled);
            this.targetBufferBytes = i;
            return this;
        }

        public Builder setPrioritizeTimeOverSizeThresholds(boolean z) {
            Assertions.checkState(!this.buildCalled);
            this.prioritizeTimeOverSizeThresholds = z;
            return this;
        }

        public Builder setBackBuffer(int i, boolean z) {
            Assertions.checkState(!this.buildCalled);
            DefaultLoadControl.assertGreaterOrEqual(i, 0, "backBufferDurationMs", "0");
            this.backBufferDurationMs = i;
            this.retainBackBufferFromKeyframe = z;
            return this;
        }

        @Deprecated
        public DefaultLoadControl createDefaultLoadControl() {
            return build();
        }

        public DefaultLoadControl build() {
            Assertions.checkState(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.backBufferDurationMs, this.retainBackBufferFromKeyframe);
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    protected DefaultLoadControl(DefaultAllocator defaultAllocator, int i, int i2, int i3, int i4, int i5, boolean z, int i6, boolean z2) {
        assertGreaterOrEqual(i3, 0, "bufferForPlaybackMs", "0");
        assertGreaterOrEqual(i4, 0, "bufferForPlaybackAfterRebufferMs", "0");
        assertGreaterOrEqual(i, i3, "minBufferMs", "bufferForPlaybackMs");
        assertGreaterOrEqual(i, i4, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        assertGreaterOrEqual(i2, i, "maxBufferMs", "minBufferMs");
        assertGreaterOrEqual(i6, 0, "backBufferDurationMs", "0");
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.msToUs(i);
        this.maxBufferUs = Util.msToUs(i2);
        this.bufferForPlaybackUs = Util.msToUs(i3);
        this.bufferForPlaybackAfterRebufferUs = Util.msToUs(i4);
        this.targetBufferBytesOverwrite = i5;
        this.targetBufferBytes = i5 == -1 ? 13107200 : i5;
        this.prioritizeTimeOverSizeThresholds = z;
        this.backBufferDurationUs = Util.msToUs(i6);
        this.retainBackBufferFromKeyframe = z2;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onPrepared() {
        reset(false);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onTracksSelected(Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int i = this.targetBufferBytesOverwrite;
        if (i == -1) {
            i = calculateTargetBufferBytes(rendererArr, exoTrackSelectionArr);
        }
        this.targetBufferBytes = i;
        this.allocator.setTargetBufferSize(i);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onStopped() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public void onReleased() {
        reset(true);
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldContinueLoading(long j, long j2, float f) {
        boolean z = true;
        boolean z2 = this.allocator.getTotalBytesAllocated() >= this.targetBufferBytes;
        long j3 = this.minBufferUs;
        if (f > 1.0f) {
            j3 = Math.min(Util.getMediaDurationForPlayoutDuration(j3, f), this.maxBufferUs);
        }
        if (j2 < Math.max(j3, 500000L)) {
            if (!this.prioritizeTimeOverSizeThresholds && z2) {
                z = false;
            }
            this.isLoading = z;
            if (!z && j2 < 500000) {
                Log.w("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j2 >= this.maxBufferUs || z2) {
            this.isLoading = false;
        }
        return this.isLoading;
    }

    @Override // com.google.android.exoplayer2.LoadControl
    public boolean shouldStartPlayback(long j, float f, boolean z, long j2) {
        long playoutDurationForMediaDuration = Util.getPlayoutDurationForMediaDuration(j, f);
        long j3 = z ? this.bufferForPlaybackAfterRebufferUs : this.bufferForPlaybackUs;
        if (j2 != -9223372036854775807L) {
            j3 = Math.min(j2 / 2, j3);
        }
        return j3 <= 0 || playoutDurationForMediaDuration >= j3 || (!this.prioritizeTimeOverSizeThresholds && this.allocator.getTotalBytesAllocated() >= this.targetBufferBytes);
    }

    protected int calculateTargetBufferBytes(Renderer[] rendererArr, ExoTrackSelection[] exoTrackSelectionArr) {
        int i = 0;
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            if (exoTrackSelectionArr[i2] != null) {
                i += getDefaultBufferSize(rendererArr[i2].getTrackType());
            }
        }
        return Math.max(13107200, i);
    }

    private void reset(boolean z) {
        int i = this.targetBufferBytesOverwrite;
        if (i == -1) {
            i = 13107200;
        }
        this.targetBufferBytes = i;
        this.isLoading = false;
        if (z) {
            this.allocator.reset();
        }
    }

    private static int getDefaultBufferSize(int i) {
        switch (i) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void assertGreaterOrEqual(int i, int i2, String str, String str2) {
        Assertions.checkArgument(i >= i2, str + " cannot be less than " + str2);
    }
}
