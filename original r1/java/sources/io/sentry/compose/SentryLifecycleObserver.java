package io.sentry.compose;

import androidx.core.app.NotificationCompat;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavController;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.android.navigation.SentryNavigationListener;
import io.sentry.protocol.TransactionInfo;
import io.sentry.util.IntegrationUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SentryNavigationIntegration.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lio/sentry/compose/SentryLifecycleObserver;", "Landroidx/lifecycle/LifecycleEventObserver;", "navController", "Landroidx/navigation/NavController;", "navListener", "Landroidx/navigation/NavController$OnDestinationChangedListener;", "(Landroidx/navigation/NavController;Landroidx/navigation/NavController$OnDestinationChangedListener;)V", "dispose", "", "onStateChanged", TransactionInfo.JsonKeys.SOURCE, "Landroidx/lifecycle/LifecycleOwner;", NotificationCompat.CATEGORY_EVENT, "Landroidx/lifecycle/Lifecycle$Event;", "sentry-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SentryLifecycleObserver implements LifecycleEventObserver {
    private final NavController navController;
    private final NavController.OnDestinationChangedListener navListener;

    public SentryLifecycleObserver(NavController navController, NavController.OnDestinationChangedListener navListener) {
        Intrinsics.checkNotNullParameter(navController, "navController");
        Intrinsics.checkNotNullParameter(navListener, "navListener");
        this.navController = navController;
        this.navListener = navListener;
        IntegrationUtils.addIntegrationToSdkVersion("ComposeNavigation");
        SentryIntegrationPackageStorage.getInstance().addPackage("maven:io.sentry:sentry-compose", "7.4.0");
    }

    public /* synthetic */ SentryLifecycleObserver(NavController navController, SentryNavigationListener sentryNavigationListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(navController, (i & 2) != 0 ? new SentryNavigationListener(null, false, false, "jetpack_compose", 7, null) : sentryNavigationListener);
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        Intrinsics.checkNotNullParameter(source, "source");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_RESUME) {
            this.navController.addOnDestinationChangedListener(this.navListener);
        } else if (event == Lifecycle.Event.ON_PAUSE) {
            this.navController.removeOnDestinationChangedListener(this.navListener);
        }
    }

    public final void dispose() {
        this.navController.removeOnDestinationChangedListener(this.navListener);
    }
}
