package com.google.android.exoplayer2.video;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class FixedFrameRateEstimator {
    public static final int CONSECUTIVE_MATCHING_FRAME_DURATIONS_FOR_SYNC = 15;
    static final long MAX_MATCHING_FRAME_DIFFERENCE_NS = 1000000;
    private boolean candidateMatcherActive;
    private int framesWithoutSyncCount;
    private boolean switchToCandidateMatcherWhenSynced;
    private Matcher currentMatcher = new Matcher();
    private Matcher candidateMatcher = new Matcher();
    private long lastFramePresentationTimeNs = -9223372036854775807L;

    public int getFramesWithoutSyncCount() {
        return this.framesWithoutSyncCount;
    }

    public void reset() {
        this.currentMatcher.reset();
        this.candidateMatcher.reset();
        this.candidateMatcherActive = false;
        this.lastFramePresentationTimeNs = -9223372036854775807L;
        this.framesWithoutSyncCount = 0;
    }

    public void onNextFrame(long j) {
        this.currentMatcher.onNextFrame(j);
        if (this.currentMatcher.isSynced() && !this.switchToCandidateMatcherWhenSynced) {
            this.candidateMatcherActive = false;
        } else if (this.lastFramePresentationTimeNs != -9223372036854775807L) {
            if (!this.candidateMatcherActive || this.candidateMatcher.isLastFrameOutlier()) {
                this.candidateMatcher.reset();
                this.candidateMatcher.onNextFrame(this.lastFramePresentationTimeNs);
            }
            this.candidateMatcherActive = true;
            this.candidateMatcher.onNextFrame(j);
        }
        if (this.candidateMatcherActive && this.candidateMatcher.isSynced()) {
            Matcher matcher = this.currentMatcher;
            this.currentMatcher = this.candidateMatcher;
            this.candidateMatcher = matcher;
            this.candidateMatcherActive = false;
            this.switchToCandidateMatcherWhenSynced = false;
        }
        this.lastFramePresentationTimeNs = j;
        this.framesWithoutSyncCount = this.currentMatcher.isSynced() ? 0 : this.framesWithoutSyncCount + 1;
    }

    public boolean isSynced() {
        return this.currentMatcher.isSynced();
    }

    public long getMatchingFrameDurationSumNs() {
        if (isSynced()) {
            return this.currentMatcher.getMatchingFrameDurationSumNs();
        }
        return -9223372036854775807L;
    }

    public long getFrameDurationNs() {
        if (isSynced()) {
            return this.currentMatcher.getFrameDurationNs();
        }
        return -9223372036854775807L;
    }

    public float getFrameRate() {
        if (isSynced()) {
            return (float) (1.0E9d / this.currentMatcher.getFrameDurationNs());
        }
        return -1.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class Matcher {
        private long firstFrameDurationNs;
        private long firstFramePresentationTimeNs;
        private long frameCount;
        private long lastFramePresentationTimeNs;
        private long matchingFrameCount;
        private long matchingFrameDurationSumNs;
        private int recentFrameOutlierCount;
        private final boolean[] recentFrameOutlierFlags = new boolean[15];

        public long getMatchingFrameDurationSumNs() {
            return this.matchingFrameDurationSumNs;
        }

        public boolean isSynced() {
            return this.frameCount > 15 && this.recentFrameOutlierCount == 0;
        }

        public void reset() {
            this.frameCount = 0L;
            this.matchingFrameCount = 0L;
            this.matchingFrameDurationSumNs = 0L;
            this.recentFrameOutlierCount = 0;
            Arrays.fill(this.recentFrameOutlierFlags, false);
        }

        public boolean isLastFrameOutlier() {
            long j = this.frameCount;
            if (j == 0) {
                return false;
            }
            return this.recentFrameOutlierFlags[getRecentFrameOutlierIndex(j - 1)];
        }

        public long getFrameDurationNs() {
            long j = this.matchingFrameCount;
            if (j == 0) {
                return 0L;
            }
            return this.matchingFrameDurationSumNs / j;
        }

        public void onNextFrame(long j) {
            long j2 = this.frameCount;
            if (j2 == 0) {
                this.firstFramePresentationTimeNs = j;
            } else if (j2 == 1) {
                long j3 = j - this.firstFramePresentationTimeNs;
                this.firstFrameDurationNs = j3;
                this.matchingFrameDurationSumNs = j3;
                this.matchingFrameCount = 1L;
            } else {
                long j4 = j - this.lastFramePresentationTimeNs;
                int recentFrameOutlierIndex = getRecentFrameOutlierIndex(j2);
                if (Math.abs(j4 - this.firstFrameDurationNs) <= 1000000) {
                    this.matchingFrameCount++;
                    this.matchingFrameDurationSumNs += j4;
                    boolean[] zArr = this.recentFrameOutlierFlags;
                    if (zArr[recentFrameOutlierIndex]) {
                        zArr[recentFrameOutlierIndex] = false;
                        this.recentFrameOutlierCount--;
                    }
                } else {
                    boolean[] zArr2 = this.recentFrameOutlierFlags;
                    if (!zArr2[recentFrameOutlierIndex]) {
                        zArr2[recentFrameOutlierIndex] = true;
                        this.recentFrameOutlierCount++;
                    }
                }
            }
            this.frameCount++;
            this.lastFramePresentationTimeNs = j;
        }

        private static int getRecentFrameOutlierIndex(long j) {
            return (int) (j % 15);
        }
    }
}
