package androidx.media3.exoplayer.upstream.experimental;

import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import java.util.ArrayDeque;
import java.util.Deque;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public class SlidingWeightedAverageBandwidthStatistic implements BandwidthStatistic {
    public static final int DEFAULT_MAX_SAMPLES_COUNT = 10;
    private double bitrateWeightProductSum;
    private final Clock clock;
    private final SampleEvictionFunction sampleEvictionFunction;
    private final ArrayDeque<Sample> samples;
    private double weightSum;

    /* loaded from: classes2.dex */
    public interface SampleEvictionFunction {
        boolean shouldEvictSample(Deque<Sample> deque);
    }

    /* loaded from: classes2.dex */
    public static class Sample {
        public final long bitrate;
        public final long timeAddedMs;
        public final double weight;

        public Sample(long j, double d, long j2) {
            this.bitrate = j;
            this.weight = d;
            this.timeAddedMs = j2;
        }
    }

    public static SampleEvictionFunction getMaxCountEvictionFunction(final long j) {
        return new SampleEvictionFunction() { // from class: androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
            public final boolean shouldEvictSample(Deque deque) {
                return SlidingWeightedAverageBandwidthStatistic.lambda$getMaxCountEvictionFunction$0(j, deque);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$getMaxCountEvictionFunction$0(long j, Deque deque) {
        return ((long) deque.size()) >= j;
    }

    public static SampleEvictionFunction getAgeBasedEvictionFunction(long j) {
        return getAgeBasedEvictionFunction(j, Clock.DEFAULT);
    }

    static SampleEvictionFunction getAgeBasedEvictionFunction(final long j, final Clock clock) {
        return new SampleEvictionFunction() { // from class: androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic$$ExternalSyntheticLambda1
            @Override // androidx.media3.exoplayer.upstream.experimental.SlidingWeightedAverageBandwidthStatistic.SampleEvictionFunction
            public final boolean shouldEvictSample(Deque deque) {
                return SlidingWeightedAverageBandwidthStatistic.lambda$getAgeBasedEvictionFunction$1(j, clock, deque);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean lambda$getAgeBasedEvictionFunction$1(long j, Clock clock, Deque deque) {
        return !deque.isEmpty() && ((Sample) Util.castNonNull((Sample) deque.peek())).timeAddedMs + j < clock.elapsedRealtime();
    }

    public SlidingWeightedAverageBandwidthStatistic() {
        this(getMaxCountEvictionFunction(10L));
    }

    public SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction) {
        this(sampleEvictionFunction, Clock.DEFAULT);
    }

    SlidingWeightedAverageBandwidthStatistic(SampleEvictionFunction sampleEvictionFunction, Clock clock) {
        this.samples = new ArrayDeque<>();
        this.sampleEvictionFunction = sampleEvictionFunction;
        this.clock = clock;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void addSample(long j, long j2) {
        while (this.sampleEvictionFunction.shouldEvictSample(this.samples)) {
            Sample remove = this.samples.remove();
            this.bitrateWeightProductSum -= remove.bitrate * remove.weight;
            this.weightSum -= remove.weight;
        }
        Sample sample = new Sample((j * 8000000) / j2, Math.sqrt(j), this.clock.elapsedRealtime());
        this.samples.add(sample);
        this.bitrateWeightProductSum += sample.bitrate * sample.weight;
        this.weightSum += sample.weight;
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public long getBandwidthEstimate() {
        if (this.samples.isEmpty()) {
            return Long.MIN_VALUE;
        }
        return (long) (this.bitrateWeightProductSum / this.weightSum);
    }

    @Override // androidx.media3.exoplayer.upstream.experimental.BandwidthStatistic
    public void reset() {
        this.samples.clear();
        this.bitrateWeightProductSum = BuildConfig.SENTRY_SAMPLE_RATE;
        this.weightSum = BuildConfig.SENTRY_SAMPLE_RATE;
    }
}
