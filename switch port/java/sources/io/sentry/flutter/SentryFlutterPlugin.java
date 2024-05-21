package io.sentry.flutter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.exifinterface.media.ExifInterface;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.sentry.Breadcrumb;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.HubAdapter;
import io.sentry.IScope;
import io.sentry.ScopeCallback;
import io.sentry.Sentry;
import io.sentry.SentryBaseEvent;
import io.sentry.SentryDate;
import io.sentry.SentryEvent;
import io.sentry.SentryOptions;
import io.sentry.android.core.ActivityFramesTracker;
import io.sentry.android.core.LoadClass;
import io.sentry.android.core.SentryAndroid;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.android.core.performance.AppStartMetrics;
import io.sentry.flutter.SentryFlutterPlugin;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.MeasurementValue;
import io.sentry.protocol.SdkVersion;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.SentryPackage;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.User;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentryFlutterPlugin.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\u0018\u0000 =2\u00020\u00012\u00020\u00022\u00020\u0003:\u0002<=B\u0005¢\u0006\u0002\u0010\u0004J(\u0010\u0010\u001a\u00020\u00112\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u0010\u001e\u001a\u00020\u00112\b\u0010\u001f\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010 \u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\"\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010#\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0016J\u0010\u0010&\u001a\u00020\u00112\u0006\u0010'\u001a\u00020(H\u0016J\b\u0010)\u001a\u00020\u0011H\u0016J\b\u0010*\u001a\u00020\u0011H\u0016J\u0010\u0010+\u001a\u00020\u00112\u0006\u0010$\u001a\u00020(H\u0016J\u0018\u0010,\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010-\u001a\u00020\u00112\u0006\u0010$\u001a\u00020%H\u0016J\u001a\u0010.\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u00100\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u001a\u00101\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00102\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\b\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00104\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\b\u00103\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J$\u00105\u001a\u00020\u00112\b\u0010/\u001a\u0004\u0018\u00010\u00142\b\u00103\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J(\u00106\u001a\u00020\u00112\u0016\u00107\u001a\u0012\u0012\u0004\u0012\u00020\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0015\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020;H\u0002R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lio/sentry/flutter/SentryFlutterPlugin;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;", "()V", "activity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "channel", "Lio/flutter/plugin/common/MethodChannel;", "context", "Landroid/content/Context;", "framesTracker", "Lio/sentry/android/core/ActivityFramesTracker;", "sentryFlutter", "Lio/sentry/flutter/SentryFlutter;", "addBreadcrumb", "", "breadcrumb", "", "", "", "result", "Lio/flutter/plugin/common/MethodChannel$Result;", "beginNativeFrames", "captureEnvelope", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodCall;", "clearBreadcrumbs", "closeNativeSdk", "endNativeFrames", "id", "fetchNativeAppStart", "initNativeSdk", "loadImageList", "onAttachedToActivity", "binding", "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;", "onAttachedToEngine", "flutterPluginBinding", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "onDetachedFromActivity", "onDetachedFromActivityForConfigChanges", "onDetachedFromEngine", "onMethodCall", "onReattachedToActivityForConfigChanges", "removeContexts", "key", "removeExtra", "removeTag", "setContexts", "value", "setExtra", "setTag", "setUser", "user", "writeEnvelope", "", "envelope", "", "BeforeSendCallbackImpl", "Companion", "sentry_flutter_release"}, k = 1, mv = {1, 4, 3}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryFlutterPlugin implements FlutterPlugin, MethodChannel.MethodCallHandler, ActivityAware {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String androidSdk = "sentry.java.android.flutter";
    private static final String flutterSdk = "sentry.dart.flutter";
    private static final String nativeSdk = "sentry.native.android.flutter";
    private WeakReference<Activity> activity;
    private MethodChannel channel;
    private Context context;
    private ActivityFramesTracker framesTracker;
    private SentryFlutter sentryFlutter;

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        this.activity = null;
        this.framesTracker = null;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(ActivityPluginBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        Intrinsics.checkNotNullParameter(flutterPluginBinding, "flutterPluginBinding");
        Context applicationContext = flutterPluginBinding.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "flutterPluginBinding.applicationContext");
        this.context = applicationContext;
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "sentry_flutter");
        this.channel = methodChannel;
        methodChannel.setMethodCallHandler(this);
        this.sentryFlutter = new SentryFlutter(androidSdk, nativeSdk);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(result, "result");
        String str = call.method;
        if (str != null) {
            switch (str.hashCode()) {
                case -1446499610:
                    if (str.equals("beginNativeFrames")) {
                        beginNativeFrames(result);
                        return;
                    }
                    break;
                case -905799720:
                    if (str.equals("setTag")) {
                        setTag((String) call.argument("key"), (String) call.argument("value"), result);
                        return;
                    }
                    break;
                case -853417589:
                    if (str.equals("closeNativeSdk")) {
                        closeNativeSdk(result);
                        return;
                    }
                    break;
                case -366888622:
                    if (str.equals("fetchNativeAppStart")) {
                        fetchNativeAppStart(result);
                        return;
                    }
                    break;
                case -317432340:
                    if (str.equals("removeExtra")) {
                        removeExtra((String) call.argument("key"), result);
                        return;
                    }
                    break;
                case 145462582:
                    if (str.equals("captureEnvelope")) {
                        captureEnvelope(call, result);
                        return;
                    }
                    break;
                case 263988819:
                    if (str.equals("loadImageList")) {
                        loadImageList(result);
                        return;
                    }
                    break;
                case 545314163:
                    if (str.equals("initNativeSdk")) {
                        initNativeSdk(call, result);
                        return;
                    }
                    break;
                case 783581208:
                    if (str.equals("endNativeFrames")) {
                        endNativeFrames((String) call.argument("id"), result);
                        return;
                    }
                    break;
                case 1126756228:
                    if (str.equals("addBreadcrumb")) {
                        addBreadcrumb((Map) call.argument("breadcrumb"), result);
                        return;
                    }
                    break;
                case 1282363510:
                    if (str.equals("removeTag")) {
                        removeTag((String) call.argument("key"), result);
                        return;
                    }
                    break;
                case 1391678670:
                    if (str.equals("setExtra")) {
                        setExtra((String) call.argument("key"), (String) call.argument("value"), result);
                        return;
                    }
                    break;
                case 1422008102:
                    if (str.equals("setContexts")) {
                        setContexts((String) call.argument("key"), call.argument("value"), result);
                        return;
                    }
                    break;
                case 1838399555:
                    if (str.equals("clearBreadcrumbs")) {
                        clearBreadcrumbs(result);
                        return;
                    }
                    break;
                case 1985026893:
                    if (str.equals("setUser")) {
                        setUser((Map) call.argument("user"), result);
                        return;
                    }
                    break;
                case 2133203272:
                    if (str.equals("removeContexts")) {
                        removeContexts((String) call.argument("key"), result);
                        return;
                    }
                    break;
            }
        }
        result.notImplemented();
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        MethodChannel methodChannel = this.channel;
        if (methodChannel == null) {
            return;
        }
        if (methodChannel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("channel");
            methodChannel = null;
        }
        methodChannel.setMethodCallHandler(null);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding binding) {
        Intrinsics.checkNotNullParameter(binding, "binding");
        this.activity = new WeakReference<>(binding.getActivity());
    }

    private final boolean writeEnvelope(byte[] envelope) {
        SentryOptions options = HubAdapter.getInstance().getOptions();
        Intrinsics.checkNotNullExpressionValue(options, "getInstance().options");
        String outboxPath = options.getOutboxPath();
        if (outboxPath == null || outboxPath.length() == 0) {
            return false;
        }
        FilesKt.writeBytes(new File(options.getOutboxPath(), UUID.randomUUID().toString()), envelope);
        return true;
    }

    private final void initNativeSdk(MethodCall call, MethodChannel.Result result) {
        Context context = null;
        if (this.context == null) {
            result.error("1", "Context is null", null);
            return;
        }
        final Map map = (Map) call.arguments();
        if (map == null) {
            map = MapsKt.emptyMap();
        }
        if (map.isEmpty()) {
            result.error("4", "Arguments is null or empty", null);
            return;
        }
        Context context2 = this.context;
        if (context2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("context");
        } else {
            context = context2;
        }
        SentryAndroid.init(context, (Sentry.OptionsConfiguration<SentryAndroidOptions>) new Sentry.OptionsConfiguration() { // from class: io.sentry.flutter.SentryFlutterPlugin$initNativeSdk$1
            @Override // io.sentry.Sentry.OptionsConfiguration
            public final void configure(SentryAndroidOptions options) {
                SentryFlutter sentryFlutter;
                SentryFlutter sentryFlutter2;
                Intrinsics.checkNotNullParameter(options, "options");
                sentryFlutter = SentryFlutterPlugin.this.sentryFlutter;
                SentryFlutter sentryFlutter3 = null;
                if (sentryFlutter == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sentryFlutter");
                    sentryFlutter = null;
                }
                sentryFlutter.updateOptions(options, map);
                sentryFlutter2 = SentryFlutterPlugin.this.sentryFlutter;
                if (sentryFlutter2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("sentryFlutter");
                } else {
                    sentryFlutter3 = sentryFlutter2;
                }
                if (sentryFlutter3.getAutoPerformanceTracingEnabled()) {
                    SentryFlutterPlugin.this.framesTracker = new ActivityFramesTracker(new LoadClass(), options);
                }
                options.setBeforeSend(new SentryFlutterPlugin.BeforeSendCallbackImpl(options.getSdkVersion()));
            }
        });
        result.success("");
    }

    private final void fetchNativeAppStart(MethodChannel.Result result) {
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sentryFlutter");
            sentryFlutter = null;
        }
        if (!sentryFlutter.getAutoPerformanceTracingEnabled()) {
            result.success(null);
            return;
        }
        SentryDate startTimestamp = AppStartMetrics.getInstance().getAppStartTimeSpan().getStartTimestamp();
        boolean z = AppStartMetrics.getInstance().getAppStartType() == AppStartMetrics.AppStartType.COLD;
        if (startTimestamp == null) {
            Log.w("Sentry", "App start won't be sent due to missing appStartTime");
            result.success(null);
        } else {
            result.success(MapsKt.mapOf(TuplesKt.to("appStartTime", Double.valueOf(DateUtils.nanosToMillis(startTimestamp.nanoTimestamp()))), TuplesKt.to("isColdStart", Boolean.valueOf(z))));
        }
    }

    private final void beginNativeFrames(MethodChannel.Result result) {
        Activity activity;
        ActivityFramesTracker activityFramesTracker;
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sentryFlutter");
            sentryFlutter = null;
        }
        if (!sentryFlutter.getAutoPerformanceTracingEnabled()) {
            result.success(null);
            return;
        }
        WeakReference<Activity> weakReference = this.activity;
        if (weakReference != null && (activity = weakReference.get()) != null && (activityFramesTracker = this.framesTracker) != null) {
            activityFramesTracker.addActivity(activity);
        }
        result.success(null);
    }

    private final void endNativeFrames(String id, MethodChannel.Result result) {
        MeasurementValue measurementValue;
        Number value;
        MeasurementValue measurementValue2;
        Number value2;
        MeasurementValue measurementValue3;
        Number value3;
        WeakReference<Activity> weakReference = this.activity;
        Activity activity = weakReference != null ? weakReference.get() : null;
        SentryFlutter sentryFlutter = this.sentryFlutter;
        if (sentryFlutter == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sentryFlutter");
            sentryFlutter = null;
        }
        if (!sentryFlutter.getAutoPerformanceTracingEnabled() || activity == null || id == null) {
            if (id == null) {
                Log.w("Sentry", "Parameter id cannot be null when calling endNativeFrames.");
            }
            result.success(null);
            return;
        }
        SentryId sentryId = new SentryId(id);
        ActivityFramesTracker activityFramesTracker = this.framesTracker;
        if (activityFramesTracker != null) {
            activityFramesTracker.setMetrics(activity, sentryId);
        }
        ActivityFramesTracker activityFramesTracker2 = this.framesTracker;
        Map<String, MeasurementValue> takeMetrics = activityFramesTracker2 != null ? activityFramesTracker2.takeMetrics(sentryId) : null;
        int intValue = (takeMetrics == null || (measurementValue3 = takeMetrics.get(MeasurementValue.KEY_FRAMES_TOTAL)) == null || (value3 = measurementValue3.getValue()) == null) ? 0 : value3.intValue();
        int intValue2 = (takeMetrics == null || (measurementValue2 = takeMetrics.get(MeasurementValue.KEY_FRAMES_SLOW)) == null || (value2 = measurementValue2.getValue()) == null) ? 0 : value2.intValue();
        int intValue3 = (takeMetrics == null || (measurementValue = takeMetrics.get(MeasurementValue.KEY_FRAMES_FROZEN)) == null || (value = measurementValue.getValue()) == null) ? 0 : value.intValue();
        if (intValue == 0 && intValue2 == 0 && intValue3 == 0) {
            result.success(null);
        } else {
            result.success(MapsKt.mapOf(TuplesKt.to("totalFrames", Integer.valueOf(intValue)), TuplesKt.to("slowFrames", Integer.valueOf(intValue2)), TuplesKt.to("frozenFrames", Integer.valueOf(intValue3))));
        }
    }

    private final void setContexts(final String key, final Object value, final MethodChannel.Result result) {
        if (key == null || value == null) {
            result.success("");
        } else {
            Sentry.configureScope(new ScopeCallback() { // from class: io.sentry.flutter.SentryFlutterPlugin$setContexts$1
                @Override // io.sentry.ScopeCallback
                public final void run(IScope scope) {
                    Intrinsics.checkNotNullParameter(scope, "scope");
                    scope.setContexts(key, value);
                    result.success("");
                }
            });
        }
    }

    private final void removeContexts(final String key, final MethodChannel.Result result) {
        if (key == null) {
            result.success("");
        } else {
            Sentry.configureScope(new ScopeCallback() { // from class: io.sentry.flutter.SentryFlutterPlugin$removeContexts$1
                @Override // io.sentry.ScopeCallback
                public final void run(IScope scope) {
                    Intrinsics.checkNotNullParameter(scope, "scope");
                    scope.removeContexts(key);
                    result.success("");
                }
            });
        }
    }

    private final void setUser(Map<String, ? extends Object> user, MethodChannel.Result result) {
        if (user != null) {
            SentryOptions options = HubAdapter.getInstance().getOptions();
            Intrinsics.checkNotNullExpressionValue(options, "getInstance().options");
            Sentry.setUser(User.fromMap(user, options));
        } else {
            Sentry.setUser(null);
        }
        result.success("");
    }

    private final void addBreadcrumb(Map<String, ? extends Object> breadcrumb, MethodChannel.Result result) {
        if (breadcrumb != null) {
            SentryOptions options = HubAdapter.getInstance().getOptions();
            Intrinsics.checkNotNullExpressionValue(options, "getInstance().options");
            Sentry.addBreadcrumb(Breadcrumb.fromMap(breadcrumb, options));
        }
        result.success("");
    }

    private final void clearBreadcrumbs(MethodChannel.Result result) {
        Sentry.clearBreadcrumbs();
        result.success("");
    }

    private final void setExtra(String key, String value, MethodChannel.Result result) {
        if (key == null || value == null) {
            result.success("");
        } else {
            Sentry.setExtra(key, value);
            result.success("");
        }
    }

    private final void removeExtra(String key, MethodChannel.Result result) {
        if (key == null) {
            result.success("");
        } else {
            Sentry.removeExtra(key);
            result.success("");
        }
    }

    private final void setTag(String key, String value, MethodChannel.Result result) {
        if (key == null || value == null) {
            result.success("");
        } else {
            Sentry.setTag(key, value);
            result.success("");
        }
    }

    private final void removeTag(String key, MethodChannel.Result result) {
        if (key == null) {
            result.success("");
        } else {
            Sentry.removeTag(key);
            result.success("");
        }
    }

    private final void captureEnvelope(MethodCall call, MethodChannel.Result result) {
        byte[] bArr;
        if (!Sentry.isEnabled()) {
            result.error("1", "The Sentry Android SDK is disabled", null);
            return;
        }
        List list = (List) call.arguments();
        if (list == null) {
            list = CollectionsKt.emptyList();
        }
        if ((!list.isEmpty()) && (bArr = (byte[]) CollectionsKt.first(list)) != null) {
            if (!(bArr.length == 0)) {
                if (!writeEnvelope(bArr)) {
                    result.error(ExifInterface.GPS_MEASUREMENT_2D, "SentryOptions or outboxPath are null or empty", null);
                }
                result.success("");
                return;
            }
        }
        result.error(ExifInterface.GPS_MEASUREMENT_3D, "Envelope is null or empty", null);
    }

    private final void loadImageList(MethodChannel.Result result) {
        SentryOptions options = HubAdapter.getInstance().getOptions();
        Intrinsics.checkNotNull(options, "null cannot be cast to non-null type io.sentry.android.core.SentryAndroidOptions");
        ArrayList arrayList = new ArrayList();
        List<DebugImage> loadDebugImages = ((SentryAndroidOptions) options).getDebugImagesLoader().loadDebugImages();
        if (loadDebugImages != null) {
            for (DebugImage debugImage : loadDebugImages) {
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                linkedHashMap.put("image_addr", debugImage.getImageAddr());
                linkedHashMap.put(DebugImage.JsonKeys.IMAGE_SIZE, debugImage.getImageSize());
                linkedHashMap.put(DebugImage.JsonKeys.CODE_FILE, debugImage.getCodeFile());
                linkedHashMap.put("type", debugImage.getType());
                linkedHashMap.put(DebugImage.JsonKeys.DEBUG_ID, debugImage.getDebugId());
                linkedHashMap.put(DebugImage.JsonKeys.CODE_ID, debugImage.getCodeId());
                linkedHashMap.put(DebugImage.JsonKeys.DEBUG_FILE, debugImage.getDebugFile());
                arrayList.add(linkedHashMap);
            }
        }
        result.success(arrayList);
    }

    private final void closeNativeSdk(MethodChannel.Result result) {
        HubAdapter.getInstance().close();
        ActivityFramesTracker activityFramesTracker = this.framesTracker;
        if (activityFramesTracker != null) {
            activityFramesTracker.stop();
        }
        this.framesTracker = null;
        result.success("");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryFlutterPlugin.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lio/sentry/flutter/SentryFlutterPlugin$BeforeSendCallbackImpl;", "Lio/sentry/SentryOptions$BeforeSendCallback;", "sdkVersion", "Lio/sentry/protocol/SdkVersion;", "(Lio/sentry/protocol/SdkVersion;)V", "execute", "Lio/sentry/SentryEvent;", NotificationCompat.CATEGORY_EVENT, "hint", "Lio/sentry/Hint;", "sentry_flutter_release"}, k = 1, mv = {1, 4, 3}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class BeforeSendCallbackImpl implements SentryOptions.BeforeSendCallback {
        private final SdkVersion sdkVersion;

        public BeforeSendCallbackImpl(SdkVersion sdkVersion) {
            this.sdkVersion = sdkVersion;
        }

        @Override // io.sentry.SentryOptions.BeforeSendCallback
        public SentryEvent execute(SentryEvent event, Hint hint) {
            Intrinsics.checkNotNullParameter(event, "event");
            Intrinsics.checkNotNullParameter(hint, "hint");
            SentryFlutterPlugin.INSTANCE.setEventOriginTag(event);
            SentryFlutterPlugin.INSTANCE.addPackages(event, this.sdkVersion);
            return event;
        }
    }

    /* compiled from: SentryFlutterPlugin.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0002J\"\u0010\r\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0004H\u0002J\u0010\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lio/sentry/flutter/SentryFlutterPlugin$Companion;", "", "()V", "androidSdk", "", "flutterSdk", "nativeSdk", "addPackages", "", NotificationCompat.CATEGORY_EVENT, "Lio/sentry/SentryEvent;", "sdk", "Lio/sentry/protocol/SdkVersion;", "setEventEnvironmentTag", "origin", "environment", "setEventOriginTag", "sentry_flutter_release"}, k = 1, mv = {1, 4, 3}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void setEventOriginTag(SentryEvent event) {
            SdkVersion sdk = event.getSdk();
            if (sdk != null) {
                String name = sdk.getName();
                int hashCode = name.hashCode();
                if (hashCode == -1079289216) {
                    if (name.equals(SentryFlutterPlugin.androidSdk)) {
                        setEventEnvironmentTag$default(SentryFlutterPlugin.INSTANCE, event, null, SentryBaseEvent.DEFAULT_PLATFORM, 2, null);
                    }
                } else if (hashCode == 214992565) {
                    if (name.equals(SentryFlutterPlugin.nativeSdk)) {
                        setEventEnvironmentTag$default(SentryFlutterPlugin.INSTANCE, event, null, SentryStackFrame.JsonKeys.NATIVE, 2, null);
                    }
                } else if (hashCode == 1378491996 && name.equals(SentryFlutterPlugin.flutterSdk)) {
                    SentryFlutterPlugin.INSTANCE.setEventEnvironmentTag(event, "flutter", "dart");
                }
            }
        }

        static /* synthetic */ void setEventEnvironmentTag$default(Companion companion, SentryEvent sentryEvent, String str, String str2, int i, Object obj) {
            if ((i & 2) != 0) {
                str = "android";
            }
            companion.setEventEnvironmentTag(sentryEvent, str, str2);
        }

        private final void setEventEnvironmentTag(SentryEvent event, String origin, String environment) {
            event.setTag("event.origin", origin);
            event.setTag("event.environment", environment);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addPackages(SentryEvent event, SdkVersion sdk) {
            Set<String> integrationSet;
            Set<SentryPackage> packageSet;
            SdkVersion sdk2 = event.getSdk();
            if (sdk2 == null || !Intrinsics.areEqual(sdk2.getName(), SentryFlutterPlugin.flutterSdk)) {
                return;
            }
            if (sdk != null && (packageSet = sdk.getPackageSet()) != null) {
                for (SentryPackage sentryPackage : packageSet) {
                    sdk2.addPackage(sentryPackage.getName(), sentryPackage.getVersion());
                }
            }
            if (sdk == null || (integrationSet = sdk.getIntegrationSet()) == null) {
                return;
            }
            Iterator<T> it = integrationSet.iterator();
            while (it.hasNext()) {
                sdk2.addIntegration((String) it.next());
            }
        }
    }
}
