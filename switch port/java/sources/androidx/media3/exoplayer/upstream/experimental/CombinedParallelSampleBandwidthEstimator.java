package androidx.media3.exoplayer.upstream.experimental;

import android.os.Handler;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* loaded from: classes2.dex */
public class CombinedParallelSampleBandwidthEstimator implements BandwidthEstimator {
    private long bandwidthEstimate;
    private final BandwidthStatistic bandwidthStatistic;
    private final Clock clock;
    private final BandwidthMeter.EventListener.EventDispatcher eventDispatcher;
    private long lastReportedBandwidthEstimate;
    private final long minBytesTransferred;
    private final int minSamples;
    private long sampleBytesTransferred;
    private long sampleStartTimeMs;
    private int streamCount;
    private long totalBytesTransferred;
    private int totalSamplesAdded;

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public long getBandwidthEstimate() {
        return this.bandwidthEstimate;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onBytesTransferred(DataSource dataSource, int i) {
        long j = i;
        this.sampleBytesTransferred += j;
        this.totalBytesTransferred += j;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferInitializing(DataSource dataSource) {
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private BandwidthStatistic bandwidthStatistic = new SlidingWeightedAverageBandwidthStatistic();
        private Clock clock = Clock.DEFAULT;
        private long minBytesTransferred;
        private int minSamples;

        Builder setClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder setBandwidthStatistic(BandwidthStatistic bandwidthStatistic) {
            Assertions.checkNotNull(bandwidthStatistic);
            this.bandwidthStatistic = bandwidthStatistic;
            return this;
        }

        public Builder setMinSamples(int i) {
            Assertions.checkArgument(i >= 0);
            this.minSamples = i;
            return this;
        }

        public Builder setMinBytesTransferred(long j) {
            Assertions.checkArgument(j >= 0);
            this.minBytesTransferred = j;
            return this;
        }

        public CombinedParallelSampleBandwidthEstimator build() {
            return new CombinedParallelSampleBandwidthEstimator(this);
        }
    }

    private CombinedParallelSampleBandwidthEstimator(Builder builder) {
        this.bandwidthStatistic = builder.bandwidthStatistic;
        this.minSamples = builder.minSamples;
        this.minBytesTransferred = builder.minBytesTransferred;
        this.clock = builder.clock;
        this.eventDispatcher = new BandwidthMeter.EventListener.EventDispatcher();
        this.bandwidthEstimate = Long.MIN_VALUE;
        this.lastReportedBandwidthEstimate = Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void addEventListener(Handler handler, BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.addListener(handler, eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void removeEventListener(BandwidthMeter.EventListener eventListener) {
        this.eventDispatcher.removeListener(eventListener);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferStart(DataSource dataSource) {
        if (this.streamCount == 0) {
            this.sampleStartTimeMs = this.clock.elapsedRealtime();
        }
        this.streamCount++;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onTransferEnd(DataSource dataSource) {
        Assertions.checkState(this.streamCount > 0);
        int i = this.streamCount - 1;
        this.streamCount = i;
        if (i > 0) {
            return;
        }
        long elapsedRealtime = (int) (this.clock.elapsedRealtime() - this.sampleStartTimeMs);
        if (elapsedRealtime > 0) {
            this.bandwidthStatistic.addSample(this.sampleBytesTransferred, 1000 * elapsedRealtime);
            int i2 = this.totalSamplesAdded + 1;
            this.totalSamplesAdded = i2;
            if (i2 > this.minSamples && this.totalBytesTransferred > this.minBytesTransferred) {
                this.bandwidthEstimate = this.bandwidthStatistic.getBandwidthEstimate();
            }
            maybeNotifyBandwidthSample((int) elapsedRealtime, this.sampleBytesTransferred, this.bandwidthEstimate);
            this.sampleBytesTransferred = 0L;
        }
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthEstimator
    public void onNetworkTypeChange(long j) {
        long elapsedRealtime = this.clock.elapsedRealtime();
        maybeNotifyBandwidthSample(this.streamCount > 0 ? (int) (elapsedRealtime - this.sampleStartTimeMs) : 0, this.sampleBytesTransferred, j);
        this.bandwidthStatistic.reset();
        this.bandwidthEstimate = Long.MIN_VALUE;
        this.sampleStartTimeMs = elapsedRealtime;
        this.sampleBytesTransferred = 0L;
        this.totalSamplesAdded = 0;
        this.totalBytesTransferred = 0L;
    }

    private void maybeNotifyBandwidthSample(int i, long j, long j2) {
        if (j2 != Long.MIN_VALUE) {
            if (i == 0 && j == 0 && j2 == this.lastReportedBandwidthEstimate) {
                return;
            }
            this.lastReportedBandwidthEstimate = j2;
            this.eventDispatcher.bandwidthSample(i, j, j2);
        }
    }
}
