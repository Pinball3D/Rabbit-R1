package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;
import io.sentry.BackfillingEventProcessor;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IpAddressUtils;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryEvent;
import io.sentry.SentryExceptionFactory;
import io.sentry.SentryLevel;
import io.sentry.SentryStackTraceFactory;
import io.sentry.SpanContext;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.internal.util.CpuInfoUtils;
import io.sentry.cache.PersistingOptionsObserver;
import io.sentry.cache.PersistingScopeObserver;
import io.sentry.hints.AbnormalExit;
import io.sentry.hints.Backfillable;
import io.sentry.protocol.App;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.DebugMeta;
import io.sentry.protocol.Device;
import io.sentry.protocol.Mechanism;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Request;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryStackTrace;
import io.sentry.protocol.SentryThread;
import io.sentry.protocol.SentryTransaction;
import io.sentry.protocol.User;
import io.sentry.util.HintUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes3.dex */
public final class AnrV2EventProcessor implements BackfillingEventProcessor {
    private final BuildInfoProvider buildInfoProvider;
    private final Context context;
    private final SentryAndroidOptions options;
    private final SentryExceptionFactory sentryExceptionFactory;

    @Override // io.sentry.EventProcessor
    public SentryTransaction process(SentryTransaction sentryTransaction, Hint hint) {
        return sentryTransaction;
    }

    public AnrV2EventProcessor(Context context, SentryAndroidOptions sentryAndroidOptions, BuildInfoProvider buildInfoProvider) {
        this.context = context;
        this.options = sentryAndroidOptions;
        this.buildInfoProvider = buildInfoProvider;
        this.sentryExceptionFactory = new SentryExceptionFactory(new SentryStackTraceFactory(sentryAndroidOptions));
    }

