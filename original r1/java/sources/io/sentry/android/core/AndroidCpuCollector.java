package io.sentry.android.core;

import android.os.SystemClock;
import android.system.Os;
import android.system.OsConstants;
import io.sentry.CpuCollectionData;
import io.sentry.ILogger;
import io.sentry.IPerformanceSnapshotCollector;
import io.sentry.PerformanceCollectionData;
import io.sentry.SentryLevel;
import io.sentry.util.FileUtils;
import io.sentry.util.Objects;
import java.io.File;
import java.io.IOException;
import java.util.regex.Pattern;

/* loaded from: classes3.dex */
public final class AndroidCpuCollector implements IPerformanceSnapshotCollector {
    private final BuildInfoProvider buildInfoProvider;
    private final ILogger logger;
    private long lastRealtimeNanos = 0;
    private long lastCpuNanos = 0;
    private long clockSpeedHz = 1;
    private long numCores = 1;
    private final long NANOSECOND_PER_SECOND = 1000000000;
    private double nanosecondsPerClockTick = 1.0E9d / 1;
    private final File selfStat = new File("/proc/self/stat");
    private boolean isEnabled = false;
    private final Pattern newLinePattern = Pattern.compile("[\n\t\r ]");

    public AndroidCpuCollector(ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "Logger is required.");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required.");
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public void setup() {
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            this.isEnabled = false;
            return;
        }
        this.isEnabled = true;
        this.clockSpeedHz = Os.sysconf(OsConstants._SC_CLK_TCK);
        this.numCores = Os.sysconf(OsConstants._SC_NPROCESSORS_CONF);
        this.nanosecondsPerClockTick = 1.0E9d / this.clockSpeedHz;
        this.lastCpuNanos = readTotalCpuNanos();
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public void collect(PerformanceCollectionData performanceCollectionData) {
        if (this.buildInfoProvider.getSdkInfoVersion() < 21 || !this.isEnabled) {
            return;
        }
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        long j = elapsedRealtimeNanos - this.lastRealtimeNanos;
        this.lastRealtimeNanos = elapsedRealtimeNanos;
        long readTotalCpuNanos = readTotalCpuNanos();
        long j2 = readTotalCpuNanos - this.lastCpuNanos;
        this.lastCpuNanos = readTotalCpuNanos;
        performanceCollectionData.addCpuData(new CpuCollectionData(System.currentTimeMillis(), ((j2 / j) / this.numCores) * 100.0d));
    }

    private long readTotalCpuNanos() {
        String str;
        try {
            str = FileUtils.readText(this.selfStat);
        } catch (IOException e) {
            this.isEnabled = false;
            this.logger.log(SentryLevel.WARNING, "Unable to read /proc/self/stat file. Disabling cpu collection.", e);
            str = null;
        }
        if (str != null) {
            String[] split = this.newLinePattern.split(str.trim());
            try {
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[14]);
                return (long) ((parseLong + parseLong2 + Long.parseLong(split[15]) + Long.parseLong(split[16])) * this.nanosecondsPerClockTick);
            } catch (NumberFormatException e2) {
                this.logger.log(SentryLevel.ERROR, "Error parsing /proc/self/stat file.", e2);
            }
        }
        return 0L;
    }
}
