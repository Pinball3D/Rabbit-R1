package com.google.common.util.concurrent;

import com.google.common.math.LongMath;
import com.google.common.util.concurrent.RateLimiter;
import java.util.concurrent.TimeUnit;
import tech.rabbit.r1launcher.BuildConfig;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public abstract class SmoothRateLimiter extends RateLimiter {
    double maxPermits;
    private long nextFreeTicketMicros;
    double stableIntervalMicros;
    double storedPermits;

    abstract double coolDownIntervalMicros();

    abstract void doSetRate(double d, double d2);

    @Override // com.google.common.util.concurrent.RateLimiter
    final long queryEarliestAvailable(long j) {
        return this.nextFreeTicketMicros;
    }

    abstract long storedPermitsToWaitTime(double d, double d2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class SmoothWarmingUp extends SmoothRateLimiter {
        private double coldFactor;
        private double slope;
        private double thresholdPermits;
        private final long warmupPeriodMicros;

        /* JADX INFO: Access modifiers changed from: package-private */
        public SmoothWarmingUp(RateLimiter.SleepingStopwatch sleepingStopwatch, long j, TimeUnit timeUnit, double d) {
            super(sleepingStopwatch);
            this.warmupPeriodMicros = timeUnit.toMicros(j);
            this.coldFactor = d;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        void doSetRate(double d, double d2) {
            double d3;
            double d4 = this.maxPermits;
            double d5 = this.coldFactor * d2;
            long j = this.warmupPeriodMicros;
            double d6 = (j * 0.5d) / d2;
            this.thresholdPermits = d6;
            this.maxPermits = d6 + ((j * 2.0d) / (d2 + d5));
            this.slope = (d5 - d2) / (this.maxPermits - this.thresholdPermits);
            if (d4 == Double.POSITIVE_INFINITY) {
                this.storedPermits = BuildConfig.SENTRY_SAMPLE_RATE;
                return;
            }
            if (d4 == BuildConfig.SENTRY_SAMPLE_RATE) {
                d3 = this.maxPermits;
            } else {
                d3 = (this.storedPermits * this.maxPermits) / d4;
            }
            this.storedPermits = d3;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        long storedPermitsToWaitTime(double d, double d2) {
            long j;
            double d3 = d - this.thresholdPermits;
            if (d3 > BuildConfig.SENTRY_SAMPLE_RATE) {
                double min = Math.min(d3, d2);
                j = (long) (((permitsToTime(d3) + permitsToTime(d3 - min)) * min) / 2.0d);
                d2 -= min;
            } else {
                j = 0;
            }
            return j + ((long) (this.stableIntervalMicros * d2));
        }

        private double permitsToTime(double d) {
            return this.stableIntervalMicros + (d * this.slope);
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        double coolDownIntervalMicros() {
            return this.warmupPeriodMicros / this.maxPermits;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static final class SmoothBursty extends SmoothRateLimiter {
        final double maxBurstSeconds;

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        long storedPermitsToWaitTime(double d, double d2) {
            return 0L;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public SmoothBursty(RateLimiter.SleepingStopwatch sleepingStopwatch, double d) {
            super(sleepingStopwatch);
            this.maxBurstSeconds = d;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        void doSetRate(double d, double d2) {
            double d3 = this.maxPermits;
            this.maxPermits = this.maxBurstSeconds * d;
            if (d3 == Double.POSITIVE_INFINITY) {
                this.storedPermits = this.maxPermits;
                return;
            }
            double d4 = BuildConfig.SENTRY_SAMPLE_RATE;
            if (d3 != BuildConfig.SENTRY_SAMPLE_RATE) {
                d4 = (this.storedPermits * this.maxPermits) / d3;
            }
            this.storedPermits = d4;
        }

        @Override // com.google.common.util.concurrent.SmoothRateLimiter
        double coolDownIntervalMicros() {
            return this.stableIntervalMicros;
        }
    }

    private SmoothRateLimiter(RateLimiter.SleepingStopwatch sleepingStopwatch) {
        super(sleepingStopwatch);
        this.nextFreeTicketMicros = 0L;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    final void doSetRate(double d, long j) {
        resync(j);
        double micros = TimeUnit.SECONDS.toMicros(1L) / d;
        this.stableIntervalMicros = micros;
        doSetRate(d, micros);
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    final double doGetRate() {
        return TimeUnit.SECONDS.toMicros(1L) / this.stableIntervalMicros;
    }

    @Override // com.google.common.util.concurrent.RateLimiter
    final long reserveEarliestAvailable(int i, long j) {
        resync(j);
        long j2 = this.nextFreeTicketMicros;
        double d = i;
        double min = Math.min(d, this.storedPermits);
        this.nextFreeTicketMicros = LongMath.saturatedAdd(this.nextFreeTicketMicros, storedPermitsToWaitTime(this.storedPermits, min) + ((long) ((d - min) * this.stableIntervalMicros)));
        this.storedPermits -= min;
        return j2;
    }

    void resync(long j) {
        if (j > this.nextFreeTicketMicros) {
            this.storedPermits = Math.min(this.maxPermits, this.storedPermits + ((j - r0) / coolDownIntervalMicros()));
            this.nextFreeTicketMicros = j;
        }
    }
}
