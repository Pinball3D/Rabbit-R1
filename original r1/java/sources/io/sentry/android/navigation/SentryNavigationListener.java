package io.sentry.android.navigation;

import android.content.res.Resources;
import android.os.Bundle;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.Scope;
import io.sentry.ScopeCallback;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.SentryLevel;
import io.sentry.SpanContext;
import io.sentry.SpanStatus;
import io.sentry.TransactionContext;
import io.sentry.TransactionOptions;
import io.sentry.TypeCheckHint;
import io.sentry.protocol.TransactionNameSource;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.TracingUtils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: SentryNavigationListener.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB1\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tJ&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00122\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0002J\"\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u000fH\u0016J.\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u00122\u0014\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017H\u0002J\b\u0010\u001d\u001a\u00020\u0014H\u0002J\u001c\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0006\u0012\u0004\u0018\u00010\u00180\u0017*\u0004\u0018\u00010\u000fH\u0002R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lio/sentry/android/navigation/SentryNavigationListener;", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "hub", "Lio/sentry/IHub;", "enableNavigationBreadcrumbs", "", "enableNavigationTracing", "traceOriginAppendix", "", "(Lio/sentry/IHub;ZZLjava/lang/String;)V", "activeTransaction", "Lio/sentry/ITransaction;", "isPerformanceEnabled", "()Z", "previousArgs", "Landroid/os/Bundle;", "previousDestinationRef", "Ljava/lang/ref/WeakReference;", "Landroidx/navigation/NavDestination;", "addBreadcrumb", "", "destination", "arguments", "", "", "onDestinationChanged", "controller", "Landroidx/navigation/NavController;", "startTracing", "stopTracing", "refined", "Companion", "sentry-android-navigation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryNavigationListener implements NavController.OnDestinationChangedListener {
    public static final String NAVIGATION_OP = "navigation";
    private ITransaction activeTransaction;
    private final boolean enableNavigationBreadcrumbs;
    private final boolean enableNavigationTracing;
    private final IHub hub;
    private Bundle previousArgs;
    private WeakReference<NavDestination> previousDestinationRef;
    private final String traceOriginAppendix;

    public SentryNavigationListener() {
        this(null, false, false, null, 15, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryNavigationListener(IHub hub) {
        this(hub, false, false, null, 14, null);
        Intrinsics.checkNotNullParameter(hub, "hub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryNavigationListener(IHub hub, boolean z) {
        this(hub, z, false, null, 12, null);
        Intrinsics.checkNotNullParameter(hub, "hub");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SentryNavigationListener(IHub hub, boolean z, boolean z2) {
        this(hub, z, z2, null, 8, null);
        Intrinsics.checkNotNullParameter(hub, "hub");
    }

    public SentryNavigationListener(IHub hub, boolean z, boolean z2, String str) {
        Intrinsics.checkNotNullParameter(hub, "hub");
        this.hub = hub;
        this.enableNavigationBreadcrumbs = z;
        this.enableNavigationTracing = z2;
        this.traceOriginAppendix = str;
        IntegrationUtils.addIntegrationToSdkVersion(getClass());
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-android-navigation", "7.4.0");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ SentryNavigationListener(io.sentry.IHub r2, boolean r3, boolean r4, java.lang.String r5, int r6, kotlin.jvm.internal.DefaultConstructorMarker r7) {
        /*
            r1 = this;
            r7 = r6 & 1
            if (r7 == 0) goto Lf
            io.sentry.HubAdapter r2 = io.sentry.HubAdapter.getInstance()
            java.lang.String r7 = "getInstance()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r7)
            io.sentry.IHub r2 = (io.sentry.IHub) r2
        Lf:
            r7 = r6 & 2
            r0 = 1
            if (r7 == 0) goto L15
            r3 = r0
        L15:
            r7 = r6 & 4
            if (r7 == 0) goto L1a
            r4 = r0
        L1a:
            r6 = r6 & 8
            if (r6 == 0) goto L1f
            r5 = 0
        L1f:
            r1.<init>(r2, r3, r4, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.navigation.SentryNavigationListener.<init>(io.sentry.IHub, boolean, boolean, java.lang.String, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    private final boolean isPerformanceEnabled() {
        return this.hub.getOptions().isTracingEnabled() && this.enableNavigationTracing;
    }

    @Override // androidx.navigation.NavController.OnDestinationChangedListener
    public void onDestinationChanged(NavController controller, NavDestination destination, Bundle arguments) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        Intrinsics.checkNotNullParameter(destination, "destination");
        Map<String, Object> refined = refined(arguments);
        addBreadcrumb(destination, refined);
        startTracing(controller, destination, refined);
        this.previousDestinationRef = new WeakReference<>(destination);
        this.previousArgs = arguments;
    }

    private final void addBreadcrumb(NavDestination destination, Map<String, ? extends Object> arguments) {
        NavDestination navDestination;
        if (this.enableNavigationBreadcrumbs) {
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.setType("navigation");
            breadcrumb.setCategory("navigation");
            WeakReference<NavDestination> weakReference = this.previousDestinationRef;
            String route = (weakReference == null || (navDestination = weakReference.get()) == null) ? null : navDestination.getRoute();
            if (route != null) {
                Map<String, Object> data = breadcrumb.getData();
                Intrinsics.checkNotNullExpressionValue(data, "data");
                data.put("from", "/" + route);
            }
            Map<String, Object> refined = refined(this.previousArgs);
            if (!refined.isEmpty()) {
                Map<String, Object> data2 = breadcrumb.getData();
                Intrinsics.checkNotNullExpressionValue(data2, "data");
                data2.put("from_arguments", refined);
            }
            String route2 = destination.getRoute();
            if (route2 != null) {
                Map<String, Object> data3 = breadcrumb.getData();
                Intrinsics.checkNotNullExpressionValue(data3, "data");
                data3.put("to", "/" + route2);
            }
            if (!arguments.isEmpty()) {
                Map<String, Object> data4 = breadcrumb.getData();
                Intrinsics.checkNotNullExpressionValue(data4, "data");
                data4.put("to_arguments", arguments);
            }
            breadcrumb.setLevel(SentryLevel.INFO);
            Hint hint = new Hint();
            hint.set(TypeCheckHint.ANDROID_NAV_DESTINATION, destination);
            this.hub.addBreadcrumb(breadcrumb, hint);
        }
    }

    private final void startTracing(NavController controller, NavDestination destination, Map<String, ? extends Object> arguments) {
        String str;
        if (!isPerformanceEnabled()) {
            TracingUtils.startNewTrace(this.hub);
            return;
        }
        if (this.activeTransaction != null) {
            stopTracing();
        }
        if (Intrinsics.areEqual(destination.getNavigatorName(), "activity")) {
            this.hub.getOptions().getLogger().log(SentryLevel.DEBUG, "Navigating to activity destination, no transaction captured.", new Object[0]);
            return;
        }
        String name = destination.getRoute();
        if (name == null) {
            try {
                name = controller.getContext().getResources().getResourceEntryName(destination.getId());
            } catch (Resources.NotFoundException unused) {
                this.hub.getOptions().getLogger().log(SentryLevel.DEBUG, "Destination id cannot be retrieved from Resources, no transaction captured.", new Object[0]);
                return;
            }
        }
        StringBuilder sb = new StringBuilder("/");
        Intrinsics.checkNotNullExpressionValue(name, "name");
        String sb2 = sb.append(StringsKt.substringBefore$default(name, '/', (String) null, 2, (Object) null)).toString();
        TransactionOptions transactionOptions = new TransactionOptions();
        transactionOptions.setWaitForChildren(true);
        transactionOptions.setIdleTimeout(this.hub.getOptions().getIdleTimeout());
        transactionOptions.setDeadlineTimeout(300000L);
        transactionOptions.setTrimEnd(true);
        final ITransaction startTransaction = this.hub.startTransaction(new TransactionContext(sb2, TransactionNameSource.ROUTE, "navigation"), transactionOptions);
        Intrinsics.checkNotNullExpressionValue(startTransaction, "hub.startTransaction(\n  …nsactionOptions\n        )");
        SpanContext spanContext = startTransaction.getSpanContext();
        if (this.traceOriginAppendix == null || (str = "auto.navigation." + this.traceOriginAppendix) == null) {
            str = "auto.navigation";
        }
        spanContext.setOrigin(str);
        if (!arguments.isEmpty()) {
            startTransaction.setData("arguments", arguments);
        }
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.navigation.SentryNavigationListener$$ExternalSyntheticLambda0
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryNavigationListener.startTracing$lambda$6(ITransaction.this, iScope);
            }
        });
        this.activeTransaction = startTransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTracing$lambda$6(final ITransaction transaction, final IScope scope) {
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        Intrinsics.checkNotNullParameter(scope, "scope");
        scope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.navigation.SentryNavigationListener$$ExternalSyntheticLambda2
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction) {
                SentryNavigationListener.startTracing$lambda$6$lambda$5(IScope.this, transaction, iTransaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startTracing$lambda$6$lambda$5(IScope scope, ITransaction transaction, ITransaction iTransaction) {
        Intrinsics.checkNotNullParameter(scope, "$scope");
        Intrinsics.checkNotNullParameter(transaction, "$transaction");
        if (iTransaction == null) {
            scope.setTransaction(transaction);
        }
    }

    private final void stopTracing() {
        SpanStatus spanStatus;
        ITransaction iTransaction = this.activeTransaction;
        if (iTransaction == null || (spanStatus = iTransaction.getStatus()) == null) {
            spanStatus = SpanStatus.OK;
        }
        Intrinsics.checkNotNullExpressionValue(spanStatus, "activeTransaction?.status ?: SpanStatus.OK");
        ITransaction iTransaction2 = this.activeTransaction;
        if (iTransaction2 != null) {
            iTransaction2.finish(spanStatus);
        }
        this.hub.configureScope(new ScopeCallback() { // from class: io.sentry.android.navigation.SentryNavigationListener$$ExternalSyntheticLambda1
            @Override // io.sentry.ScopeCallback
            public final void run(IScope iScope) {
                SentryNavigationListener.stopTracing$lambda$8(SentryNavigationListener.this, iScope);
            }
        });
        this.activeTransaction = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stopTracing$lambda$8(final SentryNavigationListener this$0, final IScope scope) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(scope, "scope");
        scope.withTransaction(new Scope.IWithTransaction() { // from class: io.sentry.android.navigation.SentryNavigationListener$$ExternalSyntheticLambda3
            @Override // io.sentry.Scope.IWithTransaction
            public final void accept(ITransaction iTransaction) {
                SentryNavigationListener.stopTracing$lambda$8$lambda$7(SentryNavigationListener.this, scope, iTransaction);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void stopTracing$lambda$8$lambda$7(SentryNavigationListener this$0, IScope scope, ITransaction iTransaction) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(scope, "$scope");
        if (Intrinsics.areEqual(iTransaction, this$0.activeTransaction)) {
            scope.clearTransaction();
        }
    }

    private final Map<String, Object> refined(Bundle bundle) {
        if (bundle != null) {
            Set<String> keySet = bundle.keySet();
            Intrinsics.checkNotNullExpressionValue(keySet, "args.keySet()");
            ArrayList arrayList = new ArrayList();
            for (Object obj : keySet) {
                if (!Intrinsics.areEqual((String) obj, NavController.KEY_DEEP_LINK_INTENT)) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = arrayList;
            LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(arrayList2, 10)), 16));
            for (Object obj2 : arrayList2) {
                linkedHashMap.put(obj2, bundle.get((String) obj2));
            }
            return linkedHashMap;
        }
        return MapsKt.emptyMap();
    }
}
