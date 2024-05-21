package io.sentry.android.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.IScope;
import io.sentry.ISpan;
import io.sentry.ScopeCallback;
import io.sentry.SentryLevel;
import io.sentry.SpanStatus;
import io.sentry.TypeCheckHint;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryThread;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* compiled from: SentryFragmentLifecycleCallbacks.kt */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 42\u00020\u0001:\u00014B\u001f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007B\u001b\b\u0016\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\bB%\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\fJ\u0018\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u000bH\u0002J\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J\u0010\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J \u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010!\u001a\u00020\"H\u0016J\"\u0010#\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00142\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0018\u0010&\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0018\u0010'\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0018\u0010(\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0018\u0010)\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J \u0010*\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010+\u001a\u00020%H\u0016J\u0018\u0010,\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0018\u0010-\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J*\u0010.\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010/\u001a\u0002002\b\u0010$\u001a\u0004\u0018\u00010%H\u0016J\u0018\u00101\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u0014H\u0016J\u0010\u00102\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u0002J\u0010\u00103\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0014H\u0002R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u00058F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u000eR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u000e¨\u00065"}, d2 = {"Lio/sentry/android/fragment/SentryFragmentLifecycleCallbacks;", "Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;", "hub", "Lio/sentry/IHub;", "enableFragmentLifecycleBreadcrumbs", "", "enableAutoFragmentLifecycleTracing", "(Lio/sentry/IHub;ZZ)V", "(ZZ)V", "filterFragmentLifecycleBreadcrumbs", "", "Lio/sentry/android/fragment/FragmentLifecycleState;", "(Lio/sentry/IHub;Ljava/util/Set;Z)V", "getEnableAutoFragmentLifecycleTracing", "()Z", "getEnableFragmentLifecycleBreadcrumbs", "getFilterFragmentLifecycleBreadcrumbs", "()Ljava/util/Set;", "fragmentsWithOngoingTransactions", "Ljava/util/WeakHashMap;", "Landroidx/fragment/app/Fragment;", "Lio/sentry/ISpan;", "isPerformanceEnabled", "addBreadcrumb", "", Request.JsonKeys.FRAGMENT, SentryThread.JsonKeys.STATE, "getFragmentName", "", "isRunningSpan", "onFragmentAttached", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "context", "Landroid/content/Context;", "onFragmentCreated", "savedInstanceState", "Landroid/os/Bundle;", "onFragmentDestroyed", "onFragmentDetached", "onFragmentPaused", "onFragmentResumed", "onFragmentSaveInstanceState", "outState", "onFragmentStarted", "onFragmentStopped", "onFragmentViewCreated", "view", "Landroid/view/View;", "onFragmentViewDestroyed", "startTracing", "stopTracing", "Companion", "sentry-android-fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryFragmentLifecycleCallbacks extends FragmentManager.FragmentLifecycleCallbacks {
    public static final String FRAGMENT_LOAD_OP = "ui.load";
    private final boolean enableAutoFragmentLifecycleTracing;
    private final Set<FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs;
    private final WeakHashMap<Fragment, ISpan> fragmentsWithOngoingTransactions;
    private final IHub hub;

    public final boolean getEnableAutoFragmentLifecycleTracing() {
        return this.enableAutoFragmentLifecycleTracing;
    }

    public final Set<FragmentLifecycleState> getFilterFragmentLifecycleBreadcrumbs() {
        return this.filterFragmentLifecycleBreadcrumbs;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryFragmentLifecycleCallbacks(io.sentry.IHub r1, java.util.Set r2, boolean r3, int r4, kotlin.jvm.internal.DefaultConstructorMarker r5) {
        /*
            r0 = this;
            r4 = r4 & 1
            if (r4 == 0) goto Lf
            io.sentry.HubAdapter r1 = io.sentry.HubAdapter.getInstance()
            java.lang.String r4 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r4)
            io.sentry.IHub r1 = (io.sentry.IHub) r1
        Lf:
            r0.<init>(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.SentryFragmentLifecycleCallbacks.<init>(io.sentry.IHub, java.util.Set, boolean, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SentryFragmentLifecycleCallbacks(IHub hub, Set<? extends FragmentLifecycleState> filterFragmentLifecycleBreadcrumbs, boolean z) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        Intrinsics.checkNotNullParameter(filterFragmentLifecycleBreadcrumbs, "filterFragmentLifecycleBreadcrumbs");
        this.hub = hub;
        this.filterFragmentLifecycleBreadcrumbs = filterFragmentLifecycleBreadcrumbs;
        this.enableAutoFragmentLifecycleTracing = z;
        this.fragmentsWithOngoingTransactions = new WeakHashMap<>();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryFragmentLifecycleCallbacks(io.sentry.IHub r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            java.lang.String r0 = "hub"
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
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.SentryFragmentLifecycleCallbacks.<init>(io.sentry.IHub, boolean, boolean):void");
    }

    public /* synthetic */ SentryFragmentLifecycleCallbacks(boolean z, boolean z2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? false : z2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SentryFragmentLifecycleCallbacks(boolean r3, boolean r4) {
        /*
            r2 = this;
            io.sentry.HubAdapter r0 = io.sentry.HubAdapter.getInstance()
            java.lang.String r1 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            io.sentry.IHub r0 = (io.sentry.IHub) r0
            io.sentry.android.fragment.FragmentLifecycleState[] r1 = io.sentry.android.fragment.FragmentLifecycleState.values()
            java.util.Set r1 = kotlin.collections.ArraysKt.toSet(r1)
            if (r3 == 0) goto L16
            goto L17
        L16:
            r1 = 0
        L17:
            if (r1 != 0) goto L1d
            java.util.Set r1 = kotlin.collections.SetsKt.emptySet()
        L1d:
            r2.<init>(r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.fragment.SentryFragmentLifecycleCallbacks.<init>(boolean, boolean):void");
    }

    private final boolean isPerformanceEnabled() {
        return this.hub.getOptions().isTracingEnabled() && this.enableAutoFragmentLifecycleTracing;
    }

    public final boolean getEnableFragmentLifecycleBreadcrumbs() {
        return !this.filterFragmentLifecycleBreadcrumbs.isEmpty();
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentAttached(FragmentManager fragmentManager, Fragment fragment, Context context) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(context, "context");
        addBreadcrumb(fragment, FragmentLifecycleState.ATTACHED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentSaveInstanceState(FragmentManager fragmentManager, Fragment fragment, Bundle outState) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(outState, "outState");
        addBreadcrumb(fragment, FragmentLifecycleState.SAVE_INSTANCE_STATE);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.CREATED);
        if (fragment.isAdded()) {
            startTracing(fragment);
        }
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment, View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(view, "view");
        addBreadcrumb(fragment, FragmentLifecycleState.VIEW_CREATED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.STARTED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.RESUMED);
        stopTracing(fragment);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentPaused(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.PAUSED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentStopped(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.STOPPED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentViewDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.VIEW_DESTROYED);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentDestroyed(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.DESTROYED);
        stopTracing(fragment);
    }

    @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
    public void onFragmentDetached(FragmentManager fragmentManager, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        addBreadcrumb(fragment, FragmentLifecycleState.DETACHED);
    }

    private final void addBreadcrumb(Fragment fragment, FragmentLifecycleState state) {
        if (this.filterFragmentLifecycleBreadcrumbs.contains(state)) {
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.setType("navigation");
            breadcrumb.setData(SentryThread.JsonKeys.STATE, state.getBreadcrumbName());
            breadcrumb.setData("screen", getFragmentName(fragment));
            breadcrumb.setCategory("ui.fragment.lifecycle");
            breadcrumb.setLevel(SentryLevel.INFO);
            Hint hint = new Hint();
            hint.set(TypeCheckHint.ANDROID_FRAGMENT, fragment);
            this.hub.addBreadcrumb(breadcrumb, hint);
        }
    }

    private final String getFragmentName(Fragment fragment) {
        String canonicalName = fragment.getClass().getCanonicalName();
        if (canonicalName != null) {
            return canonicalName;
        }
        String simpleName = fragment.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "fragment.javaClass.simpleName");
        return simpleName;
    }

    private final boolean isRunningSpan(Fragment fragment) {
        return this.fragmentsWithOngoingTransactions.containsKey(fragment);
    }

    private final void startTracing(Fragment fragment) {
        if (!isPerformanceEnabled() || isRunningSpan(fragment)) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.fragment.SentryFragmentLifecycleCallbacks$$ExternalSyntheticLambda0
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryFragmentLifecycleCallbacks.startTracing$lambda$4(Ref.ObjectRef.this, iScope);
            }
        });
        String fragmentName = getFragmentName(fragment);
        ISpan iSpan = (ISpan) objectRef.element;
        ISpan startChild = iSpan != null ? iSpan.startChild(FRAGMENT_LOAD_OP, fragmentName) : null;
        if (startChild != null) {
            this.fragmentsWithOngoingTransactions.put(fragment, startChild);
            startChild.getSpanContext().setOrigin("auto.ui.fragment");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, io.sentry.ITransaction] */
    public static final void startTracing$lambda$4(Ref.ObjectRef transaction, IScope it) {
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        Intrinsics.checkNotNullParameter(it, "it");
        transaction.element = it.getTransaction();
    }

    private final void stopTracing(Fragment fragment) {
        ISpan iSpan;
        if (isPerformanceEnabled() && isRunningSpan(fragment) && (iSpan = this.fragmentsWithOngoingTransactions.get(fragment)) != null) {
            SpanStatus status = iSpan.getStatus();
            if (status == null) {
                status = SpanStatus.OK;
            }
            iSpan.finish(status);
            this.fragmentsWithOngoingTransactions.remove(fragment);
        }
    }
}
