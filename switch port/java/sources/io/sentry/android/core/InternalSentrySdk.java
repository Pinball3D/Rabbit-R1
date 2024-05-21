package io.sentry.android.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import io.sentry.DateUtils;
import io.sentry.HubAdapter;
import io.sentry.IHub;
import io.sentry.ILogger;
import io.sentry.IScope;
import io.sentry.ISerializer;
import io.sentry.ScopeCallback;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryEnvelope;
import io.sentry.SentryEnvelopeItem;
import io.sentry.SentryEvent;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.android.core.performance.TimeSpan;
import io.sentry.protocol.App;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.util.MapObjectWriter;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class InternalSentrySdk {
    public static IScope getCurrentScope() {
        final AtomicReference atomicReference = new AtomicReference();
        HubAdapter.getInstance().configureScope(new ScopeCallback() { // from class: io.sentry.android.core.InternalSentrySdk$$ExternalSyntheticLambda1
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                atomicReference.set(iScope.m5624clone());
            }
        });
        return (IScope) atomicReference.get();
    }

    public static Map<String, Object> serializeScope(Context context, SentryAndroidOptions sentryAndroidOptions, IScope iScope) {
        HashMap hashMap = new HashMap();
        if (iScope == null) {
            return hashMap;
        }
        try {
            ILogger logger = sentryAndroidOptions.getLogger();
            MapObjectWriter mapObjectWriter = new MapObjectWriter(hashMap);
            DeviceInfoUtil deviceInfoUtil = DeviceInfoUtil.getInstance(context, sentryAndroidOptions);
            iScope.getContexts().setDevice(deviceInfoUtil.collectDeviceInformation(true, true));
            iScope.getContexts().setOperatingSystem(deviceInfoUtil.getOperatingSystem());
            User user = iScope.getUser();
            if (user == null) {
                user = new User();
                iScope.setUser(user);
            }
            if (user.getId() == null) {
                try {
                    user.setId(Installation.id(context));
                } catch (RuntimeException e) {
                    logger.log(SentryLevel.ERROR, "Could not retrieve installation ID", e);
                }
            }
            App app = iScope.getContexts().getApp();
            if (app == null) {
                app = new App();
            }
            app.setAppName(ContextUtils.getApplicationName(context, sentryAndroidOptions.getLogger()));
            TimeSpan appStartTimeSpanWithFallback = AppStartMetrics.getInstance().getAppStartTimeSpanWithFallback(sentryAndroidOptions);
            if (appStartTimeSpanWithFallback.hasStarted()) {
                app.setAppStartTime(DateUtils.toUtilDate(appStartTimeSpanWithFallback.getStartTimestamp()));
            }
            BuildInfoProvider buildInfoProvider = new BuildInfoProvider(sentryAndroidOptions.getLogger());
            PackageInfo packageInfo = ContextUtils.getPackageInfo(context, 4096, sentryAndroidOptions.getLogger(), buildInfoProvider);
            if (packageInfo != null) {
                ContextUtils.setAppPackageInfo(packageInfo, buildInfoProvider, app);
            }
            iScope.getContexts().setApp(app);
            mapObjectWriter.name("user").value(logger, iScope.getUser());
            mapObjectWriter.name("contexts").value(logger, iScope.getContexts());
            mapObjectWriter.name("tags").value(logger, iScope.getTags());
            mapObjectWriter.name("extras").value(logger, iScope.getExtras());
            mapObjectWriter.name(SentryEvent.JsonKeys.FINGERPRINT).value(logger, iScope.getFingerprint());
            mapObjectWriter.name("level").value(logger, iScope.getLevel());
            mapObjectWriter.name(SentryBaseEvent.JsonKeys.BREADCRUMBS).value(logger, iScope.getBreadcrumbs());
            return hashMap;
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().log(SentryLevel.ERROR, "Could not serialize scope.", th);
            return new HashMap();
        }
    }

    public static SentryId captureEnvelope(byte[] bArr) {
        HubAdapter hubAdapter = HubAdapter.getInstance();
        SentryOptions options = hubAdapter.getOptions();
        try {
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
            try {
                ISerializer serializer = options.getSerializer();
                SentryEnvelope read = options.getEnvelopeReader().read(byteArrayInputStream);
                if (read != null) {
                    ArrayList arrayList = new ArrayList();
                    boolean z = false;
                    Session.State state = null;
                    for (SentryEnvelopeItem sentryEnvelopeItem : read.getItems()) {
                        arrayList.add(sentryEnvelopeItem);
                        SentryEvent event = sentryEnvelopeItem.getEvent(serializer);
                        if (event != null) {
                            if (event.isCrashed()) {
                                state = Session.State.Crashed;
                            }
                            if (event.isCrashed() || event.isErrored()) {
                                z = true;
                            }
                        }
                    }
                    Session updateSession = updateSession(hubAdapter, options, state, z);
                    if (updateSession != null) {
                        arrayList.add(SentryEnvelopeItem.fromSession(serializer, updateSession));
                    }
                    SentryId captureEnvelope = hubAdapter.captureEnvelope(new SentryEnvelope(read.getHeader(), arrayList));
                    byteArrayInputStream.close();
                    return captureEnvelope;
                }
                byteArrayInputStream.close();
                return null;
            } finally {
            }
        } catch (Throwable th) {
            options.getLogger().log(SentryLevel.ERROR, "Failed to capture envelope", th);
            return null;
        }
    }

    private static Session updateSession(IHub iHub, final SentryOptions sentryOptions, final Session.State state, final boolean z) {
        final AtomicReference atomicReference = new AtomicReference();
        iHub.configureScope(new ScopeCallback() { // from class: io.sentry.android.core.InternalSentrySdk$$ExternalSyntheticLambda0
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                InternalSentrySdk.lambda$updateSession$1(Session.State.this, z, atomicReference, sentryOptions, iScope);
            }
        });
        return (Session) atomicReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$updateSession$1(Session.State state, boolean z, AtomicReference atomicReference, SentryOptions sentryOptions, IScope iScope) {
        Session session = iScope.getSession();
        if (session != null) {
            if (session.update(state, null, z, null)) {
                if (session.getStatus() == Session.State.Crashed) {
                    session.end();
                }
                atomicReference.set(session);
                return;
            }
            return;
        }
        sentryOptions.getLogger().log(SentryLevel.INFO, "Session is null on updateSession", new Object[0]);
    }
}
