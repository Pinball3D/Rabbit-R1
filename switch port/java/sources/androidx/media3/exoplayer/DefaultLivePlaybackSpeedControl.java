package androidx.media3.exoplayer;

import android.os.SystemClock;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import com.google.common.primitives.Longs;

/* loaded from: classes2.dex */
public final class DefaultLivePlaybackSpeedControl implements LivePlaybackSpeedControl {
    public static final float DEFAULT_FALLBACK_MAX_PLAYBACK_SPEED = 1.03f;
    public static final float DEFAULT_FALLBACK_MIN_PLAYBACK_SPEED = 0.97f;
    public static final long DEFAULT_MAX_LIVE_OFFSET_ERROR_MS_FOR_UNIT_SPEED = 20;
    public static final float DEFAULT_MIN_POSSIBLE_LIVE_OFFSET_SMOOTHING_FACTOR = 0.999f;
    public static final long DEFAULT_MIN_UPDATE_INTERVAL_MS = 1000;
    public static final float DEFAULT_PROPORTIONAL_CONTROL_FACTOR = 0.1f;
    public static final long DEFAULT_TARGET_LIVE_OFFSET_INCREMENT_ON_REBUFFER_MS = 500;
    private float adjustedPlaybackSpeed;
    private long currentTargetLiveOffsetUs;
    private final float fallbackMaxPlaybackSpeed;
    private final float fallbackMinPlaybackSpeed;
    private long idealTargetLiveOffsetUs;
    private long lastPlaybackSpeedUpdateMs;
    private final long maxLiveOffsetErrorUsForUnitSpeed;
    private float maxPlaybackSpeed;
    private long maxTargetLiveOffsetUs;
    private long mediaConfigurationTargetLiveOffsetUs;
    private float minPlaybackSpeed;
    private final float minPossibleLiveOffsetSmoothingFactor;
    private long minTargetLiveOffsetUs;
    private final long minUpdateIntervalMs;
    private final float proportionalControlFactor;
    private long smoothedMinPossibleLiveOffsetDeviationUs;
    private long smoothedMinPossibleLiveOffsetUs;
    private long targetLiveOffsetOverrideUs;
    private final long targetLiveOffsetRebufferDeltaUs;

    private void maybeResetTargetLiveOffsetUs() {
        long j = this.mediaConfigurationTargetLiveOffsetUs;
        if (j != -9223372036854775807L) {
            long j2 = this.targetLiveOffsetOverrideUs;
            if (j2 != -9223372036854775807L) {
                j = j2;
            }
            long j3 = this.minTargetLiveOffsetUs;
            if (j3 != -9223372036854775807L && j < j3) {
                j = j3;
            }
            long j4 = this.maxTargetLiveOffsetUs;
            if (j4 != -9223372036854775807L && j > j4) {
                j = j4;
            }
        } else {
            j = -9223372036854775807L;
        }
        if (this.idealTargetLiveOffsetUs == j) {
            return;
        }
        this.idealTargetLiveOffsetUs = j;
        this.currentTargetLiveOffsetUs = j;
        this.smoothedMinPossibleLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetDeviationUs = -9223372036854775807L;
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
    }

