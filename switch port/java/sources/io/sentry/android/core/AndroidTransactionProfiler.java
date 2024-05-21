package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.HubAdapter;
import io.sentry.IHub;
import io.sentry.ILogger;
import io.sentry.ISentryExecutorService;
import io.sentry.ITransaction;
import io.sentry.ITransactionProfiler;
import io.sentry.PerformanceCollectionData;
import io.sentry.ProfilingTraceData;
import io.sentry.ProfilingTransactionData;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.AndroidProfiler;
import io.sentry.android.core.internal.util.CpuInfoUtils;
import io.sentry.android.core.internal.util.SentryFrameMetricsCollector;
import io.sentry.util.Objects;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class AndroidTransactionProfiler implements ITransactionProfiler {
    private final BuildInfoProvider buildInfoProvider;
    private final Context context;
    private ProfilingTransactionData currentProfilingTransactionData;
    private final ISentryExecutorService executorService;
    private final SentryFrameMetricsCollector frameMetricsCollector;
    private boolean isInitialized;
    private final boolean isProfilingEnabled;
    private final ILogger logger;
    private long profileStartCpuMillis;
    private long profileStartNanos;
    private AndroidProfiler profiler;
    private final String profilingTracesDirPath;
    private final int profilingTracesHz;
    private int transactionsCounter;

    int getTransactionsCounter() {
        return this.transactionsCounter;
    }

    @Override // io.sentry.ITransactionProfiler
    public boolean isRunning() {
        return this.transactionsCounter != 0;
    }

    @Deprecated
    public AndroidTransactionProfiler(Context context, SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider, SentryFrameMetricsCollector sentryFrameMetricsCollector, IHub iHub) {
        this(context, sentryAndroidOptions, buildInfoProvider, sentryFrameMetricsCollector);
    }

    public AndroidTransactionProfiler(Context context, SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider, SentryFrameMetricsCollector sentryFrameMetricsCollector) {
        this(context, buildInfoProvider, sentryFrameMetricsCollector, sentryAndroidOptions.getLogger(), sentryAndroidOptions.getProfilingTracesDirPath(), sentryAndroidOptions.isProfilingEnabled(), sentryAndroidOptions.getProfilingTracesHz(), sentryAndroidOptions.getExecutorService());
    }

    public AndroidTransactionProfiler(Context context, BuildInfoProvider buildInfoProvider, SentryFrameMetricsCollector sentryFrameMetricsCollector, ILogger iLogger, String str, boolean z, int i, ISentryExecutorService iSentryExecutorService) {
        this.isInitialized = false;
        this.transactionsCounter = 0;
        this.profiler = null;
        this.context = (Context) Objects.requireNonNull(context, "The application context is required");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "ILogger is required");
        this.frameMetricsCollector = (SentryFrameMetricsCollector) Objects.requireNonNull(sentryFrameMetricsCollector, "SentryFrameMetricsCollector is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "The BuildInfoProvider is required.");
        this.profilingTracesDirPath = str;
        this.isProfilingEnabled = z;
        this.profilingTracesHz = i;
        this.executorService = (ISentryExecutorService) Objects.requireNonNull(iSentryExecutorService, "The ISentryExecutorService is required.");
    }

    private void init() {
        if (this.isInitialized) {
            return;
        }
        this.isInitialized = true;
        if (!this.isProfilingEnabled) {
            this.logger.log(SentryLevel.INFO, "Profiling is disabled in options.", new Object[0]);
            return;
        }
        if (this.profilingTracesDirPath == null) {
            this.logger.log(SentryLevel.WARNING, "Disabling profiling because no profiling traces dir path is defined in options.", new Object[0]);
        } else if (this.profilingTracesHz <= 0) {
            this.logger.log(SentryLevel.WARNING, "Disabling profiling because trace rate is set to %d", Integer.valueOf(this.profilingTracesHz));
        } else {
            this.profiler = new AndroidProfiler(this.profilingTracesDirPath, ((int) TimeUnit.SECONDS.toMicros(1L)) / this.profilingTracesHz, this.frameMetricsCollector, this.executorService, this.logger, this.buildInfoProvider);
        }
    }

    @Override // io.sentry.ITransactionProfiler
    public synchronized void start() {
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            return;
        }
        init();
        int i = this.transactionsCounter + 1;
        this.transactionsCounter = i;
        if (i == 1 && onFirstStart()) {
            this.logger.log(SentryLevel.DEBUG, "Profiler started.", new Object[0]);
        } else {
            this.transactionsCounter--;
            this.logger.log(SentryLevel.WARNING, "A profile is already running. This profile will be ignored.", new Object[0]);
        }
    }

    private boolean onFirstStart() {
        AndroidProfiler.ProfileStartData start;
        AndroidProfiler androidProfiler = this.profiler;
        if (androidProfiler == null || (start = androidProfiler.start()) == null) {
            return false;
        }
        this.profileStartNanos = start.startNanos;
        this.profileStartCpuMillis = start.startCpuMillis;
        return true;
    }

    @Override // io.sentry.ITransactionProfiler
    public synchronized void bindTransaction(ITransaction iTransaction) {
        if (this.transactionsCounter > 0 && this.currentProfilingTransactionData == null) {
            this.currentProfilingTransactionData = new ProfilingTransactionData(iTransaction, Long.valueOf(this.profileStartNanos), Long.valueOf(this.profileStartCpuMillis));
        }
    }

    @Override // io.sentry.ITransactionProfiler
    public synchronized ProfilingTraceData onTransactionFinish(ITransaction iTransaction, List<PerformanceCollectionData> list, SentryOptions sentryOptions) {
        return onTransactionFinish(iTransaction.getName(), iTransaction.getEventId().toString(), iTransaction.getSpanContext().getTraceId().toString(), false, list, sentryOptions);
    }

    private synchronized ProfilingTraceData onTransactionFinish(String str, String str2, String str3, boolean z, List<PerformanceCollectionData> list, SentryOptions sentryOptions) {
        String str4;
        if (this.profiler == null) {
            return null;
        }
        if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
            return null;
        }
        ProfilingTransactionData profilingTransactionData = this.currentProfilingTransactionData;
        if (profilingTransactionData != null && profilingTransactionData.getId().equals(str2)) {
            int i = this.transactionsCounter;
            if (i > 0) {
                this.transactionsCounter = i - 1;
            }
            this.logger.log(SentryLevel.DEBUG, "Transaction %s (%s) finished.", str, str3);
            if (this.transactionsCounter != 0) {
                ProfilingTransactionData profilingTransactionData2 = this.currentProfilingTransactionData;
                if (profilingTransactionData2 != null) {
                    profilingTransactionData2.notifyFinish(Long.valueOf(SystemClock.elapsedRealtimeNanos()), Long.valueOf(this.profileStartNanos), Long.valueOf(Process.getElapsedCpuTime()), Long.valueOf(this.profileStartCpuMillis));
                }
                return null;
            }
            AndroidProfiler.ProfileEndData endAndCollect = this.profiler.endAndCollect(false, list);
            if (endAndCollect == null) {
                return null;
            }
            long j = endAndCollect.endNanos - this.profileStartNanos;
            ArrayList arrayList = new ArrayList(1);
            ProfilingTransactionData profilingTransactionData3 = this.currentProfilingTransactionData;
            if (profilingTransactionData3 != null) {
                arrayList.add(profilingTransactionData3);
            }
            this.currentProfilingTransactionData = null;
            this.transactionsCounter = 0;
            ActivityManager.MemoryInfo memInfo = getMemInfo();
            String l = memInfo != null ? Long.toString(memInfo.totalMem) : "0";
            String[] strArr = Build.SUPPORTED_ABIS;
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((ProfilingTransactionData) it.next()).notifyFinish(Long.valueOf(endAndCollect.endNanos), Long.valueOf(this.profileStartNanos), Long.valueOf(endAndCollect.endCpuMillis), Long.valueOf(this.profileStartCpuMillis));
            }
            File file = endAndCollect.traceFile;
            String l2 = Long.toString(j);
            int sdkInfoVersion = this.buildInfoProvider.getSdkInfoVersion();
            String str5 = (strArr == null || strArr.length <= 0) ? "" : strArr[0];
            Callable callable = new Callable() { // from class: io.sentry.android.core.AndroidTransactionProfiler$$ExternalSyntheticLambda0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    List readMaxFrequencies;
                    readMaxFrequencies = CpuInfoUtils.getInstance().readMaxFrequencies();
                    return readMaxFrequencies;
                }
            };
            String manufacturer = this.buildInfoProvider.getManufacturer();
            String model = this.buildInfoProvider.getModel();
            String versionRelease = this.buildInfoProvider.getVersionRelease();
            Boolean isEmulator = this.buildInfoProvider.isEmulator();
            String proguardUuid = sentryOptions.getProguardUuid();
            String release = sentryOptions.getRelease();
            String environment = sentryOptions.getEnvironment();
            if (!endAndCollect.didTimeout && !z) {
                str4 = ProfilingTraceData.TRUNCATION_REASON_NORMAL;
                return new ProfilingTraceData(file, arrayList, str, str2, str3, l2, sdkInfoVersion, str5, callable, manufacturer, model, versionRelease, isEmulator, l, proguardUuid, release, environment, str4, endAndCollect.measurementsMap);
            }
            str4 = ProfilingTraceData.TRUNCATION_REASON_TIMEOUT;
            return new ProfilingTraceData(file, arrayList, str, str2, str3, l2, sdkInfoVersion, str5, callable, manufacturer, model, versionRelease, isEmulator, l, proguardUuid, release, environment, str4, endAndCollect.measurementsMap);
        }
        this.logger.log(SentryLevel.INFO, "Transaction %s (%s) finished, but was not currently being profiled. Skipping", str, str3);
        return null;
    }

    @Override // io.sentry.ITransactionProfiler
    public void close() {
        ProfilingTransactionData profilingTransactionData = this.currentProfilingTransactionData;
        if (profilingTransactionData != null) {
            onTransactionFinish(profilingTransactionData.getName(), this.currentProfilingTransactionData.getId(), this.currentProfilingTransactionData.getTraceId(), true, null, HubAdapter.getInstance().getOptions());
        } else {
            int i = this.transactionsCounter;
            if (i != 0) {
                this.transactionsCounter = i - 1;
            }
        }
        AndroidProfiler androidProfiler = this.profiler;
        if (androidProfiler != null) {
            androidProfiler.close();
        }
    }

    private ActivityManager.MemoryInfo getMemInfo() {
        try {
            ActivityManager activityManager = (ActivityManager) this.context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            this.logger.log(SentryLevel.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            this.logger.log(SentryLevel.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }
}
