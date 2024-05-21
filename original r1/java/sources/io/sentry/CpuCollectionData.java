package io.sentry;

/* loaded from: classes3.dex */
public final class CpuCollectionData {
    final double cpuUsagePercentage;
    final long timestampMillis;

    public double getCpuUsagePercentage() {
        return this.cpuUsagePercentage;
    }

    public long getTimestampMillis() {
        return this.timestampMillis;
    }

    public CpuCollectionData(long j, double d) {
        this.timestampMillis = j;
        this.cpuUsagePercentage = d;
    }
}