    @Override // io.sentry.EventProcessor
    public SentryEvent process(SentryEvent sentryEvent, Hint hint) {
        Object sentrySdkHint = HintUtils.getSentrySdkHint(hint);
        if (!(sentrySdkHint instanceof Backfillable)) {
            this.options.getLogger().log(SentryLevel.WARNING, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping.", new Object[0]);
            return sentryEvent;
        }
        setExceptions(sentryEvent, sentrySdkHint);
        setPlatform(sentryEvent);
        mergeOS(sentryEvent);
        setDevice(sentryEvent);
        if (!((Backfillable) sentrySdkHint).shouldEnrich()) {
            this.options.getLogger().log(SentryLevel.DEBUG, "The event is Backfillable, but should not be enriched, skipping.", new Object[0]);
            return sentryEvent;
        }
        backfillScope(sentryEvent, sentrySdkHint);
        backfillOptions(sentryEvent, sentrySdkHint);
        setStaticValues(sentryEvent);
        return sentryEvent;
    }

    private void backfillScope(SentryEvent sentryEvent, Object obj) {
        setRequest(sentryEvent);
        setUser(sentryEvent);
        setScopeTags(sentryEvent);
        setBreadcrumbs(sentryEvent);
        setExtras(sentryEvent);
        setContexts(sentryEvent);
        setTransaction(sentryEvent);
        setFingerprints(sentryEvent, obj);
        setLevel(sentryEvent);
        setTrace(sentryEvent);
    }

    private void setTrace(SentryEvent sentryEvent) {
        SpanContext spanContext = (SpanContext) PersistingScopeObserver.read(this.options, PersistingScopeObserver.TRACE_FILENAME, SpanContext.class);
        if (sentryEvent.getContexts().getTrace() != null || spanContext == null || spanContext.getSpanId() == null || spanContext.getTraceId() == null) {
            return;
        }
        sentryEvent.getContexts().setTrace(spanContext);
    }

    private void setLevel(SentryEvent sentryEvent) {
        SentryLevel sentryLevel = (SentryLevel) PersistingScopeObserver.read(this.options, PersistingScopeObserver.LEVEL_FILENAME, SentryLevel.class);
        if (sentryEvent.getLevel() == null) {
            sentryEvent.setLevel(sentryLevel);
        }
    }

    private void setFingerprints(SentryEvent sentryEvent, Object obj) {
        List<String> list = (List) PersistingScopeObserver.read(this.options, PersistingScopeObserver.FINGERPRINT_FILENAME, List.class);
        if (sentryEvent.getFingerprints() == null) {
            sentryEvent.setFingerprints(list);
        }
        boolean isBackgroundAnr = isBackgroundAnr(obj);
        if (sentryEvent.getFingerprints() == null) {
            String[] strArr = new String[2];
            strArr[0] = "{{ default }}";
            strArr[1] = isBackgroundAnr ? "background-anr" : "foreground-anr";
            sentryEvent.setFingerprints(Arrays.asList(strArr));
        }
    }

    private void setTransaction(SentryEvent sentryEvent) {
        String str = (String) PersistingScopeObserver.read(this.options, PersistingScopeObserver.TRANSACTION_FILENAME, String.class);
        if (sentryEvent.getTransaction() == null) {
            sentryEvent.setTransaction(str);
        }
    }

    private void setContexts(SentryBaseEvent sentryBaseEvent) {
        Contexts contexts = (Contexts) PersistingScopeObserver.read(this.options, PersistingScopeObserver.CONTEXTS_FILENAME, Contexts.class);
        if (contexts == null) {
            return;
        }
        Contexts contexts2 = sentryBaseEvent.getContexts();
        for (Map.Entry<String, Object> entry : new Contexts(contexts).entrySet()) {
            Object value = entry.getValue();
            if (!"trace".equals(entry.getKey()) || !(value instanceof SpanContext)) {
                if (!contexts2.containsKey(entry.getKey())) {
                    contexts2.put(entry.getKey(), value);
                }
            }
        }
    }

    private void setExtras(SentryBaseEvent sentryBaseEvent) {
        Map map = (Map) PersistingScopeObserver.read(this.options, PersistingScopeObserver.EXTRAS_FILENAME, Map.class);
        if (map == null) {
            return;
        }
        if (sentryBaseEvent.getExtras() == null) {
            sentryBaseEvent.setExtras(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!sentryBaseEvent.getExtras().containsKey(entry.getKey())) {
                sentryBaseEvent.getExtras().put((String) entry.getKey(), entry.getValue());
            }
        }
    }

    private void setBreadcrumbs(SentryBaseEvent sentryBaseEvent) {
        List list = (List) PersistingScopeObserver.read(this.options, PersistingScopeObserver.BREADCRUMBS_FILENAME, List.class, new Breadcrumb.Deserializer());
        if (list == null) {
            return;
        }
        if (sentryBaseEvent.getBreadcrumbs() == null) {
            sentryBaseEvent.setBreadcrumbs(new ArrayList(list));
        } else {
            sentryBaseEvent.getBreadcrumbs().addAll(list);
        }
    }

    private void setScopeTags(SentryBaseEvent sentryBaseEvent) {
        Map map = (Map) PersistingScopeObserver.read(this.options, "tags.json", Map.class);
        if (map == null) {
            return;
        }
        if (sentryBaseEvent.getTags() == null) {
            sentryBaseEvent.setTags(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!sentryBaseEvent.getTags().containsKey(entry.getKey())) {
                sentryBaseEvent.setTag((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    private void setUser(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getUser() == null) {
            sentryBaseEvent.setUser((User) PersistingScopeObserver.read(this.options, PersistingScopeObserver.USER_FILENAME, User.class));
        }
    }

    private void setRequest(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getRequest() == null) {
            sentryBaseEvent.setRequest((Request) PersistingScopeObserver.read(this.options, PersistingScopeObserver.REQUEST_FILENAME, Request.class));
        }
    }

    private void backfillOptions(SentryEvent sentryEvent, Object obj) {
        setRelease(sentryEvent);
        setEnvironment(sentryEvent);
        setDist(sentryEvent);
        setDebugMeta(sentryEvent);
        setSdk(sentryEvent);
        setApp(sentryEvent, obj);
        setOptionsTags(sentryEvent);
    }

    private void setApp(SentryBaseEvent sentryBaseEvent, Object obj) {
        String str;
        App app = sentryBaseEvent.getContexts().getApp();
        if (app == null) {
            app = new App();
        }
        app.setAppName(ContextUtils.getApplicationName(this.context, this.options.getLogger()));
        app.setInForeground(Boolean.valueOf(!isBackgroundAnr(obj)));
        PackageInfo packageInfo = ContextUtils.getPackageInfo(this.context, this.options.getLogger(), this.buildInfoProvider);
        if (packageInfo != null) {
            app.setAppIdentifier(packageInfo.packageName);
        }
        if (sentryBaseEvent.getRelease() != null) {
            str = sentryBaseEvent.getRelease();
        } else {
            str = (String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.RELEASE_FILENAME, String.class);
        }
        if (str != null) {
            try {
                String substring = str.substring(str.indexOf(64) + 1, str.indexOf(43));
                String substring2 = str.substring(str.indexOf(43) + 1);
                app.setAppVersion(substring);
                app.setAppBuild(substring2);
            } catch (Throwable unused) {
                this.options.getLogger().log(SentryLevel.WARNING, "Failed to parse release from scope cache: %s", str);
            }
        }
        sentryBaseEvent.getContexts().setApp(app);
    }

    private void setRelease(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getRelease() == null) {
            sentryBaseEvent.setRelease((String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.RELEASE_FILENAME, String.class));
        }
    }

    private void setEnvironment(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getEnvironment() == null) {
            String str = (String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.ENVIRONMENT_FILENAME, String.class);
            if (str == null) {
                str = this.options.getEnvironment();
            }
            sentryBaseEvent.setEnvironment(str);
        }
    }

    private void setDebugMeta(SentryBaseEvent sentryBaseEvent) {
        DebugMeta debugMeta = sentryBaseEvent.getDebugMeta();
        if (debugMeta == null) {
            debugMeta = new DebugMeta();
        }
        if (debugMeta.getImages() == null) {
            debugMeta.setImages(new ArrayList());
        }
        List<DebugImage> images = debugMeta.getImages();
        if (images != null) {
            String str = (String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.PROGUARD_UUID_FILENAME, String.class);
            if (str != null) {
                DebugImage debugImage = new DebugImage();
                debugImage.setType(DebugImage.PROGUARD);
                debugImage.setUuid(str);
                images.add(debugImage);
            }
            sentryBaseEvent.setDebugMeta(debugMeta);
        }
    }

    private void setDist(SentryBaseEvent sentryBaseEvent) {
        String str;
        if (sentryBaseEvent.getDist() == null) {
            sentryBaseEvent.setDist((String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.DIST_FILENAME, String.class));
        }
        if (sentryBaseEvent.getDist() != null || (str = (String) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.RELEASE_FILENAME, String.class)) == null) {
            return;
        }
        try {
            sentryBaseEvent.setDist(str.substring(str.indexOf(43) + 1));
        } catch (Throwable unused) {
            this.options.getLogger().log(SentryLevel.WARNING, "Failed to parse release from scope cache: %s", str);
        }
    }

    private void setSdk(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getSdk() == null) {
            sentryBaseEvent.setSdk((SdkVersion) PersistingOptionsObserver.read(this.options, PersistingOptionsObserver.SDK_VERSION_FILENAME, SdkVersion.class));
        }
    }

