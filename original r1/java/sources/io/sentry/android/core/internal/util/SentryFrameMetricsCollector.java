package io.sentry.android.core.internal.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.view.Choreographer;
import android.view.FrameMetrics;
import android.view.Window;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.util.Objects;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public final class SentryFrameMetricsCollector implements Application.ActivityLifecycleCallbacks {
    private final BuildInfoProvider buildInfoProvider;
    private Choreographer choreographer;
    private Field choreographerLastFrameTimeField;
    private WeakReference<Window> currentWindow;
    private Window.OnFrameMetricsAvailableListener frameMetricsAvailableListener;
    private Handler handler;
    private boolean isAvailable;
    private long lastFrameEndNanos;
    private long lastFrameStartNanos;
    private final Map<String, FrameMetricsCollectorListener> listenerMap;
    private final ILogger logger;
    private final Set<Window> trackedWindows;
    private final WindowFrameMetricsManager windowFrameMetricsManager;
    private static final long oneSecondInNanos = TimeUnit.SECONDS.toNanos(1);
    private static final long frozenFrameThresholdNanos = TimeUnit.MILLISECONDS.toNanos(700);

    /* loaded from: classes3.dex */
    public interface FrameMetricsCollectorListener {
        void onFrameMetricCollected(long j, long j2, long j3, long j4, boolean z, boolean z2, float f);
    }

    public static boolean isFrozen(long j) {
        return j > frozenFrameThresholdNanos;
    }

    public static boolean isSlow(long j, long j2) {
        return j > j2;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public SentryFrameMetricsCollector(Context context, SentryOptions sentryOptions, BuildInfoProvider buildInfoProvider) {
        this(context, sentryOptions, buildInfoProvider, new WindowFrameMetricsManager() { // from class: io.sentry.android.core.internal.util.SentryFrameMetricsCollector.1
        });
    }

    public SentryFrameMetricsCollector(Context context, ILogger iLogger, BuildInfoProvider buildInfoProvider) {
        this(context, iLogger, buildInfoProvider, new WindowFrameMetricsManager() { // from class: io.sentry.android.core.internal.util.SentryFrameMetricsCollector.2
        });
    }

    public SentryFrameMetricsCollector(Context context, SentryOptions sentryOptions, BuildInfoProvider buildInfoProvider, WindowFrameMetricsManager windowFrameMetricsManager) {
        this(context, sentryOptions.getLogger(), buildInfoProvider, windowFrameMetricsManager);
    }

    public SentryFrameMetricsCollector(Context context, final ILogger iLogger, final BuildInfoProvider buildInfoProvider, WindowFrameMetricsManager windowFrameMetricsManager) {
        this.trackedWindows = new CopyOnWriteArraySet();
        this.listenerMap = new ConcurrentHashMap();
        this.isAvailable = false;
        this.lastFrameStartNanos = 0L;
        this.lastFrameEndNanos = 0L;
        Objects.requireNonNull(context, "The context is required");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "Logger is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
        this.windowFrameMetricsManager = (WindowFrameMetricsManager) Objects.requireNonNull(windowFrameMetricsManager, "WindowFrameMetricsManager is required");
        if ((context instanceof Application) && buildInfoProvider.getSdkInfoVersion() >= 24) {
            this.isAvailable = true;
            HandlerThread handlerThread = new HandlerThread("io.sentry.android.core.internal.util.SentryFrameMetricsCollector");
            handlerThread.setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: io.sentry.android.core.internal.util.SentryFrameMetricsCollector$$ExternalSyntheticLambda0
                @Override // java.lang.Thread.UncaughtExceptionHandler
                public final void uncaughtException(Thread thread, Throwable th) {
                    ILogger.this.log(SentryLevel.ERROR, "Error during frames measurements.", th);
                }
            });
            handlerThread.start();
            this.handler = new Handler(handlerThread.getLooper());
            ((Application) context).registerActivityLifecycleCallbacks(this);
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: io.sentry.android.core.internal.util.SentryFrameMetricsCollector$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    SentryFrameMetricsCollector.this.m5665x2ab0da68(iLogger);
                }
            });
            try {
                Field declaredField = Choreographer.class.getDeclaredField("mLastFrameTimeNanos");
                this.choreographerLastFrameTimeField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
                iLogger.log(SentryLevel.ERROR, "Unable to get the frame timestamp from the choreographer: ", e);
            }
            this.frameMetricsAvailableListener = new Window.OnFrameMetricsAvailableListener() { // from class: io.sentry.android.core.internal.util.SentryFrameMetricsCollector$$ExternalSyntheticLambda2
                @Override // android.view.Window.OnFrameMetricsAvailableListener
                public final void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                    SentryFrameMetricsCollector.this.m5666x94e06287(buildInfoProvider, window, frameMetrics, i);
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$io-sentry-android-core-internal-util-SentryFrameMetricsCollector, reason: not valid java name */
    public /* synthetic */ void m5665x2ab0da68(ILogger iLogger) {
        try {
            this.choreographer = Choreographer.getInstance();
        } catch (Throwable th) {
            iLogger.log(SentryLevel.ERROR, "Error retrieving Choreographer instance. Slow and frozen frames will not be reported.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$io-sentry-android-core-internal-util-SentryFrameMetricsCollector, reason: not valid java name */
    public /* synthetic */ void m5666x94e06287(BuildInfoProvider buildInfoProvider, Window window, FrameMetrics frameMetrics, int i) {
        float refreshRate;
        long nanoTime = System.nanoTime();
        if (buildInfoProvider.getSdkInfoVersion() >= 30) {
            refreshRate = window.getContext().getDisplay().getRefreshRate();
        } else {
            refreshRate = window.getWindowManager().getDefaultDisplay().getRefreshRate();
        }
        long j = oneSecondInNanos;
        long frameCpuDuration = getFrameCpuDuration(frameMetrics);
        long max = Math.max(0L, frameCpuDuration - (((float) j) / refreshRate));
        long frameStartTimestamp = getFrameStartTimestamp(frameMetrics);
        if (frameStartTimestamp < 0) {
            frameStartTimestamp = nanoTime - frameCpuDuration;
        }
        long max2 = Math.max(frameStartTimestamp, this.lastFrameEndNanos);
        if (max2 == this.lastFrameStartNanos) {
            return;
        }
        this.lastFrameStartNanos = max2;
        this.lastFrameEndNanos = max2 + frameCpuDuration;
        boolean isSlow = isSlow(frameCpuDuration, ((float) j) / (refreshRate - 1.0f));
        boolean z = isSlow && isFrozen(frameCpuDuration);
        Iterator<FrameMetricsCollectorListener> it = this.listenerMap.values().iterator();
        while (it.hasNext()) {
            it.next().onFrameMetricCollected(max2, this.lastFrameEndNanos, frameCpuDuration, max, isSlow, z, refreshRate);
            frameCpuDuration = frameCpuDuration;
        }
    }

    private long getFrameStartTimestamp(FrameMetrics frameMetrics) {
        if (this.buildInfoProvider.getSdkInfoVersion() >= 26) {
            return frameMetrics.getMetric(10);
        }
        return getLastKnownFrameStartTimeNanos();
    }

    private long getFrameCpuDuration(FrameMetrics frameMetrics) {
        return frameMetrics.getMetric(0) + frameMetrics.getMetric(1) + frameMetrics.getMetric(2) + frameMetrics.getMetric(3) + frameMetrics.getMetric(4) + frameMetrics.getMetric(5);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        setCurrentWindow(activity.getWindow());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        stopTrackingWindow(activity.getWindow());
        WeakReference<Window> weakReference = this.currentWindow;
        if (weakReference == null || weakReference.get() != activity.getWindow()) {
            return;
        }
        this.currentWindow = null;
    }

    public String startCollection(FrameMetricsCollectorListener frameMetricsCollectorListener) {
        if (!this.isAvailable) {
            return null;
        }
        String uuid = UUID.randomUUID().toString();
        this.listenerMap.put(uuid, frameMetricsCollectorListener);
        trackCurrentWindow();
        return uuid;
    }

    public void stopCollection(String str) {
        if (this.isAvailable) {
            if (str != null) {
                this.listenerMap.remove(str);
            }
            WeakReference<Window> weakReference = this.currentWindow;
            Window window = weakReference != null ? weakReference.get() : null;
            if (window == null || !this.listenerMap.isEmpty()) {
                return;
            }
            stopTrackingWindow(window);
        }
    }

    private void stopTrackingWindow(Window window) {
        if (this.trackedWindows.contains(window)) {
            if (this.buildInfoProvider.getSdkInfoVersion() >= 24) {
                try {
                    this.windowFrameMetricsManager.removeOnFrameMetricsAvailableListener(window, this.frameMetricsAvailableListener);
                } catch (Exception e) {
                    this.logger.log(SentryLevel.ERROR, "Failed to remove frameMetricsAvailableListener", e);
                }
            }
            this.trackedWindows.remove(window);
        }
    }

    private void setCurrentWindow(Window window) {
        WeakReference<Window> weakReference = this.currentWindow;
        if (weakReference == null || weakReference.get() != window) {
            this.currentWindow = new WeakReference<>(window);
            trackCurrentWindow();
        }
    }

    private void trackCurrentWindow() {
        WeakReference<Window> weakReference = this.currentWindow;
        Window window = weakReference != null ? weakReference.get() : null;
        if (window == null || !this.isAvailable || this.trackedWindows.contains(window) || this.listenerMap.isEmpty() || this.buildInfoProvider.getSdkInfoVersion() < 24 || this.handler == null) {
            return;
        }
        this.trackedWindows.add(window);
        this.windowFrameMetricsManager.addOnFrameMetricsAvailableListener(window, this.frameMetricsAvailableListener, this.handler);
    }

    public long getLastKnownFrameStartTimeNanos() {
        Field field;
        Choreographer choreographer = this.choreographer;
        if (choreographer == null || (field = this.choreographerLastFrameTimeField) == null) {
            return -1L;
        }
        try {
            Long l = (Long) field.get(choreographer);
            if (l != null) {
                return l.longValue();
            }
            return -1L;
        } catch (IllegalAccessException unused) {
            return -1L;
        }
    }

    /* loaded from: classes3.dex */
    public interface WindowFrameMetricsManager {
        default void addOnFrameMetricsAvailableListener(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener, Handler handler) {
            window.addOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener, handler);
        }

        default void removeOnFrameMetricsAvailableListener(Window window, Window.OnFrameMetricsAvailableListener onFrameMetricsAvailableListener) {
            window.removeOnFrameMetricsAvailableListener(onFrameMetricsAvailableListener);
        }
    }
}