    private static long smooth(long j, long j2, float f) {
        return (((float) j) * f) + ((1.0f - f) * ((float) j2));
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public long getTargetLiveOffsetUs() {
        return this.currentTargetLiveOffsetUs;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void notifyRebuffer() {
        long j = this.currentTargetLiveOffsetUs;
        if (j == -9223372036854775807L) {
            return;
        }
        long j2 = j + this.targetLiveOffsetRebufferDeltaUs;
        this.currentTargetLiveOffsetUs = j2;
        long j3 = this.maxTargetLiveOffsetUs;
        if (j3 != -9223372036854775807L && j2 > j3) {
            this.currentTargetLiveOffsetUs = j3;
        }
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
    }

    /* loaded from: classes2.dex */
    public static final class Builder {
        private float fallbackMinPlaybackSpeed = 0.97f;
        private float fallbackMaxPlaybackSpeed = 1.03f;
        private long minUpdateIntervalMs = 1000;
        private float proportionalControlFactorUs = 1.0E-7f;
        private long maxLiveOffsetErrorUsForUnitSpeed = Util.msToUs(20);
        private long targetLiveOffsetIncrementOnRebufferUs = Util.msToUs(500);
        private float minPossibleLiveOffsetSmoothingFactor = 0.999f;

        public Builder setFallbackMinPlaybackSpeed(float f) {
            Assertions.checkArgument(0.0f < f && f <= 1.0f);
            this.fallbackMinPlaybackSpeed = f;
            return this;
        }

        public Builder setFallbackMaxPlaybackSpeed(float f) {
            Assertions.checkArgument(f >= 1.0f);
            this.fallbackMaxPlaybackSpeed = f;
            return this;
        }

        public Builder setMinUpdateIntervalMs(long j) {
            Assertions.checkArgument(j > 0);
            this.minUpdateIntervalMs = j;
            return this;
        }

        public Builder setProportionalControlFactor(float f) {
            Assertions.checkArgument(f > 0.0f);
            this.proportionalControlFactorUs = f / 1000000.0f;
            return this;
        }

        public Builder setMaxLiveOffsetErrorMsForUnitSpeed(long j) {
            Assertions.checkArgument(j > 0);
            this.maxLiveOffsetErrorUsForUnitSpeed = Util.msToUs(j);
            return this;
        }

        public Builder setTargetLiveOffsetIncrementOnRebufferMs(long j) {
            Assertions.checkArgument(j >= 0);
            this.targetLiveOffsetIncrementOnRebufferUs = Util.msToUs(j);
            return this;
        }

        public Builder setMinPossibleLiveOffsetSmoothingFactor(float f) {
            Assertions.checkArgument(f >= 0.0f && f < 1.0f);
            this.minPossibleLiveOffsetSmoothingFactor = f;
            return this;
        }

        public DefaultLivePlaybackSpeedControl build() {
            return new DefaultLivePlaybackSpeedControl(this.fallbackMinPlaybackSpeed, this.fallbackMaxPlaybackSpeed, this.minUpdateIntervalMs, this.proportionalControlFactorUs, this.maxLiveOffsetErrorUsForUnitSpeed, this.targetLiveOffsetIncrementOnRebufferUs, this.minPossibleLiveOffsetSmoothingFactor);
        }
    }

    private DefaultLivePlaybackSpeedControl(float f, float f2, long j, float f3, long j2, long j3, float f4) {
        this.fallbackMinPlaybackSpeed = f;
        this.fallbackMaxPlaybackSpeed = f2;
        this.minUpdateIntervalMs = j;
        this.proportionalControlFactor = f3;
        this.maxLiveOffsetErrorUsForUnitSpeed = j2;
        this.targetLiveOffsetRebufferDeltaUs = j3;
        this.minPossibleLiveOffsetSmoothingFactor = f4;
        this.mediaConfigurationTargetLiveOffsetUs = -9223372036854775807L;
        this.targetLiveOffsetOverrideUs = -9223372036854775807L;
        this.minTargetLiveOffsetUs = -9223372036854775807L;
        this.maxTargetLiveOffsetUs = -9223372036854775807L;
        this.minPlaybackSpeed = f;
        this.maxPlaybackSpeed = f2;
        this.adjustedPlaybackSpeed = 1.0f;
        this.lastPlaybackSpeedUpdateMs = -9223372036854775807L;
        this.idealTargetLiveOffsetUs = -9223372036854775807L;
        this.currentTargetLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetUs = -9223372036854775807L;
        this.smoothedMinPossibleLiveOffsetDeviationUs = -9223372036854775807L;
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void setLiveConfiguration(MediaItem.LiveConfiguration liveConfiguration) {
        this.mediaConfigurationTargetLiveOffsetUs = Util.msToUs(liveConfiguration.targetOffsetMs);
        this.minTargetLiveOffsetUs = Util.msToUs(liveConfiguration.minOffsetMs);
        this.maxTargetLiveOffsetUs = Util.msToUs(liveConfiguration.maxOffsetMs);
        this.minPlaybackSpeed = liveConfiguration.minPlaybackSpeed != -3.4028235E38f ? liveConfiguration.minPlaybackSpeed : this.fallbackMinPlaybackSpeed;
        float f = liveConfiguration.maxPlaybackSpeed != -3.4028235E38f ? liveConfiguration.maxPlaybackSpeed : this.fallbackMaxPlaybackSpeed;
        this.maxPlaybackSpeed = f;
        if (this.minPlaybackSpeed == 1.0f && f == 1.0f) {
            this.mediaConfigurationTargetLiveOffsetUs = -9223372036854775807L;
        }
        maybeResetTargetLiveOffsetUs();
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public void setTargetLiveOffsetOverrideUs(long j) {
        this.targetLiveOffsetOverrideUs = j;
        maybeResetTargetLiveOffsetUs();
    }

    @Override // androidx.media3.exoplayer.LivePlaybackSpeedControl
    public float getAdjustedPlaybackSpeed(long j, long j2) {
        if (this.mediaConfigurationTargetLiveOffsetUs == -9223372036854775807L) {
            return 1.0f;
        }
        updateSmoothedMinPossibleLiveOffsetUs(j, j2);
        if (this.lastPlaybackSpeedUpdateMs != -9223372036854775807L && SystemClock.elapsedRealtime() - this.lastPlaybackSpeedUpdateMs < this.minUpdateIntervalMs) {
            return this.adjustedPlaybackSpeed;
        }
        this.lastPlaybackSpeedUpdateMs = SystemClock.elapsedRealtime();
        adjustTargetLiveOffsetUs(j);
        long j3 = j - this.currentTargetLiveOffsetUs;
        if (Math.abs(j3) < this.maxLiveOffsetErrorUsForUnitSpeed) {
            this.adjustedPlaybackSpeed = 1.0f;
        } else {
            this.adjustedPlaybackSpeed = Util.constrainValue((this.proportionalControlFactor * ((float) j3)) + 1.0f, this.minPlaybackSpeed, this.maxPlaybackSpeed);
        }
        return this.adjustedPlaybackSpeed;
    }

    private void updateSmoothedMinPossibleLiveOffsetUs(long j, long j2) {
        long j3 = j - j2;
        long j4 = this.smoothedMinPossibleLiveOffsetUs;
        if (j4 == -9223372036854775807L) {
            this.smoothedMinPossibleLiveOffsetUs = j3;
            this.smoothedMinPossibleLiveOffsetDeviationUs = 0L;
        } else {
            long max = Math.max(j3, smooth(j4, j3, this.minPossibleLiveOffsetSmoothingFactor));
            this.smoothedMinPossibleLiveOffsetUs = max;
            this.smoothedMinPossibleLiveOffsetDeviationUs = smooth(this.smoothedMinPossibleLiveOffsetDeviationUs, Math.abs(j3 - max), this.minPossibleLiveOffsetSmoothingFactor);
        }
    }

    private void adjustTargetLiveOffsetUs(long j) {
        long j2 = this.smoothedMinPossibleLiveOffsetUs + (this.smoothedMinPossibleLiveOffsetDeviationUs * 3);
        if (this.currentTargetLiveOffsetUs > j2) {
            float msToUs = (float) Util.msToUs(this.minUpdateIntervalMs);
            this.currentTargetLiveOffsetUs = Longs.max(j2, this.idealTargetLiveOffsetUs, this.currentTargetLiveOffsetUs - (((this.adjustedPlaybackSpeed - 1.0f) * msToUs) + ((this.maxPlaybackSpeed - 1.0f) * msToUs)));
            return;
        }
        long constrainValue = Util.constrainValue(j - (Math.max(0.0f, this.adjustedPlaybackSpeed - 1.0f) / this.proportionalControlFactor), this.currentTargetLiveOffsetUs, j2);
        this.currentTargetLiveOffsetUs = constrainValue;
        long j3 = this.maxTargetLiveOffsetUs;
        if (j3 == -9223372036854775807L || constrainValue <= j3) {
            return;
        }
        this.currentTargetLiveOffsetUs = j3;
    }
}
