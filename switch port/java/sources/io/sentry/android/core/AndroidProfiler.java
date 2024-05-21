package io.sentry.android.core;

import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.CpuCollectionData;
import io.sentry.ILogger;
import io.sentry.ISentryExecutorService;
import io.sentry.MemoryCollectionData;
import io.sentry.PerformanceCollectionData;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.profilemeasurements.ProfileMeasurement;
import io.sentry.profilemeasurements.ProfileMeasurementValue;
import io.sentry.util.Objects;
import java.io.File;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class AndroidProfiler {
    private static final int BUFFER_SIZE_BYTES = 3000000;
    private static final int PROFILING_TIMEOUT_MILLIS = 30000;
    private final BuildInfoProvider buildInfoProvider;
    private final ISentryExecutorService executorService;
    private final SentryFrameMetricsCollector frameMetricsCollector;
    private String frameMetricsCollectorId;
    private final int intervalUs;
    private final ILogger logger;
    private final File traceFilesDir;
    private long profileStartNanos = 0;
    private Future<?> scheduledFinish = null;
    private File traceFile = null;
    private volatile ProfileEndData timedOutProfilingData = null;
    private final ArrayDeque<ProfileMeasurementValue> screenFrameRateMeasurements = new ArrayDeque<>();
    private final ArrayDeque<ProfileMeasurementValue> slowFrameRenderMeasurements = new ArrayDeque<>();
    private final ArrayDeque<ProfileMeasurementValue> frozenFrameRenderMeasurements = new ArrayDeque<>();
    private final Map<String, ProfileMeasurement> measurementsMap = new HashMap();
    private boolean isRunning = false;

    /* loaded from: classes3.dex */
    public static class ProfileStartData {
        public final long startCpuMillis;
        public final long startNanos;

        public ProfileStartData(long j, long j2) {
            this.startNanos = j;
            this.startCpuMillis = j2;
        }
    }

    /* loaded from: classes3.dex */
    public static class ProfileEndData {
        public final boolean didTimeout;
        public final long endCpuMillis;
        public final long endNanos;
        public final Map<String, ProfileMeasurement> measurementsMap;
        public final File traceFile;

        public ProfileEndData(long j, long j2, boolean z, File file, Map<String, ProfileMeasurement> map) {
            this.endNanos = j;
            this.traceFile = file;
            this.endCpuMillis = j2;
            this.measurementsMap = map;
            this.didTimeout = z;
        }
    }

    public AndroidProfiler(String str, int i, SentryFrameMetricsCollector sentryFrameMetricsCollector, ISentryExecutorService iSentryExecutorService, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        this.traceFilesDir = new File((String) Objects.requireNonNull(str, "TracesFilesDirPath is required"));
        this.intervalUs = i;
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "Logger is required");
        this.executorService = (ISentryExecutorService) Objects.requireNonNull(iSentryExecutorService, "ExecutorService is required.");
        this.frameMetricsCollector = (SentryFrameMetricsCollector) Objects.requireNonNull(sentryFrameMetricsCollector, "SentryFrameMetricsCollector is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "The BuildInfoProvider is required.");
    }

    public synchronized ProfileStartData start() {
        if (this.intervalUs == 0) {
            this.logger.log(SentryLevel.WARNING, "Disabling profiling because intervaUs is set to %d", Integer.valueOf(this.intervalUs));
            return null;
        }
        if (this.isRunning) {
            this.logger.log(SentryLevel.WARNING, "Profiling has already started...", new Object[0]);
            return null;
        }
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            return null;
        }
        this.traceFile = new File(this.traceFilesDir, UUID.randomUUID() + ".trace");
        this.measurementsMap.clear();
        this.screenFrameRateMeasurements.clear();
        this.slowFrameRenderMeasurements.clear();
        this.frozenFrameRenderMeasurements.clear();
        this.frameMetricsCollectorId = this.frameMetricsCollector.startCollection(new SentryFrameMetricsCollector.FrameMetricsCollectorListener() { // from class: io.sentry.android.core.AndroidProfiler.1
            float lastRefreshRate = 0.0f;

            @Override // io.sentry.android.core.internal.util.SentryFrameMetricsCollector.FrameMetricsCollectorListener
            public void onFrameMetricCollected(long j, long j2, long j3, long j4, boolean z, boolean z2, float f) {
                long nanoTime = ((j2 - System.nanoTime()) + SystemClock.elapsedRealtimeNanos()) - AndroidProfiler.this.profileStartNanos;
                if (nanoTime < 0) {
                    return;
                }
                if (z2) {
                    AndroidProfiler.this.frozenFrameRenderMeasurements.addLast(new ProfileMeasurementValue(Long.valueOf(nanoTime), Long.valueOf(j3)));
                } else if (z) {
                    AndroidProfiler.this.slowFrameRenderMeasurements.addLast(new ProfileMeasurementValue(Long.valueOf(nanoTime), Long.valueOf(j3)));
                }
                if (f != this.lastRefreshRate) {
                    this.lastRefreshRate = f;
                    AndroidProfiler.this.screenFrameRateMeasurements.addLast(new ProfileMeasurementValue(Long.valueOf(nanoTime), Float.valueOf(f)));
                }
            }
        });
        try {
            this.scheduledFinish = this.executorService.schedule(new Runnable() { // from class: io.sentry.android.core.AndroidProfiler$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    AndroidProfiler.this.m5647lambda$start$0$iosentryandroidcoreAndroidProfiler();
                }
            }, 30000L);
        } catch (RejectedExecutionException e) {
            this.logger.log(SentryLevel.ERROR, "Failed to call the executor. Profiling will not be automatically finished. Did you call Sentry.close()?", e);
        }
        this.profileStartNanos = SystemClock.elapsedRealtimeNanos();
        long elapsedCpuTime = Process.getElapsedCpuTime();
        try {
            Debug.startMethodTracingSampling(this.traceFile.getPath(), BUFFER_SIZE_BYTES, this.intervalUs);
            this.isRunning = true;
            return new ProfileStartData(this.profileStartNanos, elapsedCpuTime);
        } catch (Throwable th) {
            endAndCollect(false, null);
            this.logger.log(SentryLevel.ERROR, "Unable to start a profile: ", th);
            this.isRunning = false;
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$start$0$io-sentry-android-core-AndroidProfiler, reason: not valid java name */
    public /* synthetic */ void m5647lambda$start$0$iosentryandroidcoreAndroidProfiler() {
        this.timedOutProfilingData = endAndCollect(true, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x004c A[Catch: all -> 0x00bf, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0005, B:9:0x0009, B:11:0x000f, B:14:0x001c, B:21:0x002b, B:22:0x0039, B:24:0x004c, B:27:0x0059, B:29:0x0061, B:30:0x0071, B:32:0x0079, B:33:0x0089, B:35:0x0091, B:36:0x00a1, B:38:0x00a8, B:39:0x00ae, B:48:0x00bc, B:49:0x00be, B:45:0x002f, B:20:0x0028), top: B:2:0x0001, inners: #0, #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0059 A[Catch: all -> 0x00bf, TRY_ENTER, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0005, B:9:0x0009, B:11:0x000f, B:14:0x001c, B:21:0x002b, B:22:0x0039, B:24:0x004c, B:27:0x0059, B:29:0x0061, B:30:0x0071, B:32:0x0079, B:33:0x0089, B:35:0x0091, B:36:0x00a1, B:38:0x00a8, B:39:0x00ae, B:48:0x00bc, B:49:0x00be, B:45:0x002f, B:20:0x0028), top: B:2:0x0001, inners: #0, #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized io.sentry.android.core.AndroidProfiler.ProfileEndData endAndCollect(boolean r13, java.util.List<io.sentry.PerformanceCollectionData> r14) {
        /*
            r12 = this;
            monitor-enter(r12)
            io.sentry.android.core.AndroidProfiler$ProfileEndData r0 = r12.timedOutProfilingData     // Catch: java.lang.Throwable -> Lbf
            if (r0 == 0) goto L9
            io.sentry.android.core.AndroidProfiler$ProfileEndData r13 = r12.timedOutProfilingData     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r12)
            return r13
        L9:
            boolean r0 = r12.isRunning     // Catch: java.lang.Throwable -> Lbf
            r1 = 0
            r2 = 0
            if (r0 != 0) goto L1c
            io.sentry.ILogger r13 = r12.logger     // Catch: java.lang.Throwable -> Lbf
            io.sentry.SentryLevel r14 = io.sentry.SentryLevel.WARNING     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r0 = "Profiler not running"
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lbf
            r13.log(r14, r0, r2)     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r12)
            return r1
        L1c:
            io.sentry.android.core.BuildInfoProvider r0 = r12.buildInfoProvider     // Catch: java.lang.Throwable -> Lbf
            int r0 = r0.getSdkInfoVersion()     // Catch: java.lang.Throwable -> Lbf
            r3 = 21
            if (r0 >= r3) goto L28
            monitor-exit(r12)
            return r1
        L28:
            android.os.Debug.stopMethodTracing()     // Catch: java.lang.Throwable -> L2e
        L2b:
            r12.isRunning = r2     // Catch: java.lang.Throwable -> Lbf
            goto L39
        L2e:
            r0 = move-exception
            io.sentry.ILogger r3 = r12.logger     // Catch: java.lang.Throwable -> Lbb
            io.sentry.SentryLevel r4 = io.sentry.SentryLevel.ERROR     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r5 = "Error while stopping profiling: "
            r3.log(r4, r5, r0)     // Catch: java.lang.Throwable -> Lbb
            goto L2b
        L39:
            io.sentry.android.core.internal.util.SentryFrameMetricsCollector r0 = r12.frameMetricsCollector     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r3 = r12.frameMetricsCollectorId     // Catch: java.lang.Throwable -> Lbf
            r0.stopCollection(r3)     // Catch: java.lang.Throwable -> Lbf
            long r5 = android.os.SystemClock.elapsedRealtimeNanos()     // Catch: java.lang.Throwable -> Lbf
            long r7 = android.os.Process.getElapsedCpuTime()     // Catch: java.lang.Throwable -> Lbf
            java.io.File r0 = r12.traceFile     // Catch: java.lang.Throwable -> Lbf
            if (r0 != 0) goto L59
            io.sentry.ILogger r13 = r12.logger     // Catch: java.lang.Throwable -> Lbf
            io.sentry.SentryLevel r14 = io.sentry.SentryLevel.ERROR     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r0 = "Trace file does not exists"
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> Lbf
            r13.log(r14, r0, r2)     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r12)
            return r1
        L59:
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r0 = r12.slowFrameRenderMeasurements     // Catch: java.lang.Throwable -> Lbf
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbf
            if (r0 != 0) goto L71
            java.util.Map<java.lang.String, io.sentry.profilemeasurements.ProfileMeasurement> r0 = r12.measurementsMap     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r2 = "slow_frame_renders"
            io.sentry.profilemeasurements.ProfileMeasurement r3 = new io.sentry.profilemeasurements.ProfileMeasurement     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r4 = "nanosecond"
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r9 = r12.slowFrameRenderMeasurements     // Catch: java.lang.Throwable -> Lbf
            r3.<init>(r4, r9)     // Catch: java.lang.Throwable -> Lbf
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> Lbf
        L71:
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r0 = r12.frozenFrameRenderMeasurements     // Catch: java.lang.Throwable -> Lbf
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbf
            if (r0 != 0) goto L89
            java.util.Map<java.lang.String, io.sentry.profilemeasurements.ProfileMeasurement> r0 = r12.measurementsMap     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r2 = "frozen_frame_renders"
            io.sentry.profilemeasurements.ProfileMeasurement r3 = new io.sentry.profilemeasurements.ProfileMeasurement     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r4 = "nanosecond"
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r9 = r12.frozenFrameRenderMeasurements     // Catch: java.lang.Throwable -> Lbf
            r3.<init>(r4, r9)     // Catch: java.lang.Throwable -> Lbf
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> Lbf
        L89:
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r0 = r12.screenFrameRateMeasurements     // Catch: java.lang.Throwable -> Lbf
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbf
            if (r0 != 0) goto La1
            java.util.Map<java.lang.String, io.sentry.profilemeasurements.ProfileMeasurement> r0 = r12.measurementsMap     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r2 = "screen_frame_rates"
            io.sentry.profilemeasurements.ProfileMeasurement r3 = new io.sentry.profilemeasurements.ProfileMeasurement     // Catch: java.lang.Throwable -> Lbf
            java.lang.String r4 = "hz"
            java.util.ArrayDeque<io.sentry.profilemeasurements.ProfileMeasurementValue> r9 = r12.screenFrameRateMeasurements     // Catch: java.lang.Throwable -> Lbf
            r3.<init>(r4, r9)     // Catch: java.lang.Throwable -> Lbf
            r0.put(r2, r3)     // Catch: java.lang.Throwable -> Lbf
        La1:
            r12.putPerformanceCollectionDataInMeasurements(r14)     // Catch: java.lang.Throwable -> Lbf
            java.util.concurrent.Future<?> r14 = r12.scheduledFinish     // Catch: java.lang.Throwable -> Lbf
            if (r14 == 0) goto Lae
            r0 = 1
            r14.cancel(r0)     // Catch: java.lang.Throwable -> Lbf
            r12.scheduledFinish = r1     // Catch: java.lang.Throwable -> Lbf
        Lae:
            io.sentry.android.core.AndroidProfiler$ProfileEndData r14 = new io.sentry.android.core.AndroidProfiler$ProfileEndData     // Catch: java.lang.Throwable -> Lbf
            java.io.File r10 = r12.traceFile     // Catch: java.lang.Throwable -> Lbf
            java.util.Map<java.lang.String, io.sentry.profilemeasurements.ProfileMeasurement> r11 = r12.measurementsMap     // Catch: java.lang.Throwable -> Lbf
            r4 = r14
            r9 = r13
            r4.<init>(r5, r7, r9, r10, r11)     // Catch: java.lang.Throwable -> Lbf
            monitor-exit(r12)
            return r14
        Lbb:
            r13 = move-exception
            r12.isRunning = r2     // Catch: java.lang.Throwable -> Lbf
            throw r13     // Catch: java.lang.Throwable -> Lbf
        Lbf:
            r13 = move-exception
            monitor-exit(r12)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.AndroidProfiler.endAndCollect(boolean, java.util.List):io.sentry.android.core.AndroidProfiler$ProfileEndData");
    }

    public synchronized void close() {
        Future<?> future = this.scheduledFinish;
        if (future != null) {
            future.cancel(true);
            this.scheduledFinish = null;
        }
        if (this.isRunning) {
            endAndCollect(true, null);
        }
    }

    private void putPerformanceCollectionDataInMeasurements(List<PerformanceCollectionData> list) {
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            return;
        }
        long elapsedRealtimeNanos = (SystemClock.elapsedRealtimeNanos() - this.profileStartNanos) - TimeUnit.MILLISECONDS.toNanos(System.currentTimeMillis());
        if (list != null) {
            ArrayDeque arrayDeque = new ArrayDeque(list.size());
            ArrayDeque arrayDeque2 = new ArrayDeque(list.size());
            ArrayDeque arrayDeque3 = new ArrayDeque(list.size());
            synchronized (list) {
                for (PerformanceCollectionData performanceCollectionData : list) {
                    CpuCollectionData cpuData = performanceCollectionData.getCpuData();
                    MemoryCollectionData memoryData = performanceCollectionData.getMemoryData();
                    if (cpuData != null) {
                        arrayDeque3.add(new ProfileMeasurementValue(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(cpuData.getTimestampMillis()) + elapsedRealtimeNanos), Double.valueOf(cpuData.getCpuUsagePercentage())));
                    }
                    if (memoryData != null && memoryData.getUsedHeapMemory() > -1) {
                        arrayDeque.add(new ProfileMeasurementValue(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(memoryData.getTimestampMillis()) + elapsedRealtimeNanos), Long.valueOf(memoryData.getUsedHeapMemory())));
                    }
                    if (memoryData != null && memoryData.getUsedNativeMemory() > -1) {
                        arrayDeque2.add(new ProfileMeasurementValue(Long.valueOf(TimeUnit.MILLISECONDS.toNanos(memoryData.getTimestampMillis()) + elapsedRealtimeNanos), Long.valueOf(memoryData.getUsedNativeMemory())));
                    }
                }
            }
            if (!arrayDeque3.isEmpty()) {
                this.measurementsMap.put(ProfileMeasurement.ID_CPU_USAGE, new ProfileMeasurement(ProfileMeasurement.UNIT_PERCENT, arrayDeque3));
            }
            if (!arrayDeque.isEmpty()) {
                this.measurementsMap.put(ProfileMeasurement.ID_MEMORY_FOOTPRINT, new ProfileMeasurement(ProfileMeasurement.UNIT_BYTES, arrayDeque));
            }
            if (arrayDeque2.isEmpty()) {
                return;
            }
            this.measurementsMap.put(ProfileMeasurement.ID_MEMORY_NATIVE_FOOTPRINT, new ProfileMeasurement(ProfileMeasurement.UNIT_BYTES, arrayDeque2));
        }
    }
}
