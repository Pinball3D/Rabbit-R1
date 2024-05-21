package io.sentry.flutter;

import io.sentry.SentryBaseEvent;
import io.sentry.SentryLevel;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.protocol.SdkVersion;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentryFlutter.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\"\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0011R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lio/sentry/flutter/SentryFlutter;", "", "androidSdk", "", "nativeSdk", "(Ljava/lang/String;Ljava/lang/String;)V", "autoPerformanceTracingEnabled", "", "getAutoPerformanceTracingEnabled", "()Z", "setAutoPerformanceTracingEnabled", "(Z)V", "updateOptions", "", "options", "Lio/sentry/android/core/SentryAndroidOptions;", "data", "", "sentry_flutter_release"}, k = 1, mv = {1, 4, 3}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryFlutter {
    private final String androidSdk;
    private boolean autoPerformanceTracingEnabled;
    private final String nativeSdk;

    public final boolean getAutoPerformanceTracingEnabled() {
        return this.autoPerformanceTracingEnabled;
    }

    public final void setAutoPerformanceTracingEnabled(boolean z) {
        this.autoPerformanceTracingEnabled = z;
    }

    public SentryFlutter(String androidSdk, String nativeSdk) {
        Intrinsics.checkNotNullParameter(androidSdk, "androidSdk");
        Intrinsics.checkNotNullParameter(nativeSdk, "nativeSdk");
        this.androidSdk = androidSdk;
        this.nativeSdk = nativeSdk;
    }

    public final void updateOptions(final SentryAndroidOptions options, Map<String, ? extends Object> data) {
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(data, "data");
        SentryFlutterKt.getIfNotNull(data, "dsn", new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SentryAndroidOptions.this.setDsn(it);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "debug", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setDebug(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "environment", new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SentryAndroidOptions.this.setEnvironment(it);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "release", new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SentryAndroidOptions.this.setRelease(it);
            }
        });
        SentryFlutterKt.getIfNotNull(data, SentryBaseEvent.JsonKeys.DIST, new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SentryAndroidOptions.this.setDist(it);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "enableAutoSessionTracking", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$6
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setEnableAutoSessionTracking(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "autoSessionTrackingIntervalMillis", new Function1<Long, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                SentryAndroidOptions.this.setSessionTrackingIntervalMillis(j);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "anrTimeoutIntervalMillis", new Function1<Long, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                SentryAndroidOptions.this.setAnrTimeoutIntervalMillis(j);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "attachThreads", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$9
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setAttachThreads(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "attachStacktrace", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$10
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setAttachStacktrace(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "enableAutoNativeBreadcrumbs", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$11
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setEnableActivityLifecycleBreadcrumbs(z);
                SentryAndroidOptions.this.setEnableAppLifecycleBreadcrumbs(z);
                SentryAndroidOptions.this.setEnableSystemEventBreadcrumbs(z);
                SentryAndroidOptions.this.setEnableAppComponentBreadcrumbs(z);
                SentryAndroidOptions.this.setEnableUserInteractionBreadcrumbs(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "maxBreadcrumbs", new Function1<Integer, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$12
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SentryAndroidOptions.this.setMaxBreadcrumbs(i);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "maxCacheItems", new Function1<Integer, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$13
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SentryAndroidOptions.this.setMaxCacheItems(i);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "diagnosticLevel", new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$14
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                if (SentryAndroidOptions.this.isDebug()) {
                    Locale ROOT = Locale.ROOT;
                    Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                    String upperCase = it.toUpperCase(ROOT);
                    Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
                    SentryAndroidOptions.this.setDiagnosticLevel(SentryLevel.valueOf(upperCase));
                }
            }
        });
        SentryFlutterKt.getIfNotNull(data, "anrEnabled", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$15
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setAnrEnabled(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "sendDefaultPii", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$16
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setSendDefaultPii(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "enableNdkScopeSync", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$17
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool) {
                invoke(bool.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setEnableScopeSync(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "proguardUuid", new Function1<String, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$18
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(String str) {
                invoke2(str);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String it) {
                Intrinsics.checkNotNullParameter(it, "it");
                SentryAndroidOptions.this.setProguardUuid(it);
            }
        });
        Object obj = data.get("enableNativeCrashHandling");
        Boolean bool = obj instanceof Boolean ? (Boolean) obj : null;
        if (bool != null && !bool.booleanValue()) {
            options.setEnableUncaughtExceptionHandler(false);
            options.setAnrEnabled(false);
        }
        SentryFlutterKt.getIfNotNull(data, "enableAutoPerformanceTracing", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$19
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke(bool2.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                if (z) {
                    SentryFlutter.this.setAutoPerformanceTracingEnabled(true);
                }
            }
        });
        SentryFlutterKt.getIfNotNull(data, "sendClientReports", new Function1<Boolean, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$20
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Boolean bool2) {
                invoke(bool2.booleanValue());
                return Unit.INSTANCE;
            }

            public final void invoke(boolean z) {
                SentryAndroidOptions.this.setSendClientReports(z);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "maxAttachmentSize", new Function1<Long, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$21
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Long l) {
                invoke(l.longValue());
                return Unit.INSTANCE;
            }

            public final void invoke(long j) {
                SentryAndroidOptions.this.setMaxAttachmentSize(j);
            }
        });
        SdkVersion sdkVersion = options.getSdkVersion();
        if (sdkVersion == null) {
            sdkVersion = new SdkVersion(this.androidSdk, "7.8.0");
        } else {
            sdkVersion.setName(this.androidSdk);
        }
        options.setSdkVersion(sdkVersion);
        options.setSentryClientName(this.androidSdk + "/7.8.0");
        options.setNativeSdkName(this.nativeSdk);
        SentryFlutterKt.getIfNotNull(data, "connectionTimeoutMillis", new Function1<Integer, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$22
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SentryAndroidOptions.this.setConnectionTimeoutMillis(i);
            }
        });
        SentryFlutterKt.getIfNotNull(data, "readTimeoutMillis", new Function1<Integer, Unit>() { // from class: io.sentry.flutter.SentryFlutter$updateOptions$23
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                SentryAndroidOptions.this.setReadTimeoutMillis(i);
            }
        });
    }
}
