package io.sentry.android.fragment;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import io.sentry.IHub;
import io.sentry.Integration;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.IntegrationUtils;
import java.io.Closeable;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: FragmentLifecycleIntegration.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u000f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006B\u001f\b\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nB#\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\u000eJ\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0010\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u001d\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u0019H\u0016J\u0010\u0010\u001f\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010 \u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010!\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082.¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lio/sentry/android/fragment/FragmentLifecycleIntegration;", "Landroid/app/Application$ActivityLifecycleCallbacks;", "Lio/sentry/Integration;", "Ljava/io/Closeable;", "application", "Landroid/app/Application;", "(Landroid/app/Application;)V", "enableFragmentLifecycleBreadcrumbs", "", "enableAutoFragmentLifecycleTracing", "(Landroid/app/Application;ZZ)V", "filterFragmentLifecycleBreadcrumbs", "", "Lio/sentry/android/fragment/FragmentLifecycleState;", "(Landroid/app/Application;Ljava/util/Set;Z)V", "hub", "Lio/sentry/IHub;", "options", "Lio/sentry/SentryOptions;", "close", "", "onActivityCreated", "activity", "Landroid/app/Activity;", "savedInstanceState", "Landroid/os/Bundle;", "onActivityDestroyed", "onActivityPaused", "onActivityResumed", "onActivitySaveInstanceState", "outState", "onActivityStarted", "onActivityStopped", "register", "sentry-android-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FragmentLifecycleIntegration implements Application.ActivityLifecycleCallbacks, Integration, Closeable {
    private final Application application;
    private final boolean enableAutoFragmentLifecycleTracing;
    private final Set<FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs;
    private IHub hub;
    private SentryOptions options;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(outState, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FragmentLifecycleIntegration(Application application, Set<? extends FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs, boolean z) {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(filterFragmentLifecycleBreadcrumbs, "filterFragmentLifecycleBreadcrumbs");
        this.application = application;
        this.filterFragmentLifecycleBreadcrumbs = filterFragmentLifecycleBreadcrumbs;
        this.enableAutoFragmentLifecycleTracing = z;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentLifecycleIntegration(Application application) {
        this(application, (Set<? extends FragmentLifecycleState>) ArraysKt.toSet(FragmentLifecycleState.values()), false);
        Intrinsics.checkNotNullParameter(application, "application");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public FragmentLifecycleIntegration(android.app.Application r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "application"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            io.sentry.android.fragment.FragmentLifecycleState[] r0 = io.sentry.android.fragment.FragmentLifecycleState.values()
            java.util.Set r0 = kotlin.collections.ArraysKt.toSet(r0)
            if (r3 == 0) goto L10
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 != 0) goto L17
            java.util.Set r0 = kotlin.collections.SetsKt.emptySet()
        L17:
            r1.<init>(r2, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.FragmentLifecycleIntegration.<init>(android.app.Application, boolean, boolean):void");
    }

    @Override // io.sentry.Integration
    public void register(IHub hub, SentryOptions options) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(options, "options");
        this.hub = hub;
        this.options = options;
        this.application.registerActivityLifecycleCallbacks(this);
        options.getLogger().log(SentryLevel.DEBUG, "FragmentLifecycleIntegration installed.", new Object[0]);
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-android-fragment", "7.4.0");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.application.unregisterActivityLifecycleCallbacks(this);
        SentryOptions sentryOptions = this.options;
        if (sentryOptions != null) {
            if (sentryOptions == null) {
                Intrinsics.throwUninitializedPropertyAccessException("options");
                sentryOptions = null;
            }
            sentryOptions.getLogger().log(SentryLevel.DEBUG, "FragmentLifecycleIntegration removed.", new Object[0]);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
        FragmentManager supportFragmentManager;
        Intrinsics.checkNotNullParameter(activity, "activity");
        IHub iHub = null;
        FragmentActivity fragmentActivity = activity instanceof FragmentActivity ? (FragmentActivity) activity : null;
        if (fragmentActivity == null || (supportFragmentManager = fragmentActivity.getSupportFragmentManager()) == null) {
            return;
        }
        IHub iHub2 = this.hub;
        if (iHub2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("hub");
        } else {
            iHub = iHub2;
        }
        supportFragmentManager.registerFragmentLifecycleCallbacks(new SentryFragmentLifecycleCallbacks(iHub, this.filterFragmentLifecycleBreadcrumbs, this.enableAutoFragmentLifecycleTracing), true);
    }
}