    private void setOptionsTags(SentryBaseEvent sentryBaseEvent) {
        Map map = (Map) PersistingOptionsObserver.read(this.options, "tags.json", Map.class);
        if (map == null) {
            return;
        }
        if (sentryBaseEvent.getTags() == null) {
            sentryBaseEvent.setTags(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!sentryBaseEvent.getTags().containsKey(entry.getKey())) {
                sentryBaseEvent.setTag((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    private void setStaticValues(SentryEvent sentryEvent) {
        mergeUser(sentryEvent);
        setSideLoadedInfo(sentryEvent);
    }

    private void setPlatform(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getPlatform() == null) {
            sentryBaseEvent.setPlatform(SentryBaseEvent.DEFAULT_PLATFORM);
        }
    }

    private SentryThread findMainThread(List<SentryThread> list) {
        if (list == null) {
            return null;
        }
        for (SentryThread sentryThread : list) {
            String name = sentryThread.getName();
            if (name != null && name.equals(SentryThread.JsonKeys.MAIN)) {
                return sentryThread;
            }
        }
        return null;
    }

    private boolean isBackgroundAnr(Object obj) {
        if (obj instanceof AbnormalExit) {
            return "anr_background".equals(((AbnormalExit) obj).mechanism());
        }
        return false;
    }

    private void setExceptions(SentryEvent sentryEvent, Object obj) {
        Mechanism mechanism = new Mechanism();
        if (!((Backfillable) obj).shouldEnrich()) {
            mechanism.setType("HistoricalAppExitInfo");
        } else {
            mechanism.setType("AppExitInfo");
        }
        ApplicationNotResponding applicationNotResponding = new ApplicationNotResponding(isBackgroundAnr(obj) ? "Background ANR" : "ANR", Thread.currentThread());
        SentryThread findMainThread = findMainThread(sentryEvent.getThreads());
        if (findMainThread == null) {
            findMainThread = new SentryThread();
            findMainThread.setStacktrace(new SentryStackTrace());
        }
        sentryEvent.setExceptions(this.sentryExceptionFactory.getSentryExceptionsFromThread(findMainThread, mechanism, applicationNotResponding));
    }

    private void mergeUser(SentryBaseEvent sentryBaseEvent) {
        User user = sentryBaseEvent.getUser();
        if (user == null) {
            user = new User();
            sentryBaseEvent.setUser(user);
        }
        if (user.getId() == null) {
            user.setId(getDeviceId());
        }
        if (user.getIpAddress() == null) {
            user.setIpAddress(IpAddressUtils.DEFAULT_IP_ADDRESS);
        }
    }

    private String getDeviceId() {
        try {
            return Installation.id(this.context);
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error getting installationId.", th);
            return null;
        }
    }

    private void setSideLoadedInfo(SentryBaseEvent sentryBaseEvent) {
        try {
            ContextUtils.SideLoadedInfo retrieveSideLoadedInfo = ContextUtils.retrieveSideLoadedInfo(this.context, this.options.getLogger(), this.buildInfoProvider);
            if (retrieveSideLoadedInfo != null) {
                for (Map.Entry<String, String> entry : retrieveSideLoadedInfo.asTags().entrySet()) {
                    sentryBaseEvent.setTag(entry.getKey(), entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error getting side loaded info.", th);
        }
    }

    private void setDevice(SentryBaseEvent sentryBaseEvent) {
        if (sentryBaseEvent.getContexts().getDevice() == null) {
            sentryBaseEvent.getContexts().setDevice(getDevice());
        }
    }

    private Device getDevice() {
        Device device = new Device();
        if (this.options.isSendDefaultPii()) {
            device.setName(ContextUtils.getDeviceName(this.context));
        }
        device.setManufacturer(Build.MANUFACTURER);
        device.setBrand(Build.BRAND);
        device.setFamily(ContextUtils.getFamily(this.options.getLogger()));
        device.setModel(Build.MODEL);
        device.setModelId(Build.ID);
        device.setArchs(ContextUtils.getArchitectures(this.buildInfoProvider));
        ActivityManager.MemoryInfo memInfo = ContextUtils.getMemInfo(this.context, this.options.getLogger());
        if (memInfo != null) {
            device.setMemorySize(getMemorySize(memInfo));
        }
        device.setSimulator(this.buildInfoProvider.isEmulator());
        DisplayMetrics displayMetrics = ContextUtils.getDisplayMetrics(this.context, this.options.getLogger());
        if (displayMetrics != null) {
            device.setScreenWidthPixels(Integer.valueOf(displayMetrics.widthPixels));
            device.setScreenHeightPixels(Integer.valueOf(displayMetrics.heightPixels));
            device.setScreenDensity(Float.valueOf(displayMetrics.density));
            device.setScreenDpi(Integer.valueOf(displayMetrics.densityDpi));
        }
        if (device.getId() == null) {
            device.setId(getDeviceId());
        }
        List<Integer> readMaxFrequencies = CpuInfoUtils.getInstance().readMaxFrequencies();
        if (!readMaxFrequencies.isEmpty()) {
            device.setProcessorFrequency(Double.valueOf(((Integer) Collections.max(readMaxFrequencies)).doubleValue()));
            device.setProcessorCount(Integer.valueOf(readMaxFrequencies.size()));
        }
        return device;
    }

    private Long getMemorySize(ActivityManager.MemoryInfo memoryInfo) {
        return Long.valueOf(memoryInfo.totalMem);
    }

    private void mergeOS(SentryBaseEvent sentryBaseEvent) {
        OperatingSystem operatingSystem = sentryBaseEvent.getContexts().getOperatingSystem();
        sentryBaseEvent.getContexts().setOperatingSystem(getOperatingSystem());
        if (operatingSystem != null) {
            String name = operatingSystem.getName();
            sentryBaseEvent.getContexts().put((name == null || name.isEmpty()) ? "os_1" : "os_" + name.trim().toLowerCase(Locale.ROOT), operatingSystem);
        }
    }

    private OperatingSystem getOperatingSystem() {
        OperatingSystem operatingSystem = new OperatingSystem();
        operatingSystem.setName("Android");
        operatingSystem.setVersion(Build.VERSION.RELEASE);
        operatingSystem.setBuild(Build.DISPLAY);
        try {
            operatingSystem.setKernelVersion(ContextUtils.getKernelVersion(this.options.getLogger()));
        } catch (Throwable th) {
            this.options.getLogger().log(SentryLevel.ERROR, "Error getting OperatingSystem.", th);
        }
        return operatingSystem;
    }
}
